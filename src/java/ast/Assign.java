package ast;

import java.util.ArrayList;
import java.util.List;

public final class Assign extends Expr {
    final Expr lhs, rhs;

    public Assign(Expr lhs, Expr rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(lhs);
        subexpr.add(rhs);
        return subexpr;
    }
}
