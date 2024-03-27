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

        if (curr.children().size() != arrobj.children().size()) return false;
        if (!curr.children().isEmpty()) return curr.children().get(0).equals(arrobj.children().get(0));
        else return true;
    }

    @Override
    public int getSize() {
        return nbElmts * type.getSize();
    }
    
}
