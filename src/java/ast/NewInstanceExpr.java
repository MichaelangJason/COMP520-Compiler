package ast;

import java.util.ArrayList;
import java.util.List;

public final class NewInstanceExpr extends Expr {
    public final Type classType;

    public NewInstanceExpr(Type type) {
        this.classType = type;
        this.type = type;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(classType);
        return subexpr;
    }
}
