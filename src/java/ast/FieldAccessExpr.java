package ast;

import java.util.ArrayList;
import java.util.List;

public final class FieldAccessExpr extends Expr {
    public final Expr structName;
    public final String fieldName;

    public FieldAccessExpr(Expr structExpr, String fieldName) {
        this.structName = structExpr;
        this.fieldName = fieldName;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(structName);
        return subexpr;
    }
}
