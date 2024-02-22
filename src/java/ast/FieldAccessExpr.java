package ast;

import java.util.ArrayList;
import java.util.List;

public final class FieldAccessExpr extends Expr {
    public final Expr field;
    public final String name;

    public FieldAccessExpr(Expr field, String name) {
        this.field = field;
        this.name = name;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(field);
        return subexpr;
    }
}
