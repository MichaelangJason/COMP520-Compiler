package ast;

import java.util.ArrayList;
import java.util.List;

public final class ValueAtExpr extends Expr {
    public final Expr expr;

    public ValueAtExpr(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(expr);
        return subexpr;
    }
}
