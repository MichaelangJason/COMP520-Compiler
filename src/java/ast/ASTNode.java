package ast;

import java.util.List;

public sealed interface  ASTNode
        permits Decl, Expr, Program, Stmt, Type, Op {

    /**
     * Returns all the children of this ASTNode.
     * */
    abstract List<ASTNode> children();
}
