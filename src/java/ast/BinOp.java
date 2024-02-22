package ast;

import java.util.ArrayList;
import java.util.List;

public final class BinOp extends Expr {
    public final Expr lhs, rhs;
    public final Op op;

    public BinOp (Expr lhs, Op op, Expr rhs) {
        this.lhs = lhs;
        this.op = op;
        this.rhs = rhs;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> operation = new ArrayList<>();
        operation.add(lhs);
        operation.add(op);
        operation.add(rhs);
        return operation;
    }
}
