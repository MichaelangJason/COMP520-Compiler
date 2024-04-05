package ast;

import java.util.ArrayList;
import java.util.List;

public final class ChrLiteral extends Expr {
    public char val;
    public boolean isEscapedChar = false;

    public ChrLiteral(String s) {
        val = s.charAt(0);
        checkEscapedChar();
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }
    
    private void checkEscapedChar() {
        isEscapedChar = switch(val) {
            case 7, '\b', '\n', '\r', '\t', '\\', 0, '\'', '\"' -> true;
            default -> false;
        };
    }
}
