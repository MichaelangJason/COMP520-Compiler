package gen;

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
        currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -4); //
        currSec.emit(OpCode.SW, Arch.fp, Arch.sp, 0); // push frame pointer on the stack

        currSec.emit(OpCode.MOVZ, Arch.fp, Arch.sp, Arch.zero); // initialize frame pointer

        currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, -4); //
        currSec.emit(OpCode.SW, Arch.ra, Arch.sp, 0); // push return address on the stack

        
        // 2) emit the body of the function
        // supports builtin functions
        switch(fd.name) {
            case "print_i": emit_print_i(currSec); break;
            case "print_c": emit_print_c(currSec); break;
            case "print_s": emit_print_s(currSec); break;
            case "read_c": emit_read_c(currSec); break;
            case "read_i": emit_read_i(currSec); break;
            case "mcmalloc": emit_mcmalloc(currSec); break;
            default: {
                StmtCodeGen scd = new StmtCodeGen(asmProg);
                scd.visit(fd.block, null);
            }
        }

        // 3) emit the epilog
        currSec.emit(OpCode.LW, Arch.ra, Arch.sp, 0); // restore return address
        currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, 4); //

        currSec.emit(OpCode.LW, Arch.fp, Arch.sp, 0); // restore frame pointer
        currSec.emit(OpCode.ADDIU, Arch.sp, Arch.sp, 4); //

        // 4) jump back to ra (not for main)
        if(!fd.name.equals("main")) currSec.emit(OpCode.JR, Arch.ra);
        else {
            currSec.emit(OpCode.LI, Arch.v0, 10);
            currSec.emit(OpCode.SYSCALL);
        }
        
    }

    private void emit_print_i(Section currSec) {
        // get the argument
        currSec.emit(OpCode.LW, Arch.a0, Arch.fp,4);
        // load syscall
        currSec.emit(OpCode.LI, Arch.v0, 1);
        // perform syscall
        currSec.emit(OpCode.SYSCALL);
    }

    private void emit_print_c(Section currSec) {
        // get the argument from stack (no return value)
        currSec.emit(OpCode.LW, Arch.a0, Arch.fp, 4);
        // load syscall
        currSec.emit(OpCode.LI, Arch.v0, 11);
        // perform syscall
        currSec.emit(OpCode.SYSCALL);
    }

    private void emit_print_s(Section currSec) {
        // get the address of char array from stack, should be ended by \0
        currSec.emit(OpCode.LW, Arch.a0, Arch.fp, 4);
        // load syscall
        currSec.emit(OpCode.LI, Arch.v0, 4);
        // perform syscall
        currSec.emit(OpCode.SYSCALL);
    }

    private void emit_read_c(Section currSec) {
        // load syscall
        currSec.emit(OpCode.LI, Arch.v0, 12);
        // perform syscall
        currSec.emit(OpCode.SYSCALL);
        // stored to v0, and copy to reserved space
        currSec.emit(OpCode.SB, Arch.v0, Arch.fp, 4);
        
    }

    private void emit_read_i(Section currSec) {
        // load syscall
        currSec.emit(OpCode.LI, Arch.v0, 5);
        // perform syscall
        currSec.emit(OpCode.SYSCALL);
        // stored to v0, and copy to reserved space]
        currSec.emit(OpCode.SW, Arch.v0, Arch.fp, 4);
    }

    private void emit_mcmalloc(Section currSec) {
        // get number of bytes to allocate
        currSec.emit(OpCode.LW, Arch.a0, Arch.sp, 8);
        // load syscall
        currSec.emit(OpCode.LI, Arch.v0, 9);
        // perform syscall
        currSec.emit(OpCode.SYSCALL);
        // now v0 equals the address of allocated memory, copy to reserved space
        currSec.emit(OpCode.SB, Arch.v0, Arch.fp, 4);
    }

}
