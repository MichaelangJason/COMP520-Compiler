package regalloc;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

import gen.asm.AssemblyItem;
import gen.asm.AssemblyPass;
import gen.asm.AssemblyProgram;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.Section;

public class GraphColouringRegAlloc implements AssemblyPass {

    public static final GraphColouringRegAlloc INSTANCE = new GraphColouringRegAlloc();


    @Override
    public AssemblyProgram apply(AssemblyProgram program) {

        AssemblyProgram newProg = new AssemblyProgram();

        // we assume that each function has a single corresponding text section
        

        // To complete

        return newProg;
    }

    private class Node {
        public final Instruction inst;
        public final List<Node> predNodes = new ArrayList<>();
        public final List<Node> succNodes = new ArrayList<>();
        public final List<Register.Virtual> liveVarsAfter = new ArrayList<>();
        public final List<Node> liveIn = new ArrayList<>();
        public final List<Node> liveOut = new ArrayList<>();
        
        public Node(Instruction inst) {
            this.inst = inst;
        }
    }

    private class CFG {
        // only deal with instruction, not directive
        public final List<Node> instNodes = new ArrayList<>();
        public final HashMap<Label, Node> lbls = new HashMap<>();


        public CFG(Section sec) {
            assert sec.type == Section.Type.TEXT;
            buildCFG(sec);
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
                            else { lbls.put(lbl, new Node((Instruction) next)); i = j+1; break; }
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
            for (int i = 1; i < instNodes.size()-1; i++) {
                Node currNode = instNodes.get(i);
                Instruction inst = currNode.inst;
                
                /*
                 * CFG connection logic, for each node i
                 * 1. Normal instruction, add next instruction to i's succ, and prev instruction to i's pred
                 * 2. Branching instruction, like 1., but also add to lbl's pred
                 * 3. Jumping (j),
                 * 4. jr and jal are ignored, just treat as 1.
                 */
                switch(inst.opcode) {
                    case OpCode.UnaryBranch ub -> {
                        // branching
                        currNode.predNodes.add(instNodes.get(i-1));
                        currNode.succNodes.add(instNodes.get(i+1));
                        
                        // find the node branched to
                        Label precLbl = ((Instruction.UnaryBranch) inst).label;
                        Node pred = lbls.get(precLbl);

                        // add to current's succNodes
                        currNode.succNodes.add(lbls.get(precLbl));
                        // add to pred's predNodes
                        pred.predNodes.add(currNode);
                    }

                    case OpCode.BinaryBranch bb -> {
                        // branching
                        currNode.predNodes.add(instNodes.get(i-1));
                        currNode.succNodes.add(instNodes.get(i+1));
                        
                        // find the node branched to
                        Label precLbl = ((Instruction.BinaryBranch) inst).label;
                        Node pred = lbls.get(precLbl);

                        // add to current's succNodes
                        currNode.succNodes.add(lbls.get(precLbl));
                        // add to pred's predNodes
                        pred.predNodes.add(currNode);
                    }

                    case OpCode.Jump jp -> {
                        // jumping, only add the previous node to pred
                        currNode.predNodes.add(instNodes.get(i-1));
                    }

                    default -> {
                        currNode.predNodes.add(instNodes.get(i-1));
                        currNode.succNodes.add(instNodes.get(i+1));
                    }
                }

            }

        }
    }

    private class LivenessAnalyzer {
        private final CFG graph;


        public LivenessAnalyzer(CFG graph) {
            this.graph = graph;
        }
    }
}
