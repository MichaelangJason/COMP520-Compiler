package ast;

import java.util.ArrayList;
import java.util.List;

public final class AddressOfExpr extends Expr {
    public Expr expr;

    public AddressOfExpr(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(expr);
        return subexpr;
    }
}
