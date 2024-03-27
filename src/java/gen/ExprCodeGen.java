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

            case VarExpr vexp -> {
                //TODO
                yield null;
            }
            
            case IntLiteral intlit -> {
                Register resReg = Virtual.create();
                currSec.emit(OpCode.LI, resReg, intlit.val);
                yield resReg;
            }

            case StrLiteral strlit -> {
                // TODO
                yield null;
            }

            case ChrLiteral chrlit -> {
                // TODO
                yield null;
            }

            case BinOp bo -> {
                Register lhsReg = visit(bo.lhs);
                Register rhsReg = visit(bo.rhs);
                Register resReg = Virtual.create();

                switch(bo.op) {
                    case ADD:
                        currSec.emit(OpCode.ADD, resReg, lhsReg, rhsReg);
                        break;

                    case SUB:
                        // possible overflow trap
                        currSec.emit(OpCode.SUB, resReg, lhsReg, rhsReg);
                        break;

                    case MUL:
                        // assume only lower 32 bit
                        currSec.emit(OpCode.MULT, lhsReg, rhsReg);
                        currSec.emit(OpCode.MFLO, resReg); // move lowest 32 bit to resReg
                        break;

                    case DIV:
                        currSec.emit(OpCode.DIV, lhsReg, rhsReg);
                        currSec.emit(OpCode.MFLO, resReg); // move quotient to resReg
                        break;

                    case MOD:
                        currSec.emit(OpCode.DIV, lhsReg, rhsReg);
                        currSec.emit(OpCode.MFHI, resReg); // move remainder to resReg
                        break;

                    case GT:
                        // great than lhs > rhs
                        currSec.emit(OpCode.SLT, resReg, rhsReg, lhsReg);
                        break;
                        
                    case LT:
                        // less than lhs < rhs
                        currSec.emit(OpCode.SLT, resReg, lhsReg, rhsReg);
                        break;

                    case GE:
                        // greater or equal than lhs >= rhs <-> !(lhs < rhs)
                        currSec.emit(OpCode.SLT, resReg, lhsReg, rhsReg);
                        currSec.emit(OpCode.XORI, resReg, resReg, 1);
                        break;

                    case LE:
                        // less or equal than lhs <= rhs <-> !(lhs > rhs)
                        currSec.emit(OpCode.SLT, resReg, rhsReg, lhsReg);
                        currSec.emit(OpCode.XORI, resReg, resReg, 1);
                        break;

                    case NE:
                        currSec.emit(OpCode.XOR, resReg, lhsReg, rhsReg);
                        currSec.emit(OpCode.SLTU, resReg, Arch.zero, resReg);
                        break;

                    case EQ:
                        currSec.emit(OpCode.XOR, resReg, lhsReg, rhsReg);
                        currSec.emit(OpCode.LI, Arch.t0, 1); // load1 for ternaryArithmetic
                        currSec.emit(OpCode.SLTU, resReg, resReg, Arch.t0);
                        break;

                    case OR:
                        Label trueBranch = Label.create("TRUE");
                        currSec.emit(OpCode.LI, resReg, 1); // TRUE pre stored
                        // control flow, short-circuit
                        currSec.emit(OpCode.BNE, lhsReg, Arch.zero, trueBranch);
                        currSec.emit(OpCode.BNE, rhsReg, Arch.zero, trueBranch);
                        // set to false
                        currSec.emit(OpCode.LI, resReg, 0);
                        // trueBranch (skip set to false)
                        currSec.emit(trueBranch);
                        break;

                    case AND:
                        Label falseBranch = Label.create("FALSE");
                        currSec.emit(OpCode.LI, resReg, 0); // FALSE pre stored
                        // control flow, short-circuit
                        currSec.emit(OpCode.BEQ, lhsReg, Arch.zero, falseBranch);
                        currSec.emit(OpCode.BEQ, rhsReg, Arch.zero, falseBranch);
                        // set to true
                        currSec.emit(OpCode.LI, resReg, 1);
                        // falseBranch (skip set to true)
                        currSec.emit(falseBranch);
                        break;
                }

                yield resReg;
            }
            
            case SizeOfExpr sizeexp -> {
                //TODO
                yield null;
            }

            case TypecastExpr typeCast -> {
                //TODO
                yield null;
            }

            case ValueAtExpr valexp -> {
                //TODO
                yield null;
            }

            case AddressOfExpr addrexp -> {
                //TODO
                yield null;
            }

            case ArrayAccessExpr arrexp -> {
                //TODO
                yield null;
            }

            case FieldAccessExpr fldexp -> {
                //TODO
                yield null;
            }

            case Assign asiexp -> {
                //TODO
                yield null;
            }

            default -> null;
        };
    }
}
