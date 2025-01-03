package sem;

import util.CompilerPass;

public class SemanticAnalyzer extends CompilerPass {
	
	public void analyze(ast.Program prog) {

		NameAnalyzer na = new NameAnalyzer();
		na.visit(prog, null);
		this.numErrors += na.getNumErrors();

		TypeAnalyzer tc = new TypeAnalyzer();
		tc.visit(prog, null);
		this.numErrors += tc.getNumErrors();
		// To complete
	}
}
