package gen;

import java.util.HashMap;
import java.util.LinkedHashMap;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Label;
import gen.asm.AssemblyProgram.Section;
import gen.asm.AssemblyProgram.Section.Type;

/* This allocator should deal with all global and local variable declarations. */

public class MemAllocCodeGen extends CodeGen {
    // always assume dataSection 
    Section dataSection;
    // Char and String Literal HashMap
    public static final HashMap<String, Label> chrTable = new HashMap<>();

    public MemAllocCodeGen(AssemblyProgram asmProg) {
        assert asmProg != null && asmProg.getCurrentSection().type == Type.DATA;
        this.asmProg = asmProg;
        dataSection = asmProg.getCurrentSection();
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
                    vd.label = Label.get(vd.name);
                    // emit label, unique in global scope
                    dataSection.emit(vd.label);
                    // emit declaration
                    dataSection.emit(new Directive("space " + vd.getSize()));
                    // emit padding for any unaligned space
                    if (size % 4 != 0) dataSection.emit(new Directive("align " + AsmHelper.getPadding(size)));
                } else {
                    this.fpOffset -= AsmHelper.paddedSize(vd.getSize());
                    vd.fpOffset = this.fpOffset;
                }
            }

            case ClassTypeDecl ctd -> {
                // follow the embedding layout

                /*
                 * FOR VARDECLS
                 * 
                 * offset based on allocated space "this"
                 * vd's fp offset depends on offset
                 * 
                 * 1. collect all vds from leaf to root class (DEPRECATED)
                 * 2. add offset of virtual table pointer (4)
                 * 3. same as before
                 */

                // 2. add offset of virtual table pointer (4)
                int vdOffset = 4;
                // 1. add offset of all parent "allocation size"
                // ClassTypeDecl parent = ctd.parentDecl;
                // while (parent != null) {
                //     vdOffset += parent.vTableSectionSize();
                //     parent = parent.parentDecl;
                // }

                // same for vardecls
                for (VarDecl vd: ctd.vardecls) {
                    vd.clsOffset = vdOffset;
                    vdOffset += AsmHelper.paddedSize(vd.getSize());
                }

                /*
                 * FOR FUNDECLS
                 * 
                 * also pass "this" pointer to it? needed
                 */

                ctd.fundecls.forEach(this::visit);



                // for (FunDecl fd: ctd.fundecls) {
                //     // 4 for FP
                //     int offset = 4 + AsmHelper.paddedSize(fd.returnSize());

                //     for (VarDecl fdVd: fd.params.reversed()) {

                //     }



                // }


                // virtual table creation
                LinkedHashMap<String, FunDecl> map = ctd.allFds();
                Label vtableLbl = Label.get("vtable_"+ctd.name);
                dataSection.emit(vtableLbl);
                // emit all fds, based on funName
                map.forEach((name, fd) -> {
                    dataSection.emit(new Directive("word "+fd.classFunName()));
                });
            }

            case FunDecl fd -> {
                // fp and ra each takes 4 bytes
                // assume sp is already at fp right now
                //TODO modify for class declared function, add "this" size
                // args passed in (a, b, c, d), so read in reversed order
                int offset = 4 + AsmHelper.paddedSize(fd.returnSize()); // points to the start of return size
                // if (fd.isClassFunction()) offset += 4;
                for (VarDecl vd: fd.params.reversed()) {
                    // fpOffset set to the start of the argument
                    vd.fpOffset = offset;
                    offset += AsmHelper.paddedSize(vd.getSize());
                }
                this.fpOffset = -4; // points to return address

                this.global = false;
                visit(fd.block);
                this.global = true;
                fd.fpOffset = this.fpOffset; // set fp
            }

            case StrLiteral strlit -> {
                // break if already existed
                if (chrTable.containsKey(strlit.val)) break;
                // static allocation
                Label label = Label.create();
                chrTable.put(strlit.val, label);

                StringBuilder acc = new StringBuilder();

                for (int i = 0; i < strlit.val.length(); i++) {
                    char c = strlit.val.charAt(i);
                    acc.append(switch(c) {
                        case 7 -> "\\a";
                        case '\b' -> "\\b";
                        case '\n' -> "\\n";
                        case '\r' -> "\\r";
                        case '\t' -> "\\t";
                        case 0 -> "\\0";
                        case '\'' -> "\\'";
                        case '\"' -> "\\\"";
                        default -> Character.toString(c);
                    });
                } 

                dataSection.emit(label);
                dataSection.emit(new Directive("asciiz \"%s\"".formatted(acc.toString())));
                if (strlit.val.length() % 4 != 0) dataSection.emit(new Directive("align "+ AsmHelper.getPadding(strlit.val.length())));
            }

            case ChrLiteral chrlit -> {
                String val = switch(chrlit.val) {
                    case 7 -> "\\a";
                    case '\b' -> "\\b";
                    case '\n' -> "\\n";
                    case '\r' -> "\\r";
                    case '\t' -> "\\t";
                    case 0 -> "\\0";
                    case '\'' -> "\\'";
                    case '\"' -> "\\\"";
                    default -> Character.toString(chrlit.val);
                };
                // break if already existed
                if (chrTable.containsKey(val)) break;
                // static allocation
                Label label = Label.create();
                chrTable.put(val, label);

                dataSection.emit(label);
                
                val = "byte '%s'".formatted(val);
                dataSection.emit(new Directive(val));
                dataSection.emit(new Directive("align 3"));
            }

            default -> {
                if (n instanceof StructTypeDecl || n instanceof FunProto) break;
                for (ASTNode c: n.children()) visit(c);
            }
        }
    }
}
