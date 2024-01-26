package lexer;

import util.CompilerPass;

/**
 * @author cdubach
 */
public class Tokeniser extends CompilerPass {

    private Scanner scanner;


    public Tokeniser(Scanner scanner) {
        this.scanner = scanner;
    }

    private void error(char c, int line, int col) {
        String msg = "Lexing error: unrecognised character ("+c+") at "+line+":"+col;
        System.out.println(msg);
        incError();
    }



    /*
     * To be completed
     */
    public Token nextToken() {

        int line = scanner.getLine();
        int column = scanner.getColumn();

        if (!scanner.hasNext())
            return new Token(Token.Category.EOF, scanner.getLine(), scanner.getColumn());

        // get the next character
        char c = scanner.next();

        // skip white spaces between lexems
        if (Character.isWhitespace(c))
            return nextToken();
        
        Token temp; // initialized to null

        // no branch
        if ((temp = noBranch(c, line, column)) != null) return temp;
        
        // 2 char branches
        if ((temp = twoCharBranch(c, line, column)) != null) return temp;
        
        
        // ... to be completed


        // if we reach this point, it means we did not recognise a valid token
        error(c, line, column);
        return new Token(Token.Category.INVALID, line, column);
    }

    private Token noBranch(char c, int line, int column) {
        switch(c) {
            case '+':
                return new Token(Token.Category.PLUS, line, column);
            case '-':
                return new Token(Token.Category.MINUS, line, column);
            case '*':
                return new Token(Token.Category.ASTERIX, line, column);
            case '/':
                return new Token(Token.Category.DIV, line, column);
            case '%':
                return new Token(Token.Category.REM, line, column);
            case '{':
                return new Token(Token.Category.LBRA, line, column);
            case '}':
                return new Token(Token.Category.RBRA, line, column);
            case '(':
                return new Token(Token.Category.LPAR, line, column);
            case ')':
                return new Token(Token.Category.RPAR, line, column);
            case '[':
                return new Token(Token.Category.LSBR, line, column);
            case ']':
                return new Token(Token.Category.RSBR, line, column);
            case ';':
                return new Token(Token.Category.SC, line, column);
            case ',':
                return new Token(Token.Category.COMMA, line, column);
            case '.':
                return new Token(Token.Category.DOT, line, column);
            default:
                return null;
        }
    }

    private Token twoCharBranch(char c, int line, int column) {
        switch (c) {
            case '|':
                if (scanner.peek() == '|') {
                    scanner.next(); // consume next | char
                    return new Token(Token.Category.LOGOR, line, column);
                }
                error(c, line, column);
                return new Token(Token.Category.INVALID, line, column);
            case '&':
                if (scanner.peek() == '&') {
                    scanner.next(); // consume next & char
                    return new Token(Token.Category.LOGAND, line, column);
                }
                return new Token(Token.Category.AND, line, column);
            case '=':
                if (scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.EQ, line, column);
                }
                return new Token(Token.Category.ASSIGN, line, column);
            case '!':
                if (scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.NE, line, column);
                }
                error(c, line, column);
                return new Token(Token.Category.INVALID, line, column);
            case '<':
                if (scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.LE, line, column);
                }
                return new Token(Token.Category.LT, line, column);
            case '>':
                if (scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.GE, line, column);
                }
                return new Token(Token.Category.GT, line, column);
            default:
                return null;
        }
    }
}
