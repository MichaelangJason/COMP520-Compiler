package ast;

import java.util.ArrayList;
import java.util.List;

public final class PointerType implements Type {

    public final Type type;

    public PointerType(Type type) {
        this.type = type;
    } 

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subtype = new ArrayList<>();
        subtype.add(type);
        return subtype;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof PointerType)) return false;
        Type curr = this;
        Type ptrobj = (PointerType) obj; // cast to PointerType

        if (curr.children().size() != ptrobj.children().size()) return false;
        if (!curr.children().isEmpty()) return curr.children().get(0).equals(ptrobj.children().get(0));
        else return true;
    }

    @Override
    public int getSize() {
        return 4;
    }
    
}
