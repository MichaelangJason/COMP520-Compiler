package ast;

import java.util.ArrayList;
import java.util.List;

public final class ChrLiteral extends Expr {
    char val;

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }    
}
