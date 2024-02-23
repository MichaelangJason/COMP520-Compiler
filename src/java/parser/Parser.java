package parser;


import ast.ASTNode;
import ast.ArrayType;
import ast.BaseType;
import ast.Decl;
import ast.Expr;
import ast.PointerType;
import ast.Program;
import ast.StructType;
import ast.StructTypeDecl;
import ast.Type;
import ast.VarDecl;
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
    private void nextToken() {
        if (!buffer.isEmpty())
            token = buffer.remove();
        else
            token = tokeniser.nextToken();
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
                    parseFunPrime();

                    if (token.category == Category.SC) {
                        // funproto
                        expect(Category.SC);
                    } else {
                        // fundecl
                        parseBlock();
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
    private void parseFunPrime() {
        expect(Category.LPAR);
        parseParams();
        expect(Category.RPAR);
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
    private void parseParams() {
        if (!accept(Category.INT, Category.CHAR, Category.VOID, Category.STRUCT)) return;
        parseType();
        expect(Category.IDENTIFIER);
        // ("[" INT_LITERAL "]")*
        while(accept(Category.LSBR)) {
            expect(Category.LSBR);
            expect(Category.INT_LITERAL);
            expect(Category.RSBR);
        }
        // (("," type IDENT ("[" INT_LITERAL "]")*)*)
        while(accept(Category.COMMA)) {
            expect(Category.COMMA);
            parseType();
            expect(Category.IDENTIFIER);
            // ("[" INT_LITERAL "]")*
            while(accept(Category.LBRA)) {
                expect(Category.LBRA);
                expect(Category.INT_LITERAL);
                expect(Category.RBRA);
            }
        }
    }

    /**
     * block ::= "{" (vardecl)* (stmt)* "}"
     */
    private void parseBlock() {
        expect(Category.LBRA);
        
        // (vardecl) *
        while (accept(Category.INT, Category.CHAR, Category.VOID, Category.STRUCT)) {
            parseVardecl();
        }

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
                parseStmt();
        }

        expect(Category.RBRA);
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
    private void parseStmt() {
        if (accept(Category.WHILE)) {
            expect(Category.WHILE);
            expect(Category.LPAR);
            parseExp();
            expect(Category.RPAR);
            parseStmt();
        } else if (accept(Category.IF)) {
            expect(Category.IF);
            expect(Category.LPAR);
            parseExp();
            expect(Category.RPAR);
            parseStmt();
            if (accept(Category.ELSE)) {
                expect(Category.ELSE);
                parseStmt();
            }
        } else if (accept(Category.RETURN)) {
            expect(Category.RETURN);
            if (accept(Category.SC)) {
                expect(Category.SC);
            } else {
                parseExp();
                expect(Category.SC);
            }
        } else if (accept(Category.CONTINUE, Category.BREAK)) {
            expect(Category.CONTINUE, Category.BREAK);
            expect(Category.SC);
        } else if (accept(Category.LBRA)) {
            parseBlock();
        } else {
            parseExp();
            expect(Category.SC);
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
    private void parseExp() {
        // betas
        if (accept(Category.IDENTIFIER)) {
            parseExpIdent();
            parseExpPrime();
        } else if (accept(Category.MINUS, Category.PLUS)) {
            expect(Category.MINUS, Category.PLUS);
            parseExp();
            parseExpPrime();
        } else if (accept(Category.LPAR)) {
            parseExpLpar();
            parseExpPrime();
        } else if (accept(Category.ASTERIX)) {
            parseValueat();
            parseExpPrime();
        } else if (accept(Category.AND)) {
            parseAddressof();
            parseExpPrime();
        } else if (accept(Category.SIZEOF)) {
            parseSizeof();
            parseExpPrime();
        } else {
            expect(Category.INT_LITERAL, Category.CHAR_LITERAL, Category.STRING_LITERAL);
            parseExpPrime();
        }
    }

    /**
     * exp' ::= "=" exp exp'
     *        | "[" arrayaccess' exp'
     *        | "." fieldaccess' exp'
     *        | (">" | "<" | ">=" | "<=" | "!=" | "==" | "+" | "-" | "/" | "*" | "%" | "||" | "&&") exp
     *        | epsilon
     */
    private void parseExpPrime() {
        // alphas
        if (accept(Category.ASSIGN)) {
            // assignment
            expect(Category.ASSIGN);
            parseExp();
            parseExpPrime();
        } else if (accept(Category.LSBR)) {
            parseArrayAccessPrime();
            parseExpPrime();
        } else if (accept(Category.DOT)) {
            parseFieldAccessPrime();
            parseExpPrime();
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
            nextToken(); // consume it
            parseExp();
            parseExpPrime();
        }
    }

    /**
     * ExpLpar ::= "(" exp ")" | typecast
     */
    private void parseExpLpar() {
        Category[] types = new Category[]{Category.INT, Category.CHAR, Category.VOID, Category.STRUCT};
        if (Stream.of(types).anyMatch(s -> s == lookAhead(1).category)) {
            parseTypecast();
        } else {
            expect(Category.LPAR);
            parseExp();
            expect(Category.RPAR);
        }
    }

    /**
     * ExpIdent ::= IDENT | IDENT funcall'
     */
    private void parseExpIdent() {
        expect(Category.IDENTIFIER);

        if (accept(Category.LPAR)) {
            // funcall
            parseFuncallPrime();
        }
    }

    /**
     * funcall  ::= IDENT funcall' # function call #beta6
     * funcall' ::= "(" [ exp ("," exp)* ] ")" 
     */
    private void parseFuncallPrime() {
        expect(Category.LPAR);

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
            parseExp();
            while (accept(Category.COMMA)) {
                expect(Category.COMMA);
                parseExp();
            }
        }
        
        expect(Category.RPAR);
    }

    /**
     * sizeof ::= "sizeof" "(" type ")"  
     * # size of type #beta9
     */
    void parseSizeof() {
        if (accept(Category.SIZEOF)) {
            expect(Category.SIZEOF);
            expect(Category.LPAR);
            parseType();
            expect(Category.RPAR);
        }
    }

    /**
     * valueat ::= "*" exp  
     * # Value at operator (pointer indirection) #beta7
     */
    private void parseValueat() {
        expect(Category.ASTERIX);
        parseExp();
    }
    
    /**
     * addressof ::= "&" exp
     * # Address-of operator #beta8
     */
    private void parseAddressof() {
        expect(Category.AND);
        parseExp();
    }

    /**
     * typecast ::= "(" type ")" exp
     * # type casting #beta10
     */
    private void parseTypecast() {
        expect(Category.LPAR);
        parseType();
        expect(Category.RPAR);
        parseExp();
    }

    /**
     * arrayaccess  ::= exp arrayaccess'
     * arrayaccess' ::= "[" exp "]"
     * # array access #alpha3
     */
    private void parseArrayAccessPrime() {
        expect(Category.LSBR);
        parseExp();
        expect(Category.RSBR);
    }
    
    /**
     * fieldaccess  ::= exp fieldaccess'
     * fieldaccess' ::= "." IDENT
     * # structure field member access #alpha4
     */
    private void parseFieldAccessPrime() {
        expect(Category.DOT);
        expect(Category.IDENTIFIER);
    }
}