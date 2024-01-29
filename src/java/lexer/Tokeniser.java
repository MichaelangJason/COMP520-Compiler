package lexer;

import java.util.function.BiFunction;
import java.util.function.Supplier;
import util.CompilerPass;

/**
 * @author cdubach
 */
public class Tokeniser extends CompilerPass {

    private Scanner scanner;
    private static final String DIGITS = "0123456789";
    private static final String LOWERCASEALPHA = "abcdefghijklmnopqrstuvwxzy";
    private static final String UPPERCASEALPHA = LOWERCASEALPHA.toUpperCase();

    public Tokeniser(Scanner scanner) {
        this.scanner = scanner;
    }

    private void error(char c, int line, int col) {
        String msg = "---Lexing error: unrecognised character ("+c+") at "+line+":"+col+"---";
        System.out.println(msg);
        incError();
    }

    private void error(String acc, int line, int col) {
        String msg = "---Lexing error: unrecognised string ("+acc+") at "+line+":"+col+"---";
        System.out.println(msg);
        incError();
    }

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
        if ((temp = singleChar(c, line, column)) != null) return temp;
        
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
        
        // if we reach this point, it means we did not recognise a valid token
        return invalidWithMsg(c, line, column);
    }

    private Token invalidWithMsg(char c, int line, int column) {
        error(c, line, column);
        return new Token(Token.Category.INVALID, String.valueOf(c), line, column);
    }

    private Token invalidWithMsg(String acc, int line, int column) {
        error(acc, line, column);
        return new Token(Token.Category.INVALID, acc, line, column);

    }

    private Token singleChar(char c, int line, int column) {
        switch(c) {
            case '+':
                return new Token(Token.Category.PLUS, "+", line, column);
            case '-':
                return new Token(Token.Category.MINUS, "-", line, column);
            case '*':
                return new Token(Token.Category.ASTERIX, "*", line, column);
            case '%':
                return new Token(Token.Category.REM, "%", line, column);
            case '{':
                return new Token(Token.Category.LBRA, "{", line, column);
            case '}':
                return new Token(Token.Category.RBRA, "}", line, column);
            case '(':
                return new Token(Token.Category.LPAR, "(", line, column);
            case ')':
                return new Token(Token.Category.RPAR, ")", line, column);
            case '[':
                return new Token(Token.Category.LSBR, "[", line, column);
            case ']':
                return new Token(Token.Category.RSBR, "]", line, column);
            case ';':
                return new Token(Token.Category.SC, ";", line, column);
            case ',':
                return new Token(Token.Category.COMMA, ",", line, column);
            case '.':
                return new Token(Token.Category.DOT, ".", line, column);
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
                    return new Token(Token.Category.LOGOR, "||", line, column);
                }
                return invalidWithMsg(c, line, column);
            case '&':
                if (hasNext && scanner.peek() == '&') {
                    scanner.next(); // consume next & char
                    return new Token(Token.Category.LOGAND, "&&", line, column);
                }
                return new Token(Token.Category.AND, "&", line, column);
            case '=':
                if (hasNext && scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.EQ, "==", line, column);
                }
                return new Token(Token.Category.ASSIGN, "=", line, column);
            case '!':
                if (hasNext && scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.NE, "!=", line, column);
                }
                return invalidWithMsg(c, line, column);
            case '<':
                if (hasNext && scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.LE, "<=", line, column);
                }
                return new Token(Token.Category.LT, "<", line, column);
            case '>':
                if (hasNext && scanner.peek() == '=') {
                    scanner.next(); // consume next = char
                    return new Token(Token.Category.GE, ">=", line, column);
                }
                return new Token(Token.Category.GT, ">", line, column);
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
                return new Token(Token.Category.DIV, "/", line, column);
            default:
                return null;
        }
    }

    private int isEscapedChar(StringBuilder acc) {
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
                acc.append(scanner.peek());
                return -1;
        }
    }

    private boolean isWhiteSpace(char c) {
        return c == ' ';
    }

    private boolean isDigit(char c) {
        return DIGITS.indexOf(c) != -1;
    }

    private boolean isLowerCaseAlpha(char c) {
        return LOWERCASEALPHA.indexOf(c) != -1;
    }

    private boolean isUpperCaseAlpha(char c) {
        return UPPERCASEALPHA.indexOf(c) != -1;
    }

    private Token hashtagInclude(char c, int line, int column) {
        if (c != '#') return null;
        StringBuilder acc = new StringBuilder(); acc.append(c);
        
        char[] inc = {'i', 'n', 'c', 'l', 'u', 'd', 'e'};
        int i;
        for (i = 0; i < inc.length; i++) {
            if (!checkNext(inc[i]) || !scanner.hasNext()) break;
            acc.append(scanner.next());
        }

        if (i == inc.length) return new Token(Token.Category.INCLUDE, acc.toString(), line, column);
        else return invalidWithMsg(acc.toString(), line, column);
    }

    private boolean isSpecialCharWithoutQuote(char c, boolean hasSingleQuote) {
        switch(c) {
            case '\'':
                return hasSingleQuote;
            case '\"':
                return !hasSingleQuote;
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
            case '/':
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

    private boolean isLegalLiteralChar(char c, boolean hasSingleQuote) {
        return isWhiteSpace(c) || isLowerCaseAlpha(c) || isUpperCaseAlpha(c) || isDigit(c) || isSpecialCharWithoutQuote(c, hasSingleQuote);
    }
    
    private Token charLiteral(char c, int line, int column) {
        if (c == '\'' && scanner.hasNext()) {
            StringBuilder acc = new StringBuilder();
            acc.append('\'');
            char t = scanner.peek();

            // escaped char case
            if (t == '\\') {
                acc.append(scanner.next()); // consume \
                if (isEscapedChar(acc) == -1) return invalidWithMsg(c, line, column);
            } else if (!isLegalLiteralChar(t, false)) return invalidWithMsg(c, line, column);

            acc.append(scanner.next()); // consume it
            t = scanner.peek();

            if (t == '\'') { acc.append(scanner.next()); return new Token(Token.Category.CHAR_LITERAL, acc.toString(), line, column); } // check, consume and return
            else return invalidWithMsg(acc.toString(), line, column);
        }

        return null;
    }

    private Token stringLiteral(char c, int line, int column) {
        if (c == '\"') {
            StringBuilder acc = new StringBuilder();
            acc.append('\"');
            while (scanner.hasNext()) {
                char t = scanner.peek();
                if (t == '\"') { acc.append(scanner.next()); return new Token(Token.Category.STRING_LITERAL, acc.toString(), line, column); } // consume " and end
                if (t == '\\') { // escaped char
                    acc.append(scanner.next()); // consume \
                    if (isEscapedChar(acc) == -1) break;
                    acc.append(scanner.next()); // consume and continue
                    continue;
                }
                if (!isLegalLiteralChar(t, true)) break;
                acc.append(scanner.next()); // consume it
            }

            System.out.println("---------------" + scanner.peek());
            return invalidWithMsg(acc.toString(), line, column);
        }

        return null;
    }

    private Token intLiteral(char c, int line, int column) {
        if (!isDigit(c)) return null; // if not digit
        StringBuilder acc = new StringBuilder();
        acc.append(c);
        // consume all following digits
        while (scanner.hasNext()) { 
            if (!isDigit(scanner.peek())) break;
            acc.append(scanner.next());
        }

        return new Token(Token.Category.INT_LITERAL, acc.toString(), line, column);
    }

    private boolean matchIdentifier(char c, boolean notFirst) {
        return isLowerCaseAlpha(c) || isUpperCaseAlpha(c) || (notFirst && isDigit(c)) || c == '_';
    }

    private boolean checkNext(Supplier<Boolean> fn) {
        return scanner.hasNext() && fn.get();
    }

    private boolean checkNext(char c) {
        return scanner.hasNext() && scanner.peek() == c;
    }

    private Token keywords(char c, int line, int column) {
        // check start symbol, only starting with lowercase alphabet and following sequence > 1
        if (!isLowerCaseAlpha(c) || !scanner.hasNext() || !isLowerCaseAlpha(scanner.peek())) return null;
        StringBuilder acc = new StringBuilder();
        Supplier<Boolean> isNotIdentifier = () -> !checkNext(() -> matchIdentifier(scanner.peek(), true));
        BiFunction<String, Token.Category, Token> matchKeyword = (String keyword, Token.Category desire) -> {
            if (keyword.length() == 0) return null;

            char[] rem = keyword.toCharArray();
            if (acc.length() == 0) acc.append(rem[0]); // check if another branch has processed
            
            int i;
            for (i = 1; i < rem.length; i++) {
                if (!checkNext(rem[i]) || !scanner.hasNext()) break;
                acc.append(scanner.next()); // consume it
            }
            
            if (i == rem.length && isNotIdentifier.get()) return new Token(desire, acc.toString(), line, column);
            else return null;
        };

        Token temp; // initialized to null;
        switch(c) {
            case 'i': // int, if
                // int
                if ((temp = matchKeyword.apply("int", Token.Category.INT)) != null) return temp;
                // if
                if ((temp = matchKeyword.apply("if", Token.Category.IF)) != null) return temp;
                break;
            case 'v': // void
                if ((temp = matchKeyword.apply("void", Token.Category.VOID)) != null) return temp;
                break;
            case 'c': // char, continue
                // char
                if ((temp = matchKeyword.apply("char", Token.Category.CHAR)) != null) return temp;
                // continue
                if ((temp = matchKeyword.apply("continue", Token.Category.CONTINUE)) != null) return temp;
                break;
            case 'e': // else
                if ((temp = matchKeyword.apply("else", Token.Category.ELSE)) != null) return temp;
                break;
            case 'w': // while
                if ((temp = matchKeyword.apply("while", Token.Category.WHILE)) != null) return temp;
                break;
            case 'r': // return
                if ((temp = matchKeyword.apply("return", Token.Category.RETURN)) != null) return temp;
                break;
            case 's': // struct, sizeof
                // struct
                if ((temp = matchKeyword.apply("struct", Token.Category.STRUCT)) != null) return temp;
                // sizeof
                if ((temp = matchKeyword.apply("sizeof", Token.Category.SIZEOF)) != null) return temp;
                break;
            case 'b': // break
                if ((temp = matchKeyword.apply("break", Token.Category.BREAK)) != null) return temp;
                break;
            default:
                return null;
        }
        // break from the switch, pass to identifier
        return identifier(c, line, column, acc);
    }

    private Token identifier(char c, int line, int column, StringBuilder acc) {
        if (!matchIdentifier(c, false)) return null;
        if (acc.length() == 0) acc.append(c); // not being processed by keyword()
        /* possible situations:
         * 1. continue from where keywords() left
         * 2. scanner is still at c
         */
        while (scanner.hasNext()) {
            if (!matchIdentifier(scanner.peek(), true)) break;
            acc.append(scanner.next()); // consume it
        }
        
        return new Token(Token.Category.IDENTIFIER, acc.toString(), line, column);
    }

    private Token identifier(char c, int line, int column) {
        StringBuilder acc = new StringBuilder();
        return identifier(c, line, column, acc);
    }
}
