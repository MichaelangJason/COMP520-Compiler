package ast;

import java.util.ArrayList;
import java.util.List;

import gen.AsmHelper;

public final class ClassType implements Type {

    public final String name;
    public ClassTypeDecl ctd;

    public ClassType(String name) {
        this.name = name;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof ClassType && ((ClassType) obj).name.equals(this.name);
    }

    @Override
    public int getSize() {
        // ClassType must be padded
        // return std.vardecls.stream().mapToInt(vd -> AsmHelper.paddedSize(vd.type.getSize())).sum();
        return 4;
    }

    @Override
    public String toString() {
        return "class " + name;
    }

    public int getAllocationSize() {
        // virtual table pointer + field size
        if (this.ctd == null) return -1;

        ClassTypeDecl curr = this.ctd;
        int sum = 0;

        while (curr != null) {
            sum += 4; // virtual table pointer
            // add size of all fields for current ctd
            sum += ctd.vardecls.stream().mapToInt(vd -> AsmHelper.paddedSize(vd.type.getSize())).sum();
            // move to parent decl
            curr = curr.parentDecl;
        }

        return sum;
    }
}
