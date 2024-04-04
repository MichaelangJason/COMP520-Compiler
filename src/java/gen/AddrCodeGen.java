package gen;

import ast.AddressOfExpr;
import ast.ArrayAccessExpr;
import ast.BaseType;
import ast.Expr;
import ast.FieldAccessExpr;
import ast.StructType;
import ast.StructTypeDecl;
import ast.Type;
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
                
                if (v.vd.fpOffset == -1) {
                    currSec.emit(OpCode.LA, resReg, v.vd.label);
                } else {
                    currSec.emit(OpCode.ADDIU, resReg, Arch.fp, v.vd.fpOffset);
                }

                yield resReg;
            }
            
            // returns the address where the data is actually stored
            case ArrayAccessExpr arrexp -> {
                // get the head of array to be accessed
                Register varReg = visit(arrexp.varName);
                
                Register resReg = Virtual.create();
                // load type size into resReg
                currSec.emit(OpCode.LI, resReg, arrexp.type.getSize());
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

                // get type of fldExp, check if existed
                StructTypeDecl std = ((StructType) fldexp.structName.type).std;
                if (std.vardecls.stream().noneMatch((vd -> vd.name.equals(fldexp.name)))) throw new IllegalArgumentException();
 
                
                // get the offset to the target field
                int offset = 0;
                
                for (VarDecl vd: std.vardecls) {
                    if (vd.name.equals(fldexp.name)) break;
                    offset += AsmHelper.paddedSize(vd.getSize());
                }
            
                // load address to resReg
                currSec.emit(OpCode.ADDI, resReg, resReg, offset);

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
                yield visit(valatexp.expr);
            }


            default -> {
                throw new IllegalStateException();
            }
        };
    }

}
