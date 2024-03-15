package sem;

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
					visit(b);
				yield BaseType.NONE;
			}

			case FunDecl fd -> {
				// to complete
				yield BaseType.NONE;
			}

			case Program p -> {
				// to complete
				yield BaseType.NONE;
			}

			case VarDecl vd -> {
				// to complete
				yield BaseType.NONE;
			}

			case VarExpr v -> {
				// to complete
				yield BaseType.UNKNOWN; // to change
			}

			case StructTypeDecl std -> {
				// to complete
				yield BaseType.UNKNOWN; // to change
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
						if (!argT.equals(declT)) error("[Type Analyzer] args type unmatched"+fc.name);
					}
				}

				yield fc.fd.type;
			}

			case Type t -> {
				yield t;
			}

			case BinOp bo -> {
				Type lhsT = visit(bo.lhs);
				Type rhsT = visit(bo.rhs);
				yield BaseType.UNKNOWN;
			}

			// case IntLiteral intlit -> {
				
			// }

			// to complete ...
			default -> { yield null; }
		};

	}


}
