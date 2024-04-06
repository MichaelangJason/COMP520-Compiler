package regalloc;

import java.util.List;
import java.util.Set;
import java.util.Stack;
import java.util.function.Function;
import java.util.stream.Stream;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

import gen.asm.AssemblyItem;
import gen.asm.AssemblyPass;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Instruction;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.Section;
import gen.asm.Comment;

public class GraphColouringRegAlloc implements AssemblyPass {

    public static final GraphColouringRegAlloc INSTANCE = new GraphColouringRegAlloc();
    public HashMap<Section, CFG> cfgs = new HashMap<>();

    @Override
    public AssemblyProgram apply(AssemblyProgram program) {

        AssemblyProgram newProg = new AssemblyProgram();

        // compute CFG
        program.sections.forEach((section) -> {
            if (section.type != Section.Type.TEXT) return;
            CFG cfg = new CFG(section);
            cfgs.put(section, cfg);
            // cfg.writeDotGraph("tests/col/"+((Label) section.items.get(0)).name+".dot");
        });

        // perform Liveness Analysis, compute interference graph, and do colouring
        cfgs.values().stream().forEach((cfg) -> {
            (new LivenessAnalyzer(cfg)).analyze();
            cfg.interGraph = new InterferenceGraph(cfg);
            (new ChaitinColouring(cfg.interGraph)).apply();
        });

        // we assume that each function has a single corresponding text section
        program.sections.forEach((section) -> {
            if (section.type == AssemblyProgram.Section.Type.DATA)
                newProg.emitSection(section);
            else {
                assert (section.type == AssemblyProgram.Section.Type.TEXT);

                // get all virtual Register in this Text section
                CFG currCFG = cfgs.get(section);
                HashMap<Register.Virtual, Register.Arch> mapArch = currCFG.maps;
                List<Register.Virtual> spilledReg = new ArrayList<>(currCFG.vars);
                spilledReg.removeAll(mapArch.keySet());
                HashMap<Register.Virtual, Label> mapSpilled = new HashMap<>();
                
                // allocate one label for each spilled register in a new data section
                if (!spilledReg.isEmpty()) {
                    Section dataSec = newProg.newSection(Section.Type.DATA);
                    spilledReg.forEach(reg -> {
                        Label lbl = Label.create(reg.toString());
                        mapSpilled.put(reg, lbl);
                        dataSec.emit(lbl);
                        dataSec.emit(new Directive("space " + 4));
                    });    
                }

                final Section newSection = newProg.newSection(Section.Type.TEXT);
                section.items.forEach((item) -> {
                    switch (item) {
                        case Comment comment -> newSection.emit(comment);
                        case Label label -> newSection.emit(label);
                        case Directive directive -> newSection.emit(directive);
                        case Instruction insn -> {
                            if (insn == Instruction.Nullary.pushRegisters) {
                                newSection.emit("Original instruction: pushRegisters");
                                Set<Register> set = new HashSet<>(mapArch.values());
                                List<Register> list = new ArrayList<>(set);

                                for (Register reg: list) {
                                    // push to stack
                                    newSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);
                                    newSection.emit(OpCode.SW, reg, Register.Arch.sp, 0);
                                }

                            } else if (insn == Instruction.Nullary.popRegisters) {
                                newSection.emit("Original instruction: popRegisters");
                                Set<Register> set = new HashSet<>(mapArch.values());
                                List<Register> list = new ArrayList<>(set).reversed();

                                for (Register reg: list) {
                                    // retrieve from stack
                                    newSection.emit(OpCode.LW, reg, Register.Arch.sp, 0);
                                    newSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, 4);
                                }
                            } else {
                                emitInstructionWithoutVirtualRegister(insn, mapArch, mapSpilled, newSection);
                            }
                        }
                    }
                });


            }
        });

        // To complete

        return newProg;
    }

    private void emitInstructionWithoutVirtualRegister(Instruction inst, HashMap<Register.Virtual, Register.Arch> mapArch, HashMap<Register.Virtual, Label> mapSpilled, Section section) {
        section.emit("Original instruction: " + inst);

        HashMap<Register, Register> vrToAr = new HashMap<>(mapArch);
        Register.Arch[] tempRegs = {Register.Arch.v1, Register.Arch.a1, Register.Arch.a2, Register.Arch.a3}; // 4 temporaries should be more than enough, these are not used in CodeGeneration
        final Stack<Register.Arch> freeTempRegs = new Stack<>();
        freeTempRegs.addAll(Arrays.asList(tempRegs));

        /*
         * case 1: no vr
         * case 2: vr but already mapped to ar
         * case 3: spilled vr
         */

         // add spilled register to vrToAr with a temp reg
         mapSpilled.keySet().forEach(reg -> {
            Register.Arch tmp = freeTempRegs.pop();
            vrToAr.put(reg, tmp);
         });

         // load values for spilled  
         inst.uses().forEach(reg -> {
            if (mapSpilled.keySet().contains(reg)) {
                Register tmp = vrToAr.get(reg);
                Label label = mapSpilled.get(reg);
                section.emit(OpCode.LA, tmp, label);
                section.emit(OpCode.LW, tmp, tmp, 0);
            }
         });

         section.emit(inst.rebuild(vrToAr));

         if (inst.def() != null) {
            // a spilled vr is the destination
            if (mapSpilled.keySet().contains(inst.def())) {
                Register tmpVal = vrToAr.get(inst.def());
                Register tmpAddr = freeTempRegs.remove(0);
                Label label = mapSpilled.get(inst.def());

                section.emit(OpCode.LA, tmpAddr, label);
                section.emit(OpCode.SW, tmpVal, tmpAddr, 0);
            }
         }
    }

    private class CNode {
        public final CFG cfg;
        public final Instruction inst;
        public final List<CNode> predNodes = new ArrayList<>();
        public final List<CNode> succNodes = new ArrayList<>();
        public final List<Register.Virtual> use = new ArrayList<>();
        public final List<Register.Virtual> def = new ArrayList<>();
        public List<Register.Virtual> liveIn = new ArrayList<>();
        public List<Register.Virtual> liveOut = new ArrayList<>();
        
        public CNode(Instruction inst, CFG cfg) {
            this.inst = inst;
            this.cfg = cfg;
        }

        public void addPredNode(CNode node) {
            assert node != null;
            predNodes.add(node);
        }

        public void addSuccNode(CNode node) {
            assert node != null;
            succNodes.add(node);
        }

        public void useVars(Register reg) {
            assert reg instanceof Register.Virtual;
            use.add((Register.Virtual) reg);
            cfg.addVars((Register.Virtual) reg);
            cfg.addToVarUses((Register.Virtual) reg, this);

        }

        public void defVars(Register reg) {
            assert reg instanceof Register.Virtual;
            def.add((Register.Virtual) reg);
            cfg.addVars((Register.Virtual) reg);
            cfg.addToVarDefs((Register.Virtual) reg, this);
        }
    }

    private class CFG {
        // only deal with instruction, not directive
        public final List<CNode> instNodes = new ArrayList<>();
        public final HashMap<Label, CNode> lbls = new HashMap<>();
        // Maintain a list of Virtual Registers (Variable)
        public final List<Register.Virtual> vars = new ArrayList<>();
        public final HashMap<Register.Virtual, List<CNode>> varDefs = new HashMap<>();
        public final HashMap<Register.Virtual, List<CNode>> varUses = new HashMap<>();
        public InterferenceGraph interGraph;
        public final HashMap<Register.Virtual, Register.Arch> maps = new HashMap<>();

        public CFG(Section sec) {
            assert sec.type == Section.Type.TEXT;
            buildCFG(sec);
            writeDotGraph("tests/col/CFG.dot");
        }

        public void addVars(Register.Virtual var) {
            if (!vars.contains(var)) vars.add(var);
        }

        public void addToVarDefs(Register.Virtual var, CNode node) {
            varDefs.computeIfAbsent(var, v -> new ArrayList<>()).add(node);
        }

        public void addToVarUses(Register.Virtual var, CNode node) {
            varUses.computeIfAbsent(var, v -> new ArrayList<>()).add(node);
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
                                CNode node = new CNode((Instruction) next, this);
                                instNodes.add(node);
                                lbls.put(lbl, node); 
                                i = j; 
                                break;
                            }
                        }

                    }
                    case Instruction inst -> {
                        // add to nodes
                        instNodes.add(new CNode(inst, this));
                    }
                    default -> { /* skip others */ }
                }
            }

            // second iteration on instNodes, link prec and succ
            for (int i = 0; i < instNodes.size(); i++) {
                CNode currNode = instNodes.get(i);
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
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1)); 

                        // check destination
                        if (ta.dst.isVirtual()) currNode.defVars(ta.dst);
                        
                        // check source register
                        if (ta.src1.isVirtual()) currNode.useVars(ta.src1);
                        if (ta.src2.isVirtual()) currNode.useVars(ta.src2);

                    }

                    case Instruction.BinaryArithmetic ba -> {
                        // branching
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1));
                        
                        // check source register
                        if (ba.src1.isVirtual()) currNode.useVars(ba.src1);
                        if (ba.src2.isVirtual()) currNode.useVars(ba.src2);
                    }

                    case Instruction.UnaryArithmetic ua -> {
                        // branching
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1)); 

                        // check dest, MFLO, MFHI
                        if (ua.dst.isVirtual()) currNode.defVars(ua.dst);
                    }

                    case Instruction.ArithmeticWithImmediate ai -> {
                        // branching
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1)); 

                        // check dst
                        if (ai.dst.isVirtual()) currNode.defVars(ai.dst);
                        // check source
                        if (ai.src.isVirtual()) currNode.useVars(ai.src);
                        
                    }

                    case Instruction.MemIndirect mi -> {
                        // branching
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1)); 
                        
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
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1)); 
                        // check destination
                        if (li.dst.isVirtual()) currNode.defVars(li.dst);
                    }

                    case Instruction.LoadAddress la -> {
                        // branching
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1)); 
                        // check destination
                        if (la.dst.isVirtual()) currNode.defVars(la.dst);
                    }

                    case Instruction.UnaryBranch ub -> {
                        // branching
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1));
                        
                        // find the node branched to
                        Label precLbl = ub.label;
                        CNode pred = lbls.get(precLbl);

                        // add to current's succNodes
                        currNode.addSuccNode(pred);
                        // add to pred's predNodes
                        pred.addPredNode(currNode);

                        // check sources
                        if (ub.src.isVirtual()) currNode.useVars(ub.src);
                    }

                    case Instruction.BinaryBranch bb -> {
                        // branching
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1));
                        
                        // find the node branched to
                        Label precLbl = bb.label;
                        CNode pred = lbls.get(precLbl);

                        // add to current's succNodes
                        currNode.addSuccNode(pred);
                        // add to pred's predNodes
                        pred.addPredNode(currNode);

                        // check sources
                        if (bb.src1.isVirtual()) currNode.useVars(bb.src1);
                        if (bb.src2.isVirtual()) currNode.useVars(bb.src2);
                    }

                    case Instruction.Jump jp -> {
                        // jumping, add prev and succ label
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        // if (jp.opcode == OpCode.JAL) break;
                        if (lbls.get(jp.label) != null) currNode.addSuccNode(lbls.get(jp.label));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1));
                    }

                    case Instruction.JumpRegister jr -> {
                        // jumping, only add the previous node to pred
                        currNode.addPredNode(instNodes.get(i-1));
                        // check src, should never be true
                        if (jr.address.isVirtual()) currNode.useVars(jr.address);
                    }

                    default -> {
                        if (i > 0) currNode.addPredNode(instNodes.get(i-1));
                        if (i < instNodes.size() - 1) currNode.addSuccNode(instNodes.get(i+1));
                    }
                }

            }

        }

        private void writeDotGraph(String filename) {
            /*
             * dot -Tpng tests/col/CFG.dot -o tests/col/cfg.png
             */
            StringBuilder dotGraph = new StringBuilder("digraph CFG {\n");

            // Function to sanitize node labels
            Function<String, String> sanitizeLabel = label -> label
            .replace("$", "_")
            .replace(" ", "_")
            .replace("(", "_")
            .replace(")", "_")
            .replace(",", "_")
            .replace("-", "minus");

            HashMap<CNode, String> dotLbls = new HashMap<>();
            
            int n = 0;
            // Iterate over all the nodes
            for (CNode node : this.instNodes) {
                // Sanitize and create a label for the node with the instruction or some unique identifier
                String nodeLabel = sanitizeLabel.apply("Node_" + n++ + "__" + node.inst.toString());
                dotLbls.put(node, nodeLabel);
                dotGraph.append("    ").append(nodeLabel).append(" [label=\"").append(nodeLabel).append("\"];\n");
            }

            dotGraph.append("\n");

            // Iterate over all nodes again to create the edges based on successors
            for (CNode node : this.instNodes) {
                String nodeLabel = dotLbls.get(node);
                for (CNode succ : node.succNodes) {
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


        public LivenessAnalyzer(CFG cfg) {
            this.graph = cfg;
        }

        // fixed-point algorithm
        public void analyze() {
            boolean changed;
            do {
                changed = false;
                for (CNode node : graph.instNodes) {
                    List<Register.Virtual> _liveIn = new ArrayList<>(node.liveIn);
                    List<Register.Virtual> _liveOut = new ArrayList<>(node.liveOut);

                    // LiveIn(n) = use(n) U (LiveOut(n) - def(n))
                    node.liveIn = new ArrayList<>(node.use);
                    List<Register.Virtual> outMinusDef = new ArrayList<>(node.liveOut);
                    outMinusDef.removeAll(node.def);
                    for (Register.Virtual var: outMinusDef) {
                        if (!node.liveIn.contains(var)) node.liveIn.add(var);
                    }

                    // LiveOut(n) = Union LiveIn(s forall s in succ(n))
                    node.liveOut = new ArrayList<>();
                    for (CNode succ : node.succNodes) {
                        for (Register.Virtual var: succ.liveIn) {
                            if (!node.liveOut.contains(var)) node.liveOut.add(var);
                        }
                    }
                    
                    if (!changed) {
                        boolean liveInDiff = !(_liveIn.size() == node.liveIn.size() && _liveIn.containsAll(node.liveIn) && node.liveIn.containsAll(_liveIn));
                        boolean liveOutDiff = !(_liveOut.size() == node.liveOut.size() && _liveOut.containsAll(node.liveOut) && node.liveOut.containsAll(_liveOut));
                        // If anything has changed, update the node's in and out lists
                        changed = liveInDiff || liveOutDiff;    
                    }
                }
            } while (changed);
        
        }

    }

    public class INode {
        public final InterferenceGraph g;
        public final Register.Virtual var;
        public final List<INode> interfered = new ArrayList<>();
        public Register.Arch colour = null; // to be filled by Chitin's Algo

        public INode(Register.Virtual var, InterferenceGraph graph) {
            this.var = var;
            this.g = graph;
        }

        public void checkListInterference(List<Register.Virtual> vars) {
            vars.forEach(this::checkInterference);
        }

        private void checkInterference(Register.Virtual var) {
            if (var == this.var) return;
            INode node = g.graph.get(var);
            if (!interfered.contains(node)) interfered.add(node);
        }
    }
    private class InterferenceGraph {

        public final CFG cfg;
        public final HashMap<Register.Virtual, INode> graph = new HashMap<>();
        int k = 0;

        public InterferenceGraph(CFG cfg) {
            this.cfg = cfg;
            cfg.interGraph = this;
            buildGraph();
        }

        private void buildGraph() {
            // create nodes for all register
            cfg.vars.forEach(v -> this.graph.put(v, new INode(v, this)));

            cfg.instNodes.forEach(node -> {
                node.liveIn.forEach((v) -> {
                    INode inode = this.graph.get(v);
                    inode.checkListInterference(node.liveIn);
                });

                node.liveOut.forEach((v) -> {
                    INode inode = this.graph.get(v);
                    inode.checkListInterference(node.liveOut);
                });
            });
        }

    }

    private class ChaitinColouring {
        InterferenceGraph graph;
        List<INode> stack = new ArrayList<>();
        List<INode> remaining = new ArrayList<>();
        List<INode> spilled = new ArrayList<>();
        List<Register.Arch> availableReg = Stream.of(
            Register.Arch.t0, Register.Arch.t1, Register.Arch.t2, Register.Arch.t3, Register.Arch.t4,
            Register.Arch.t5, Register.Arch.t6, Register.Arch.t7, Register.Arch.t8, Register.Arch.t9,
            Register.Arch.s0, Register.Arch.s1, Register.Arch.s2, Register.Arch.s3, Register.Arch.s4,
            Register.Arch.s5, Register.Arch.s6, Register.Arch.s7
        ).toList();

        /**
         * Info
         * can only use $t0-9 and $s0-s7 -> a total of 18 register (k = 18)
         */
        public ChaitinColouring(InterferenceGraph graph) {
            this.graph = graph;
        }

        public void apply() {
            putStack();
            fill();
        }

        // very naive implementation, does not consider performance at all
        private void putStack() {
            remaining = new ArrayList<>(graph.graph.values());

            do {
                INode toRemove = null;

                do {
                    toRemove = null;
    
                    for (INode node: remaining) {
                        List<INode> neighbours = new ArrayList<>(node.interfered);
                        neighbours.removeAll(stack);
                        neighbours.removeAll(spilled);
                        if (neighbours.size() >= 18) continue;
    
                        toRemove = node; // found a node to be pushed into stack and remove from remaining
                    }
                    
                    if (toRemove == null) break;
                    stack.add(toRemove);
                    remaining.remove(toRemove);
                } while (toRemove != null);
    
                if (remaining.isEmpty()) break;
                // choose one from the remaining and mark them spilled
                INode node = remaining.stream().max((INode n1, INode n2) -> n1.interfered.size() - n2.interfered.size()).get();
                if (node == null) throw new IllegalStateException();
                spilled.add(node); // add to spilled, and recheck

            } while (!remaining.isEmpty());
        }

        private void fill() {
            List<Register.Arch> usedColours = new ArrayList<>();
            stack.forEach((INode node) -> {
                // get available colours
                List<Register.Arch> colours = new ArrayList<>(availableReg);
                // get coloring of neighbours
                List<Register.Arch> otherColours = node.interfered.stream().map(n -> n.colour).toList();
                colours.removeAll(otherColours);

                // assign node with the first colour available, guaranteed to have at least one colour available
                node.colour = colours.get(0);
                // put back into maps
                this.graph.cfg.maps.put(node.var, node.colour);
                if(!usedColours.contains(node.colour)) usedColours.add(node.colour);

            });
            
            graph.k = usedColours.size();

            spilled.forEach((INode node) -> {
                this.graph.cfg.maps.put(node.var, null);
            });
        }
    }
}
