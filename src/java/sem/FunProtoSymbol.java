package sem;

import java.util.ArrayList;
import java.util.List;

import ast.FunCallExpr;
import ast.FunProto;

public class FunProtoSymbol extends Symbol {
    public FunProto fp;
    public List<FunCallExpr> toBeAssigned = new ArrayList<>();

    public FunProtoSymbol(FunProto fp) {
        super(fp.name);
        this.fp = fp;
    }
}
