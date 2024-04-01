package ast;

import java.util.ArrayList;
import java.util.List;

import gen.asm.Label;

public final class While extends Stmt {
    public Expr expr; // condition
    public Stmt stmt; // executing part 
    public Label whileLbl;
    public Label endLbl;

    public While(Expr expr, Stmt stmt) {
        this.expr = expr;
        this.stmt = stmt;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subnodes = new ArrayList<>();
        subnodes.add(expr);
        subnodes.add(stmt);
        return subnodes;
    }


}
