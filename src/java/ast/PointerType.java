package ast;

import java.util.ArrayList;
import java.util.List;

public final class PointerType implements Type {

    final Type type;

    public PointerType(Type type) {
        this.type = type;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> subtype = new ArrayList<>();
        subtype.add(type);
        return subtype;
    }
    
}
