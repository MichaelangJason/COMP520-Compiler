.data
global:
.space 4
vtable_A:
.word classA_test
.word classA_getAndSetA
vtable_B:
.word classB_test
.word classA_getAndSetA
.word classB_getAndSetB
vtable_C:
.word classC_test
.word classA_getAndSetA
.word classB_getAndSetB
.word classC_getAndSetC
.word classC_testMa
.word classC_setAndReturnStruct
label_4_:
.asciiz "scc"
.align 1
label_5_:
.byte 'x'
.align 3

.data
# Allocated labels for virtual registers
label_217_v60:
.space 4
label_111_v27:
.space 4
label_164_v48:
.space 4
label_49_v9:
.space 4
label_229_v63:
.space 4
label_117_v32:
.space 4
label_45_v7:
.space 4
label_205_v58:
.space 4
label_113_v29:
.space 4
label_137_v37:
.space 4
label_149_v43:
.space 4
label_180_v47:
.space 4
label_36_v4:
.space 4
label_91_v23:
.space 4
label_123_v34:
.space 4
label_57_v13:
.space 4
label_83_v22:
.space 4
label_181_v46:
.space 4
label_31_v0:
.space 4
label_159_v45:
.space 4
label_151_v42:
.space 4
label_99_v25:
.space 4
label_221_v62:
.space 4
label_65_v14:
.space 4
label_71_v16:
.space 4
label_187_v54:
.space 4
label_79_v18:
.space 4
label_170_v50:
.space 4
label_51_v8:
.space 4
label_131_v35:
.space 4
label_119_v31:
.space 4
label_30_v1:
.space 4
label_78_v19:
.space 4
label_166_v49:
.space 4
label_195_v56:
.space 4
label_235_v65:
.space 4
label_69_v17:
.space 4
label_145_v40:
.space 4
label_44_v6:
.space 4
label_53_v11:
.space 4
label_233_v66:
.space 4
label_37_v3:
.space 4
label_135_v38:
.space 4
label_178_v51:
.space 4

.text
main:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-24
addiu $sp,$fp,-24
# Original instruction: pushRegisters
la $t0,label_217_v60
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_111_v27
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_164_v48
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_229_v63
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_117_v32
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_45_v7
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_205_v58
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_137_v37
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_149_v43
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_180_v47
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_36_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_91_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_123_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_57_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_181_v46
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_159_v45
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_151_v42
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_99_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_221_v62
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_187_v54
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_79_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_170_v50
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_131_v35
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_119_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_30_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_166_v49
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_195_v56
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_235_v65
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v17
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_145_v40
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_233_v66
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_135_v38
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_178_v51
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_31_v0
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,48
addiu $a0,$zero,48
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_30_v1
sw $t5,0($t0)
# Original instruction: sw v1,0($v0)
la $t5,label_30_v1
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_30_v1
sw $t5,0($t0)
# Original instruction: sw v1,8($v0)
la $t5,label_30_v1
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_30_v1
sw $t5,0($t0)
# Original instruction: sw v1,20($v0)
la $t5,label_30_v1
lw $t5,0($t5)
sw $t5,20($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_31_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: addiu v3,$fp,-20
addiu $t5,$fp,-20
la $t0,label_37_v3
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_36_v4
sw $t5,0($t0)
# Original instruction: lw v4,0(v4)
la $t4,label_36_v4
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_36_v4
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v4,0(v3)
la $t5,label_36_v4
lw $t5,0($t5)
la $t4,label_37_v3
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: addiu v6,$fp,-8
addiu $t5,$fp,-8
la $t0,label_44_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_44_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_44_v6
sw $t4,0($t0)
# Original instruction: addiu v7,$fp,-20
addiu $t5,$fp,-20
la $t0,label_45_v7
sw $t5,0($t0)
# Original instruction: lw v7,0(v7)
la $t4,label_45_v7
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_45_v7
sw $t4,0($t0)
# Original instruction: xor v8,v6,v7
la $t5,label_44_v6
lw $t5,0($t5)
la $t4,label_45_v7
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_51_v8
sw $t3,0($t0)
# Original instruction: li v9,1
li $t5,1
la $t0,label_49_v9
sw $t5,0($t0)
# Original instruction: sltu v8,v8,v9
la $t3,label_51_v8
lw $t3,0($t3)
la $t4,label_49_v9
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_51_v8
sw $t3,0($t0)
# Original instruction: beq v8,$zero,label_7_else
la $t5,label_51_v8
lw $t5,0($t5)
beq $t5,$zero,label_7_else
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@4361bd48
# Original instruction: la v11,label_4_
la $t5,label_4_
la $t0,label_53_v11
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v11,0($sp)
la $t5,label_53_v11
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@4361bd48 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: j label_8_end
j label_8_end
label_7_else:
label_8_end:
# Execute test
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v13,$fp,-20
addiu $t5,$fp,-20
la $t0,label_57_v13
sw $t5,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_57_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_57_v13
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v13,0($sp)
la $t5,label_57_v13
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v14,$fp,-20
addiu $t5,$fp,-20
la $t0,label_65_v14
sw $t5,0($t0)
# Original instruction: lw v14,0(v14)
la $t4,label_65_v14
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_65_v14
sw $t4,0($t0)
# Original instruction: lw v14,0(v14)
la $t4,label_65_v14
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_65_v14
sw $t4,0($t0)
# Original instruction: lw v14,0(v14)
la $t4,label_65_v14
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_65_v14
sw $t4,0($t0)
# Original instruction: jalr v14
la $t5,label_65_v14
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From test
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getA
# >>>Retrieving arg val<<<: class A
# Original instruction: addiu v17,$fp,-8
addiu $t5,$fp,-8
la $t0,label_69_v17
sw $t5,0($t0)
# Original instruction: lw v17,0(v17)
la $t4,label_69_v17
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_69_v17
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v17,0($sp)
la $t5,label_69_v17
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v16,0($sp)
lw $t5,0($sp)
la $t0,label_71_v16
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v16,0($sp)
la $t5,label_71_v16
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# >>>Assign<<<: class C
# >>Get VAR Addr<<
# Original instruction: addiu v18,$fp,-16
addiu $t5,$fp,-16
la $t0,label_79_v18
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,48
addiu $a0,$zero,48
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v19,vtable_C
la $t5,vtable_C
la $t0,label_78_v19
sw $t5,0($t0)
# Original instruction: sw v19,0($v0)
la $t5,label_78_v19
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v19,vtable_C
la $t5,vtable_C
la $t0,label_78_v19
sw $t5,0($t0)
# Original instruction: sw v19,8($v0)
la $t5,label_78_v19
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v19,vtable_C
la $t5,vtable_C
la $t0,label_78_v19
sw $t5,0($t0)
# Original instruction: sw v19,20($v0)
la $t5,label_78_v19
lw $t5,0($t5)
sw $t5,20($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v18)
la $t5,label_79_v18
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute testMa
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v22,$fp,-16
addiu $t5,$fp,-16
la $t0,label_83_v22
sw $t5,0($t0)
# Original instruction: lw v22,0(v22)
la $t4,label_83_v22
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_83_v22
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v22,0($sp)
la $t5,label_83_v22
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v23,$fp,-16
addiu $t5,$fp,-16
la $t0,label_91_v23
sw $t5,0($t0)
# Original instruction: lw v23,0(v23)
la $t4,label_91_v23
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_91_v23
sw $t4,0($t0)
# Original instruction: lw v23,0(v23)
la $t4,label_91_v23
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_91_v23
sw $t4,0($t0)
# Original instruction: lw v23,16(v23)
la $t4,label_91_v23
lw $t4,0($t4)
lw $t4,16($t4)
la $t0,label_91_v23
sw $t4,0($t0)
# Original instruction: jalr v23
la $t5,label_91_v23
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From testMa
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v25,$fp,-16
addiu $t5,$fp,-16
la $t0,label_99_v25
sw $t5,0($t0)
# Original instruction: lw v25,0(v25)
la $t4,label_99_v25
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_99_v25
sw $t4,0($t0)
# Original instruction: addiu v25,v25,4
la $t4,label_99_v25
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_99_v25
sw $t4,0($t0)
# Original instruction: lw v25,0(v25)
la $t4,label_99_v25
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_99_v25
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v25,0($sp)
la $t5,label_99_v25
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v27,$fp,-16
addiu $t5,$fp,-16
la $t0,label_111_v27
sw $t5,0($t0)
# Original instruction: lw v27,0(v27)
la $t4,label_111_v27
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_111_v27
sw $t4,0($t0)
# Original instruction: addiu v27,v27,28
la $t4,label_111_v27
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_111_v27
sw $t4,0($t0)
# Original instruction: lw v27,0(v27)
la $t4,label_111_v27
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_111_v27
sw $t4,0($t0)
# Original instruction: addiu v27,v27,4
la $t4,label_111_v27
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_111_v27
sw $t4,0($t0)
# Original instruction: lw v27,0(v27)
la $t4,label_111_v27
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_111_v27
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v27,0($sp)
la $t5,label_111_v27
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: li v29,4
li $t5,4
la $t0,label_113_v29
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v29,0($sp)
la $t5,label_113_v29
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getA
# >>>Retrieving arg val<<<: class A
# Original instruction: addiu v32,$fp,-8
addiu $t5,$fp,-8
la $t0,label_117_v32
sw $t5,0($t0)
# Original instruction: lw v32,0(v32)
la $t4,label_117_v32
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_117_v32
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v32,0($sp)
la $t5,label_117_v32
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v31,0($sp)
lw $t5,0($sp)
la $t0,label_119_v31
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v31,0($sp)
la $t5,label_119_v31
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute test
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v34,$fp,-8
addiu $t5,$fp,-8
la $t0,label_123_v34
sw $t5,0($t0)
# Original instruction: lw v34,0(v34)
la $t4,label_123_v34
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_123_v34
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v34,0($sp)
la $t5,label_123_v34
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v35,$fp,-8
addiu $t5,$fp,-8
la $t0,label_131_v35
sw $t5,0($t0)
# Original instruction: lw v35,0(v35)
la $t4,label_131_v35
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_131_v35
sw $t4,0($t0)
# Original instruction: lw v35,0(v35)
la $t4,label_131_v35
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_131_v35
sw $t4,0($t0)
# Original instruction: lw v35,0(v35)
la $t4,label_131_v35
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_131_v35
sw $t4,0($t0)
# Original instruction: jalr v35
la $t5,label_131_v35
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From test
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getA
# >>>Retrieving arg val<<<: class A
# Original instruction: addiu v38,$fp,-16
addiu $t5,$fp,-16
la $t0,label_135_v38
sw $t5,0($t0)
# Original instruction: lw v38,0(v38)
la $t4,label_135_v38
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_135_v38
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v38,0($sp)
la $t5,label_135_v38
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v37,0($sp)
lw $t5,0($sp)
la $t0,label_137_v37
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v37,0($sp)
la $t5,label_137_v37
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v40,$fp,-16
addiu $t5,$fp,-16
la $t0,label_145_v40
sw $t5,0($t0)
# Original instruction: lw v40,0(v40)
la $t4,label_145_v40
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_145_v40
sw $t4,0($t0)
# Original instruction: addiu v40,v40,4
la $t4,label_145_v40
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_145_v40
sw $t4,0($t0)
# Original instruction: lw v40,0(v40)
la $t4,label_145_v40
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_145_v40
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v40,0($sp)
la $t5,label_145_v40
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getA
# >>>Retrieving arg val<<<: class A
# Original instruction: addiu v43,$fp,-8
addiu $t5,$fp,-8
la $t0,label_149_v43
sw $t5,0($t0)
# Original instruction: lw v43,0(v43)
la $t4,label_149_v43
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_149_v43
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v43,0($sp)
la $t5,label_149_v43
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v42,0($sp)
lw $t5,0($sp)
la $t0,label_151_v42
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v42,0($sp)
la $t5,label_151_v42
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v45,$fp,-8
addiu $t5,$fp,-8
la $t0,label_159_v45
sw $t5,0($t0)
# Original instruction: lw v45,0(v45)
la $t4,label_159_v45
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_159_v45
sw $t4,0($t0)
# Original instruction: addiu v45,v45,4
la $t4,label_159_v45
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_159_v45
sw $t4,0($t0)
# Original instruction: lw v45,0(v45)
la $t4,label_159_v45
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_159_v45
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v45,0($sp)
la $t5,label_159_v45
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# >>>Assign<<<: ast.PointerType@2aae9190
# >>Get VAR Addr<<
# Original instruction: addiu v46,$fp,-24
addiu $t5,$fp,-24
la $t0,label_181_v46
sw $t5,0($t0)
# >>Get VAL<<
# Execute setAndReturnStruct
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v48,$fp,-16
addiu $t5,$fp,-16
la $t0,label_164_v48
sw $t5,0($t0)
# Original instruction: lw v48,0(v48)
la $t4,label_164_v48
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_164_v48
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v48,0($sp)
la $t5,label_164_v48
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v49,27
li $t5,27
la $t0,label_166_v49
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v49,0($sp)
la $t5,label_166_v49
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v50,label_5_
la $t5,label_5_
la $t0,label_170_v50
sw $t5,0($t0)
# Original instruction: lb v50,0(v50)
la $t4,label_170_v50
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_170_v50
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v50,0($sp)
la $t5,label_170_v50
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v51,$fp,-16
addiu $t5,$fp,-16
la $t0,label_178_v51
sw $t5,0($t0)
# Original instruction: lw v51,0(v51)
la $t4,label_178_v51
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_178_v51
sw $t4,0($t0)
# Original instruction: lw v51,0(v51)
la $t4,label_178_v51
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_178_v51
sw $t4,0($t0)
# Original instruction: lw v51,20(v51)
la $t4,label_178_v51
lw $t4,0($t4)
lw $t4,20($t4)
la $t0,label_178_v51
sw $t4,0($t0)
# Original instruction: jalr v51
la $t5,label_178_v51
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v47,0($sp)
lw $t5,0($sp)
la $t0,label_180_v47
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From setAndReturnStruct
# >>Start Copy<<
# Original instruction: sw v47,0(v46)
la $t5,label_180_v47
lw $t5,0($t5)
la $t4,label_181_v46
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v54,$fp,-24
addiu $t5,$fp,-24
la $t0,label_187_v54
sw $t5,0($t0)
# Original instruction: lw v54,0(v54)
la $t4,label_187_v54
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_187_v54
sw $t4,0($t0)
# Original instruction: lw v54,0(v54)
la $t4,label_187_v54
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_187_v54
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v54,0($sp)
la $t5,label_187_v54
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: addiu v56,$fp,-24
addiu $t5,$fp,-24
la $t0,label_195_v56
sw $t5,0($t0)
# Original instruction: lw v56,0(v56)
la $t4,label_195_v56
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_195_v56
sw $t4,0($t0)
# Original instruction: addi v56,v56,4
la $t4,label_195_v56
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_195_v56
sw $t4,0($t0)
# Original instruction: lb v56,0(v56)
la $t4,label_195_v56
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_195_v56
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v56,0($sp)
la $t5,label_195_v56
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v58,$fp,-16
addiu $t5,$fp,-16
la $t0,label_205_v58
sw $t5,0($t0)
# Original instruction: lw v58,0(v58)
la $t4,label_205_v58
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_205_v58
sw $t4,0($t0)
# Original instruction: addiu v58,v58,32
la $t4,label_205_v58
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_205_v58
sw $t4,0($t0)
# Original instruction: lw v58,0(v58)
la $t4,label_205_v58
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_205_v58
sw $t4,0($t0)
# Original instruction: lw v58,0(v58)
la $t4,label_205_v58
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_205_v58
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v58,0($sp)
la $t5,label_205_v58
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: addiu v60,$fp,-16
addiu $t5,$fp,-16
la $t0,label_217_v60
sw $t5,0($t0)
# Original instruction: lw v60,0(v60)
la $t4,label_217_v60
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_217_v60
sw $t4,0($t0)
# Original instruction: addiu v60,v60,32
la $t4,label_217_v60
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_217_v60
sw $t4,0($t0)
# Original instruction: lw v60,0(v60)
la $t4,label_217_v60
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_217_v60
sw $t4,0($t0)
# Original instruction: addi v60,v60,4
la $t4,label_217_v60
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_217_v60
sw $t4,0($t0)
# Original instruction: lb v60,0(v60)
la $t4,label_217_v60
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_217_v60
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v60,0($sp)
la $t5,label_217_v60
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute test
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v62,$fp,-16
addiu $t5,$fp,-16
la $t0,label_221_v62
sw $t5,0($t0)
# Original instruction: lw v62,0(v62)
la $t4,label_221_v62
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_221_v62
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v62,0($sp)
la $t5,label_221_v62
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v63,$fp,-16
addiu $t5,$fp,-16
la $t0,label_229_v63
sw $t5,0($t0)
# Original instruction: lw v63,0(v63)
la $t4,label_229_v63
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_229_v63
sw $t4,0($t0)
# Original instruction: lw v63,0(v63)
la $t4,label_229_v63
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_229_v63
sw $t4,0($t0)
# Original instruction: lw v63,0(v63)
la $t4,label_229_v63
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_229_v63
sw $t4,0($t0)
# Original instruction: jalr v63
la $t5,label_229_v63
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From test
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getA
# >>>Retrieving arg val<<<: class A
# Original instruction: addiu v66,$fp,-16
addiu $t5,$fp,-16
la $t0,label_233_v66
sw $t5,0($t0)
# Original instruction: lw v66,0(v66)
la $t4,label_233_v66
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_233_v66
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v66,0($sp)
la $t5,label_233_v66
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v65,0($sp)
lw $t5,0($sp)
la $t0,label_235_v65
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v65,0($sp)
la $t5,label_235_v65
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_178_v51
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_135_v38
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_37_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_233_v66
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_53_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_44_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_145_v40
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_69_v17
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_235_v65
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_195_v56
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_166_v49
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_78_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_30_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_119_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_131_v35
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_51_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_170_v50
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_79_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_187_v54
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_71_v16
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_65_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_221_v62
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_99_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_151_v42
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_159_v45
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_31_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_181_v46
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_83_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_57_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_123_v34
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_91_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_36_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_180_v47
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_149_v43
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_137_v37
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_113_v29
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_205_v58
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_45_v7
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_117_v32
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_229_v63
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_49_v9
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_164_v48
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_111_v27
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_217_v60
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.data
# Allocated labels for virtual registers
label_241_v67:
.space 4
label_240_v68:
.space 4

.text
classA_test:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
la $t0,label_241_v67
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_240_v68
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v67,4($fp)
lw $t5,4($fp)
la $t0,label_241_v67
sw $t5,0($t0)
# Original instruction: addiu v67,v67,4
la $t4,label_241_v67
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_241_v67
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v68,11
li $t5,11
la $t0,label_240_v68
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v68,0(v67)
la $t5,label_240_v68
lw $t5,0($t5)
la $t4,label_241_v67
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_240_v68
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_241_v67
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_257_v73:
.space 4
label_249_v70:
.space 4
label_248_v71:
.space 4
label_261_v76:
.space 4
label_256_v74:
.space 4

.text
classA_getAndSetA:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-8
addiu $sp,$fp,-8
# Original instruction: pushRegisters
la $t0,label_257_v73
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_249_v70
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_248_v71
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_261_v76
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_256_v74
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v70,$fp,-8
addiu $t5,$fp,-8
la $t0,label_249_v70
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v71,12($fp)
lw $t5,12($fp)
la $t0,label_248_v71
sw $t5,0($t0)
# Original instruction: addiu v71,v71,4
la $t4,label_248_v71
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_248_v71
sw $t4,0($t0)
# Original instruction: lw v71,0(v71)
la $t4,label_248_v71
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_248_v71
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v71,0(v70)
la $t5,label_248_v71
lw $t5,0($t5)
la $t4,label_249_v70
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v73,12($fp)
lw $t5,12($fp)
la $t0,label_257_v73
sw $t5,0($t0)
# Original instruction: addiu v73,v73,4
la $t4,label_257_v73
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_257_v73
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v74,$fp,8
addiu $t5,$fp,8
la $t0,label_256_v74
sw $t5,0($t0)
# Original instruction: lw v74,0(v74)
la $t4,label_256_v74
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_256_v74
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v74,0(v73)
la $t5,label_256_v74
lw $t5,0($t5)
la $t4,label_257_v73
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v76,$fp,-8
addiu $t5,$fp,-8
la $t0,label_261_v76
sw $t5,0($t0)
# Original instruction: lw v76,0(v76)
la $t4,label_261_v76
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_261_v76
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v76,4($fp)
la $t5,label_261_v76
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_256_v74
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_261_v76
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_248_v71
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_249_v70
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_257_v73
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_267_v77:
.space 4
label_266_v78:
.space 4

.text
classB_test:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
la $t0,label_267_v77
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_266_v78
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v77,4($fp)
lw $t5,4($fp)
la $t0,label_267_v77
sw $t5,0($t0)
# Original instruction: addiu v77,v77,4
la $t4,label_267_v77
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_267_v77
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v78,22
li $t5,22
la $t0,label_266_v78
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v78,0(v77)
la $t5,label_266_v78
lw $t5,0($t5)
la $t4,label_267_v77
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_266_v78
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_267_v77
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_283_v83:
.space 4
label_282_v84:
.space 4
label_274_v81:
.space 4
label_275_v80:
.space 4
label_287_v86:
.space 4

.text
classB_getAndSetB:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-8
addiu $sp,$fp,-8
# Original instruction: pushRegisters
la $t0,label_283_v83
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_282_v84
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_274_v81
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_275_v80
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_287_v86
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v80,$fp,-8
addiu $t5,$fp,-8
la $t0,label_275_v80
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v81,12($fp)
lw $t5,12($fp)
la $t0,label_274_v81
sw $t5,0($t0)
# Original instruction: addiu v81,v81,12
la $t4,label_274_v81
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_274_v81
sw $t4,0($t0)
# Original instruction: lw v81,0(v81)
la $t4,label_274_v81
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_274_v81
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v81,0(v80)
la $t5,label_274_v81
lw $t5,0($t5)
la $t4,label_275_v80
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v83,12($fp)
lw $t5,12($fp)
la $t0,label_283_v83
sw $t5,0($t0)
# Original instruction: addiu v83,v83,12
la $t4,label_283_v83
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_283_v83
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v84,$fp,8
addiu $t5,$fp,8
la $t0,label_282_v84
sw $t5,0($t0)
# Original instruction: lw v84,0(v84)
la $t4,label_282_v84
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_282_v84
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v84,0(v83)
la $t5,label_282_v84
lw $t5,0($t5)
la $t4,label_283_v83
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v86,$fp,-8
addiu $t5,$fp,-8
la $t0,label_287_v86
sw $t5,0($t0)
# Original instruction: lw v86,0(v86)
la $t4,label_287_v86
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_287_v86
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v86,4($fp)
la $t5,label_287_v86
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_287_v86
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_275_v80
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_274_v81
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_282_v84
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_283_v83
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_293_v87:
.space 4
label_292_v88:
.space 4

.text
classC_test:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
la $t0,label_293_v87
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_292_v88
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v87,4($fp)
lw $t5,4($fp)
la $t0,label_293_v87
sw $t5,0($t0)
# Original instruction: addiu v87,v87,4
la $t4,label_293_v87
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_293_v87
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v88,33
li $t5,33
la $t0,label_292_v88
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v88,0(v87)
la $t5,label_292_v88
lw $t5,0($t5)
la $t4,label_293_v87
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_292_v88
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_293_v87
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_296_v91:
.space 4
label_352_v109:
.space 4
label_305_v93:
.space 4
label_304_v94:
.space 4
label_322_v96:
.space 4
label_297_v90:
.space 4
label_346_v110:
.space 4
label_340_v104:
.space 4
label_361_v112:
.space 4
label_315_v100:
.space 4
label_362_v111:
.space 4
label_321_v97:
.space 4
label_354_v108:
.space 4
label_338_v105:
.space 4
label_326_v102:
.space 4
label_313_v99:
.space 4
label_332_v106:
.space 4
label_312_v98:
.space 4
label_366_v114:
.space 4

.text
classC_getAndSetC:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-12
addiu $sp,$fp,-12
# Original instruction: pushRegisters
la $t0,label_296_v91
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_352_v109
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_305_v93
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_304_v94
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_322_v96
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_297_v90
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_346_v110
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_340_v104
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_361_v112
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_315_v100
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_362_v111
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_321_v97
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_354_v108
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_338_v105
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_326_v102
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_313_v99
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_332_v106
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_312_v98
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_366_v114
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v90,$fp,-12
addiu $t5,$fp,-12
la $t0,label_297_v90
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v91,10
li $t5,10
la $t0,label_296_v91
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v91,0(v90)
la $t5,label_296_v91
lw $t5,0($t5)
la $t4,label_297_v90
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v93,$fp,-8
addiu $t5,$fp,-8
la $t0,label_305_v93
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v94,12($fp)
lw $t5,12($fp)
la $t0,label_304_v94
sw $t5,0($t0)
# Original instruction: addiu v94,v94,24
la $t4,label_304_v94
lw $t4,0($t4)
addiu $t4,$t4,24
la $t0,label_304_v94
sw $t4,0($t0)
# Original instruction: lw v94,0(v94)
la $t4,label_304_v94
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_304_v94
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v94,0(v93)
la $t5,label_304_v94
lw $t5,0($t5)
la $t4,label_305_v93
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v97,12($fp)
lw $t5,12($fp)
la $t0,label_321_v97
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v97,0($sp)
la $t5,label_321_v97
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v98,$fp,8
addiu $t5,$fp,8
la $t0,label_312_v98
sw $t5,0($t0)
# Original instruction: lw v98,0(v98)
la $t4,label_312_v98
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_312_v98
sw $t4,0($t0)
# Original instruction: li v99,2
li $t5,2
la $t0,label_313_v99
sw $t5,0($t0)
# Original instruction: add v100,v98,v99
la $t5,label_312_v98
lw $t5,0($t5)
la $t4,label_313_v99
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_315_v100
sw $t3,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v100,0($sp)
la $t5,label_315_v100
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v97,12($fp)
lw $t5,12($fp)
la $t0,label_321_v97
sw $t5,0($t0)
# Original instruction: lw v97,0(v97)
la $t4,label_321_v97
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_321_v97
sw $t4,0($t0)
# Original instruction: lw v97,4(v97)
la $t4,label_321_v97
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_321_v97
sw $t4,0($t0)
# Original instruction: jalr v97
la $t5,label_321_v97
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v96,0($sp)
lw $t5,0($sp)
la $t0,label_322_v96
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v102,$fp,-12
addiu $t5,$fp,-12
la $t0,label_326_v102
sw $t5,0($t0)
# Original instruction: lw v102,0(v102)
la $t4,label_326_v102
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_326_v102
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v102,0($sp)
la $t5,label_326_v102
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v105,12($fp)
lw $t5,12($fp)
la $t0,label_338_v105
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v105,0($sp)
la $t5,label_338_v105
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v106,$fp,-12
addiu $t5,$fp,-12
la $t0,label_332_v106
sw $t5,0($t0)
# Original instruction: lw v106,0(v106)
la $t4,label_332_v106
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_332_v106
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v106,0($sp)
la $t5,label_332_v106
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v105,12($fp)
lw $t5,12($fp)
la $t0,label_338_v105
sw $t5,0($t0)
# Original instruction: lw v105,0(v105)
la $t4,label_338_v105
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_338_v105
sw $t4,0($t0)
# Original instruction: lw v105,4(v105)
la $t4,label_338_v105
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_338_v105
sw $t4,0($t0)
# Original instruction: jalr v105
la $t5,label_338_v105
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v104,0($sp)
lw $t5,0($sp)
la $t0,label_340_v104
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v104,0($sp)
la $t5,label_340_v104
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v109,12($fp)
lw $t5,12($fp)
la $t0,label_352_v109
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v109,0($sp)
la $t5,label_352_v109
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v110,$fp,-12
addiu $t5,$fp,-12
la $t0,label_346_v110
sw $t5,0($t0)
# Original instruction: lw v110,0(v110)
la $t4,label_346_v110
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_346_v110
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v110,0($sp)
la $t5,label_346_v110
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v109,12($fp)
lw $t5,12($fp)
la $t0,label_352_v109
sw $t5,0($t0)
# Original instruction: lw v109,0(v109)
la $t4,label_352_v109
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_352_v109
sw $t4,0($t0)
# Original instruction: lw v109,4(v109)
la $t4,label_352_v109
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_352_v109
sw $t4,0($t0)
# Original instruction: jalr v109
la $t5,label_352_v109
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v108,0($sp)
lw $t5,0($sp)
la $t0,label_354_v108
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v108,0($sp)
la $t5,label_354_v108
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v111,12($fp)
lw $t5,12($fp)
la $t0,label_362_v111
sw $t5,0($t0)
# Original instruction: addiu v111,v111,24
la $t4,label_362_v111
lw $t4,0($t4)
addiu $t4,$t4,24
la $t0,label_362_v111
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v112,$fp,8
addiu $t5,$fp,8
la $t0,label_361_v112
sw $t5,0($t0)
# Original instruction: lw v112,0(v112)
la $t4,label_361_v112
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_361_v112
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v112,0(v111)
la $t5,label_361_v112
lw $t5,0($t5)
la $t4,label_362_v111
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v114,$fp,-8
addiu $t5,$fp,-8
la $t0,label_366_v114
sw $t5,0($t0)
# Original instruction: lw v114,0(v114)
la $t4,label_366_v114
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_366_v114
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v114,4($fp)
la $t5,label_366_v114
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_366_v114
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_312_v98
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_332_v106
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_313_v99
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_326_v102
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_338_v105
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_354_v108
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_321_v97
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_362_v111
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_315_v100
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_361_v112
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_340_v104
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_346_v110
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_297_v90
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_322_v96
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_304_v94
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_305_v93
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_352_v109
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_296_v91
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_377_v119:
.space 4
label_443_v135:
.space 4
label_378_v118:
.space 4
label_415_v121:
.space 4
label_372_v115:
.space 4
label_402_v124:
.space 4
label_396_v127:
.space 4
label_457_v132:
.space 4
label_404_v123:
.space 4
label_455_v137:
.space 4
label_431_v133:
.space 4
label_414_v128:
.space 4
label_371_v116:
.space 4
label_394_v126:
.space 4
label_384_v122:
.space 4
label_393_v125:
.space 4
label_425_v130:
.space 4
label_442_v134:
.space 4
label_445_v136:
.space 4

.text
classC_testMa:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
la $t0,label_377_v119
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_443_v135
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_378_v118
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_415_v121
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_372_v115
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_402_v124
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_396_v127
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_457_v132
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_404_v123
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_455_v137
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_431_v133
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_414_v128
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_371_v116
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_394_v126
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_384_v122
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_393_v125
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_425_v130
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_442_v134
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_445_v136
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: lw v115,4($fp)
lw $t5,4($fp)
la $t0,label_372_v115
sw $t5,0($t0)
# Original instruction: addiu v115,v115,28
la $t4,label_372_v115
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_372_v115
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,8
addiu $a0,$zero,8
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v116,vtable_A
la $t5,vtable_A
la $t0,label_371_v116
sw $t5,0($t0)
# Original instruction: sw v116,0($v0)
la $t5,label_371_v116
lw $t5,0($t5)
sw $t5,0($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v115)
la $t5,label_372_v115
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v118,4($fp)
lw $t5,4($fp)
la $t0,label_378_v118
sw $t5,0($t0)
# Original instruction: addiu v118,v118,4
la $t4,label_378_v118
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_378_v118
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v119,1
li $t5,1
la $t0,label_377_v119
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v119,0(v118)
la $t5,label_377_v119
lw $t5,0($t5)
la $t4,label_378_v118
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v122,4($fp)
lw $t5,4($fp)
la $t0,label_384_v122
sw $t5,0($t0)
# Original instruction: addiu v122,v122,28
la $t4,label_384_v122
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_384_v122
sw $t4,0($t0)
# Original instruction: lw v122,0(v122)
la $t4,label_384_v122
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_384_v122
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v122,0($sp)
la $t5,label_384_v122
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v124,4($fp)
lw $t5,4($fp)
la $t0,label_402_v124
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v124,0($sp)
la $t5,label_402_v124
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: lw v125,4($fp)
lw $t5,4($fp)
la $t0,label_393_v125
sw $t5,0($t0)
# Original instruction: addiu v125,v125,4
la $t4,label_393_v125
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_393_v125
sw $t4,0($t0)
# Original instruction: lw v125,0(v125)
la $t4,label_393_v125
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_393_v125
sw $t4,0($t0)
# Original instruction: li v126,1
li $t5,1
la $t0,label_394_v126
sw $t5,0($t0)
# Original instruction: add v127,v125,v126
la $t5,label_393_v125
lw $t5,0($t5)
la $t4,label_394_v126
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_396_v127
sw $t3,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v127,0($sp)
la $t5,label_396_v127
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v124,4($fp)
lw $t5,4($fp)
la $t0,label_402_v124
sw $t5,0($t0)
# Original instruction: lw v124,0(v124)
la $t4,label_402_v124
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_402_v124
sw $t4,0($t0)
# Original instruction: lw v124,4(v124)
la $t4,label_402_v124
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_402_v124
sw $t4,0($t0)
# Original instruction: jalr v124
la $t5,label_402_v124
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v123,0($sp)
lw $t5,0($sp)
la $t0,label_404_v123
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v123,0($sp)
la $t5,label_404_v123
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v128,4($fp)
lw $t5,4($fp)
la $t0,label_414_v128
sw $t5,0($t0)
# Original instruction: addiu v128,v128,28
la $t4,label_414_v128
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_414_v128
sw $t4,0($t0)
# Original instruction: lw v128,0(v128)
la $t4,label_414_v128
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_414_v128
sw $t4,0($t0)
# Original instruction: lw v128,0(v128)
la $t4,label_414_v128
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_414_v128
sw $t4,0($t0)
# Original instruction: lw v128,4(v128)
la $t4,label_414_v128
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_414_v128
sw $t4,0($t0)
# Original instruction: jalr v128
la $t5,label_414_v128
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v121,0($sp)
lw $t5,0($sp)
la $t0,label_415_v121
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: lw v130,4($fp)
lw $t5,4($fp)
la $t0,label_425_v130
sw $t5,0($t0)
# Original instruction: addiu v130,v130,28
la $t4,label_425_v130
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_425_v130
sw $t4,0($t0)
# Original instruction: lw v130,0(v130)
la $t4,label_425_v130
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_425_v130
sw $t4,0($t0)
# Original instruction: addiu v130,v130,4
la $t4,label_425_v130
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_425_v130
sw $t4,0($t0)
# Original instruction: lw v130,0(v130)
la $t4,label_425_v130
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_425_v130
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v130,0($sp)
la $t5,label_425_v130
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v133,4($fp)
lw $t5,4($fp)
la $t0,label_431_v133
sw $t5,0($t0)
# Original instruction: addiu v133,v133,28
la $t4,label_431_v133
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_431_v133
sw $t4,0($t0)
# Original instruction: lw v133,0(v133)
la $t4,label_431_v133
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_431_v133
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v133,0($sp)
la $t5,label_431_v133
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: lw v134,4($fp)
lw $t5,4($fp)
la $t0,label_442_v134
sw $t5,0($t0)
# Original instruction: addiu v134,v134,28
la $t4,label_442_v134
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_442_v134
sw $t4,0($t0)
# Original instruction: lw v134,0(v134)
la $t4,label_442_v134
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_442_v134
sw $t4,0($t0)
# Original instruction: addiu v134,v134,4
la $t4,label_442_v134
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_442_v134
sw $t4,0($t0)
# Original instruction: lw v134,0(v134)
la $t4,label_442_v134
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_442_v134
sw $t4,0($t0)
# Original instruction: li v135,1
li $t5,1
la $t0,label_443_v135
sw $t5,0($t0)
# Original instruction: add v136,v134,v135
la $t5,label_442_v134
lw $t5,0($t5)
la $t4,label_443_v135
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_445_v136
sw $t3,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v136,0($sp)
la $t5,label_445_v136
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v137,4($fp)
lw $t5,4($fp)
la $t0,label_455_v137
sw $t5,0($t0)
# Original instruction: addiu v137,v137,28
la $t4,label_455_v137
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_455_v137
sw $t4,0($t0)
# Original instruction: lw v137,0(v137)
la $t4,label_455_v137
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_455_v137
sw $t4,0($t0)
# Original instruction: lw v137,0(v137)
la $t4,label_455_v137
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_455_v137
sw $t4,0($t0)
# Original instruction: lw v137,4(v137)
la $t4,label_455_v137
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_455_v137
sw $t4,0($t0)
# Original instruction: jalr v137
la $t5,label_455_v137
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v132,0($sp)
lw $t5,0($sp)
la $t0,label_457_v132
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v132,0($sp)
la $t5,label_457_v132
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_445_v136
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_442_v134
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_425_v130
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_393_v125
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_384_v122
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_394_v126
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_371_v116
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_414_v128
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_431_v133
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_455_v137
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_404_v123
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_457_v132
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_396_v127
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_402_v124
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_372_v115
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_415_v121
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_378_v118
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_443_v135
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_377_v119
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_475_v142:
.space 4
label_465_v138:
.space 4
label_493_v148:
.space 4
label_462_v140:
.space 4
label_487_v145:
.space 4
label_486_v146:
.space 4
label_464_v139:
.space 4
label_474_v143:
.space 4

.text
classC_setAndReturnStruct:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
la $t0,label_475_v142
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_465_v138
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_493_v148
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_462_v140
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_487_v145
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_486_v146
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_464_v139
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_474_v143
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: ast.PointerType@2437c6dc
# >>Get VAR Addr<<
# Original instruction: lw v138,16($fp)
lw $t5,16($fp)
la $t0,label_465_v138
sw $t5,0($t0)
# Original instruction: addiu v138,v138,32
la $t4,label_465_v138
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_465_v138
sw $t4,0($t0)
# >>Get VAL<<
# Execute mcmalloc
# >>>Retrieving arg val<<<: INT
# Original instruction: li v140,8
li $t5,8
la $t0,label_462_v140
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v140,0($sp)
la $t5,label_462_v140
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: lw v139,0($sp)
lw $t5,0($sp)
la $t0,label_464_v139
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From mcmalloc
# >>Start Copy<<
# Original instruction: sw v139,0(v138)
la $t5,label_464_v139
lw $t5,0($t5)
la $t4,label_465_v138
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v142,16($fp)
lw $t5,16($fp)
la $t0,label_475_v142
sw $t5,0($t0)
# Original instruction: addiu v142,v142,32
la $t4,label_475_v142
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_475_v142
sw $t4,0($t0)
# Original instruction: lw v142,0(v142)
la $t4,label_475_v142
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_475_v142
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v143,$fp,12
addiu $t5,$fp,12
la $t0,label_474_v143
sw $t5,0($t0)
# Original instruction: lw v143,0(v143)
la $t4,label_474_v143
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_474_v143
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v143,0(v142)
la $t5,label_474_v143
lw $t5,0($t5)
la $t4,label_475_v142
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: lw v145,16($fp)
lw $t5,16($fp)
la $t0,label_487_v145
sw $t5,0($t0)
# Original instruction: addiu v145,v145,32
la $t4,label_487_v145
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_487_v145
sw $t4,0($t0)
# Original instruction: lw v145,0(v145)
la $t4,label_487_v145
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_487_v145
sw $t4,0($t0)
# Original instruction: addi v145,v145,4
la $t4,label_487_v145
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_487_v145
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v146,$fp,8
addiu $t5,$fp,8
la $t0,label_486_v146
sw $t5,0($t0)
# Original instruction: lb v146,0(v146)
la $t4,label_486_v146
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_486_v146
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v146,0(v145)
la $t5,label_486_v146
lw $t5,0($t5)
la $t4,label_487_v145
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: lw v148,16($fp)
lw $t5,16($fp)
la $t0,label_493_v148
sw $t5,0($t0)
# Original instruction: addiu v148,v148,32
la $t4,label_493_v148
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_493_v148
sw $t4,0($t0)
# Original instruction: lw v148,0(v148)
la $t4,label_493_v148
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_493_v148
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v148,4($fp)
la $t5,label_493_v148
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_474_v143
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_464_v139
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_486_v146
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_487_v145
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_462_v140
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_493_v148
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_465_v138
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_475_v142
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_498_v151:
.space 4
label_500_v152:
.space 4
label_511_v149:
.space 4
label_508_v153:
.space 4
label_510_v150:
.space 4
label_515_v155:
.space 4

.text
getA:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-8
addiu $sp,$fp,-8
# Original instruction: pushRegisters
la $t0,label_498_v151
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_500_v152
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_511_v149
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_508_v153
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_510_v150
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_515_v155
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v149,$fp,-8
addiu $t5,$fp,-8
la $t0,label_511_v149
sw $t5,0($t0)
# >>Get VAL<<
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v151,$fp,8
addiu $t5,$fp,8
la $t0,label_498_v151
sw $t5,0($t0)
# Original instruction: lw v151,0(v151)
la $t4,label_498_v151
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_498_v151
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v151,0($sp)
la $t5,label_498_v151
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v152,1
li $t5,1
la $t0,label_500_v152
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v152,0($sp)
la $t5,label_500_v152
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v153,$fp,8
addiu $t5,$fp,8
la $t0,label_508_v153
sw $t5,0($t0)
# Original instruction: lw v153,0(v153)
la $t4,label_508_v153
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_508_v153
sw $t4,0($t0)
# Original instruction: lw v153,0(v153)
la $t4,label_508_v153
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_508_v153
sw $t4,0($t0)
# Original instruction: lw v153,4(v153)
la $t4,label_508_v153
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_508_v153
sw $t4,0($t0)
# Original instruction: jalr v153
la $t5,label_508_v153
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v150,0($sp)
lw $t5,0($sp)
la $t0,label_510_v150
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>Start Copy<<
# Original instruction: sw v150,0(v149)
la $t5,label_510_v150
lw $t5,0($t5)
la $t4,label_511_v149
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v155,$fp,-8
addiu $t5,$fp,-8
la $t0,label_515_v155
sw $t5,0($t0)
# Original instruction: lw v155,0(v155)
la $t4,label_515_v155
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_515_v155
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v155,4($fp)
la $t5,label_515_v155
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_515_v155
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_510_v150
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_508_v153
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_511_v149
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_500_v152
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_498_v151
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers

.text
mcmalloc:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
# Original instruction: lw $a0,8($fp)
lw $a0,8($fp)
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers

.text
read_i:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
# Original instruction: li $v0,5
li $v0,5
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers

.text
read_c:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: sb $v0,4($fp)
sb $v0,4($fp)
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers

.text
print_c:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: syscall
syscall
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers

.text
print_i:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: syscall
syscall
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers

.text
print_s:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: movz $fp,$sp,$zero
movz $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: syscall
syscall
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,-4
addiu $sp,$fp,-4
# Original instruction: lw $ra,0($sp)
lw $ra,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: lw $fp,0($sp)
lw $fp,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jr $ra
jr $ra

