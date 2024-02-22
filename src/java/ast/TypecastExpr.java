package ast;

import java.util.ArrayList;
import java.util.List;

public final class TypecastExpr extends Expr {
    public final Type subtype;
    public final Expr expr;

    public TypecastExpr(Type type, Expr expr) {
        this.subtype = type;
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subnodes = new ArrayList<>();
        subnodes.add(subtype);
        subnodes.add(expr);
        return subnodes;
    }
}
