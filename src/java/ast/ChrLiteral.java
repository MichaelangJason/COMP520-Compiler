package ast;

import java.util.ArrayList;
import java.util.List;

public final class ChrLiteral extends Expr {
    public char val;

    public ChrLiteral(String s) {
        val = s.charAt(0);
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }    
}
