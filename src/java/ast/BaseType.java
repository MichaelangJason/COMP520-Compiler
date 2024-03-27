package ast;

import java.util.ArrayList;
import java.util.List;

public enum BaseType implements Type {
    INT, CHAR, VOID, UNKNOWN, NONE;

    public List<ASTNode> children() {
        return new ArrayList<>();
    }

    @Override
    public int getSize() {
        return switch(this) {
            case INT -> 4;
            case CHAR -> 1;
            default -> 0;
        };
    }
}
