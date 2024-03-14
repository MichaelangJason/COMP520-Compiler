package sem;

import ast.StructTypeDecl;

public class StructDeclSymbol extends Symbol {
    StructTypeDecl std;

    public StructDeclSymbol(StructTypeDecl std) {
        super(std.name);
        this.std = std;
    }
}
