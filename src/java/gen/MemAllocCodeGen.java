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
            case VarDecl vd -> {
                if (this.global) {
                    int size = vd.getSize();
                    // emit label, unique in global scope
                    dataSection.emit(Label.get(vd.name));
                    // emit declaration
                    dataSection.emit(new Directive("space " + vd.getSize()));
                    // emit padding for any unaligned space
                    if (size % 4 != 0) dataSection.emit(new Directive("align " + (4 - size % 4)));
                } else {
                    this.fpOffset -= vd.getSize();
                    vd.fpOffset = this.fpOffset;
                }
            }

            case FunDecl fd -> {
                // fp and ra each takes 4 bytes
                // assume sp is already at fp right now
                
                // args passed in (a, b, c, d), so read in reversed order
                int offset = 4 + AsmHelper.paddedSize(fd.returnSize()); // points to the start of return size
                for (VarDecl vd: fd.params.reversed()) {
                    // fpOffset set to the start of the argument
                    offset += AsmHelper.paddedSize(vd.getSize());
                    vd.fpOffset = offset;    
                }
                this.fpOffset = -4; // points to return address

                this.global = false;
                visit(fd.block);
                this.global = true;
            }
        
            default -> {
                for (ASTNode c: n.children()) visit(c);
            }
        }
    }
}
