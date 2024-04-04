package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.Section;
import gen.asm.Register.Arch;

public class StmtCodeGen extends CodeGen {
    Section currSec;
    boolean alreadyReturned = false;

    public StmtCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
        currSec = asmProg.getCurrentSection();
    }

    void visit(Stmt s, Stmt prev) {
        switch (s) {
            case Block b -> {
                // no need to do anything with varDecl (memory allocator takes care of them)
                b.stmts.forEach((innerStmt) -> {
                    if (this.alreadyReturned) return;
                    visit(innerStmt, prev);
                });
            }

            case ExprStmt expstmt -> {
                (new ExprCodeGen(asmProg)).visit(expstmt.expr);
            }

            case While wlStmt -> {
                // prepare
                ExprCodeGen gen = new ExprCodeGen(asmProg);
                Label whileLbl = Label.create("while");
                Label endLbl = Label.create("end");
                wlStmt.whileLbl = whileLbl;
                wlStmt.endLbl = endLbl;
                
                // first emit label of while loop
                currSec.emit(whileLbl);
                // emit condition check codes
                Register cond = gen.visit(wlStmt.expr);
                // emit condition check
                currSec.emit(OpCode.BEQ, cond, Arch.zero, endLbl);

                // emit body of while label
                visit(wlStmt.stmt, wlStmt);

                // emit loop
                currSec.emit(OpCode.J, whileLbl);

                // emit endLbl
                currSec.emit(endLbl);
            }

            case If ifStmt -> {
                Register cond = (new ExprCodeGen(asmProg)).visit(ifStmt.expr);

                Label elseLbl = Label.create("else");
                Label endLbl = Label.create("end");

                currSec.emit(OpCode.BEQ, cond, Arch.zero, elseLbl);

                visit(ifStmt.ifBranch, prev);
                currSec.emit(OpCode.J, endLbl);

                // does not matter if else exists or not
                currSec.emit(elseLbl);
                if (ifStmt.elseBranch != null) visit(ifStmt.elseBranch, prev);

                currSec.emit(endLbl);
            }

            case Return rtnStmt -> {
                Type returnType = rtnStmt.fd.type;
                if (returnType != BaseType.VOID){
                    // pushes return value onto stack?
                    // handled by FunCall?
                    Register varReg = (new ExprCodeGen(asmProg)).visit(rtnStmt.expr);

                    // copy return value to reserved sp
                    if (returnType instanceof StructType) {
                        // copy word by word onto stack
                        for (int i = 0; i < returnType.getSize() / 4; i++) {
                            currSec.emit(OpCode.LW, Arch.t0, varReg, 4*i);
                            currSec.emit(OpCode.SW, Arch.t0, Arch.fp, 4*(i+1));
                        }
                    } else {
                        // copy
                        currSec.emit(returnType == BaseType.CHAR ? OpCode.SB : OpCode.SW, varReg, Arch.fp, 4);
                    }
                }
                // jump back to ra
                // currSec.emit(OpCode.JR, Arch.ra);
                this.alreadyReturned = true;
            }

            case Continue ctnStmt -> {
                if (!(prev instanceof While)) throw new IllegalStateException();

                Label whileLbl = ((While) prev).whileLbl;
                currSec.emit(OpCode.J, whileLbl);
            }

            case Break bkStmt -> {
                if (!(prev instanceof While)) throw new IllegalStateException();

                Label endLbl = ((While) prev).endLbl;
                currSec.emit(OpCode.J, endLbl);
            }

            // do nothing for return? 
            default -> {}
        }
    }
}
