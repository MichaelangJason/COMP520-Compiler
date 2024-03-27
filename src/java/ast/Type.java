package ast;

public sealed interface Type extends ASTNode
        permits BaseType, PointerType, ArrayType, StructType {
        
        public int getSize();
}