package ast;

import java.util.ArrayList;
import java.util.List;

public final class ArrayType implements Type {
    
    public final Type type;
    public final int nbElmts;

    public ArrayType(Type type, int n) {
        this.type = type;
        this.nbElmts = n;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subtype = new ArrayList<>();
        subtype.add(type);
        return subtype;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ArrayType)) return false;
        if (this.nbElmts != ((ArrayType) obj).nbElmts) return false;
        
        Type curr = this;
        Type arrobj = (ArrayType) obj; // cast to ArrayType

        while(!curr.children().isEmpty() || arrobj.children().isEmpty()) {
            if (curr.children().size() != arrobj.children().size()) return false;
            // they can only have one child
            curr = (Type) curr.children().get(0);
            arrobj = (Type) arrobj.children().get(0);
            // match child type
            if (!curr.equals(arrobj)) return false;
        }

        return true;
    }
    
}
