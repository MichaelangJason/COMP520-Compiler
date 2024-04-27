package ast;

import java.util.ArrayList;
import java.util.List;

public final class FunDecl extends Decl {
    public final List<VarDecl> params;
    public final Block block;
    public int fpOffset;
    public ClassTypeDecl ctd = null;

    public FunDecl(Type type, String name, List<VarDecl> params, Block block) {
	    this.type = type;
	    this.name = name;
	    this.params = params;
	    this.block = block;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(type);
        children.addAll(params);
        children.add(block);
        return children;
    }

    public boolean isClassFunction() {
        return ctd != null;
    }

    public int returnSize() {
        return this.type.getSize();
    }

}
