package ast;

import java.util.ArrayList;
import java.util.List;

import gen.AsmHelper;

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
        return obj instanceof StructType && ((StructType) obj).name.equals(this.name);
    }

    @Override
    public int getSize() {
        // StructType must be padded
        return std.vardecls.stream().mapToInt(vd -> AsmHelper.paddedSize(vd.type.getSize())).sum();
    }
}
