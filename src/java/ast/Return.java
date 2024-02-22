package ast;

import java.util.ArrayList;
import java.util.List;

public final class Return extends Stmt {
    public Expr expr;
    
    public Return(Expr... exprs) {
        if (exprs.length > 0) this.expr = exprs[0];
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        if (expr != null) subexpr.add(expr);
        return subexpr;
    }
}
