package regalloc;

import java.util.List;
import java.util.function.Function;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import gen.asm.AssemblyItem;
import gen.asm.AssemblyPass;
import gen.asm.AssemblyProgram;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.Register;
import gen.asm.AssemblyProgram.Section;

public class GraphColouringRegAlloc implements AssemblyPass {

    public static final GraphColouringRegAlloc INSTANCE = new GraphColouringRegAlloc();


    @Override
    public AssemblyProgram apply(AssemblyProgram program) {

        AssemblyProgram newProg = new AssemblyProgram();

        program.sections.forEach((section) -> {
            if (section.type != Section.Type.TEXT) return;
            CFG cfg = new CFG(section);
        });

        // we assume that each function has a single corresponding text section
        

        // To complete

        return newProg;
    }

    private class Node {
        public final Instruction inst;
        public final List<Node> predNodes = new ArrayList<>();
        public final List<Node> succNodes = new ArrayList<>();
        public final List<Register.Virtual> use = new ArrayList<>();
        public final List<Register.Virtual> def = new ArrayList<>();
        public final List<Node> liveIn = new ArrayList<>();
        public final List<Node> liveOut = new ArrayList<>();
        
        public Node(Instruction inst) {
            this.inst = inst;
        }

        public void addPredNodes(Node node) {
            predNodes.add(node);
        }

        public void addSuccNodes(Node node) {
            succNodes.add(node);
        }

        public void useVars(Register reg) {
            assert reg instanceof Register.Virtual;
            use.add((Register.Virtual) reg);
        }

        public void defVars(Register reg) {
            assert reg instanceof Register.Virtual;
            def.add((Register.Virtual) reg);
        }

        public void liveInVars(Node node) {
            liveIn.add(node);
        }

        public void liveOutVars(Node node) {
            liveOut.add(node);
        }
    }

    private class CFG {
        // only deal with instruction, not directive
        public final List<Node> instNodes = new ArrayList<>();
        public final HashMap<Label, Node> lbls = new HashMap<>();


        public CFG(Section sec) {
            assert sec.type == Section.Type.TEXT;
            buildCFG(sec);
            writeDotGraph("tests/col/CFG.dot");
        }

        private void buildCFG(Section sec)  {
            // basically, add all possible instructions and possible labels
            
            // first iteration: add all labels and its corresponding instructions, ignore jump to other function
            for (int i = 0; i < sec.items.size(); i++) {
                AssemblyItem item = sec.items.get(i);
                switch(item) {
                    case Label lbl -> {
                        // find next instruction
                        int start = sec.items.indexOf(lbl) + 1;
                        for (int j = start; j < sec.items.size(); j++) {
                            AssemblyItem next = sec.items.get(j);

                            if (!(next instanceof Instruction)) continue;
                            // if found, create a new Node for next instruction and add it to hashmap, skip the added instruction
                            else { 
                                Node node = new Node((Instruction) next);
                                instNodes.add(node);
                                lbls.put(lbl, node); 
                                i = j; 
                                break;
                            }
                        }

                    }
                    case Instruction inst -> {
                        // add to nodes
                        instNodes.add(new Node(inst));
                    }
                    default -> { /* skip others */ }
                }
            }

            // second iteration on instNodes, link prec and succ
            for (int i = 0; i < instNodes.size(); i++) {
                Node currNode = instNodes.get(i);
                Instruction inst = currNode.inst;
                
                /*
                 * CFG connection logic, for each node i
                 * 1. Normal instruction, add next instruction to i's succ, and prev instruction to i's pred
                 * 2. Branching instruction, like 1., but also add to lbl's pred
                 * 3. Jumping (j),
                 * 4. jr and jal are ignored, just treat as 1.
                 *
                 * For register def, if dest register is a variable:
                 * 1. Ternary/Binary/Unary Arithmetic 
                 * 2. LoadImmediate
                 * 3. ArithmeticWithImmediate
                 * 
                 * For register use, if any source register is a variable
                 */
                switch(inst) {
                    case Instruction.TernaryArithmetic ta -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1)); 

                        // check destination
                        if (ta.dst.isVirtual()) currNode.defVars(ta.dst);
                        
                        // check source register
                        if (ta.src1.isVirtual()) currNode.useVars(ta.src1);
                        if (ta.src2.isVirtual()) currNode.useVars(ta.src2);

                    }

                    case Instruction.BinaryArithmetic ba -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1));
                        
                        // check source register
                        if (ba.src1.isVirtual()) currNode.useVars(ba.src1);
                        if (ba.src2.isVirtual()) currNode.useVars(ba.src2);
                    }

                    case Instruction.UnaryArithmetic ua -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1)); 

                        // check dest, MFLO, MFHI
                        if (ua.dst.isVirtual()) currNode.defVars(ua.dst);
                    }

                    case Instruction.ArithmeticWithImmediate ai -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1)); 

                        // check dst
                        if (ai.dst.isVirtual()) currNode.defVars(ai.dst);
                        // check source
                        if (ai.src.isVirtual()) currNode.useVars(ai.src);
                        
                    }

                    case Instruction.MemIndirect mi -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1)); 
                        
                        if (mi instanceof Instruction.Load) {
                            // check destination
                            if (mi.op1.isVirtual()) currNode.defVars(mi.op1);
                            // check source
                            if (mi.op2.isVirtual()) currNode.useVars(mi.op2);
                        } else {
                            // check sources
                            if (mi.op1.isVirtual()) currNode.useVars(mi.op1);
                            if (mi.op2.isVirtual()) currNode.useVars(mi.op2);
                        }
                    }

                    case Instruction.LoadImmediate li -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1)); 
                        // check destination
                        if (li.dst.isVirtual()) currNode.defVars(li.dst);
                    }

                    case Instruction.LoadAddress la -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1)); 
                        // check destination
                        if (la.dst.isVirtual()) currNode.defVars(la.dst);
                    }

                    case Instruction.UnaryBranch ub -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1));
                        
                        // find the node branched to
                        Label precLbl = ub.label;
                        Node pred = lbls.get(precLbl);

                        // add to current's succNodes
                        currNode.succNodes.add(pred);
                        // add to pred's predNodes
                        pred.predNodes.add(currNode);

                        // check sources
                        if (ub.src.isVirtual()) currNode.useVars(ub.src);
                    }

                    case Instruction.BinaryBranch bb -> {
                        // branching
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1));
                        
                        // find the node branched to
                        Label precLbl = bb.label;
                        Node pred = lbls.get(precLbl);

                        // add to current's succNodes
                        currNode.succNodes.add(pred);
                        // add to pred's predNodes
                        pred.predNodes.add(currNode);

                        // check sources
                        if (bb.src1.isVirtual()) currNode.useVars(bb.src1);
                        if (bb.src2.isVirtual()) currNode.useVars(bb.src2);
                    }

                    case Instruction.Jump jp -> {
                        // jumping, add prev and succ label
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(lbls.get(jp.label));
                    }

                    case Instruction.JumpRegister jr -> {
                        // jumping, only add the previous node to pred
                        currNode.addPredNodes(instNodes.get(i-1));
                        // check src, should never be true
                        if (jr.address.isVirtual()) currNode.useVars(jr.address);
                    }

                    default -> {
                        if (i > 0) currNode.predNodes.add(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.succNodes.add(instNodes.get(i+1));
                    }
                }

            }

        }

        private void writeDotGraph(String filename) {
            StringBuilder dotGraph = new StringBuilder("digraph CFG {\n");

            // Function to sanitize node labels
            Function<String, String> sanitizeLabel = label -> label
            .replace("$", "_")
            .replace(" ", "_")
            .replace("(", "_")
            .replace(")", "_")
            .replace(",", "_")
            .replace("-", "minus");

            HashMap<Node, String> dotLbls = new HashMap<>();
            
            int n = 0;
            // Iterate over all the nodes
            for (Node node : this.instNodes) {
                // Sanitize and create a label for the node with the instruction or some unique identifier
                String nodeLabel = sanitizeLabel.apply("Node_" + n++ + "__" + node.inst.toString());
                dotLbls.put(node, nodeLabel);
                dotGraph.append("    ").append(nodeLabel).append(" [label=\"").append(nodeLabel).append("\"];\n");
            }

            dotGraph.append("\n");

            // Iterate over all nodes again to create the edges based on successors
            for (Node node : this.instNodes) {
                String nodeLabel = dotLbls.get(node);
                for (Node succ : node.succNodes) {
                    String succLabel = dotLbls.get(succ);
                    dotGraph.append("    ").append(nodeLabel).append(" -> ").append(succLabel).append(";\n");
                }
            }

            // Close the graph
            dotGraph.append("}\n");

            // Write to file
            try (PrintWriter out = new PrintWriter(filename)) {
                out.println(dotGraph.toString());
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
}

    }

    private class LivenessAnalyzer {
        private final CFG graph;


        public LivenessAnalyzer(Section sec) {
            this.graph = new CFG(sec);
        }

        public void Analyze() {

        }

    }
}
