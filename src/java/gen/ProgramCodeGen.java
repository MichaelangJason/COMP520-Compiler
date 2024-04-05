package gen;

import java.util.ArrayList;
import java.util.List;

import ast.BaseType;
import ast.Block;
import ast.FunDecl;
import ast.PointerType;
import ast.Program;
import ast.VarDecl;
import gen.asm.AssemblyProgram;

/**
 * This visitor should produce a program.
 */
public class ProgramCodeGen extends CodeGen {


    private final AssemblyProgram.Section dataSection ;

    public ProgramCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
        this.dataSection = asmProg.newSection(AssemblyProgram.Section.Type.DATA);
    }

    void generate(Program p) {
        // dummy definitions of builtin functions
        List<VarDecl> args1 = new ArrayList<>();
        args1.add(new VarDecl(new PointerType(BaseType.CHAR), "s"));
        FunDecl decl_print_s = new FunDecl(
            BaseType.VOID,
            "print_s", 
            args1,
            new Block(new ArrayList<>(), new ArrayList<>())
        );

        List<VarDecl> args2 = new ArrayList<>();
        args2.add(new VarDecl(BaseType.INT, "i"));
        FunDecl decl_print_i = new FunDecl(
            BaseType.VOID,
            "print_i", 
            args2,
            new Block(new ArrayList<>(), new ArrayList<>())
        );

        List<VarDecl> args3 = new ArrayList<>();
        args3.add(new VarDecl(BaseType.CHAR, "c"));
        FunDecl decl_print_c = new FunDecl(
            BaseType.VOID,
            "print_c", 
            args3,
            new Block(new ArrayList<>(), new ArrayList<>())
        );

        FunDecl decl_read_c = new FunDecl(
            BaseType.CHAR,
            "read_c",
            new ArrayList<VarDecl>(),
            new Block(new ArrayList<>(), new ArrayList<>())
        );

        FunDecl decl_read_i = new FunDecl(
            BaseType.INT,
            "read_i",
            new ArrayList<VarDecl>(),
            new Block(new ArrayList<>(), new ArrayList<>())
        );

        List<VarDecl> args4 = new ArrayList<>();
        args4.add(new VarDecl(BaseType.INT, "size"));
        FunDecl decl_mcmalloc = new FunDecl(
            new PointerType(BaseType.VOID),
            "mcmalloc", 
            args4,
            new Block(new ArrayList<>(), new ArrayList<>())
        );
        // add dummy declaration to the top of program decl;
        p.decls.add(decl_mcmalloc);
        p.decls.add(decl_read_i);
        p.decls.add(decl_read_c);
        p.decls.add(decl_print_c); 
        p.decls.add(decl_print_i);
        p.decls.add(decl_print_s);

        // allocate all variables
        MemAllocCodeGen allocator = new MemAllocCodeGen(asmProg);
        allocator.visit(p);
        
        // manually search main and add it as the first label
        p.decls.forEach((d) -> {
            if (!(d instanceof FunDecl) || !((FunDecl) d).name.equals("main")) return;
            
            FunCodeGen fcg = new FunCodeGen(asmProg);
            fcg.visit((FunDecl) d);
        });

        // generate the code for each function
        p.decls.forEach((d) -> {
            switch(d) {
                case FunDecl fd -> {
                    if (fd.name.equals("main")) return;
                    FunCodeGen fcg = new FunCodeGen(asmProg);
                    fcg.visit(fd);
                }
                default -> {}// nothing to do
            }});
    }
}