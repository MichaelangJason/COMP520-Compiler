package gen;

import ast.FunDecl;
import ast.*;
import gen.asm.*;
import gen.asm.AssemblyProgram.Section;
import gen.asm.Register.Arch;

/**
 * A visitor that produces code for a single function declaration
 */
public class FunCodeGen extends CodeGen {


    public FunCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void visit(FunDecl fd) {
        // Each function should be produced in its own section.
        // This is necessary for the register allocator.
        Section currSec = asmProg.newSection(AssemblyProgram.Section.Type.TEXT);

        /*
         * Create an unique label for the function
         * after the sem analyzer, there should be no 2 function with same name
         */
        Label fnName = Label.get(fd.name);
        currSec.emit(fnName);

        // 1) emit the prolog
        currSec.emit(OpCode.ADDI, Arch.sp, Arch.sp, -4); //
        currSec.emit(OpCode.SW, Arch.fp, Arch.sp, 0); // push frame pointer on the stack

        currSec.emit(OpCode.MOVZ, Arch.fp, Arch.sp, Arch.zero); // initialize frame pointer

        currSec.emit(OpCode.ADDI, Arch.sp, Arch.sp, -4); //
        currSec.emit(OpCode.SW, Arch.ra, Arch.sp, 0); // push return address on the stack

        
        // 2) emit the body of the function
        // supports builtin functions
        switch(fd.name) {
            case "print_i": {
                // get the argument
                currSec.emit(OpCode.LW, Arch.a0, Arch.fp,8);
                // load syscall
                currSec.emit(OpCode.LI, Arch.v0, 1);
                // perform syscall
                currSec.emit(OpCode.SYSCALL);
                break;
            }
            default: {
                StmtCodeGen scd = new StmtCodeGen(asmProg);
                scd.visit(fd.block, null);
            }
        }

        // 3) emit the epilog
        currSec.emit(OpCode.LW, Arch.ra, Arch.sp, 0); // restore return address
        currSec.emit(OpCode.ADDI, Arch.sp, Arch.sp, 4); //

        currSec.emit(OpCode.LW, Arch.fp, Arch.sp, 0); // restore frame pointer
        currSec.emit(OpCode.ADDI, Arch.sp, Arch.sp, 4); //
    }



}
