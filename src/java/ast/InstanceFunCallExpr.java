package ast;

import java.util.ArrayList;
import java.util.List;

public final class InstanceFunCallExpr extends Expr {
    public final Expr classObj;
    public final FunCallExpr fc;
    public FunDecl fd;
    public FunDecl referFd;

    public InstanceFunCallExpr(Expr classObj, FunCallExpr fc) {
        this.classObj = classObj;
        this.fc = fc;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        // children.addAll(children);
        children.add(classObj);
        children.add(fc);
        return children;
    }    
}
