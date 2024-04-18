package ast;

public sealed interface Type extends ASTNode
        permits BaseType, PointerType, ArrayType, StructType, ClassType {
        
        public int getSize();
}