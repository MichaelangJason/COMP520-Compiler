package sem;

import java.util.HashMap;
import java.util.Map;

public class Scope {
	private Scope outer;
	private Map<String, Symbol> symbolTable = new HashMap<>();
	
	public Scope(Scope outer) { 
		this.outer = outer; 
	}
	
	public Scope() { this(null); }
	
	// find in both local and outer scope
	public Symbol lookup(String name) {
		Symbol curr = symbolTable.get(name);
		return curr != null ? curr : outer != null ? outer.lookup(name) : null; 
	}
	
	public Symbol lookupCurrent(String name) {
		// Symbol s = symbolTable.get(name);
		return symbolTable.get(name);
	}
	
	public void put(Symbol sym) {
		switch(sym) {
			case FunDeclSymbol fd -> symbolTable.put(fd.name, fd);
			case VarSymbol v -> symbolTable.put(v.name, v);
			case FunProtoSymbol fp -> symbolTable.put("proto "+fp.name, fp);
			case StructDeclSymbol std -> symbolTable.put("struct "+std.name, std);
			default -> throw new IllegalStateException();
		}
	}
}
