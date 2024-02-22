package ast;

import java.util.ArrayList;
import java.util.List;

public final class ExprStmt extends Stmt {
    public Expr expr;
    
    public ExprStmt(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subexpr = new ArrayList<>();
        subexpr.add(expr);
        return subexpr;
    }
}
