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

        while(!curr.children().isEmpty() || ptrobj.children().isEmpty()) {
            if (curr.children().size() != ptrobj.children().size()) return false;
            // they can only have one child
            curr = (Type) curr.children().get(0);
            ptrobj = (Type) ptrobj.children().get(0);
            // match child type
            if (!curr.equals(ptrobj)) return false;
        }

        return true;
    }
    
}
