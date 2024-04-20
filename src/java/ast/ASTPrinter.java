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
            
            // Types
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
                writer.print("," + arrt.nbElmts);
                writer.print(")");
            }

            case StructType st -> {
                writer.print("StructType(");
                writer.print(st.name);
                writer.print(")");
            }

            // Decls
            case StructTypeDecl std -> {
                // to complete
                writer.print("StructTypeDecl(");
                visit(std.type);
                // writer.print(","+std.name);
                for (VarDecl vd: std.vardecls) {
                    writer.print(",");
                    visit(vd);
                }
                writer.print(")");
            }

            case VarDecl vd -> {
                writer.print("VarDecl(");
                visit(vd.type);
                writer.print(","+vd.name);
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

            case FunProto funp -> {
                writer.print("FunProto(");
                visit(funp.type);
                writer.print(","+funp.name);
                for (VarDecl vd : funp.params) {
                    writer.print(",");
                    visit(vd);
                }
                writer.print(")");
            }

            // expr parts
            case IntLiteral intlit -> {
                writer.print("IntLiteral(");
                writer.print(intlit.val);
                writer.print(")");
            }

            case StrLiteral strlit -> {
                writer.print("StrLiteral(");
                writer.print(strlit.val);
                writer.print(")");
            }

            case ChrLiteral chrlit -> {
                writer.print("ChrLiteral(");
                writer.print(chrlit.val);
                writer.print(")");
            }

            case VarExpr v -> {
                writer.print("VarExpr(");
                writer.print(v.name);
                writer.print(")");
            }

            case FunCallExpr fexpr -> {
                writer.print("FunCallExpr(");
                writer.print(fexpr.name);
                for (Expr vd : fexpr.args) {
                    writer.print(",");
                    visit(vd);
                }
                writer.print(")");
            }

            case BinOp binop -> {
                writer.print("BinOp(");
                visit(binop.lhs);
                writer.print(",");
                visit(binop.op); // maybe print binop.op.name() is better
                writer.print(",");
                visit(binop.rhs);
                writer.print(")");
            }

            case ArrayAccessExpr arrexpr -> {
                writer.print("ArrayAccessExpr(");
                visit(arrexpr.varName);
                writer.print(",");
                visit(arrexpr.idx);
                writer.print(")");
            }

            case FieldAccessExpr fieldexpr -> {
                writer.print("FieldAccessExpr(");
                visit(fieldexpr.structName);
                writer.print("," + fieldexpr.name);
                writer.print(")");
            }

            case ValueAtExpr valexpr -> {
                writer.print("ValueAtExpr(");
                visit(valexpr.expr);
                writer.print(")");
            }

            case AddressOfExpr addrsexpr -> {
                writer.print("AddressOfExpr(");
                visit(addrsexpr.expr);
                writer.print(")");
            }

            case SizeOfExpr sizeexpr -> {
                writer.print("SizeOfExpr(");
                visit(sizeexpr.subtype);
                writer.print(")");
            }

            case TypecastExpr tcastexpr -> {
                writer.print("TypecastExpr(");
                visit(tcastexpr.subtype);
                writer.print(",");
                visit(tcastexpr.expr);
                writer.print(")");
            }

            case Assign assign -> {
                writer.print("Assign(");
                visit(assign.lhs);
                writer.print(",");
                visit(assign.rhs);
                writer.print(")");
            }

            case Op op -> {
                writer.print(op.name());
            }

            // statements
            case Block blk -> {
                writer.print("Block(");
                for (VarDecl vd: blk.vds) {
                    visit(vd);
                    if (blk.vds.indexOf(vd) < blk.vds.size() - 1) writer.print(",");
                }
                for (Stmt stmt: blk.stmts) {
                    if (blk.vds.size() > 0 || blk.stmts.indexOf(stmt) > 0) writer.print(",");
                    visit(stmt);
                };
                writer.print(")");
            }

            case While whl -> {
                writer.print("While(");
                visit(whl.expr);
                writer.print(",");
                visit(whl.stmt);
                writer.print(")");
            }

            case If ifs -> {
                writer.print("If(");
                visit(ifs.expr);
                writer.print(",");
                visit(ifs.ifBranch);
                if (ifs.elseBranch != null) {
                    writer.print(",");
                    visit(ifs.elseBranch);
                }
                writer.print(")");
            }

            case Return rtrn -> {
                writer.print("Return(");
                if (rtrn.expr != null) visit(rtrn.expr);
                writer.print(")");   
            }

            case Continue ctnd -> {
                writer.print("Continue()");
            }
            
            case Break brk -> {
                writer.print("Break()");
            }

            case ExprStmt exprstmt -> {
                writer.print("ExprStmt(");
                visit(exprstmt.expr);
                writer.print(")");
            }

            case ClassType ct -> {
                writer.print("ClassType(");
                writer.print(ct.name);
                writer.print(")");
            }

            case ClassTypeDecl cd -> {
                writer.print("ClassType(");
                visit(cd.type);

                for (VarDecl vd: cd.vardecls) {
                    writer.print(",");
                    visit(vd);
                }

                for (FunDecl fd: cd.fundecls) {
                    writer.print(",");
                    visit(fd);
                }

                writer.print(")");
            }

            case InstanceFunCallExpr ifc -> {
                writer.print("InstanceFunCallExpr(");
                visit(ifc.classObj);
                writer.print(",");
                visit(ifc.fc);
                writer.print(")");
            }

            case NewInstanceExpr ni -> {
                writer.print("NewInstanceExpr(");
                visit(ni.classType);
                writer.print(")");
            }

            default -> {
                // should never reach here
            }
        }

    }


    
}
