package parser;


import ast.*;
import lexer.Token;
import lexer.Token.Category;
import lexer.Tokeniser;
import util.CompilerPass;

import java.util.ArrayList;
import java.util.Arrays;
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
            Expr expr = parseExp(0);
            expect(Category.RPAR);
            Stmt stmt = parseStmt();

            return new While(expr, stmt);

        } else if (accept(Category.IF)) {
            expect(Category.IF);
            expect(Category.LPAR);
            Expr expr = parseExp(0);
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
                expr = parseExp(0);
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
            Expr expr = parseExp(0);
            expect(Category.SC);
            return new ExprStmt(expr);
        }
    }

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
    private Expr parseExp(int prc) {
        // betas
        if (accept(Category.IDENTIFIER)) {
            Expr expr = parseExpIdent();
            return parseExpPrime(expr, prc);
        } else if (prc <= 7 && accept(Category.MINUS, Category.PLUS)) {
            //
            Token optk = expect(Category.MINUS, Category.PLUS);
            Op op = optk.category == Category.MINUS ? Op.SUB : Op.ADD;
            Expr expr = parseExp(prc);
            BinOp binop = new BinOp(new IntLiteral(0), op, expr);

            return parseExpPrime(binop, prc);
        } else if (accept(Category.LPAR)) {
            Expr expr = parseExpLpar(prc);
            return parseExpPrime(expr, prc);
        } else if (prc <= 7 && accept(Category.ASTERIX)) {
            ValueAtExpr v = parseValueat();
            return parseExpPrime(v, prc);
        } else if (prc <= 7 && accept(Category.AND)) {
            AddressOfExpr a = parseAddressof();
            return parseExpPrime(a, prc);
        } else if (accept(Category.SIZEOF)) {
            SizeOfExpr s = parseSizeof();
            return parseExpPrime(s, prc);
        } else {
            Token tk = expect(Category.INT_LITERAL, Category.CHAR_LITERAL, Category.STRING_LITERAL);
            Expr lit = switch(tk.category) {
                case INT_LITERAL -> new IntLiteral(Integer.parseInt(tk.data));
                case STRING_LITERAL -> new StrLiteral(tk.data);
                case CHAR_LITERAL -> new ChrLiteral(tk.data);
                default -> null;
            };    
            if (lit == null) return null;
            return parseExpPrime(lit, prc);
        }    
    }    
    

    /**
     * exp' ::= "=" exp exp'
     *        | "[" arrayaccess' exp'
     *        | "." fieldaccess' exp'
     *        | (">" | "<" | ">=" | "<=" | "!=" | "==" | "+" | "-" | "/" | "*" | "%" | "||" | "&&") exp
     *        | epsilon
     */
    private Expr parseExpPrime(Expr prev, int prc) {
        // int prc = 0;
        // alphas
        Category[][] cats = new Category[][] {
            {Category.LOGOR},
            {Category.LOGAND},
            {Category.NE, Category.EQ},
            {Category.GT, Category.LT, Category.GE, Category.LE},
            {Category.PLUS, Category.MINUS},
            {Category.DIV, Category.ASTERIX, Category.REM},
        };
        
        if (accept(Category.ASSIGN) && prc == 0) {
            // assignment
            expect(Category.ASSIGN);
            Expr expr = parseExp(0);
            prev = parseExpPrime(new Assign(prev, expr), prc);
        } else if (accept(Category.LSBR)) {
            Expr rhs = parseArrayAccessPrime();
            ArrayAccessExpr expr = new ArrayAccessExpr(prev, rhs);
            prev = parseExpPrime(expr, prc);
        } else if (accept(Category.DOT)) {
            String name = parseFieldAccessPrime();
            Expr expr = new FieldAccessExpr(prev, name);

            while (accept(Category.DOT)) {
                name = parseFieldAccessPrime();
                expr = new FieldAccessExpr(expr, name);
            }

            prev = parseExpPrime(expr, prc);
        } else if (prc <= 6 && accept(
            Arrays.stream(
                Arrays.copyOfRange(cats, prc, cats.length))
                      .flatMap(Arrays::stream)
                      .toArray(Category[]::new)
            )) {
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
            int nextPrc;
            Category[] ops = switch(optk.category) {
                case ASTERIX, DIV, REM -> { nextPrc = 6; yield cats[5]; }
                case PLUS, MINUS -> { nextPrc = 5; yield cats[4]; }
                case GT, LT, GE, LE -> { nextPrc = 4; yield cats[3]; }
                case NE, EQ -> { nextPrc = 3; yield cats[2]; }
                case LOGAND -> { nextPrc = 2; yield cats[1]; }
                case LOGOR -> { nextPrc = 1; yield cats[0]; }
                default -> throw new Error();
            };
            
            Expr rhs = parseExp(nextPrc);
            prev = new BinOp(prev, op, rhs);

            while (accept(ops)) {
                optk = nextToken();
                op = switch(optk.category) {
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
                rhs = parseExp(nextPrc);
                prev = new BinOp(prev, op, rhs);
            }

            prev = parseExpPrime(prev, prc);
        }
        
        return prev;
    }

    /**
     * ExpLpar ::= "(" exp ")" | typecast
     */
    private Expr parseExpLpar(int prc) {
        Category[] types = new Category[]{Category.INT, Category.CHAR, Category.VOID, Category.STRUCT};
        
        Expr expr;
        if (Stream.of(types).anyMatch(s -> s == lookAhead(1).category)) {
            expr = parseTypecast();
        } else {
            expect(Category.LPAR);
            expr = parseExp(0);
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
            args.add(parseExp(0));
            while (accept(Category.COMMA)) {
                expect(Category.COMMA);
                args.add(parseExp(0));
            }
        }
        
        expect(Category.RPAR);
        return args;
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
    

    /**
     * valueat ::= "*" exp  
     * # Value at operator (pointer indirection) #beta7
     */
    private ValueAtExpr parseValueat() {
        expect(Category.ASTERIX);
        return new ValueAtExpr(parseExp(7));
    }
    
    /**
     * addressof ::= "&" exp
     * # Address-of operator #beta8
     */
    private AddressOfExpr parseAddressof() {
        expect(Category.AND);
        return new AddressOfExpr(parseExp(7));
    }

    /**
     * typecast ::= "(" type ")" exp
     * # type casting #beta10
     */
    private TypecastExpr parseTypecast() {
        expect(Category.LPAR);
        Type type = parseType();
        expect(Category.RPAR);
        Expr expr = parseExp(7);

        return new TypecastExpr(type, expr);
    }

    /**
     * arrayaccess  ::= exp arrayaccess'
     * arrayaccess' ::= "[" exp "]"
     * # array access #alpha3
     */
    private Expr parseArrayAccessPrime() {
        expect(Category.LSBR);
        Expr expr = parseExp(0);
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