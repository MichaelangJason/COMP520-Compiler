package ast;

public abstract sealed class Stmt implements ASTNode
        permits Block, While, If, Return, Continue, Break, ExprStmt {
}
