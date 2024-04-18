package ast;

import java.util.ArrayList;
import java.util.List;

public final class InstanceFunCallExpr extends Expr {
    public final Expr classObj;
    public final FunCallExpr fc;
    public FunDecl fd;

    public InstanceFunCallExpr(Expr classObj, FunCallExpr fc) {
        this.classObj = classObj;
        this.fc = fc;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(fc);
        return subexpr;
    }    
}
