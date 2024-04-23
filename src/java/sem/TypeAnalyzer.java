package sem;

import java.util.ArrayList;
import java.util.List;

import ast.*;

public class TypeAnalyzer extends BaseSemanticAnalyzer {

	public Type visit(ASTNode node) {
		return switch(node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

			case Block b -> {
				for (ASTNode c : b.children())
					visit(c);
				yield BaseType.NONE;
			}

			case FunDecl fd -> {
				// to complete
				visit(fd.block);
				yield fd.type;
			}

			case FunProto fp -> {
				yield fp.type;
			}

			case Program p -> {
				// to complete
				for (ASTNode n: p.children()) visit(n);
				yield BaseType.NONE;
			}

			case VarDecl vd -> {
				// to complete
				yield vd.type;
			}

			case VarExpr v -> {
				// to complete
				if (v.vd == null) yield BaseType.UNKNOWN;
				v.type = v.vd.type;
				yield v.type; // to change
			}

			case StructTypeDecl std -> {
				// to complete
				yield std.type; // to change
			}

			case ClassTypeDecl ctd -> {
				yield ctd.type; // to chagne
			}

			case FunCallExpr fc -> {
				if (fc.fd == null) {
					error("[Type Analyzer] fd not exists");
					yield BaseType.UNKNOWN;
				}

				List<VarDecl> declParams = fc.fd.params;
				List<Expr> args = fc.args;
				if (args.size() != declParams.size()) error("[Type Analyzer] number of args unmatched: "+fc.name);
				else {
					for (int i = 0; i < args.size(); i++) {
						Type argT = visit(args.get(i));
						Type declT = visit(declParams.get(i));
						if (!argT.equals(declT)) error("[Type Analyzer] args type unmatched "+fc.name);
					}
				}

				fc.type = fc.fd.type;
				yield fc.fd.type;
			}

			case Type t -> {
				yield t;
			}

			case BinOp bo -> {
				Type lhsT = visit(bo.lhs);
				Type rhsT = visit(bo.rhs);

				Type returnType;

				switch(bo.op) {
					case ADD, SUB, MUL, DIV, MOD, OR, AND, GT, LT, GE, LE: {
						if (lhsT == BaseType.INT && rhsT == BaseType.INT) {
							returnType = BaseType.INT;
						} else {
							error("[Type Analyzer]BinOp Math Type Unmatched: " + lhsT + "," + rhsT);
							returnType = BaseType.UNKNOWN;
						}
						break;
					}
					case NE, EQ: {
						if (lhsT instanceof StructType || lhsT instanceof ArrayType || lhsT == BaseType.VOID || !lhsT.equals(rhsT)) {
							error("[Type Analyzer]BinOp Eq Type Unmatched: " + lhsT + "," + rhsT);
							returnType = BaseType.UNKNOWN;
						} else {
							returnType = BaseType.INT;
						}
						break;
					}
					default: { returnType = BaseType.UNKNOWN;}
				}

				bo.type = returnType;
				yield returnType;
			}

			case IntLiteral intlit -> {
				intlit.type = BaseType.INT;
				yield intlit.type;	
			}

			case StrLiteral strlit -> {
				strlit.type = new ArrayType(BaseType.CHAR, strlit.val.length()+1);
				yield strlit.type;
			}

			case ChrLiteral chrlit -> {
				chrlit.type = BaseType.CHAR;
				yield chrlit.type;
			}

			case SizeOfExpr szf -> {
				szf.type = BaseType.INT;
				yield szf.type;
			}

			case ArrayAccessExpr arraccexpr -> {
				Type lhsT = visit(arraccexpr.varName);
				Type rhsT = visit(arraccexpr.idx);

				if (!(lhsT instanceof ArrayType || lhsT instanceof PointerType || rhsT != BaseType.INT)) {
					error("[Type Analyzer] ArrayAccessUnmatched: "+lhsT+","+rhsT);
					yield BaseType.UNKNOWN;
				} else {
					Type subLhsT = (Type) lhsT.children().get(0);
					if (rhsT == BaseType.INT) {
						arraccexpr.type = subLhsT;
						yield subLhsT;
					}
					else yield BaseType.UNKNOWN;
				}
			}

			case FieldAccessExpr fldaccexpr -> {
				Expr exp = fldaccexpr.structName;

				if (!(exp instanceof VarExpr || exp instanceof FieldAccessExpr || exp instanceof ArrayAccessExpr || exp instanceof ValueAtExpr
				)) {
					error("[Type Analyzer] FieldAccess lvalues missing");
					yield BaseType.UNKNOWN;
				} else {
					Type fieldT = visit(exp);

					// check type
					if (!(fieldT instanceof StructType || fieldT instanceof ClassType)) {
						error("[Type Analyzer] FieldAccess not StructType|ClassType: "+fieldT);
						yield BaseType.UNKNOWN;
					}
					
					// check valid type
					if (fieldT instanceof StructType && ((StructType) fieldT).std == null) {
						error("[Type Analyzer] FieldAccess StructType Undefined");
						yield BaseType.UNKNOWN;
					} else 
					if (fieldT instanceof ClassType && ((ClassType) fieldT).ctd == null) {
						error("[Type Analyzer] FieldAccess ClassType Undefined");
						yield BaseType.UNKNOWN;
					}

					List<VarDecl> fields = fieldT instanceof StructType ? ((StructType) fieldT).std.vardecls : ((ClassType) fieldT).ctd.vardecls;

					// add all ancestor's fields
					if (fieldT instanceof ClassType) {
						ClassTypeDecl parent = ((ClassType) fieldT).ctd.parentDecl;
						while (parent != null) {
							fields.addAll(parent.vardecls);
							parent = parent.parentDecl;
						}
					}

					// find the corresponding field


					for (VarDecl vd: fields) {
						if (vd.name.equals(fldaccexpr.fieldName)) {
							fldaccexpr.type = vd.type;
							yield fldaccexpr.type;
						}
					}

					error("[Type Analyzer] FieldAccess Undefined field");
					yield BaseType.UNKNOWN;
				}
			} 

			case ValueAtExpr vexpr -> {
				Type exprT = visit(vexpr.expr);
				if (!(exprT instanceof PointerType)) {
					error("[Type Analyzer] ValueAtExpr Wrong");
					vexpr.type = BaseType.UNKNOWN;
				} else {
					vexpr.type = ((PointerType) exprT).type;
				}
				yield vexpr.type;
			}

			case AddressOfExpr addexp -> {
				Type exprT = visit(addexp.expr);
				addexp.type = new PointerType(exprT);
				yield addexp.type;
			}

			case TypecastExpr tpcast -> {
				Type castToType = tpcast.castToType;
				Type castFromType = visit(tpcast.expr);

				tpcast.type = BaseType.UNKNOWN;
				if (castFromType == BaseType.CHAR && castToType == BaseType.INT) {
					tpcast.type = BaseType.INT;
				} else if (castFromType instanceof ArrayType && castToType instanceof PointerType) {
					Type subtype1 = ((ArrayType) castFromType).type;
					Type subtype2 = ((PointerType) castToType).type;

					if (!subtype1.equals(subtype2)) {
						error("[Type Analyzer] Typecast Error1");
					} else {
						tpcast.type = new PointerType(subtype1);
					}
					
				} else if (castFromType instanceof PointerType && castToType instanceof PointerType) {
					Type subtype2 = ((PointerType) castToType).type;
					tpcast.type = new PointerType(subtype2);
				} else if (castFromType instanceof ClassType && castToType instanceof ClassType) {
					ClassType castTo = (ClassType) castToType;
					ClassType castFrom = (ClassType) castFromType;


					while (castFrom != null) {
						if (castFrom.equals(castTo)) {
							tpcast.type = castTo;
							break;
						} else {
							if (castFrom.ctd == null) {
								error("[Type Analyzer] Typecast ClassType Error");
								break;
							} else if (castFrom.ctd.parentDecl == null) {
								error("[Type Analyzer] Typecast ClassType Unmatched: " + castTo + " <- " + castFrom);
								break;
							}
							castFrom = (ClassType) castFrom.ctd.parentDecl.type;
						}
					}

				}

				yield tpcast.type;
			}

			case Assign assi -> {
				assi.type = BaseType.UNKNOWN;
				
				if (!(assi.lhs instanceof VarExpr || assi.lhs instanceof FieldAccessExpr || assi.lhs instanceof ArrayAccessExpr || assi.lhs instanceof ValueAtExpr
				)) {
					error("[Type Analyzer] Assignment no lvalue");
					yield assi.type;
				}

				Type lhsT = visit(assi.lhs);
				if (lhsT == BaseType.VOID || lhsT instanceof ArrayType) {
					error("[Type Analyzer] Assignment unaccepted type");
					yield assi.type;
				}

				Type rhsT = visit(assi.rhs);
				if (!lhsT.equals(rhsT)) {
					error("[Type Analyzer] Assignment Type Unmatched: "+lhsT+" <-> "+rhsT);
					yield assi.type;
				}

				assi.type = rhsT;
				yield assi.type;
			}

			case While wl -> {
				Type condT = visit(wl.expr);
				if (condT != BaseType.INT) {
					error("[Type Analyzer] While cond unmatched");
					yield BaseType.UNKNOWN;
				}
				else {
					visit(wl.stmt);
					yield BaseType.NONE;
				}
			}

			case If i -> {
				Type condT = visit(i.expr);
				if (condT != BaseType.INT) {
					error("[Type Analyzer] While cond unmatched");
					yield BaseType.UNKNOWN;
				} else {
					visit(i.ifBranch);
					if (i.elseBranch != null) visit(i.elseBranch);
					yield BaseType.NONE;
				}
			}

			case Return rtn -> {
				Type declReturnType = rtn.fd.type;

				Type returnType = rtn.children().isEmpty() ? BaseType.VOID : visit(rtn.expr);
				if (returnType.equals(declReturnType)) yield BaseType.NONE;
				else {
					error("[Type Analyzer] Return type unmatched: "+declReturnType+","+returnType);
					yield BaseType.UNKNOWN;
				}
			}

			case NewInstanceExpr ni -> {
				ni.type = ni.classType;
				yield ni.type;
			}

			case InstanceFunCallExpr ifc -> {
				Type classType = visit(ifc.classObj);

				if (!(classType instanceof ClassType) || ((ClassType) classType).ctd == null) {
					error("[Type Analyzer] instance funcall class undefined");
					yield BaseType.UNKNOWN;
				}

				// check if defined
				ClassTypeDecl ctd = ((ClassType) classType).ctd;
				FunCallExpr fc = ifc.fc;
				FunDecl fd = null;

				// collect all the fundecl declared
				List<FunDecl> allFds = new ArrayList<>();
				allFds.addAll(ctd.fundecls);
				
				ClassTypeDecl parent = ctd.parentDecl;
				while (parent != null) {
					allFds.addAll(parent.fundecls);
					parent = parent.parentDecl;
				}

				for (FunDecl cfd: allFds) {
					if (cfd.name.equals(ifc.fc.name)) {fd = cfd; break;}
				}

				if (fd == null) {
					error("[Type Analyzer] instance funcall" + fc.name + "undefined in " + classType);
					yield BaseType.UNKNOWN;
				}

				// check params
				List<VarDecl> declParams = fd.params;
				List<Expr> args = fc.args;

				if (args.size() != declParams.size()) {
					error("[Type Analyzer] number of args unmatched: "+fc.name);
					yield BaseType.UNKNOWN;
				}
				else {
					for (int i = 0; i < args.size(); i++) {
						Type argT = visit(args.get(i));
						Type declT = visit(declParams.get(i));
						if (!argT.equals(declT)) {
							error("[Type Analyzer] args type unmatched "+fc.name);
							yield BaseType.UNKNOWN;
						}
					}
				}

				fc.fd = fd;
				fc.type = fd.type;

				yield fc.type;
			}
			
			default -> { 
				for (ASTNode n: node.children()) visit(n);
				yield BaseType.NONE; 
			}
		};

	}


}
