package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructType implements Type {

    public final String name;
    public StructTypeDecl std;

    public StructType(String name) {
        this.name = name;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof StructType && ((StructType) obj).name == this.name;
    }
}
