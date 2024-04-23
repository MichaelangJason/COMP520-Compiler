package ast;

import java.util.ArrayList;
import java.util.List;

public final class ClassTypeDecl extends Decl {
    public ClassTypeDecl parentDecl;
    public String parentClassName = null;
    public final List<VarDecl> vardecls;
    public final List<FunDecl> fundecls;
    
    public ClassTypeDecl(ClassType type, List<VarDecl> varDecls, List<FunDecl> funDecls, String parentClass) {
        this.type = type;
        this.name = type.name;
        this.vardecls = varDecls;
        this.fundecls = funDecls;
        this.parentClassName = parentClass;
    }

    public List<ASTNode> children() {
        List<ASTNode> subnodes = new ArrayList<>();
        subnodes.add(type);
        subnodes.addAll(vardecls);
        return subnodes;
    }

}
