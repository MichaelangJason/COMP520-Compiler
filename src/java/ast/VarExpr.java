package ast;

import java.util.ArrayList;
import java.util.List;

public final class VarExpr extends Expr {
    public final String name;
    public VarDecl vd; // to be filled in by the name analyzer
    public FunDecl fd; // to be filled by name Analyzer
    
    public VarExpr(String name){
	    this.name = name;
    }

    public List<ASTNode> children() {
        return new ArrayList<ASTNode>();
    }

    public boolean isClassField() {
        return vd.isClassField();
    }
}
