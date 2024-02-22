package ast;

import java.util.ArrayList;
import java.util.List;

public final class FunCallExpr extends Expr {
    final String name;
    final List<Expr> args;

    public FunCallExpr(String name, List<Expr> args) {
        this.name = name;
        this.args = args;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.addAll(args);
        return subexpr;
    }    
}
