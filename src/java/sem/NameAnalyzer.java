package sem;

import java.util.List;
import java.util.ArrayList;

import ast.*;

public class NameAnalyzer extends BaseSemanticAnalyzer {
	Scope scope;
	public void visit(ASTNode node, ASTNode prev) {
		switch(node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

			case Program p -> {
				scope = new Scope();
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

				scope.put(new FunDeclSymbol(decl_print_s));
				scope.put(new FunDeclSymbol(decl_print_i));
				scope.put(new FunDeclSymbol(decl_print_c));
				scope.put(new FunDeclSymbol(decl_read_c));
				scope.put(new FunDeclSymbol(decl_read_i));
				scope.put(new FunDeclSymbol(decl_mcmalloc));

				for (Decl d: p.decls) visit(d, p);
			}

			case Block b -> {
				Scope oldScope = scope;
				scope = new Scope(oldScope);

				for (ASTNode n: b.children()) visit(n, prev);

				scope = oldScope; // restore oldScope
			}

			// FunProto should only appears at the top scope at this phase
			case FunProto fp -> {
				Symbol s = scope.lookupCurrent("proto "+fp.name);
				
				// found another declaration
				if (s != null) error("[Name Analyzer]FunProto exists: "+fp.name);
				else {
					// search and to match existing FunDeclSymbol
					Symbol fd = scope.lookupCurrent(fp.name);
					
					if (fd == null) { 
						Scope oldScope = scope;
						scope = new Scope(oldScope);
						for (ASTNode n: fp.params) visit(n, prev);
						scope = oldScope;
						scope.put(new FunProtoSymbol(fp)); 
						break;
					}

					// if existing and is VarSymbol, error
					if (fd instanceof VarSymbol) error("[Name Analyzer]FunProto conflict: " + fp.name);
					else {
						// here implies that fd is a FunDeclSymbol, so try match return type
						FunDecl funDeclFd = ((FunDeclSymbol) fd).fd;
						Type givenType = fp.type;
						Type declaredType = funDeclFd.type;
						
						if (givenType.equals(declaredType) && fp.params.size() == funDeclFd.params.size()) {
							Scope oldScope = scope;
							scope = new Scope(oldScope);
							for (ASTNode n: fp.params) visit(n, fp);
							scope = oldScope;

							for (int i = 0; i < fp.params.size(); i++) {
								if (!fp.params.get(i).type.equals(funDeclFd.params.get(i).type)) {
									error("[Name Analyzer]FunProto FunDecl Params Unmatched");
									return;
								}
							}

							scope.put(new FunProtoSymbol(fp));
						}
						else error("[Name Analyzer]FunProto Type Unmatched: "+fp.name);
					}
				}
			}

			// FunDecl should appears at the top scope at this phase
			case FunDecl fd -> {
				//TODO PartV difference
				Symbol s = scope.lookupCurrent(fd.name);
				
				// found a declaration
				if (s instanceof FunDeclSymbol || s instanceof VarSymbol) error("[Name Analyzer] FunDecl exists: " + fd.name);
				else {
					// if s is another type of symbol, then check for existing prototype
					Symbol proto = scope.lookupCurrent("proto "+fd.name);
					
					// either proto_[fd.name] is null or other symbol type, put it in
					if (proto instanceof VarSymbol) {
						error("[Name Analyzer] FunDecl conflict"); break;
					}

					if (!(proto instanceof FunProtoSymbol )) {
						// check params scope
						Scope oldScope = scope;
						scope = new Scope(oldScope);
						visit(fd.type, fd);
						for (VarDecl vd: fd.params) visit(vd, fd);
						scope = oldScope;
						scope.put(new FunDeclSymbol(fd));
					}
					// else check if the type match es
					else {
						FunProto fpProto = ((FunProtoSymbol) proto).fp;

						Type givenType = fd.type;
						Type declaredType = fpProto.type;
						if (givenType.equals(declaredType) && fd.params.size() == fpProto.params.size()) {
							Scope oldScope = scope;
							scope = new Scope(oldScope);						
							visit(fd.type, fd);
							for (ASTNode n: fd.params) visit(n, fd);
							scope = oldScope;

							for (int i = 0; i < fd.params.size(); i++) {
								if (!fd.params.get(i).type.equals(fpProto.params.get(i).type)) {
									error("[Name Analyzer]FunDecl FunProto Params Unmatched");
									return;
								}
							}
							
							((FunProtoSymbol) proto).toBeAssigned.forEach(fp -> fp.fd = fd);
							scope.put(new FunDeclSymbol(fd));
						} // needs override equals for pointerType and arrayType
						else error("[Name Analyzer]FunDecl/FunProto Type Unmatched: "+fd.name);
					}
				}

				Scope oldScope = scope;
				scope = new Scope(oldScope);
				for (ASTNode n: fd.children()) visit(n, fd); // this will add VarDecl for inner scope and then use it for child block
				scope = oldScope; // restore oldScope
				
			}

			case VarDecl vd -> {
				Symbol s = scope.lookupCurrent(vd.name);
				// first check current scope
				if (s != null) error("[Name Analyzer]VarDecl CurrExisted: "+vd.name);
				else {
					// check for outer scope, should not find an existing FunDeclSymbol or FunProtoSymbol
					Symbol fp = scope.lookup("proto "+vd.name);
					Symbol fd = scope.lookup(vd.name);
					if (fp != null || fd instanceof FunDeclSymbol) error("[Name Analyzer]VarDecl FunExisted: " + vd.name);
					else {
						if (vd.type.equals(BaseType.VOID)) {
							error("[Name Analyzer]Variable cannot declared in type Void");
							break;
						}
						// also needs to check if type exists!
						visit(vd.type, prev);
						// no need for check visit status since it increments error
						scope.put(new VarSymbol(vd));
					}
				}
			}

			case FunCallExpr f -> {
				// search for an existing FunDeclSymbol
				Symbol s = scope.lookup(f.name);
				// if not found then search for a FunProto
				if (s == null) {
					s = scope.lookup("proto "+f.name);
					if (!(s instanceof FunProtoSymbol)) { error("[Name Analyzer]Function Undeclared: "+f.name); break; }
					((FunProtoSymbol) s).toBeAssigned.add(f);
					f.type = ((FunProtoSymbol) s).fp.type;
					for (Expr arg: f.args) visit(arg, prev);
					break;
				}

				if (!(s instanceof FunDeclSymbol)) { error("[Name Analyzer]Function Undefined: "+f.name); break; }
				f.fd = ((FunDeclSymbol) s).fd;
				for (Expr arg: f.args) visit(arg, prev);
				f.type = f.fd.type;
			}

			case VarExpr v -> {
				Symbol s = scope.lookup(v.name);
				// search for an existing VarSymbol
				if (!(s instanceof VarSymbol)) { error("[Name Analyzer]Variable Undeclared: "+v.name); break; }
				v.vd = ((VarSymbol) s).vd;
				v.type = v.vd.type;
			}

			case StructTypeDecl std -> {
				Symbol s = scope.lookupCurrent("struct "+std.name);
				if (s instanceof StructDeclSymbol) { error("[Name Analyzer]StructTypeDecl already exists: "+ std.name); break; }
				else {
					// check params
					Scope oldScope = scope;
					scope = new Scope(oldScope);
					scope.put(new StructDeclSymbol(std));

					for (VarDecl vd: std.vardecls) {
						if (vd.type.equals(std.type)) {
							error("[Name Analyzer]StructDecl recursively defined: "+std.name); return;
						}
						else if (vd.type instanceof ArrayType) {
							Type curr = vd.type;
							while (curr instanceof ArrayType ) curr = ((ArrayType) curr).type;
							if (curr.equals(std.type)) {
								error("[Name Analyzer]StructDecl recursively defined: "+std.name); 
								return;
							}
						}
						else visit(vd, prev);
					}

					scope = oldScope;
					scope.put(new StructDeclSymbol(std));

				}

			}

			case StructType t -> {
				// only check for structType declaration
				Symbol s = scope.lookup("struct "+t.name);
				if (s == null) { error("[Name Analyzer]StructType Undefined: "+t.name); break; }
				t.std = ((StructDeclSymbol) s).std;
			}

			//TODO
			
			case ClassTypeDecl ctd -> {
				/*
				 * 2 cases:
				 * 1. inherit from a parent type
				 * 2. does not inherit from a parent type
				 */
				
				// check if existed
				Symbol s = scope.lookupCurrent("class "+ctd.name);

				if (s instanceof ClassTypeDeclSymbol) { error("[Name Analyzer] ClassTypeDecl already exists: "+ ctd.name); break; }
				else {
					// check parent, must be declared before
					ClassTypeDeclSymbol parent = (ClassTypeDeclSymbol) scope.lookupCurrent("class "+ctd.parentClass);

					if (ctd.parentClass != null && parent == null) {
						error("[Name Analyzer] ClassTypeDecl parent not declared yet: "+ ctd.name + "->" + ctd.parentClass); break;
					}

					if (ctd.parentClass != null) ctd.parentDecl = parent.ctd;

					/*
					 * parent must be declared and checked, create a new scope under the current scope and check overlap method and field 
					 */
					Scope scp = new Scope(scope);
					scp.put(new ClassTypeDeclSymbol(ctd));
					while (parent != null) {
						ClassTypeDecl parentCtd = parent.ctd;

						// add vardecl to scope
						for (VarDecl vd: parentCtd.vardecls) {
							Scope oldScope = scope;
							scope = scp;
							visit(vd.type, prev);
							scope = oldScope;
							scp.put(new VarSymbol(vd));
						}

						// add fundecl to scope
						for (FunDecl fd: parentCtd.fundecls) {
							scp.put(new FunDeclSymbol(fd));
						}

						// update parent
						parent = (ClassTypeDeclSymbol) scope.lookupCurrent("class "+parentCtd.parentClass);
					}

					
					/*
					 * check current vd and fd, only check if overlapped
					 */
					for (VarDecl vd: ctd.vardecls) {
						if (scp.lookupCurrent(vd.name) != null) {error("[Name Analyzer] ClassTypeDecl parent declared: "+ ctd.name + "->" + ctd.parentClass + ": " + vd.name); return;}

						scp.put(new VarSymbol(vd));
					}

					for (FunDecl fd: ctd.fundecls) {
						if (scp.lookupCurrent(fd.name) != null) {error("[Name Analyzer] ClassTypeDecl parent declared: "+ ctd.name + "->" + ctd.parentClass + ": " + fd.name); return;}
						
						scp.put(new FunDeclSymbol(fd));
					}

					/*
					 * now visit fd params and block to check
					 */
					Scope oldScope = scope;
					for (FunDecl fd: ctd.fundecls) {
						scope = new Scope(scp);
						for (ASTNode child: fd.children()) visit(child, fd);
						scope = oldScope;
					}
					
					scope.put(new ClassTypeDeclSymbol(ctd));
				}
				
			}

			case InstanceFunCallExpr ifc -> {
				// do nothing, type analyzer will handle this part
			}

			case ClassType ct -> {
				// only check if existed
				Symbol s = scope.lookup("class "+ct.name);
				if (s == null) {error("[Name Analyzer] ClassType Undefined: "+ct.name); break;}
				ct.ctd = ((ClassTypeDeclSymbol) s).ctd; 
			}

			case NewInstanceExpr ni -> {
				// only check if type already declared
				visit(ni.classType, prev);
			}


			case Return rtn -> {
				rtn.fd = (FunDecl) prev;
				if (rtn.expr != null) visit(rtn.expr, rtn);
			}

			// for other nodes, visit their children, should be in correct order
			default -> {
				for (ASTNode n: node.children()) visit(n, prev);
			}
		};

	}




}
