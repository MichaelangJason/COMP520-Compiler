package ast;

import java.util.ArrayList;
import java.util.List;

public final class ArrayType implements Type {
    
    final Type type;
    final int nbElmts;

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

    
}
