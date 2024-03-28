package ast;

import java.util.ArrayList;
import java.util.List;

import gen.asm.Label;

public final class VarDecl extends Decl {
    public int fpOffset = -1;
    public Label label;

    public VarDecl(Type type, String name) {
	    this.type = type;
	    this.name = name;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(this.type);
        return children;
    }

    public int getSize() {
        return this.type.getSize();
    }
}
