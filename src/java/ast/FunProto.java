package ast;

import java.util.ArrayList;
import java.util.List;

public final class FunProto extends Decl {
    public final List<VarDecl> params;

    public FunProto(Type type, String name, List<VarDecl> params) {
        this.type = type;
        this.name = name;
        this.params = params;
    }

    public List<ASTNode> children() {
        List<ASTNode> subnodes = new ArrayList<>();
        subnodes.add(type);
        subnodes.addAll(params);
        return subnodes;
    }
    
}
