package ast;

import java.util.ArrayList;
import java.util.List;

public final class SizeOfExpr extends Expr {
    final Type subtype;

    public SizeOfExpr(Type type) {
        this.subtype = type;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(subtype);
        return subexpr;
    }
}
