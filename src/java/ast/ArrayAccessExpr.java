package ast;

import java.util.ArrayList;
import java.util.List;

public final class ArrayAccessExpr extends Expr {
    final Expr varName, idx;
    
    public ArrayAccessExpr(Expr varName, Expr idx) {
        this.varName = varName;
        this.idx = idx;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(varName);
        subexpr.add(idx);
        return subexpr;
    }
}
