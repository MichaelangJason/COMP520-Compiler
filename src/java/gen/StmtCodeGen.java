package gen;

import ast.*;
import gen.asm.AssemblyProgram;

public class StmtCodeGen extends CodeGen {

    public StmtCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void visit(Stmt s) {
        switch (s) {
            case Block b -> {
                // no need to do anything with varDecl (memory allocator takes care of them)
                b.stmts.forEach((innerStmt) -> {
                    visit(innerStmt);
                });
            }

            case ExprStmt expstmt -> {
                ExprCodeGen expcg = new ExprCodeGen(asmProg);
                expcg.visit(expstmt.expr);
            }

            // To complete other cases
            default -> {}
        }
    }
}
