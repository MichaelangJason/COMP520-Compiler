package ast;

import java.io.PrintWriter;

public class ASTPrinter {

    private final PrintWriter writer;

    public ASTPrinter(PrintWriter writer) {
            this.writer = writer;
    }

    public void visit(ASTNode node) {
        switch(node) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }

            case Block ignored -> {
                writer.print("Block(");
                // to complete
                writer.print(")");
            }

            case FunDecl fd -> {
                writer.print("FunDecl(");
                visit(fd.type);
                writer.print(","+fd.name+",");
                for (VarDecl vd : fd.params) {
                    visit(vd);
                    writer.print(",");
                }
                visit(fd.block);
                writer.print(")");
            }

            case Program p -> {
                writer.print("Program(");
                String delimiter = "";
                for (Decl d : p.decls) {
                    writer.print(delimiter);
                    delimiter = ",";
                    visit(d);
                }
                writer.print(")");
                writer.flush();
            }

            case VarDecl vd -> {
                writer.print("VarDecl(");
                visit(vd.type);
                writer.print(","+vd.name);
                writer.print(")");
            }

            case VarExpr v -> {
                writer.print("VarExpr(");
                writer.print(v.name);
                writer.print(")");
            }

            case BaseType bt -> {
                // to complete ...
                writer.print(bt.name());
            }

            case PointerType ptrt -> {
                writer.print("PointerType(");
                visit(ptrt.type);
                writer.print(")");
            }

            case ArrayType arrt -> {
                writer.print("ArrayType(");
                visit(arrt.type);
                writer.print(", " + arrt.nbElmts);
                writer.print(")");
            }

            case StructType st -> {
                writer.print("StructType(");
                writer.print(st.name);
                writer.print(")");
            }

            case StructTypeDecl std -> {
                // to complete
            }
            // to complete ...
            default -> {

            }
        }

    }


    
}
