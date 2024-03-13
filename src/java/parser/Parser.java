package parser;


import ast.ASTNode;
import ast.AddressOfExpr;
import ast.ArrayAccessExpr;
import ast.ArrayType;
import ast.Assign;
import ast.BaseType;
import ast.BinOp;
import ast.Block;
import ast.Break;
import ast.ChrLiteral;
import ast.Continue;
import ast.Decl;
import ast.Expr;
import ast.ExprStmt;
import ast.FieldAccessExpr;
import ast.FunCallExpr;
import ast.FunDecl;
import ast.FunProto;
import ast.If;
import ast.IntLiteral;
import ast.PointerType;
import ast.Program;
import ast.Return;
import ast.SizeOfExpr;
import ast.Stmt;
import ast.StrLiteral;
import ast.StructType;
import ast.StructTypeDecl;
import ast.Type;
import ast.TypecastExpr;
import ast.ValueAtExpr;
import ast.VarDecl;
import ast.VarExpr;
import ast.While;
import ast.Op;
import lexer.Token;
import lexer.Token.Category;
import lexer.Tokeniser;
import util.CompilerPass;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.stream.Stream;


/**
 * @author cdubach
 */
public class Parser extends CompilerPass {

    private Token token;

    private Queue<Token> buffer = new LinkedList<>();

    private final Tokeniser tokeniser;



    public Parser(Tokeniser tokeniser) {
        this.tokeniser = tokeniser;
    }

    public Program parse() {
        // get the first token
        nextToken();

        return parseProgram();
    }



    //private int error = 0;
    private Token lastErrorToken;

    private void error(Category... expected) {

        if (lastErrorToken == token) {
            // skip this error, same token causing trouble
            return;
        }

        StringBuilder sb = new StringBuilder();
        String sep = "";
        for (Category e : expected) {
            sb.append(sep);
            sb.append(e);
            sep = "|";
        }
        String msg = "Parsing error: expected ("+sb+") found ("+token+") at "+token.position;
        System.out.println(msg);

        incError();
        lastErrorToken = token;
    }

    /*
     * Look ahead the i^th element from the stream of token.
     * i should be >= 1
     */
    private Token lookAhead(int i) {
        // ensures the buffer has the element we want to look ahead
        while (buffer.size() < i)
            buffer.add(tokeniser.nextToken());

        int cnt=1;
        for (Token t : buffer) {
            if (cnt == i)
                return t;
            cnt++;
        }

        assert false; // should never reach this
        return tokeniser.nextToken();
    }


    /*
     * Consumes the next token from the tokeniser or the buffer if not empty.
     */
    private Token nextToken() {
        Token prev = token;
        if (!buffer.isEmpty())
            token = buffer.remove();
        else
            token = tokeniser.nextToken();
        return prev;
    }

    /*
     * If the current token is equals to the expected one, then skip it, otherwise report an error.
     */
    private Token expect(Category... expected) {
        for (Category e : expected) {
            if (e == token.category) {
                Token ret = token;
                nextToken();
                return ret;
            }
        }
        error(expected);
        return token;
    }

    /*
    * Returns true if the current token is equals to any of the expected ones.
    */
    private boolean accept(Category... expected) {
        for (Category e : expected) {
            if (e == token.category)
                return true;
        }
        return false;
    }


    /**
     * program   ::= (include)* (structdecl | vardecl | fundecl | funproto)* EOF
     * fundecl   ::= fun' block       # function declaration
     * funproto  ::= fun' ";"         # function prototype
     */
    private Program parseProgram() {
        while (accept(Category.INCLUDE)) parseIncludes();

        List<Decl> decls = new ArrayList<>();

        while (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            if (token.category == Category.STRUCT &&
                    lookAhead(1).category == Category.IDENTIFIER &&
                    lookAhead(2).category == Category.LBRA) {
                // structdecl
                decls.add(parseStructDecl());
            } else {
                // type IDENT
                Type type = parseType();
                Token identifier = expect(Category.IDENTIFIER);

                // fundecl or funproto
                if (token.category == Category.LPAR) {
                    List<VarDecl> vds = parseFunPrime();

                    if (token.category == Category.SC) {
                        // funproto
                        expect(Category.SC);
                        decls.add(new FunProto(type, identifier.data, vds));
                    } else {
                        // fundecl
                        Block blk = parseBlock();
                        decls.add(new FunDecl(type, identifier.data, vds, blk));
                    }
                } else {
                    // vardecl
                    Type arr = parseVardeclPrime(type);
                    decls.add(new VarDecl(arr, identifier.data));
                }
            }
        }

        expect(Category.EOF);
        return new Program(decls);
    }

    /**
     * include    ::= "#include" STRING_LITERAL
     */
    // includes are ignored, so does not need to return an AST node
    private void parseIncludes() {
        expect(Category.INCLUDE);
        expect(Category.STRING_LITERAL);
    }

    /**
     * structdecl ::= structtype "{" (vardecl)+ "}" ";"
     */
    private StructTypeDecl parseStructDecl(){
        // structtype
        StructType type = parseStructtype();
        // "{"
        expect(Category.LBRA);

        List<VarDecl> vds = new ArrayList<>();
        // (vardecl)+
        vds.add(parseVardecl());

        while (accept(Category.INT, Category.CHAR, Category.VOID, Category.STRUCT)) {
            vds.add(parseVardecl());
        }

        expect(Category.RBRA);
        expect(Category.SC);
        return new StructTypeDecl(type, vds);
    }

    /**
     * vardecl  ::= type IDENT vardecl'
     */
    private VarDecl parseVardecl() {
        Type type = parseType();
        Token id = expect(Category.IDENTIFIER);
        
        Type arr = parseVardeclPrime(type);
        return new VarDecl(arr, id.data);
    }

    /**
     * vardecl' ::= ("[" INT_LITERAL "]")* ";"
     */
    private Type parseVardeclPrime(Type type) {
        while (accept(Category.LSBR)
            && lookAhead(1).category == Category.INT_LITERAL
            && lookAhead(2).category == Category.RSBR
        ) {
            expect(Category.LSBR);
            Token len = expect(Category.INT_LITERAL);
            expect(Category.RSBR);
            type = new ArrayType(type, Integer.parseInt(len.data));
        }
        expect(Category.SC);
        return type;
    }

    /**
     * fun' ::= "(" params ")"
     */
    private List<VarDecl> parseFunPrime() {
        expect(Category.LPAR);
        List<VarDecl> vds = parseParams();
        expect(Category.RPAR);
        return vds;
    }

    /**
     * type       ::= ("int" | "char" | "void" | structtype) ("*")*
     */
    private Type parseType() {
        Type type;
        if (accept(Category.INT, Category.CHAR, Category.VOID)) {
            Token typeToken = expect(Category.INT, Category.CHAR, Category.VOID);
            type = switch(typeToken.category) {
                case Category.INT -> BaseType.INT;
                case Category.CHAR -> BaseType.CHAR;
                case Category.VOID -> BaseType.VOID;
                default -> throw new IllegalArgumentException();
            };
        } else {
            type = parseStructtype();
        }

        while (accept(Category.ASTERIX)) {
            expect(Category.ASTERIX);
            type = new PointerType(type);
        }
        
        return type;
    }

    /**
     * structtype ::= "struct" IDENT
     */
    private StructType parseStructtype() {
        expect(Category.STRUCT);
        Token id = expect(Category.IDENTIFIER);
        return new StructType(id.data);
    }

    /*
     * params ::= [ type IDENT ("[" INT_LITERAL "]")* ("," type IDENT ("[" INT_LITERAL "]")*)* ]
     * can parse epsilon
     */
    private List<VarDecl> parseParams() {
        List<VarDecl> vds = new ArrayList<>();
        if (!accept(Category.INT, Category.CHAR, Category.VOID, Category.STRUCT)) return vds;


        Type vartype = parseType();
        Token id = expect(Category.IDENTIFIER);
        // ("[" INT_LITERAL "]")*
        while(accept(Category.LSBR)) {
            expect(Category.LSBR);
            Token val = expect(Category.INT_LITERAL);
            expect(Category.RSBR);
            vartype = new ArrayType(vartype, Integer.parseInt(val.data));
        }
        vds.add(new VarDecl(vartype, id.data));


        // (("," type IDENT ("[" INT_LITERAL "]")*)*)
        while(accept(Category.COMMA)) {
            expect(Category.COMMA);
            Type othertype = parseType();
            Token otherID = expect(Category.IDENTIFIER);
            // ("[" INT_LITERAL "]")*
            while(accept(Category.LBRA)) {
                expect(Category.LBRA);
                Token val = expect(Category.INT_LITERAL);
                expect(Category.RBRA);
                othertype = new ArrayType(othertype, Integer.parseInt(val.data));
            }
            vds.add(new VarDecl(othertype, otherID.data));
        }

        return vds;
    }

    /**
     * block ::= "{" (vardecl)* (stmt)* "}"
     */
    private Block parseBlock() {
        expect(Category.LBRA);
        
        List<VarDecl> vds = new ArrayList<>();
        // (vardecl) *
        while (accept(Category.INT, Category.CHAR, Category.VOID, Category.STRUCT)) {
            vds.add(parseVardecl());
        }

        List<Stmt> stmts = new ArrayList<>();
        // (stmt) *
        while (accept(
            Category.LBRA, 
            Category.WHILE, 
            Category.IF, 
            Category.RETURN, 
            Category.CONTINUE, 
            Category.BREAK,
            // below are legal start token of an exp
            Category.LPAR,
            Category.IDENTIFIER,
            Category.INT_LITERAL,
            Category.MINUS,
            Category.PLUS,
            Category.CHAR_LITERAL,
            Category.STRING_LITERAL,
            Category.ASTERIX,
            Category.AND,
            Category.SIZEOF)) {
                stmts.add(parseStmt());
        }

        expect(Category.RBRA);
        return new Block(vds, stmts);
    }

    /*
     * stmt   ::= block
                | "while" "(" exp ")" stmt              # while loop
                | "if" "(" exp ")" stmt ["else" stmt]   # if then else
                | "return" [exp] ";"                    # return
                | exp ";"                               # expression statement, e.g. a function call
                | "continue" ";"                        # continue
                | "break" ";"                           # break
     */
    private Stmt parseStmt() {
        if (accept(Category.WHILE)) {
            expect(Category.WHILE);
            expect(Category.LPAR);
            Expr expr = parseP9();
            expect(Category.RPAR);
            Stmt stmt = parseStmt();

            return new While(expr, stmt);

        } else if (accept(Category.IF)) {
            expect(Category.IF);
            expect(Category.LPAR);
            Expr expr = parseP9();
            expect(Category.RPAR);
            Stmt ifBranch = parseStmt();
            Stmt elseBranch = null; // explicitly assign null

            if (accept(Category.ELSE)) {
                expect(Category.ELSE);
                elseBranch = parseStmt();
            }

            return new If(expr, ifBranch, elseBranch);

        } else if (accept(Category.RETURN)) {
            expect(Category.RETURN);
            
            Expr expr = null; //  explicitly assign null
            if (accept(Category.SC)) {
                expect(Category.SC);
            } else {
                expr = parseP9();
                expect(Category.SC);
            }

            return new Return(expr);

        } else if (accept(Category.CONTINUE, Category.BREAK)) {
            Token tk = expect(Category.CONTINUE, Category.BREAK);
            expect(Category.SC);
            
            return tk.category == Category.CONTINUE ? new Continue() : new Break();
        } else if (accept(Category.LBRA)) {
            return parseBlock();
        } else {
            Expr expr = parseP9();
            expect(Category.SC);
            return new ExprStmt(expr);
        }
    }

        /**
         *  Precedence 9: = 
         *  Right-to-left (Recursive w/out left-recursion)
         *  p9 ::= Terminal '=' p9 | Terminal
         */
        private Expr parseP9() {
            Expr lhs = parseP8();
            if (accept(Category.ASSIGN)) {
                nextToken();
                Expr rhs = parseP9();
                return new Assign(lhs, rhs);
            }
            return lhs;
        }

        /**
         *  Precedence 8: ||
         *  Left-to-right (iterative)
         *  p8 ::= p9 (|| p9)*
         */
        private Expr parseP8() {
            Expr lhs = parseP7();
            while (accept(Category.LOGOR)) {
                nextToken();
                Op op = Op.OR;
                
                Expr rhs = parseP7();
                lhs = new BinOp(lhs, op, rhs);
            }
            return lhs;
        }
    
        /**
         *  Precedence 7: &&
         *  Left-to-right (iterative)
         *  p7 ::= p8 (&& p8)*
         */
        private Expr parseP7() {
            Expr lhs = parseP6();
            while (accept(Category.LOGAND)) {
                nextToken();
                Op op = Op.AND;
                
                Expr rhs = parseP6();
                lhs = new BinOp(lhs, op, rhs);
            }
            return lhs;
        }

        /**
         *  Precedence 6: ==, !=
         *  Left-to-right (iterative)
         *  p6 ::= p7 (('==' | '!=') p7)*
         */
        private Expr parseP6() {
            Expr lhs = parseP5();
            while (accept(Category.EQ, Category.NE)) {
                Token t = nextToken();
                Op op = t.category == Category.EQ
                    ? Op.EQ
                    : Op.NE;
                
                Expr rhs = parseP5();
                lhs = new BinOp(lhs, op, rhs);
            }
            return lhs;
        }

                /**
         *  Precedence 5: <, <=, >, >=
         *  Left-to-right (iterative)
         *  p5 ::= p6 (('<' | '<-' | '>' | '>=') p6)*
         */
        private Expr parseP5() {
            Expr lhs = parseP4();
            while (accept(
                Category.LT,
                Category.LE,
                Category.GT,
                Category.GE
            )) {
                Token t = nextToken();
                Op op = switch(t.category) {
                    case LT -> Op.LT;
                    case LE -> Op.LE;
                    case GT -> Op.GT;
                    case GE -> Op.GE;
                    default -> throw new Error();
                };
                Expr rhs = parseP4();
                lhs = new BinOp(lhs, op, rhs);
            }
            return lhs;
        }

        /**
         *  Precedence 4: +, -
         *  Left-to-right (iterative)
         *  p4 ::= p5 (('+' | '-') p5)*
         */
        private Expr parseP4() {
            Expr lhs = parseP3();
            while (accept(Category.PLUS, Category.MINUS)) {
                Token t = nextToken();
                Op op = t.category == Category.PLUS
                    ? Op.ADD
                    : Op.SUB;
                
                Expr rhs = parseP3();
                lhs = new BinOp(lhs, op, rhs);
            }
            return lhs;
        }

        /**
         *  Precedence 3: *, /, %
         *  Left-to-right (iterative)
         *  p3 ::= p4 (('*' | '/' | '%') p4)*
         */
        private Expr parseP3() {
            Expr lhs = parseP2();
            while (accept(Category.ASTERIX, Category.DIV, Category.REM)) {
                Token t = nextToken();
                Op op = switch(t.category) {
                    case ASTERIX -> Op.MUL;
                    case DIV -> Op.DIV;
                    case REM -> Op.MOD;
                    default -> throw new Error();
                };
    
                Expr rhs = parseP2();
                lhs = new BinOp(lhs, op, rhs);
            }
            return lhs;
        }

        /**
         *  Precedence 2: unary +, unary -, (type), *, &
         *  Right-to-left (Recursive w/out left-recursion)
         *  p2 :== '+' p2 | '-' p2 | (type) p2 | '*' p2 | '&' p2 | p1
         */
        private Expr parseP2() {
            if (accept(Category.PLUS)) {
                // unary plus
                expect(Category.PLUS);
                Expr p3 = parseP2();
                return new BinOp(new IntLiteral(0), Op.ADD, p3);
        
            } else if (accept(Category.MINUS)) {
                // unary minus
                expect(Category.MINUS);
                Expr p3 = parseP2();
                return new BinOp(new IntLiteral(0), Op.SUB, p3);
    
            } else if (accept(Category.LPAR)) {
                // typecast
                expect(Category.LPAR);
                Type type = parseType();
                expect(Category.RPAR);
    
                Expr p3 = parseP2();
                return new TypecastExpr(type, p3);
    
            } else if (accept(Category.ASTERIX)) {
                // valueat
                expect(Category.ASTERIX);
                Expr p3 = parseP2();
                return new ValueAtExpr(p3);
    
            } else if (accept(Category.AND)) {
                // addressof
                expect(Category.AND);
                Expr p3 = parseP2();
                return new AddressOfExpr(p3);
            } else {
                return parseP1();
            }
        }

        /**
         *  Precedence 1: (), [], .
         *  Left-to-right (iterative)
         *  p1 ::= (terminal(p2)*) | [p2[p2]*] | p2(.p2)* | p2
         */
        private Expr parseP1() {
            Expr lhs = parseTerminal();
            
            while (accept(Category.LPAR, Category.LSBR, Category.DOT)) {
                Token t = nextToken();

                switch(t.category) {
                    case LPAR: {
                        lhs = parseTerminal();
                        expect(Category.RPAR);
                        break;
                    }

                    case LSBR: {
                        Expr idx = parseTerminal();
                        lhs = new ArrayAccessExpr(lhs, idx);
                        expect(Category.RSBR);
                        break;
                    }

                    case DOT: {
                        Token k = expect(Category.IDENTIFIER);
                        lhs = new FieldAccessExpr(lhs, k.data);
                        break;
                    }

                    default: throw new Error();
                }
            }
            
            return lhs;
        }

        /**
         * Terminal branch
         * factor  ::= number | string | char | id | p1
         */
        private Expr parseTerminal() {
            if (accept(Category.INT_LITERAL, Category.STRING_LITERAL, Category.CHAR_LITERAL)) {
                Token tk = expect(Category.INT_LITERAL, Category.CHAR_LITERAL, Category.STRING_LITERAL);
                return switch(tk.category) {
                    case INT_LITERAL -> new IntLiteral(Integer.parseInt(tk.data));
                    case STRING_LITERAL -> new StrLiteral(tk.data);
                    case CHAR_LITERAL -> new ChrLiteral(tk.data);
                    default -> throw new IllegalArgumentException();
                };
            } else if (accept(Category.IDENTIFIER)) {
                return parseExpIdentAST();
            } else if (accept(Category.SIZEOF)) {
                return parseSizeof();
            } else {
                return parseP9();
            }
        }

        /**
         * sizeof ::= "sizeof" "(" type ")"  
         * # size of type #beta9
         */
        private SizeOfExpr parseSizeof() {
            expect(Category.SIZEOF);
            expect(Category.LPAR);
            Type type = parseType();
            expect(Category.RPAR);
            return new SizeOfExpr(type);
        }
    
        private Expr parseExpIdentAST() {
            Token id = expect(Category.IDENTIFIER);
            Expr expr = new VarExpr(id.data);
            if (accept(Category.LPAR)) {
                // funcall
                List<Expr> args = parseFuncallPrimeAST();
                expr = new FunCallExpr(id.data, args);
            }
            return expr;
        }
    
        private List<Expr> parseFuncallPrimeAST() {
            expect(Category.LPAR);
            List<Expr> args = new ArrayList<>(); 
            if (accept(
                Category.LPAR,
                Category.IDENTIFIER,
                Category.INT_LITERAL,
                Category.MINUS,
                Category.PLUS,
                Category.CHAR_LITERAL,
                Category.STRING_LITERAL,
                Category.ASTERIX,
                Category.AND,
                Category.SIZEOF
            ))
            {
                args.add(parseP1());
                while (accept(Category.COMMA)) {
                    expect(Category.COMMA);
                    args.add(parseP1());
                }
            }
            
            expect(Category.RPAR);
            return args;
        }
        


    /* ----------------------Deprecated--------------------- */
    /*
     * A valid exp can start with:
     * "(" IDENT INT_LITERAL "-" "+" CHAR_LITERAL STRING_LITERAL "*" "&" "sizeof"
     * exp ::= INT_LITERAL exp' 
     *       | CHAR_LITERAL exp' 
     *       | STRING_LITERAL exp'
     *       | ("-" | "+") exp exp'
     *       | "(" ExpLpar exp'
     *       | "*" exp exp' # valueat
     *       | "&" exp exp' # addressof
     *       | sizeof exp' # sizeof
     *       | ExpIdent exp'
     *      
     */
    private Expr parseExp() {
        // betas
        if (accept(Category.IDENTIFIER)) {
            Expr expr = parseExpIdent();
            return parseExpPrime(expr);
        } else if (accept(Category.MINUS, Category.PLUS)) {
            //
            Token optk = expect(Category.MINUS, Category.PLUS);
            Op op = optk.category == Category.MINUS ? Op.SUB : Op.ADD;
            Expr expr = parseExp();
            BinOp binop = new BinOp(new IntLiteral(0), op, expr);

            return parseExpPrime(binop);
        } else if (accept(Category.LPAR)) {
            Expr expr = parseExpLpar();
            return parseExpPrime(expr);
        } else if (accept(Category.ASTERIX)) {
            ValueAtExpr v = parseValueat();
            return parseExpPrime(v);
        } else if (accept(Category.AND)) {
            AddressOfExpr a = parseAddressof();
            return parseExpPrime(a);
        } else if (accept(Category.SIZEOF)) {
            SizeOfExpr s = parseSizeof();
            return parseExpPrime(s);
        } else {
            Token tk = expect(Category.INT_LITERAL, Category.CHAR_LITERAL, Category.STRING_LITERAL);
            Expr lit = switch(tk.category) {
                case INT_LITERAL -> new IntLiteral(Integer.parseInt(tk.data));
                case STRING_LITERAL -> new StrLiteral(tk.data);
                case CHAR_LITERAL -> new ChrLiteral(tk.data);
                default -> throw new IllegalArgumentException();
            };    
            return parseExpPrime(lit);
        }    
    }    
    

    /**
     * exp' ::= "=" exp exp'
     *        | "[" arrayaccess' exp'
     *        | "." fieldaccess' exp'
     *        | (">" | "<" | ">=" | "<=" | "!=" | "==" | "+" | "-" | "/" | "*" | "%" | "||" | "&&") exp
     *        | epsilon
     */
    private Expr parseExpPrime(Expr prev) {
        // alphas
        if (accept(Category.ASSIGN)) {
            // assignment
            expect(Category.ASSIGN);
            Expr expr = parseExp();
            prev = parseExpPrime(new Assign(prev, expr));
        } else if (accept(Category.LSBR)) {
            Expr rhs = parseArrayAccessPrime();
            ArrayAccessExpr expr = new ArrayAccessExpr(prev, rhs);
            prev = parseExpPrime(expr);

        } else if (accept(Category.DOT)) {
            String name = parseFieldAccessPrime();
            FieldAccessExpr expr = new FieldAccessExpr(prev, name);
            prev = parseExpPrime(expr);
        } else if (accept(
            Category.GT, 
            Category.LT, 
            Category.GE, 
            Category.LE, 
            Category.NE, 
            Category.EQ, 
            Category.PLUS, 
            Category.MINUS,
            Category.DIV,
            Category.ASTERIX,
            Category.REM,
            Category.LOGOR,
            Category.LOGAND)) 
        {
            // Binary Operations
            Token optk = nextToken(); // consume it
            Op op = switch(optk.category) {
                case GT -> Op.GT;
                case LT -> Op.LT;
                case GE -> Op.GE;
                case LE -> Op.LE;
                case NE -> Op.NE;
                case EQ -> Op.EQ;
                case PLUS -> Op.ADD;
                case MINUS -> Op.SUB;
                case DIV -> Op.DIV;
                case ASTERIX -> Op.MUL;
                case REM -> Op.MOD;
                case LOGOR -> Op.OR;
                case LOGAND -> Op.AND;
                default -> throw new IllegalArgumentException();
            };
            Expr rhs = parseExp();
            BinOp binop = new BinOp(prev, op, rhs);
            prev = parseExpPrime(binop);
        }

        return prev;
    }

    /**
     * ExpLpar ::= "(" exp ")" | typecast
     */
    private Expr parseExpLpar() {
        Category[] types = new Category[]{Category.INT, Category.CHAR, Category.VOID, Category.STRUCT};
        
        Expr expr;
        if (Stream.of(types).anyMatch(s -> s == lookAhead(1).category)) {
            expr = parseTypecast();
        } else {
            expect(Category.LPAR);
            expr = parseExp();
            expect(Category.RPAR);
        }

        return expr;
    }

    /**
     * ExpIdent ::= IDENT | IDENT funcall'
     */
    private Expr parseExpIdent() {
        Token id = expect(Category.IDENTIFIER);
        Expr expr = new VarExpr(id.data);
        if (accept(Category.LPAR)) {
            // funcall
            List<Expr> args = parseFuncallPrime();
            expr = new FunCallExpr(id.data, args);
        }
        return expr;
    }

    /**
     * funcall  ::= IDENT funcall' # function call #beta6
     * funcall' ::= "(" [ exp ("," exp)* ] ")" 
     */
    private List<Expr> parseFuncallPrime() {
        expect(Category.LPAR);
        List<Expr> args = new ArrayList<>(); 
        if (accept(
            Category.LPAR,
            Category.IDENTIFIER,
            Category.INT_LITERAL,
            Category.MINUS,
            Category.PLUS,
            Category.CHAR_LITERAL,
            Category.STRING_LITERAL,
            Category.ASTERIX,
            Category.AND,
            Category.SIZEOF
        ))
        {
            args.add(parseExp());
            while (accept(Category.COMMA)) {
                expect(Category.COMMA);
                args.add(parseExp());
            }
        }
        
        expect(Category.RPAR);
        return args;
    }

    /**
     * valueat ::= "*" exp  
     * # Value at operator (pointer indirection) #beta7
     */
    private ValueAtExpr parseValueat() {
        expect(Category.ASTERIX);
        return new ValueAtExpr(parseExp());
    }
    
    /**
     * addressof ::= "&" exp
     * # Address-of operator #beta8
     */
    private AddressOfExpr parseAddressof() {
        expect(Category.AND);
        return new AddressOfExpr(parseExp());
    }

    /**
     * typecast ::= "(" type ")" exp
     * # type casting #beta10
     */
    private TypecastExpr parseTypecast() {
        expect(Category.LPAR);
        Type type = parseType();
        expect(Category.RPAR);
        Expr expr = parseExp();

        return new TypecastExpr(type, expr);
    }

    /**
     * arrayaccess  ::= exp arrayaccess'
     * arrayaccess' ::= "[" exp "]"
     * # array access #alpha3
     */
    private Expr parseArrayAccessPrime() {
        expect(Category.LSBR);
        Expr expr = parseExp();
        expect(Category.RSBR);
        return expr;
    }
    
    /**
     * fieldaccess  ::= exp fieldaccess'
     * fieldaccess' ::= "." IDENT
     * # structure field member access #alpha4
     */
    private String parseFieldAccessPrime() {
        expect(Category.DOT);
        return (expect(Category.IDENTIFIER)).data;
    }
}