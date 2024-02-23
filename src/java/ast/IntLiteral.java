package ast;

import java.util.ArrayList;
import java.util.List;

public final class IntLiteral extends Expr {
    public int val;
    
    public IntLiteral(int val) {
        this.val = val;
    }
    
    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }
    
}
