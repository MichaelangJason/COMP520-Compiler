package ast;

import java.util.ArrayList;
import java.util.List;

public final class IntLiteral extends Expr {
    public int val;

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }
    
}
