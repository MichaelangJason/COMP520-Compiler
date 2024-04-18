package ast;

public abstract sealed class Decl implements ASTNode
        permits FunDecl, StructTypeDecl, ClassTypeDecl, VarDecl, FunProto {

    public Type type;
    public String name;
}
