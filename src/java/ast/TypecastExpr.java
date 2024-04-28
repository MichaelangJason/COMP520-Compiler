package ast;

import java.util.ArrayList;
import java.util.List;

public final class TypecastExpr extends Expr {
    public final Type castToType;
    public final Expr expr;
    public int castOffset = 0;

    public TypecastExpr(Type type, Expr expr) {
        this.castToType = type;
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subnodes = new ArrayList<>();
        subnodes.add(castToType);
        subnodes.add(expr);
        return subnodes;
    }
}
