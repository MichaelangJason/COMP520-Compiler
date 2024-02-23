package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructTypeDecl extends Decl {
    public final List<VarDecl> vardecls;
    
    public StructTypeDecl(StructType type, List<VarDecl> varDecls) {
        this.type = type;
        // this.name = type.name;
        this.vardecls = varDecls;
    }

    public List<ASTNode> children() {
        List<ASTNode> subnodes = new ArrayList<>();
        subnodes.add(type);
        subnodes.addAll(vardecls);
        return subnodes;
    }

}
