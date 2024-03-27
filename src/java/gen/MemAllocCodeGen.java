package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Label;
import gen.asm.AssemblyProgram.Section;
import gen.asm.AssemblyProgram.Section.Type;

/* This allocator should deal with all global and local variable declarations. */

public class MemAllocCodeGen extends CodeGen {
    // always assume dataSection 
    Section dataSection = asmProg.getCurrentSection(); 

    public MemAllocCodeGen(AssemblyProgram asmProg) {
        assert asmProg != null && asmProg.getCurrentSection().type == Type.DATA;
        this.asmProg = asmProg;
    }

    boolean global = true;
    int fpOffset = 0;
    
    /**
     * Different for global and local variable allocation
     * 
     * Global: visit VarDecls of Program
     * Local: will be allocated at each FunDecl
     */
    void visit(ASTNode n) {
        
        switch (n) {
            case Program p -> {
                // only allocate 
                for (Decl d: p.decls) {
                    if (!(d instanceof VarDecl)) continue;
                    // emit label
                    dataSection.emit(Label.get(d.name));
                    // emit declaration
                    dataSection.emit(new Directive("space " + d.type.getSize()));
                }
            }

            
        
            default -> {
                for (ASTNode c: n.children()) visit(c);
            }
        }
    }
}
