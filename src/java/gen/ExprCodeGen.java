package gen;

import java.sql.Struct;
import java.util.stream.IntStream;

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
        Section currSec = asmProg.getCurrentSection();
        return switch (e) {
            case FunCallExpr fc -> {
                //TODO
                // usage of fp is optional here, possible optimization for instruction executed
                IntStream sizes = fc.fd.params.stream().mapToInt(VarDecl::getSize);
                int totalSize = sizes.sum();

                
                
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
                // get the address of the variable
                Register resReg = (new AddrCodeGen(asmProg)).visit(vexp);

                // the returned register should contain the value of var
                // for array and struct, return return the address of it
                if (vexp.type instanceof BaseType) {
                    currSec.emit(vexp.type == BaseType.INT ? OpCode.LW: OpCode.LB, resReg, resReg, 0);
                }

                yield resReg;
            }
            
            case IntLiteral intlit -> {
                Register resReg = Virtual.create();
                currSec.emit(OpCode.LI, resReg, intlit.val);
                yield resReg;
            }

            case StrLiteral strlit -> {
                if (!MemAllocCodeGen.chrTable.containsKey(strlit.val)) yield null;
                // retrieve from MemAlloc hashmap
                Label label = MemAllocCodeGen.chrTable.get(strlit.val);
                // load to resReg
                Register resReg = Virtual.create();
                currSec.emit(OpCode.LA, resReg, label);
                
                yield resReg;
            }

            case ChrLiteral chrlit -> {
                String val = Character.toString(chrlit.val);
                if (!MemAllocCodeGen.chrTable.containsKey(val)) yield null;
                // retrieve from MemAlloc hashmap
                Label label = MemAllocCodeGen.chrTable.get(val);
                // load to resReg
                Register resReg = Virtual.create();
                currSec.emit(OpCode.LA, resReg, label);
                
                yield resReg;
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
                Register resReg = Virtual.create();
                currSec.emit(OpCode.LI, resReg, sizeexp.subtype.getSize());
                
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
                Register resReg = (new AddrCodeGen(asmProg)).visit(addrexp);

                yield resReg;
            }

            case ArrayAccessExpr arrexp -> {
                Register resReg = Virtual.create();
                
                // get the index of the array
                Register idxReg = visit(arrexp.idx);
                // load type size into resReg
                currSec.emit(OpCode.LI, resReg, arrexp.type.getSize());
                // index * inner type size for array
                // assume only lower 32 bit
                currSec.emit(OpCode.MULT, idxReg, resReg);
                currSec.emit(OpCode.MFLO, resReg); // move lowest 32 bit to resReg
                
                // find the head of the array
                Register varReg = visit(arrexp.varName);
                // set offset to index * inner type size
                currSec.emit(OpCode.ADD, resReg, varReg, resReg);

                yield resReg;
            }

            case FieldAccessExpr fldexp -> {
                // get the head of the field access
                Register resReg = visit(fldexp.structName);

                // get type of fldExp, check if existed
                StructTypeDecl std = ((StructType) fldexp.type).std;
                if (std.vardecls.stream().noneMatch((vd -> vd.name.equals(fldexp.name)))) throw new IllegalArgumentException();

                
                // get the offset to the target field
                int offset = 0; Type fieldType = BaseType.UNKNOWN;
                
                for (VarDecl vd: std.vardecls) {
                    if (vd.name.equals(fldexp.name)) fieldType = vd.type;
                    offset += AsmHelper.paddedSize(vd.getSize());
                }

                // add offset to the head of resReg
                currSec.emit(OpCode.ADDI, resReg, resReg, offset);
                // return value if char or integer
                if (fieldType instanceof BaseType) {
                    currSec.emit(fieldType == BaseType.INT ? OpCode.LW: OpCode.LB, resReg, resReg, 0);
                }

                yield resReg;
            }

            case Assign asiexp -> {
                Type type = asiexp.type;
                Register varReg = (new AddrCodeGen(asmProg)).visit(asiexp.lhs);
                Register valReg = visit(asiexp.rhs);

                if (type instanceof StructType) {
                    // case copy word by word, 
                    StructTypeDecl std = ((StructType) type).std;
                    // iteration number based on the type size
                    // varReg and valReg have same range
                    for (int i = 0; i < (std.type.getSize() / 4); i++) {
                        // load corresponding word to t0
                        currSec.emit(OpCode.LW, Arch.t0, valReg, 4*i);
                        // store corresponding word to variable
                        currSec.emit(OpCode.SW, Arch.t0, varReg, 4*i);
                    }
                    
                } else {
                    currSec.emit(type == BaseType.CHAR ? OpCode.SB: OpCode.SW, valReg, varReg, 0);
                }

                yield varReg;
            }

            default -> null;
        };
    }
}
