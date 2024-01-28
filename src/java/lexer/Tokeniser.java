package lexer;

import util.CompilerPass;

/**
 * @author cdubach
 */
public class Tokeniser extends CompilerPass {

    private Scanner scanner;
    // private static char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    // private static char[] lowerCaseAlpha = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    // private static char[] UpperCaseAlpha = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static String digits = "0123456789";
    private static String lowerCaseAlpha = "abcdefghijklmnopqrstuvwxzy";
    private static String upperCaseAlpha = lowerCaseAlpha.toUpperCase();

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
        
        // char literal
        if ((temp = charLiteral(c, line, column)) != null) return temp;
        
        // int literal
        if ((temp = intLiteral(c, line, column)) != null) return temp;
        
        // #include
        if ((temp = hashtagInclude(c, line, column)) != null) return temp;
        
        // string literal
        if ((temp = stringLiteral(c, line, column)) != null) return temp;
        
        // keywords
        if ((temp = keywords(c, line, column)) != null) return temp;

        // identifiers
        if ((temp = identifier(c, line, column)) != null) return temp;

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
        boolean hasNext = scanner.hasNext();
        switch (c) {
            case '|':
                if (hasNext && scanner.peek() == '|') {
                    scanner.next(); // consume next | char
                    return new Token(Token.Category.LOGOR, line, column);
                }
                error(c, line, column);
                return new Token(Token.Category.INVALID, line, column);
            case '&':
                if (hasNext && scanner.peek() == '&') {
                    scanner.next(); // consume next & char
                    return new Token(Token.Category.LOGAND, line, column);
                }
                return new Token(Token.Category.AND, line, column);
            case '=':
                if (hasNext && scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.EQ, line, column);
                }
                return new Token(Token.Category.ASSIGN, line, column);
            case '!':
                if (hasNext && scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.NE, line, column);
                }
                error(c, line, column);
                return new Token(Token.Category.INVALID, line, column);
            case '<':
                if (hasNext && scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.LE, line, column);
                }
                return new Token(Token.Category.LT, line, column);
            case '>':
                if (hasNext && scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.GE, line, column);
                }
                return new Token(Token.Category.GT, line, column);
            case '/':
                if (hasNext && scanner.peek() == '/') {
                    // consume all the following until a \n
                    while (scanner.hasNext() && scanner.next() != '\n');
                    return nextToken(); // go to next token
                }
                if (hasNext && scanner.peek() == '*') {
                    // consume all the following until a */
                    while (scanner.hasNext()) {
                        if (scanner.next() == '*' && scanner.hasNext() && scanner.next() == '/') break;
                    }
                    return nextToken(); // go to next token
                }
                return new Token(Token.Category.DIV, line, column);
            default:
                return null;
        }
    }

    private int isEscapedChar() {
        // check peek value, empty peek is covered within peek()
        if (!scanner.hasNext()) return -1;
        switch (scanner.peek()) {
            case 'a':
            case 'b':
            case 'n':
            case 'r':
            case 't':
            case '\\':
            case '0':
                return 0;
            case '\'': // single quote
                return 1;
            case '\"': // double quote
                return 2;
            default:
                return -1;
        }
    }

    private boolean isWhiteSpace(char c) {
        return c == ' ';
    }

    private boolean isDigit(char c) {
        return digits.indexOf(c) != -1;
    }

    private boolean isLowerCaseAlpha(char c) {
        return lowerCaseAlpha.indexOf(c) == -1;
    }

    private boolean isUpperCaseAlpha(char c) {
        return upperCaseAlpha.indexOf(c) == -1;
    }

    private Token hashtagInclude(char c, int line, int column) {
        if (c != '#') return null;
        if (!scanner.hasNext()) return new Token(Token.Category.INVALID, line, column);
        char[] inc = {'i', 'n', 'c', 'l', 'u', 'd', 'e'};
        char temp = scanner.next();

        for (int i = 0; i < inc.length - 1; i++) {
            if (temp != inc[i] || !scanner.hasNext()) return new Token(Token.Category.INVALID, line, column);
            temp = scanner.next();
        }
        return new Token(Token.Category.INCLUDE, line, column);
    }

    private boolean isSpecialCharWithoutQuote(char c, boolean hasSingleQuote) {
        switch(c) {
            case '\'':
                if (hasSingleQuote) return false;
            case '\"':
                if (!hasSingleQuote) return false;
            case '`':
            case '~':
            case '@':
            case '!':
            case '$':
            case '#':
            case '^':
            case '*':
            case '%':
            case '&':
            case '(':
            case ')':
            case '[':
            case ']':
            case '{':
            case '}':
            case '<':
            case '>':
            case '+':
            case '=':
            case '_':
            case '-':
            case '|':
            case '\\':
            case ';':
            case ':':
            case ',':
            case '.':
            case '?':
                return true;
            default:
                return false;
        }
    }
    
    private Token charLiteral(char c, int line, int column) {
        if (c == '\'') {
            if (!scanner.hasNext()) return new Token(Token.Category.INVALID, line, column);
            char next = scanner.next(); // go to

            // escaped char case
            if ((next == '\\' && isEscapedChar() != -1)) {
                if (!scanner.hasNext()) return new Token(Token.Category.INVALID, line, column);
                scanner.next(); // consume the escaped char
            } else if (!(isWhiteSpace(next) || isLowerCaseAlpha(next) || isUpperCaseAlpha(next) || isDigit(next)) || isSpecialCharWithoutQuote(next, false)) return null;
            
            if ((scanner.next()) == '\'') return new Token(Token.Category.CHAR_LITERAL, line, column); // check the end of '
        }

        return null;
    }

    private Token stringLiteral(char c, int line, int column) {
        if (c == '\"') {
            if (!scanner.hasNext()) return new Token(Token.Category.INVALID, line, column);
            char next = scanner.next();
            
            while (next != '"') {
                if (!scanner.hasNext()) return new Token(Token.Category.INVALID, line, column);

                if ((next == '\\' && isEscapedChar() != -1)) { scanner.next(); } // consume the escaped char
                else if(!(isWhiteSpace(next) || isLowerCaseAlpha(next) || isUpperCaseAlpha(next) || isDigit(next) || isSpecialCharWithoutQuote(next, true))) return null;

                if (!scanner.hasNext()) return new Token(Token.Category.INVALID, line, column);
                next = scanner.next(); // go to next
            }
            return new Token(Token.Category.STRING_LITERAL, line, column);
        }

        return null;
    }

    private Token intLiteral(char c, int line, int column) {
        if (!isDigit(c)) return null; // if not digit
        do {
            if (!scanner.hasNext()) break;
        } while (isDigit(scanner.peek()) && isDigit(scanner.next())); // lazy consume all following digits

        return new Token(Token.Category.INT_LITERAL, line, column);
    }

    private Token keywords(char c, int line, int column) {
        return null;
    }

    private Token identifier(char c, int line, int column) {
        return null;
    }
}
