package gen;

import java.util.ArrayList;
import java.util.List;

import ast.AddressOfExpr;
import ast.ArrayAccessExpr;
import ast.ClassType;
import ast.ClassTypeDecl;
import ast.Expr;
import ast.FieldAccessExpr;
import ast.PointerType;
import ast.StructType;
import ast.StructTypeDecl;
import ast.ValueAtExpr;
import ast.VarDecl;
import ast.VarExpr;
import gen.asm.AssemblyProgram;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.Section;
import gen.asm.Register.Arch;
import gen.asm.Register.Virtual;

/**
 * Generates code to calculate the address of an expression and return the result in a register.
 */
public class AddrCodeGen extends CodeGen {
    Section currSec;

    public AddrCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
        this.currSec = asmProg.getCurrentSection();
    }

    public Register visit(Expr e) {

        return switch(e) {
            case VarExpr v -> {
                Register resReg = Virtual.create();

                // if v is a Class field (accessing class field in InstanceFuncall), load from this
                if (v.isClassField()) {
                    // first get address of this from fundecl associated with varexpr
                    int offset = 4 + v.fd.params.stream().mapToInt(exp -> AsmHelper.paddedSize(exp.type.getSize())).sum() + v.fd.returnSize();
                    currSec.emit(OpCode.LW, resReg, Arch.fp, offset); // assume pushed in correct address
                    // currSec.emit(OpCode.LW, resReg, resReg, 0);

                    String fieldName = v.name;
                    ClassTypeDecl curr = v.fd.ctd;
                    List<ClassTypeDecl> parents = new ArrayList<>();
                    
                    while (curr != null) {
                        parents.add(curr);
                        curr = curr.parentDecl;
                    }

                    offset = v.vd.clsOffset;
                    for (ClassTypeDecl p: parents.reversed()) {
                        if (p.vardecls.stream().anyMatch(vd -> vd.name.equals(fieldName))) break;
                        offset += p.vTableSectionSize();
                    }


                    // get clsOffset from there
                    currSec.emit(OpCode.ADDIU, resReg, resReg, offset);
                } else {
                    if (v.vd.fpOffset == -1) {
                        currSec.emit(OpCode.LA, resReg, v.vd.label);
                    } else {
                        currSec.emit(OpCode.ADDIU, resReg, Arch.fp, v.vd.fpOffset);
                    }
                }

                yield resReg;
            }
            
            // returns the address where the data is actually stored
            case ArrayAccessExpr arrexp -> {
                // get the head of array to be accessed
                Register varReg = visit(arrexp.varName);
                
                Register resReg = Virtual.create();
                int typeSize = arrexp.type.getSize();
                // load type size into resReg
                currSec.emit(OpCode.LI, resReg, typeSize);
                // get the index of the array
                Register idxReg = (new ExprCodeGen(asmProg)).visit(arrexp.idx);
                // index * inner type size for array
                // assume only lower 32 bit
                currSec.emit(OpCode.MULT, idxReg, resReg);
                currSec.emit(OpCode.MFLO, resReg); // move lowest 32 bit to resReg, now resReg contains 

                // set offset to index * inner type size, point to the target value address
                currSec.emit(OpCode.ADD, resReg, varReg, resReg);
        
                yield resReg; // return a pointer to the memory location
            }

            // returns the address where the data is actually stored
            case FieldAccessExpr fldexp -> {
                 // get the head of the struct to be accessed
                Register resReg = visit(fldexp.structName);

                if (fldexp.structName.type instanceof StructType) {
                    // get type of fldExp, check if existed
                    StructTypeDecl std = ((StructType) fldexp.structName.type).std;
                    if (std.vardecls.stream().noneMatch((vd -> vd.name.equals(fldexp.fieldName)))) throw new IllegalArgumentException();


                    // get the offset to the target field
                    int offset = 0;

                    for (VarDecl vd: std.vardecls) {
                        if (vd.name.equals(fldexp.fieldName)) break;
                        offset += AsmHelper.paddedSize(vd.getSize());
                    }

                    // load address to resReg
                    if (offset != 0) currSec.emit(OpCode.ADDI, resReg, resReg, offset);

                } else if (fldexp.structName.type instanceof ClassType) {
                    /*
                     * find the corresponding classDecl
                     */
                    currSec.emit(OpCode.LW, resReg, resReg, 0); // get the class position
                    ClassTypeDecl curr = ((ClassType) fldexp.structName.type).ctd;
                    List<ClassTypeDecl> parents = new ArrayList<>();

                    while (curr != null) {
                        parents.add(curr);
                        curr = curr.parentDecl;
                    }
                    
                    int offset = 0; // 4 for virtual table pointer
                    boolean found = false;
                    for (ClassTypeDecl p: parents.reversed()) {
                        // if (p.vardecls.stream().anyMatch(vd -> vd.name.equals(fldexp.fieldName))) break;
                        int innerOffset = 4; // 4 for virtual table pointer
                        for (VarDecl vd: p.vardecls) {
                            if (vd.name.equals(fldexp.fieldName)) {
                                found = true;
                                offset += innerOffset;
                                break;
                            }
                            innerOffset += AsmHelper.paddedSize(vd.getSize());
                        }
                        if (found) break;

                        offset += p.vTableSectionSize();
                    }
                    
                    


                    
                    // boolean found = false;
                    // while (ctd != null) {
                    //     // if (ctd.vardecls.stream().anyMatch(vd -> vd.name.equals(fldexp.fieldName))) break;
                    //     int innerOffset = 0;
                    //     for (VarDecl vd: ctd.vardecls) {
                    //         if (vd.name.equals(fldexp.fieldName)) {
                    //             offset += innerOffset;
                    //             found = true;
                    //             break;
                    //         }
                    //         innerOffset += AsmHelper.paddedSize(vd.getSize());
                    //     }
                    //     if (found) break;
                    //     offset += ctd.vTableSectionSize();
                    //     ctd = ctd.parentDecl;
                    // }
                    
                    currSec.emit(OpCode.ADDIU, resReg, resReg, offset);
                    // if (fldexp.type instanceof PointerType) currSec.emit(OpCode.LW, resReg, resReg, 0);
                }
                

                yield resReg;
            }

            case AddressOfExpr addexp -> {
                Register resReg = Virtual.create();
                Register varReg = visit(addexp.expr);

                currSec.emit(OpCode.ADDI, resReg, varReg, 0);

                yield resReg;
            }

            case ValueAtExpr valatexp -> {
                // return the address contained in expr of *expr
                yield (new ExprCodeGen(asmProg)).visit(valatexp.expr);
            }


            default -> {
                throw new IllegalStateException();
            }
        };
    }

}
