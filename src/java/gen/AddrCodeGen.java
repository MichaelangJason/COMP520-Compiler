package gen;

import java.sql.Struct;

import ast.AddressOfExpr;
import ast.ArrayAccessExpr;
import ast.ClassType;
import ast.ClassTypeDecl;
import ast.Expr;
import ast.FieldAccessExpr;
import ast.FunCallExpr;
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

    public Register visit(Expr e, Expr... funcall) {

        return switch(e) {
            case VarExpr v -> {
                Register resReg = Virtual.create();

                // if v is a Class field (accessing class field in InstanceFuncall), load from this
                if (v.isClassField()) {
                    // first get address of this from fundecl associated with varexpr
                    int offset = v.fd.params.stream().mapToInt(exp -> AsmHelper.paddedSize(exp.type.getSize())).sum();
                    currSec.emit(OpCode.LW, resReg, Arch.fp, offset);
                    
                    // get the corresponding classDecl offset
                    String fieldName = v.name;
                    ClassTypeDecl ctd = v.fd.ctd;
                    offset = 0;
                    while (ctd != null) {
                        if (ctd.vardecls.stream().anyMatch(vd -> vd.name.equals(fieldName))) break;
                        offset += ctd.vTableSectionSize();
                        ctd = ctd.parentDecl;
                    }
                    
                    // get clsOffset from there
                    currSec.emit(OpCode.ADDIU, resReg, resReg, offset + v.vd.clsOffset);
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
                    ClassTypeDecl ctd = ((ClassType) fldexp.structName.type).ctd;
                    int offset = 4; // 4 for virtual table pointer
                    while (ctd != null) {
                        // if (ctd.vardecls.stream().anyMatch(vd -> vd.name.equals(fldexp.fieldName))) break;
                        int innerOffset = 0;
                        for (VarDecl vd: ctd.vardecls) {
                            if (vd.name.equals(fldexp.fieldName)) {
                                offset += innerOffset;
                                break;
                            }
                            innerOffset += AsmHelper.paddedSize(vd.getSize());
                        }
                        offset += ctd.vTableSectionSize();
                        ctd = ctd.parentDecl;
                    }
                    
                    currSec.emit(OpCode.ADDIU, resReg, resReg, offset);
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
