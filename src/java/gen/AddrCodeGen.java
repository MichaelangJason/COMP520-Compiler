package gen;

import ast.ArrayAccessExpr;
import ast.Expr;
import ast.FieldAccessExpr;
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
                    currSec.emit(OpCode.ADDI, resReg, Arch.fp, v.vd.fpOffset);
                }

                yield resReg;
            }

            case ArrayAccessExpr arrexp -> {
                ExprCodeGen gen = new ExprCodeGen(asmProg);
                Register resReg = Virtual.create();
                Register varReg = gen.visit(arrexp); // 

                currSec.emit(OpCode.SW, varReg, resReg, 0);
        
                yield resReg; // return a pointer to the start of the array
            }

            case FieldAccessExpr strexp -> {
                ExprCodeGen gen = new ExprCodeGen(asmProg);
                Register resReg = Virtual.create();
                Register varReg = gen.visit(strexp);

                currSec.emit(OpCode.SW, varReg, resReg, 0);

                yield resReg;
            }

            default -> null;
        };
    }

}
