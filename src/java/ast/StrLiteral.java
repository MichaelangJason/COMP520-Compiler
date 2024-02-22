package ast;

import java.util.ArrayList;
import java.util.List;

public final class StrLiteral extends Expr {
    public String val;

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }

}
