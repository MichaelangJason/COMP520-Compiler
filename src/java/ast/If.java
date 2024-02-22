package ast;

import java.util.ArrayList;
import java.util.List;

public final class If extends Stmt {
    public Expr expr;
    public Stmt ifBranch;
    public Stmt elseBranch;

    public If(Expr expr, Stmt... branches) {
        this.expr = expr;
        // raise unbounded index error if branches invalid
        this.ifBranch = branches[0];
        this.elseBranch = branches.length == 2 ? branches[1] : null; 
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subnodes = new ArrayList<>();
        subnodes.add(expr);
        subnodes.add(ifBranch);
        if (elseBranch != null) subnodes.add(elseBranch);
        return subnodes;
    }
    
}
