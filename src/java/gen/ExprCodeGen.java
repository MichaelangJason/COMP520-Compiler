package gen;

import java.util.ArrayList;
import java.util.List;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Comment;
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

                //TODO
            case InstanceFunCallExpr ifc -> {
                // similar to FunCallExpr, but pass an extra "this"
                yield funcallGen(currSec, ifc);
            }


            case FunCallExpr fc -> {
                yield funcallGen(currSec, fc);
            }

            case VarExpr vexp -> {
                // get the address of the variable
                Register resReg = (new AddrCodeGen(asmProg)).visit(vexp);

                // the returned register should contain the value of var
                // for array and struct, return return the address of it
                if (vexp.type instanceof BaseType || vexp.type instanceof PointerType || vexp.type instanceof ClassType) {
                    currSec.emit(vexp.type == BaseType.CHAR ? OpCode.LB: OpCode.LW, resReg, resReg, 0);
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
                // load address to resReg, treated like pointers
                Register resReg = Virtual.create();
                currSec.emit(OpCode.LA, resReg, label);
                
                yield resReg;
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
                if (!MemAllocCodeGen.chrTable.containsKey(val)) yield null;
                // retrieve from MemAlloc hashmap
                Label label = MemAllocCodeGen.chrTable.get(val);
                // load to resReg
                Register resReg = Virtual.create();
                currSec.emit(OpCode.LA, resReg, label);
                // load value to resReg
                currSec.emit(OpCode.LB, resReg, resReg, 0);
                
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
                        Register tmpReg = Virtual.create();
                        currSec.emit(OpCode.LI, tmpReg, 1); // load1 for ternaryArithmetic
                        currSec.emit(OpCode.SLTU, resReg, resReg, tmpReg);
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
                
                yield resReg;
            }

            case TypecastExpr typeCast -> {
                Register resReg = visit(typeCast.expr);

                // if (typeCast.castOffset != 0) {
                //     currSec.emit(OpCode.ADDIU, resReg, resReg, typeCast.castOffset);
                // }

                yield resReg;
            }

            

            case ValueAtExpr valexp -> {
                // return address contained in pointer
                Register resReg = (new AddrCodeGen(asmProg)).visit(valexp); // contains the address
                // load value stored at the address contained in pointer
                currSec.emit(OpCode.LW, resReg, resReg, 0);

                yield resReg;
            }

            case AddressOfExpr addrexp -> {
                Register resReg = (new AddrCodeGen(asmProg)).visit(addrexp);

                yield resReg;
            }

            case ArrayAccessExpr arrexp -> {
                currSec.emit(new Comment(">ArrAccess<"));
                // get address of the head of the array
                Register resReg = (new AddrCodeGen(asmProg)).visit(arrexp);

                // return value if char or integer
                if (arrexp.type instanceof BaseType) {
                    currSec.emit(arrexp.type == BaseType.INT ? OpCode.LW: OpCode.LB, resReg, resReg, 0);
                }
                currSec.emit(new Comment(">ArrAccess End<"));

                yield resReg;
            }

            case FieldAccessExpr fldexp -> {
                // get the address of the field to be accessed
                Register resReg = (new AddrCodeGen(asmProg)).visit(fldexp);

                // return value if char or integer
                if (fldexp.type instanceof BaseType || fldexp.structName.type instanceof ClassType) {
                    currSec.emit(fldexp.type == BaseType.CHAR ? OpCode.LB: OpCode.LW, resReg, resReg, 0);
                }

                yield resReg;
            }

            case Assign asiexp -> {
                currSec.emit(new Comment(">>>Assign<<<: "+asiexp.type.toString()));
                Type type = asiexp.type;
                currSec.emit(new Comment(">>Get VAR Addr<<"));
                Register varReg = (new AddrCodeGen(asmProg)).visit(asiexp.lhs);
                currSec.emit(new Comment(">>Get VAL<<"));
                Register valReg = visit(asiexp.rhs);
                Register tempReg = Virtual.create();

                currSec.emit(new Comment(">>Start Copy<<"));
                if (type instanceof StructType) {
                    for (int i = 0; i < (type.getSize() / 4); i++) {
                        // load corresponding word to t0
                        currSec.emit(OpCode.LW, tempReg, valReg, 4*i);
                        // store corresponding word to variable
                        currSec.emit(OpCode.SW, tempReg, varReg, 4*i);
                    }
                    
                } else {
                    // for char, also pass the address of the label to it
                    currSec.emit(type == BaseType.CHAR ? OpCode.SB : OpCode.SW, valReg, varReg, 0);
                }
                currSec.emit(new Comment("Copy End"));
                yield varReg;
            }

            case NewInstanceExpr ni -> {
                int allocateSize = ni.classType.getTotalAllocationSize();

                // get number of bytes to allocate
                currSec.emit(OpCode.ADDIU, Arch.a0, Arch.zero, allocateSize);
                // load syscall
                currSec.emit(OpCode.LI, Arch.v0, 9);
                // perform syscall
                currSec.emit(OpCode.SYSCALL);

                // load virtual table pointers
                ClassTypeDecl ctd = ni.classType.ctd;
                Register lblAddrReg = Virtual.create();
                List<ClassTypeDecl> parents = new ArrayList<>();
                
                while (ctd != null) {
                    parents.add(ctd);
                    ctd = ctd.parentDecl;
                }
                
                int offset = 0;
                for (ClassTypeDecl p: parents.reversed()) {
                    // vtable same for all
                    currSec.emit(OpCode.LA, lblAddrReg, Label.get("vtable_"+ni.classType.name));
                    // currSec.emit(OpCode.LW, lblAddrReg, lblAddrReg, 0);
                    currSec.emit(OpCode.SW, lblAddrReg, Arch.v0, offset);

                    offset += p.vTableSectionSize();
                    // ctd = ctd.parentDecl;
                }

                yield Arch.v0;
            }
            default -> {
                throw new IllegalStateException();
            }
        };
    }

    private Register funcallGen(Section currSec, Expr funcall) {
        if (!(funcall instanceof FunCallExpr || funcall instanceof InstanceFunCallExpr)) return Virtual.create();

        boolean isInstanceFuncall = funcall instanceof InstanceFunCallExpr || ((FunCallExpr) funcall).fd.isClassFunction();
        boolean isImplicitFuncall = isInstanceFuncall && funcall instanceof FunCallExpr;

        FunCallExpr fc = funcall instanceof FunCallExpr ? (FunCallExpr) funcall: ((InstanceFunCallExpr) funcall).fc;

        Type returnType = fc.fd.type;
        List<VarDecl> params = fc.fd.params;
        currSec.emit(new Comment("Execute "+fc.name));
        Register tmpReg = Virtual.create();
        Register thisAddrReg = null;

        // similar to FunCallExpr, but pass an extra "this"
        if (isInstanceFuncall) {
            currSec.emit(new Comment(">>>Instance FunCall pushing this<<<"));
            int castOffset = 0;

            if (isImplicitFuncall) {
                int offset = 4 + fc.referFd.params.stream().mapToInt(exp -> AsmHelper.paddedSize(exp.type.getSize())).sum() + fc.referFd.returnSize();
                thisAddrReg = Virtual.create();
                currSec.emit(OpCode.LW, thisAddrReg, Arch.fp, offset);
            } else {
                thisAddrReg = visit(((InstanceFunCallExpr) funcall).classObj); // get the class object stored position
            }

            currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -4); // reserve size for pointer
            currSec.emit(OpCode.SW, thisAddrReg, Arch.sp, 0); // push to stack
            currSec.emit(new Comment(">>>This Pushed<<<"));
        }

        // push arguments onto stack if there is
        if (!params.isEmpty()) {
            // reversely push arguments to sp
            for (Expr arg: fc.args) {
                currSec.emit(new Comment(">>>Retrieving arg val<<<: "+arg.type.toString()));
                Register valReg = visit(arg);
                Type argType = arg.type;
                // if (argType instanceof ClassType) currSec.emit(OpCode.LW, valReg, valReg, 0);
                int argSize = AsmHelper.paddedSize(arg.type.getSize());

                currSec.emit(new Comment(">>>Reserving Stack size for Args<<<"));
                // reserve stack size
                currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -argSize);
                // copy value to stack
                if (argType instanceof StructType) {
                    // case copy word by word, 
                    // StructTypeDecl std = ((StructType) argType).std;        
                    // assume valReg contains the address of struct
                    for (int i = 0; i < argSize / 4; i++) {
                        // load data contained in memory location to v0
                        currSec.emit(OpCode.LW, tmpReg, valReg, 4*i);
                        // copy data contained in t0 to memory location of sp
                        currSec.emit(OpCode.SW, tmpReg, Arch.sp, 4*i);
                    }

                } else {
                    // for int, pointer type and array type, pass reference
                    currSec.emit(argType == BaseType.CHAR ? OpCode.SB: OpCode.SW, valReg, Arch.sp, 0);
                }
                currSec.emit(new Comment(">>>Arg Pushed<<<: "+arg.type.toString())+" ended");

            }
        }

        // reserve place for return value
        if (returnType != BaseType.VOID) {
            int returnSize = returnType.getSize();
            currSec.emit(new Comment(">>>Reserver Stack size for Return VAL<<<: " + returnSize));
            currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -(returnType instanceof StructType ? returnSize: 4));
        }

        // jump to corresponding procedure
        if (isInstanceFuncall) {
            /*
             * 1. get the addr of classObj
             * 2. get virtual table pointer 
             * 3. get the name of funcall
             * 4. get the index of corresponding funcall
             * 5. set offset from vTable pointer
             * 6. jalr 
             */
            if (isImplicitFuncall) {
                int offset = 4 + fc.referFd.params.stream().mapToInt(exp -> AsmHelper.paddedSize(exp.type.getSize())).sum() + fc.referFd.returnSize();
                currSec.emit(OpCode.LW, thisAddrReg, Arch.fp, offset);
            } else {
                thisAddrReg = visit(((InstanceFunCallExpr) funcall).classObj); // virtual table pointer
            }
            // currSec.emit(OpCode.LW, thisAddrReg, thisAddrReg, 0); // load virtual table pointer
            currSec.emit(OpCode.LW, thisAddrReg, thisAddrReg, 0); // load virtual table address

            ClassTypeDecl ctd = fc.fd.ctd;
            int offset = ctd.allFds().keySet().stream().toList().indexOf(fc.name);

            currSec.emit(OpCode.LW, thisAddrReg, thisAddrReg, offset * 4);
            currSec.emit(OpCode.JALR, thisAddrReg);

        } else {
            currSec.emit(OpCode.JAL, Label.get(fc.name));
        }
        
        // 
        if (returnType != BaseType.VOID) {
            // depends on the returnType, either store value or address

            // currSec.emit(returnType == BaseType.CHAR ? OpCode.LB: OpCode.LW, tmpReg, Arch.sp, 0);
            switch(returnType) {
                case BaseType.INT -> {currSec.emit(OpCode.LW, tmpReg, Arch.sp, 0); break;}
                case PointerType pt -> {currSec.emit(OpCode.LW, tmpReg, Arch.sp, 0); break;}
                case BaseType.CHAR -> {currSec.emit(OpCode.LB, tmpReg, Arch.sp, 0); break;}
                default ->  { currSec.emit(OpCode.ADDIU, tmpReg, Arch.sp, 0); }
            }
            
            // reset sp object to return value
            currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, returnType instanceof StructType ? returnType.getSize(): 4);
        }

        // reset sp subjects to args size
        if (!fc.args.isEmpty()) {
            int totalSize = fc.args.stream().mapToInt(exp -> AsmHelper.paddedSize(exp.type.getSize())).sum();
            currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, totalSize);
        }

        // reset sp for extra args for InstanceFuncall
        if (isInstanceFuncall) currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, 4);        

        currSec.emit(new Comment(">>>>>>>>>Return From "+fc.name));

        // should contains the value or the address of 
        return tmpReg;
    }
}
