package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Label;
import gen.asm.Register;
import gen.asm.Register.Arch;
import gen.asm.Register.Virtual;
import gen.asm.AssemblyProgram.Section;
import gen.asm.OpCode;


/**
 * Generates code to evaluate an expression and return the result in a register.
 */
public class ExprCodeGen extends CodeGen {

    public ExprCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(Expr e) {
        // TODO: to complete
        Section currSec = asmProg.getCurrentSection();
        return switch (e) {
            case FunCallExpr fc -> {
                // usage of fp is optional here, possible optimization for instruction executed

                // push arguments on stack
                for (Expr arg: fc.args) {
                    Register rg = visit(arg);
                    currSec.emit(OpCode.ADDI, Arch.sp, Arch.sp, -4); //
                    currSec.emit(OpCode.SW, rg, Arch.sp, 0); // push arguments on the stack
                }

                // reserve for any potential return value
                currSec.emit(OpCode.ADDI, Arch.sp, Arch.sp, -4);

                // jump to corresponding procedure
                currSec.emit(OpCode.JAL, Label.get(fc.name));
                
                // load return value to $t0
                currSec.emit(OpCode.LW, Arch.t0, Arch.sp, 0);
                currSec.emit(OpCode.ADDI, Arch.sp, Arch.sp, 4);

                // reset sp
                for (Expr args: fc.args)
                    currSec.emit(OpCode.ADDI, Arch.sp, Arch.sp, 4); //

                yield Arch.t0;
            }

            case IntLiteral intlit -> {
                Register resReg = Virtual.create();
                currSec.emit(OpCode.LI, resReg, intlit.val);
                yield resReg;
            }

            default -> null;
        };
    }
}
