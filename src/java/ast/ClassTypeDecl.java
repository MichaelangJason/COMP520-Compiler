package ast;

import java.util.ArrayList;
import java.util.List;

public final class ClassTypeDecl extends Decl {
    public final List<VarDecl> vardecls;
    public final List<FunDecl> fundecls;
    
    public ClassTypeDecl(ClassType type, List<VarDecl> varDecls, List<FunDecl> funDecls) {
        this.type = type;
        this.name = type.name;
        this.vardecls = varDecls;
        this.fundecls = funDecls;
    }

    public List<ASTNode> children() {
        List<ASTNode> subnodes = new ArrayList<>();
        subnodes.add(type);
        subnodes.addAll(vardecls);
        return subnodes;
    }

}
