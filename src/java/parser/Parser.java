package parser;


import lexer.Token;
import lexer.Token.Category;
import lexer.Tokeniser;
import util.CompilerPass;

import java.util.LinkedList;
import java.util.Queue;
import java.util.stream.Stream;


/**
 * @author cdubach
 */
public class Parser  extends CompilerPass {

    private Token token;

    private Queue<Token> buffer = new LinkedList<>();

    private final Tokeniser tokeniser;



    public Parser(Tokeniser tokeniser) {
        this.tokeniser = tokeniser;
    }

    public void parse() {
        // get the first token
        nextToken();

        parseProgram();
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
    private void expect(Category... expected) {
        for (Category e : expected) {
            if (e == token.category) {
                nextToken();
                return;
            }
        }
        error(expected);
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


    private void parseProgram() {
        parseIncludes();

        while (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            if (token.category == Category.STRUCT &&
                    lookAhead(1).category == Category.IDENTIFIER &&
                    lookAhead(2).category == Category.LBRA) {
                // structdecl
                parseStructDecl();
            } else {
                // type IDENT
                parseType();
                expect(Category.IDENTIFIER);

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
                    parseVardeclPrime();
                }
            }
        }
        // to be completed ...

        expect(Category.EOF);
    }

    // includes are ignored, so does not need to return an AST node
    private void parseIncludes() {
        if (accept(Category.INCLUDE)) {
            nextToken();
            expect(Category.STRING_LITERAL);
            parseIncludes();
        }
    }

    /**
     * structdecl ::= structtype "{" (vardecl)+ "}" ";"
     */
    private void parseStructDecl(){
        // structtype
        parseStructtype();
        // "{"
        expect(Category.LBRA);
        // (vardecl)+
        parseType();
        expect(Category.IDENTIFIER);
        parseVardeclPrime();

        while (accept(Category.INT, Category.CHAR, Category.VOID, Category.STRUCT)) {
            parseType();
            expect(Category.IDENTIFIER);
            parseVardeclPrime();
        }

        expect(Category.RBRA);
        expect(Category.SC);
    }

    /**
     * vardecl ::= type IDENT ("[" INT_LITERAL "]")* ";"
     * vardecl' ::= ("[" INT_LITERAL "]")* ";"
     */
    private void parseVardeclPrime() {
        while (accept(Category.LSBR)
            && lookAhead(1).category == Category.INT_LITERAL
            && lookAhead(2).category == Category.RSBR
        ) {
            expect(Category.LSBR);
            expect(Category.INT_LITERAL);
            expect(Category.RSBR);
        }
        expect(Category.SC);
    }

    /**
     * type       ::= ("int" | "char" | "void" | structtype) ("*")*
     * structtype ::= "struct" IDENT
     */
    private void parseType() {
        if (accept(Category.INT, Category.CHAR, Category.VOID)) {
            expect(Category.INT, Category.CHAR, Category.VOID);
        } else if (accept(Category.STRUCT)) {
            parseStructtype();
        }
        while (accept(Category.ASTERIX)) {
            expect(Category.ASTERIX);
        }
    }

    private void parseStructtype() {
        expect(Category.STRUCT);
        expect(Category.IDENTIFIER);
    }

    /*
     * params     ::= [ type IDENT ("[" INT_LITERAL "]")* ("," type IDENT ("[" INT_LITERAL "]")*)* ]
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
        
        
        // vardecl *
        while (accept(Category.INT, Category.CHAR, Category.VOID, Category.STRUCT)) {
            parseType();
            expect(Category.IDENTIFIER);
            parseVardeclPrime();
        }

        // stmt *
        // parseStmt();
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
     */
    private void parseExp() {
        if (accept(Category.INT_LITERAL, Category.CHAR_LITERAL, Category.STRING_LITERAL)) {
            nextToken(); // consume it
        } else if (accept(Category.MINUS, Category.PLUS)) {
            expect(Category.MINUS, Category.PLUS);
            parseExp();
        } else if (accept(Category.LPAR)) {
            parseExpLpar();
        } else if (accept(Category.ASTERIX)) {
            parseValueat();
        } else if (accept(Category.AND)) {
            parseAddressof();
        } else if (accept(Category.SIZEOF)) {
            parseSizeof();
        } else if (accept(Category.IDENTIFIER)) {
            parseExpIdent();
        }

        // Exp'
        parseExpPrime();
    }

    private void parseExpPrime() {
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

    private void parseExpIdent() {
        expect(Category.IDENTIFIER);

        if (accept(Category.LPAR)) {
            // funcall
            parseFuncall();
        }
    }

    private void parseFuncall() {
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
    /*
     * fun' ::= "(" params ")"
     */
    private void parseFunPrime() {
        expect(Category.LPAR);
        parseParams();
        expect(Category.RPAR);
    }

    void parseSizeof() {
        if (accept(Category.SIZEOF)) {
            expect(Category.SIZEOF);
            expect(Category.LPAR);
            parseType();
            expect(Category.RPAR);
        }
    }

    private void parseValueat() {
        expect(Category.ASTERIX);
        parseExp();
    }
    
    private void parseAddressof() {
        expect(Category.AND);
        parseExp();
    }

    private void parseTypecast() {
        expect(Category.LPAR);
        parseType();
        expect(Category.RPAR);
        parseExp();
    }

    private void parseArrayAccessPrime() {
        expect(Category.LSBR);
        parseExp();
        expect(Category.RSBR);
    }

    private void parseFieldAccessPrime() {
        expect(Category.DOT);
        expect(Category.IDENTIFIER);
    }

}