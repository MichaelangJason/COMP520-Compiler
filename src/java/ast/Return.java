package ast;

import java.util.ArrayList;
import java.util.List;

public final class Return extends Stmt {
    public Expr expr;
    public FunDecl fd;
    
    public Return(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        if (expr != null) subexpr.add(expr);
        return subexpr;
    }
}
