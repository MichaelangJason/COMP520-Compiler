package sem;

import java.util.List;
import java.lang.reflect.Array;
import java.util.ArrayList;

import ast.*;

public class NameAnalyzer extends BaseSemanticAnalyzer {
	Scope scope;
	public void visit(ASTNode node) {
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
				args3.add(new VarDecl(BaseType.INT, "size"));
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

				for (Decl d: p.decls) visit(d);
			}

			case Block b -> {
				Scope oldScope = scope;
				scope = new Scope(oldScope);

				for (ASTNode n: b.children()) visit(n);

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
						for (ASTNode n: fp.params) visit(n);
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
							for (ASTNode n: fp.params) visit(n);
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
				Symbol s = scope.lookupCurrent(fd.name);
				
				// found a declaration
				if (s instanceof FunDeclSymbol || s instanceof VarSymbol) error("[Name Analyzer]FunDecl exists: " + fd.name);
				else {
					// if s is another type of symbol, then check for existing prototype
					Symbol proto = scope.lookupCurrent("proto "+fd.name);
					
					// either proto_[fd.name] is null or other symbol type, put it in
					if (proto instanceof VarSymbol) {
						error("[Name Analyzer]FunDecl conflict"); break;
					}
					if (!(proto instanceof FunProtoSymbol )) {
						// check params scope
						Scope oldScope = scope;
						scope = new Scope(oldScope);
						for (ASTNode n: fd.params) visit(n);
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
							for (ASTNode n: fd.params) visit(n);
							scope = oldScope;

							for (int i = 0; i < fd.params.size(); i++) {
								if (!fd.params.get(i).type.equals(fpProto.params.get(i).type)) {
									error("[Name Analyzer]FunDecl FunProto Params Unmatched");
									return;
								}
							}

							scope.put(new FunDeclSymbol(fd));
						} // needs override equals for pointerType and arrayType
						else error("[Name Analyzer]FunDecl/FunProto Type Unmatched: "+fd.name);
					}
				}

				Scope oldScope = scope;
				scope = new Scope(oldScope);
				for (ASTNode n: fd.children()) visit(n); // this will add VarDecl for inner scope and then use it for child block
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
						// also needs to check if type exists!
						visit(vd.type);
						// no need for check visit status since it increments error
						scope.put(new VarSymbol(vd));
					}
				}
			}

			case FunCallExpr f -> {
				Symbol s = scope.lookup(f.name);
				// search for an existing FunDeclSymbol
				if (!(s instanceof FunDeclSymbol)) { error("[Name Analyzer]Function Undefined: "+f.name); break; }
				f.fd = ((FunDeclSymbol) s).fd;
			}

			case VarExpr v -> {
				Symbol s = scope.lookup(v.name);
				// search for an existing VarSymbol
				if (!(s instanceof VarSymbol)) { error("[Name Analyzer]Variable Undeclared: "+v.name); break; }
				v.vd = ((VarSymbol) s).vd;
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
							if (curr.equals(std.type)) error("[Name Analyzer]StructDecl recursively defined: "+std.name); return;
						}
						else visit(vd);
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

			// for other nodes, visit their children, should be in correct order
			default -> {
				for (ASTNode n: node.children()) visit(n);
			}
		};

	}




}
