package sem;

import ast.ClassTypeDecl;

public class ClassTypeDeclSymbol extends Symbol {
    public ClassTypeDecl ctd;


    public ClassTypeDeclSymbol(ClassTypeDecl ctd) {
        super(ctd.name);
        this.ctd = ctd;
    }
    
}
