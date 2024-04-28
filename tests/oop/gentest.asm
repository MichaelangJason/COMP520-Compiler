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
.byte 'c'
.align 3
label_5_:
.byte 'x'
.align 3

.data
# Allocated labels for virtual registers
label_149_v37:
.space 4
label_209_v55:
.space 4
label_81_v17:
.space 4
label_159_v39:
.space 4
label_71_v13:
.space 4
label_151_v36:
.space 4
label_178_v47:
.space 4
label_184_v49:
.space 4
label_57_v10:
.space 4
label_137_v33:
.space 4
label_165_v41:
.space 4
label_97_v21:
.space 4
label_133_v30:
.space 4
label_201_v53:
.space 4
label_47_v6:
.space 4
label_194_v46:
.space 4
label_192_v50:
.space 4
label_145_v34:
.space 4
label_105_v22:
.space 4
label_125_v26:
.space 4
label_37_v3:
.space 4
label_127_v28:
.space 4
label_29_v0:
.space 4
label_231_v59:
.space 4
label_36_v4:
.space 4
label_70_v14:
.space 4
label_173_v44:
.space 4
label_163_v42:
.space 4
label_44_v8:
.space 4
label_131_v31:
.space 4
label_219_v57:
.space 4
label_28_v1:
.space 4
label_113_v24:
.space 4
label_180_v48:
.space 4
label_56_v11:
.space 4
label_93_v19:
.space 4
label_46_v7:
.space 4
label_195_v45:
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
la $t0,label_149_v37
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_209_v55
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_81_v17
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_159_v39
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_151_v36
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_178_v47
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_184_v49
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_57_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_137_v33
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_165_v41
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_97_v21
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_133_v30
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_201_v53
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_47_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_194_v46
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v50
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_145_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_105_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v28
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_231_v59
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_36_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_70_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_173_v44
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_163_v42
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_131_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_219_v57
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_180_v48
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_93_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v7
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_195_v45
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_29_v0
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
la $t0,label_28_v1
sw $t5,0($t0)
# Original instruction: sw v1,0($v0)
la $t5,label_28_v1
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_28_v1
sw $t5,0($t0)
# Original instruction: sw v1,8($v0)
la $t5,label_28_v1
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_28_v1
sw $t5,0($t0)
# Original instruction: sw v1,20($v0)
la $t5,label_28_v1
lw $t5,0($t5)
sw $t5,20($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_29_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# >>>Assign<<<: class C
# >>Get VAR Addr<<
# Original instruction: addiu v3,$fp,-16
addiu $t5,$fp,-16
la $t0,label_37_v3
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,48
addiu $a0,$zero,48
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v4,vtable_C
la $t5,vtable_C
la $t0,label_36_v4
sw $t5,0($t0)
# Original instruction: sw v4,0($v0)
la $t5,label_36_v4
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v4,vtable_C
la $t5,vtable_C
la $t0,label_36_v4
sw $t5,0($t0)
# Original instruction: sw v4,8($v0)
la $t5,label_36_v4
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v4,vtable_C
la $t5,vtable_C
la $t0,label_36_v4
sw $t5,0($t0)
# Original instruction: sw v4,20($v0)
la $t5,label_36_v4
lw $t5,0($t5)
sw $t5,20($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v3)
la $t5,label_37_v3
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# >>>Assign<<<: ast.PointerType@7de26db8
# >>Get VAR Addr<<
# Original instruction: addiu v6,$fp,-16
addiu $t5,$fp,-16
la $t0,label_47_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_47_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_47_v6
sw $t4,0($t0)
# Original instruction: addiu v6,v6,32
la $t4,label_47_v6
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_47_v6
sw $t4,0($t0)
# >>Get VAL<<
# Execute mcmalloc
# >>>Retrieving arg val<<<: INT
# Original instruction: li v8,8
li $t5,8
la $t0,label_44_v8
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v8,0($sp)
la $t5,label_44_v8
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: lw v7,0($sp)
lw $t5,0($sp)
la $t0,label_46_v7
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From mcmalloc
# >>Start Copy<<
# Original instruction: sw v7,0(v6)
la $t5,label_46_v7
lw $t5,0($t5)
la $t4,label_47_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v10,$fp,-16
addiu $t5,$fp,-16
la $t0,label_57_v10
sw $t5,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_57_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_57_v10
sw $t4,0($t0)
# Original instruction: addiu v10,v10,32
la $t4,label_57_v10
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_57_v10
sw $t4,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_57_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_57_v10
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v11,23
li $t5,23
la $t0,label_56_v11
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v11,0(v10)
la $t5,label_56_v11
lw $t5,0($t5)
la $t4,label_57_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: addiu v13,$fp,-16
addiu $t5,$fp,-16
la $t0,label_71_v13
sw $t5,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_71_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_71_v13
sw $t4,0($t0)
# Original instruction: addiu v13,v13,32
la $t4,label_71_v13
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_71_v13
sw $t4,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_71_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_71_v13
sw $t4,0($t0)
# Original instruction: addi v13,v13,4
la $t4,label_71_v13
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_71_v13
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: la v14,label_4_
la $t5,label_4_
la $t0,label_70_v14
sw $t5,0($t0)
# Original instruction: lb v14,0(v14)
la $t4,label_70_v14
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_70_v14
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v14,0(v13)
la $t5,label_70_v14
lw $t5,0($t5)
la $t4,label_71_v13
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v17,$fp,-16
addiu $t5,$fp,-16
la $t0,label_81_v17
sw $t5,0($t0)
# Original instruction: lw v17,0(v17)
la $t4,label_81_v17
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_81_v17
sw $t4,0($t0)
# Original instruction: addiu v17,v17,32
la $t4,label_81_v17
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_81_v17
sw $t4,0($t0)
# Original instruction: lw v17,0(v17)
la $t4,label_81_v17
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_81_v17
sw $t4,0($t0)
# Original instruction: lw v17,0(v17)
la $t4,label_81_v17
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_81_v17
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v17,0($sp)
la $t5,label_81_v17
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
# Original instruction: addiu v19,$fp,-16
addiu $t5,$fp,-16
la $t0,label_93_v19
sw $t5,0($t0)
# Original instruction: lw v19,0(v19)
la $t4,label_93_v19
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_93_v19
sw $t4,0($t0)
# Original instruction: addiu v19,v19,32
la $t4,label_93_v19
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_93_v19
sw $t4,0($t0)
# Original instruction: lw v19,0(v19)
la $t4,label_93_v19
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_93_v19
sw $t4,0($t0)
# Original instruction: addi v19,v19,4
la $t4,label_93_v19
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_93_v19
sw $t4,0($t0)
# Original instruction: lb v19,0(v19)
la $t4,label_93_v19
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_93_v19
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v19,0($sp)
la $t5,label_93_v19
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute testMa
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v21,$fp,-16
addiu $t5,$fp,-16
la $t0,label_97_v21
sw $t5,0($t0)
# Original instruction: lw v21,0(v21)
la $t4,label_97_v21
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_97_v21
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v21,0($sp)
la $t5,label_97_v21
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v22,$fp,-16
addiu $t5,$fp,-16
la $t0,label_105_v22
sw $t5,0($t0)
# Original instruction: lw v22,0(v22)
la $t4,label_105_v22
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_105_v22
sw $t4,0($t0)
# Original instruction: lw v22,0(v22)
la $t4,label_105_v22
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_105_v22
sw $t4,0($t0)
# Original instruction: lw v22,16(v22)
la $t4,label_105_v22
lw $t4,0($t4)
lw $t4,16($t4)
la $t0,label_105_v22
sw $t4,0($t0)
# Original instruction: jalr v22
la $t5,label_105_v22
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From testMa
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v24,$fp,-16
addiu $t5,$fp,-16
la $t0,label_113_v24
sw $t5,0($t0)
# Original instruction: lw v24,0(v24)
la $t4,label_113_v24
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_113_v24
sw $t4,0($t0)
# Original instruction: addiu v24,v24,4
la $t4,label_113_v24
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_113_v24
sw $t4,0($t0)
# Original instruction: lw v24,0(v24)
la $t4,label_113_v24
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_113_v24
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v24,0($sp)
la $t5,label_113_v24
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
# Original instruction: addiu v26,$fp,-16
addiu $t5,$fp,-16
la $t0,label_125_v26
sw $t5,0($t0)
# Original instruction: lw v26,0(v26)
la $t4,label_125_v26
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_125_v26
sw $t4,0($t0)
# Original instruction: addiu v26,v26,28
la $t4,label_125_v26
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_125_v26
sw $t4,0($t0)
# Original instruction: lw v26,0(v26)
la $t4,label_125_v26
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_125_v26
sw $t4,0($t0)
# Original instruction: addiu v26,v26,4
la $t4,label_125_v26
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_125_v26
sw $t4,0($t0)
# Original instruction: lw v26,0(v26)
la $t4,label_125_v26
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_125_v26
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v26,0($sp)
la $t5,label_125_v26
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
# Original instruction: li v28,4
li $t5,4
la $t0,label_127_v28
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v28,0($sp)
la $t5,label_127_v28
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
# Original instruction: addiu v31,$fp,-8
addiu $t5,$fp,-8
la $t0,label_131_v31
sw $t5,0($t0)
# Original instruction: lw v31,0(v31)
la $t4,label_131_v31
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_131_v31
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v31,0($sp)
la $t5,label_131_v31
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v30,0($sp)
lw $t5,0($sp)
la $t0,label_133_v30
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v30,0($sp)
la $t5,label_133_v30
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
# Original instruction: addiu v33,$fp,-8
addiu $t5,$fp,-8
la $t0,label_137_v33
sw $t5,0($t0)
# Original instruction: lw v33,0(v33)
la $t4,label_137_v33
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_137_v33
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v33,0($sp)
la $t5,label_137_v33
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v34,$fp,-8
addiu $t5,$fp,-8
la $t0,label_145_v34
sw $t5,0($t0)
# Original instruction: lw v34,0(v34)
la $t4,label_145_v34
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_145_v34
sw $t4,0($t0)
# Original instruction: lw v34,0(v34)
la $t4,label_145_v34
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_145_v34
sw $t4,0($t0)
# Original instruction: lw v34,0(v34)
la $t4,label_145_v34
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_145_v34
sw $t4,0($t0)
# Original instruction: jalr v34
la $t5,label_145_v34
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From test
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getA
# >>>Retrieving arg val<<<: class A
# Original instruction: addiu v37,$fp,-16
addiu $t5,$fp,-16
la $t0,label_149_v37
sw $t5,0($t0)
# Original instruction: lw v37,0(v37)
la $t4,label_149_v37
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_149_v37
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v37,0($sp)
la $t5,label_149_v37
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v36,0($sp)
lw $t5,0($sp)
la $t0,label_151_v36
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v36,0($sp)
la $t5,label_151_v36
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
# Original instruction: addiu v39,$fp,-16
addiu $t5,$fp,-16
la $t0,label_159_v39
sw $t5,0($t0)
# Original instruction: lw v39,0(v39)
la $t4,label_159_v39
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_159_v39
sw $t4,0($t0)
# Original instruction: addiu v39,v39,4
la $t4,label_159_v39
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_159_v39
sw $t4,0($t0)
# Original instruction: lw v39,0(v39)
la $t4,label_159_v39
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_159_v39
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v39,0($sp)
la $t5,label_159_v39
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
# Original instruction: addiu v42,$fp,-8
addiu $t5,$fp,-8
la $t0,label_163_v42
sw $t5,0($t0)
# Original instruction: lw v42,0(v42)
la $t4,label_163_v42
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_163_v42
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v42,0($sp)
la $t5,label_163_v42
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v41,0($sp)
lw $t5,0($sp)
la $t0,label_165_v41
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v41,0($sp)
la $t5,label_165_v41
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
# Original instruction: addiu v44,$fp,-8
addiu $t5,$fp,-8
la $t0,label_173_v44
sw $t5,0($t0)
# Original instruction: lw v44,0(v44)
la $t4,label_173_v44
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_173_v44
sw $t4,0($t0)
# Original instruction: addiu v44,v44,4
la $t4,label_173_v44
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_173_v44
sw $t4,0($t0)
# Original instruction: lw v44,0(v44)
la $t4,label_173_v44
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_173_v44
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v44,0($sp)
la $t5,label_173_v44
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# >>>Assign<<<: ast.PointerType@14899482
# >>Get VAR Addr<<
# Original instruction: addiu v45,$fp,-24
addiu $t5,$fp,-24
la $t0,label_195_v45
sw $t5,0($t0)
# >>Get VAL<<
# Execute setAndReturnStruct
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v47,$fp,-16
addiu $t5,$fp,-16
la $t0,label_178_v47
sw $t5,0($t0)
# Original instruction: lw v47,0(v47)
la $t4,label_178_v47
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_178_v47
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v47,0($sp)
la $t5,label_178_v47
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v48,27
li $t5,27
la $t0,label_180_v48
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v48,0($sp)
la $t5,label_180_v48
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v49,label_5_
la $t5,label_5_
la $t0,label_184_v49
sw $t5,0($t0)
# Original instruction: lb v49,0(v49)
la $t4,label_184_v49
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_184_v49
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v49,0($sp)
la $t5,label_184_v49
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v50,$fp,-16
addiu $t5,$fp,-16
la $t0,label_192_v50
sw $t5,0($t0)
# Original instruction: lw v50,0(v50)
la $t4,label_192_v50
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_192_v50
sw $t4,0($t0)
# Original instruction: lw v50,0(v50)
la $t4,label_192_v50
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_192_v50
sw $t4,0($t0)
# Original instruction: lw v50,20(v50)
la $t4,label_192_v50
lw $t4,0($t4)
lw $t4,20($t4)
la $t0,label_192_v50
sw $t4,0($t0)
# Original instruction: jalr v50
la $t5,label_192_v50
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v46,0($sp)
lw $t5,0($sp)
la $t0,label_194_v46
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From setAndReturnStruct
# >>Start Copy<<
# Original instruction: sw v46,0(v45)
la $t5,label_194_v46
lw $t5,0($t5)
la $t4,label_195_v45
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v53,$fp,-24
addiu $t5,$fp,-24
la $t0,label_201_v53
sw $t5,0($t0)
# Original instruction: lw v53,0(v53)
la $t4,label_201_v53
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_201_v53
sw $t4,0($t0)
# Original instruction: lw v53,0(v53)
la $t4,label_201_v53
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_201_v53
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v53,0($sp)
la $t5,label_201_v53
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
# Original instruction: addiu v55,$fp,-24
addiu $t5,$fp,-24
la $t0,label_209_v55
sw $t5,0($t0)
# Original instruction: lw v55,0(v55)
la $t4,label_209_v55
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_209_v55
sw $t4,0($t0)
# Original instruction: addi v55,v55,4
la $t4,label_209_v55
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_209_v55
sw $t4,0($t0)
# Original instruction: lb v55,0(v55)
la $t4,label_209_v55
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_209_v55
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v55,0($sp)
la $t5,label_209_v55
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
# Original instruction: addiu v57,$fp,-16
addiu $t5,$fp,-16
la $t0,label_219_v57
sw $t5,0($t0)
# Original instruction: lw v57,0(v57)
la $t4,label_219_v57
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_219_v57
sw $t4,0($t0)
# Original instruction: addiu v57,v57,32
la $t4,label_219_v57
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_219_v57
sw $t4,0($t0)
# Original instruction: lw v57,0(v57)
la $t4,label_219_v57
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_219_v57
sw $t4,0($t0)
# Original instruction: lw v57,0(v57)
la $t4,label_219_v57
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_219_v57
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v57,0($sp)
la $t5,label_219_v57
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
# Original instruction: addiu v59,$fp,-16
addiu $t5,$fp,-16
la $t0,label_231_v59
sw $t5,0($t0)
# Original instruction: lw v59,0(v59)
la $t4,label_231_v59
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_231_v59
sw $t4,0($t0)
# Original instruction: addiu v59,v59,32
la $t4,label_231_v59
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_231_v59
sw $t4,0($t0)
# Original instruction: lw v59,0(v59)
la $t4,label_231_v59
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_231_v59
sw $t4,0($t0)
# Original instruction: addi v59,v59,4
la $t4,label_231_v59
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_231_v59
sw $t4,0($t0)
# Original instruction: lb v59,0(v59)
la $t4,label_231_v59
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_231_v59
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v59,0($sp)
la $t5,label_231_v59
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_195_v45
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_46_v7
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_93_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_56_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_180_v48
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_113_v24
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_28_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_219_v57
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_131_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_44_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_163_v42
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_173_v44
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_70_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_36_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_231_v59
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_29_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_127_v28
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_37_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_125_v26
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_105_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_145_v34
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_192_v50
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_194_v46
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_47_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_201_v53
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_133_v30
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_97_v21
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_165_v41
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_137_v33
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_57_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_184_v49
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_178_v47
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_151_v36
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_71_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_159_v39
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_81_v17
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_209_v55
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_149_v37
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
label_236_v61:
.space 4
label_237_v60:
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
la $t0,label_236_v61
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_237_v60
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v60,4($fp)
lw $t5,4($fp)
la $t0,label_237_v60
sw $t5,0($t0)
# Original instruction: addiu v60,v60,4
la $t4,label_237_v60
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_237_v60
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v61,11
li $t5,11
la $t0,label_236_v61
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v61,0(v60)
la $t5,label_236_v61
lw $t5,0($t5)
la $t4,label_237_v60
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_237_v60
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_236_v61
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
label_257_v69:
.space 4
label_245_v63:
.space 4
label_244_v64:
.space 4
label_252_v67:
.space 4
label_253_v66:
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
la $t0,label_257_v69
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_245_v63
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_244_v64
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_252_v67
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_253_v66
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v63,$fp,-8
addiu $t5,$fp,-8
la $t0,label_245_v63
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v64,12($fp)
lw $t5,12($fp)
la $t0,label_244_v64
sw $t5,0($t0)
# Original instruction: addiu v64,v64,4
la $t4,label_244_v64
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_244_v64
sw $t4,0($t0)
# Original instruction: lw v64,0(v64)
la $t4,label_244_v64
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_244_v64
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v64,0(v63)
la $t5,label_244_v64
lw $t5,0($t5)
la $t4,label_245_v63
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v66,12($fp)
lw $t5,12($fp)
la $t0,label_253_v66
sw $t5,0($t0)
# Original instruction: addiu v66,v66,4
la $t4,label_253_v66
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_253_v66
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v67,$fp,8
addiu $t5,$fp,8
la $t0,label_252_v67
sw $t5,0($t0)
# Original instruction: lw v67,0(v67)
la $t4,label_252_v67
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_252_v67
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v67,0(v66)
la $t5,label_252_v67
lw $t5,0($t5)
la $t4,label_253_v66
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v69,$fp,-8
addiu $t5,$fp,-8
la $t0,label_257_v69
sw $t5,0($t0)
# Original instruction: lw v69,0(v69)
la $t4,label_257_v69
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_257_v69
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v69,4($fp)
la $t5,label_257_v69
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_253_v66
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_252_v67
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_244_v64
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_245_v63
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_257_v69
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
label_263_v70:
.space 4
label_262_v71:
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
la $t0,label_263_v70
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_262_v71
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v70,4($fp)
lw $t5,4($fp)
la $t0,label_263_v70
sw $t5,0($t0)
# Original instruction: addiu v70,v70,4
la $t4,label_263_v70
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_263_v70
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v71,22
li $t5,22
la $t0,label_262_v71
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v71,0(v70)
la $t5,label_262_v71
lw $t5,0($t5)
la $t4,label_263_v70
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_262_v71
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_263_v70
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
label_270_v74:
.space 4
label_271_v73:
.space 4
label_283_v79:
.space 4
label_279_v76:
.space 4
label_278_v77:
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
la $t0,label_270_v74
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_271_v73
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_283_v79
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_279_v76
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_278_v77
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v73,$fp,-8
addiu $t5,$fp,-8
la $t0,label_271_v73
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v74,12($fp)
lw $t5,12($fp)
la $t0,label_270_v74
sw $t5,0($t0)
# Original instruction: addiu v74,v74,12
la $t4,label_270_v74
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_270_v74
sw $t4,0($t0)
# Original instruction: lw v74,0(v74)
la $t4,label_270_v74
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_270_v74
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v74,0(v73)
la $t5,label_270_v74
lw $t5,0($t5)
la $t4,label_271_v73
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v76,12($fp)
lw $t5,12($fp)
la $t0,label_279_v76
sw $t5,0($t0)
# Original instruction: addiu v76,v76,12
la $t4,label_279_v76
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_279_v76
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v77,$fp,8
addiu $t5,$fp,8
la $t0,label_278_v77
sw $t5,0($t0)
# Original instruction: lw v77,0(v77)
la $t4,label_278_v77
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_278_v77
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v77,0(v76)
la $t5,label_278_v77
lw $t5,0($t5)
la $t4,label_279_v76
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v79,$fp,-8
addiu $t5,$fp,-8
la $t0,label_283_v79
sw $t5,0($t0)
# Original instruction: lw v79,0(v79)
la $t4,label_283_v79
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_283_v79
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v79,4($fp)
la $t5,label_283_v79
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_278_v77
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_279_v76
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_283_v79
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_271_v73
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_270_v74
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
label_288_v81:
.space 4
label_289_v80:
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
la $t0,label_288_v81
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_289_v80
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v80,4($fp)
lw $t5,4($fp)
la $t0,label_289_v80
sw $t5,0($t0)
# Original instruction: addiu v80,v80,4
la $t4,label_289_v80
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_289_v80
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v81,33
li $t5,33
la $t0,label_288_v81
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v81,0(v80)
la $t5,label_288_v81
lw $t5,0($t5)
la $t4,label_289_v80
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_289_v80
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_288_v81
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
label_336_v97:
.space 4
label_348_v102:
.space 4
label_342_v103:
.space 4
label_328_v99:
.space 4
label_301_v86:
.space 4
label_311_v93:
.space 4
label_308_v91:
.space 4
label_362_v107:
.space 4
label_322_v95:
.space 4
label_300_v87:
.space 4
label_334_v98:
.space 4
label_318_v89:
.space 4
label_350_v101:
.space 4
label_309_v92:
.space 4
label_292_v84:
.space 4
label_357_v105:
.space 4
label_317_v90:
.space 4
label_358_v104:
.space 4
label_293_v83:
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
la $t0,label_336_v97
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_348_v102
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_342_v103
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_328_v99
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_301_v86
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_311_v93
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_308_v91
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_362_v107
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_322_v95
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_300_v87
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_334_v98
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_318_v89
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_350_v101
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_309_v92
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_292_v84
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_357_v105
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_317_v90
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_358_v104
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_293_v83
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v83,$fp,-12
addiu $t5,$fp,-12
la $t0,label_293_v83
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v84,10
li $t5,10
la $t0,label_292_v84
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v84,0(v83)
la $t5,label_292_v84
lw $t5,0($t5)
la $t4,label_293_v83
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v86,$fp,-8
addiu $t5,$fp,-8
la $t0,label_301_v86
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v87,12($fp)
lw $t5,12($fp)
la $t0,label_300_v87
sw $t5,0($t0)
# Original instruction: addiu v87,v87,24
la $t4,label_300_v87
lw $t4,0($t4)
addiu $t4,$t4,24
la $t0,label_300_v87
sw $t4,0($t0)
# Original instruction: lw v87,0(v87)
la $t4,label_300_v87
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_300_v87
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v87,0(v86)
la $t5,label_300_v87
lw $t5,0($t5)
la $t4,label_301_v86
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v90,12($fp)
lw $t5,12($fp)
la $t0,label_317_v90
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v90,0($sp)
la $t5,label_317_v90
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v91,$fp,8
addiu $t5,$fp,8
la $t0,label_308_v91
sw $t5,0($t0)
# Original instruction: lw v91,0(v91)
la $t4,label_308_v91
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_308_v91
sw $t4,0($t0)
# Original instruction: li v92,2
li $t5,2
la $t0,label_309_v92
sw $t5,0($t0)
# Original instruction: add v93,v91,v92
la $t5,label_308_v91
lw $t5,0($t5)
la $t4,label_309_v92
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_311_v93
sw $t3,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v93,0($sp)
la $t5,label_311_v93
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v90,12($fp)
lw $t5,12($fp)
la $t0,label_317_v90
sw $t5,0($t0)
# Original instruction: lw v90,0(v90)
la $t4,label_317_v90
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_317_v90
sw $t4,0($t0)
# Original instruction: lw v90,4(v90)
la $t4,label_317_v90
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_317_v90
sw $t4,0($t0)
# Original instruction: jalr v90
la $t5,label_317_v90
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v89,0($sp)
lw $t5,0($sp)
la $t0,label_318_v89
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
# Original instruction: addiu v95,$fp,-12
addiu $t5,$fp,-12
la $t0,label_322_v95
sw $t5,0($t0)
# Original instruction: lw v95,0(v95)
la $t4,label_322_v95
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_322_v95
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v95,0($sp)
la $t5,label_322_v95
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
# Original instruction: lw v98,12($fp)
lw $t5,12($fp)
la $t0,label_334_v98
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v98,0($sp)
la $t5,label_334_v98
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v99,$fp,-12
addiu $t5,$fp,-12
la $t0,label_328_v99
sw $t5,0($t0)
# Original instruction: lw v99,0(v99)
la $t4,label_328_v99
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_328_v99
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v99,0($sp)
la $t5,label_328_v99
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v98,12($fp)
lw $t5,12($fp)
la $t0,label_334_v98
sw $t5,0($t0)
# Original instruction: lw v98,0(v98)
la $t4,label_334_v98
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_334_v98
sw $t4,0($t0)
# Original instruction: lw v98,4(v98)
la $t4,label_334_v98
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_334_v98
sw $t4,0($t0)
# Original instruction: jalr v98
la $t5,label_334_v98
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v97,0($sp)
lw $t5,0($sp)
la $t0,label_336_v97
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
# Original instruction: sw v97,0($sp)
la $t5,label_336_v97
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
# Original instruction: lw v102,12($fp)
lw $t5,12($fp)
la $t0,label_348_v102
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v102,0($sp)
la $t5,label_348_v102
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v103,$fp,-12
addiu $t5,$fp,-12
la $t0,label_342_v103
sw $t5,0($t0)
# Original instruction: lw v103,0(v103)
la $t4,label_342_v103
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_342_v103
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v103,0($sp)
la $t5,label_342_v103
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v102,12($fp)
lw $t5,12($fp)
la $t0,label_348_v102
sw $t5,0($t0)
# Original instruction: lw v102,0(v102)
la $t4,label_348_v102
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_348_v102
sw $t4,0($t0)
# Original instruction: lw v102,4(v102)
la $t4,label_348_v102
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_348_v102
sw $t4,0($t0)
# Original instruction: jalr v102
la $t5,label_348_v102
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v101,0($sp)
lw $t5,0($sp)
la $t0,label_350_v101
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
# Original instruction: sw v101,0($sp)
la $t5,label_350_v101
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
# Original instruction: lw v104,12($fp)
lw $t5,12($fp)
la $t0,label_358_v104
sw $t5,0($t0)
# Original instruction: addiu v104,v104,24
la $t4,label_358_v104
lw $t4,0($t4)
addiu $t4,$t4,24
la $t0,label_358_v104
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v105,$fp,8
addiu $t5,$fp,8
la $t0,label_357_v105
sw $t5,0($t0)
# Original instruction: lw v105,0(v105)
la $t4,label_357_v105
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_357_v105
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v105,0(v104)
la $t5,label_357_v105
lw $t5,0($t5)
la $t4,label_358_v104
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v107,$fp,-8
addiu $t5,$fp,-8
la $t0,label_362_v107
sw $t5,0($t0)
# Original instruction: lw v107,0(v107)
la $t4,label_362_v107
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_362_v107
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v107,4($fp)
la $t5,label_362_v107
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_293_v83
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_358_v104
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_317_v90
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_357_v105
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_292_v84
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_309_v92
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_350_v101
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_318_v89
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_334_v98
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_300_v87
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_322_v95
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_362_v107
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_308_v91
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_311_v93
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_301_v86
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_328_v99
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_342_v103
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_348_v102
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_336_v97
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
label_398_v117:
.space 4
label_438_v127:
.space 4
label_368_v108:
.space 4
label_389_v118:
.space 4
label_380_v115:
.space 4
label_400_v116:
.space 4
label_427_v126:
.space 4
label_392_v120:
.space 4
label_411_v114:
.space 4
label_441_v129:
.space 4
label_390_v119:
.space 4
label_374_v111:
.space 4
label_367_v109:
.space 4
label_421_v123:
.space 4
label_453_v125:
.space 4
label_439_v128:
.space 4
label_373_v112:
.space 4
label_451_v130:
.space 4
label_410_v121:
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
la $t0,label_398_v117
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_438_v127
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_368_v108
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_389_v118
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_380_v115
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_400_v116
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_427_v126
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_392_v120
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_411_v114
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_441_v129
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_390_v119
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_374_v111
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_367_v109
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_421_v123
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_453_v125
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_439_v128
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_373_v112
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_451_v130
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_410_v121
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: lw v108,4($fp)
lw $t5,4($fp)
la $t0,label_368_v108
sw $t5,0($t0)
# Original instruction: addiu v108,v108,28
la $t4,label_368_v108
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_368_v108
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,8
addiu $a0,$zero,8
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v109,vtable_A
la $t5,vtable_A
la $t0,label_367_v109
sw $t5,0($t0)
# Original instruction: sw v109,0($v0)
la $t5,label_367_v109
lw $t5,0($t5)
sw $t5,0($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v108)
la $t5,label_368_v108
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v111,4($fp)
lw $t5,4($fp)
la $t0,label_374_v111
sw $t5,0($t0)
# Original instruction: addiu v111,v111,4
la $t4,label_374_v111
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_374_v111
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v112,1
li $t5,1
la $t0,label_373_v112
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v112,0(v111)
la $t5,label_373_v112
lw $t5,0($t5)
la $t4,label_374_v111
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v115,4($fp)
lw $t5,4($fp)
la $t0,label_380_v115
sw $t5,0($t0)
# Original instruction: addiu v115,v115,28
la $t4,label_380_v115
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_380_v115
sw $t4,0($t0)
# Original instruction: lw v115,0(v115)
la $t4,label_380_v115
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_380_v115
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v115,0($sp)
la $t5,label_380_v115
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v117,4($fp)
lw $t5,4($fp)
la $t0,label_398_v117
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v117,0($sp)
la $t5,label_398_v117
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: lw v118,4($fp)
lw $t5,4($fp)
la $t0,label_389_v118
sw $t5,0($t0)
# Original instruction: addiu v118,v118,4
la $t4,label_389_v118
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_389_v118
sw $t4,0($t0)
# Original instruction: lw v118,0(v118)
la $t4,label_389_v118
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_389_v118
sw $t4,0($t0)
# Original instruction: li v119,1
li $t5,1
la $t0,label_390_v119
sw $t5,0($t0)
# Original instruction: add v120,v118,v119
la $t5,label_389_v118
lw $t5,0($t5)
la $t4,label_390_v119
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_392_v120
sw $t3,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v120,0($sp)
la $t5,label_392_v120
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v117,4($fp)
lw $t5,4($fp)
la $t0,label_398_v117
sw $t5,0($t0)
# Original instruction: lw v117,0(v117)
la $t4,label_398_v117
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_398_v117
sw $t4,0($t0)
# Original instruction: lw v117,4(v117)
la $t4,label_398_v117
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_398_v117
sw $t4,0($t0)
# Original instruction: jalr v117
la $t5,label_398_v117
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v116,0($sp)
lw $t5,0($sp)
la $t0,label_400_v116
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
# Original instruction: sw v116,0($sp)
la $t5,label_400_v116
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v121,4($fp)
lw $t5,4($fp)
la $t0,label_410_v121
sw $t5,0($t0)
# Original instruction: addiu v121,v121,28
la $t4,label_410_v121
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_410_v121
sw $t4,0($t0)
# Original instruction: lw v121,0(v121)
la $t4,label_410_v121
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_410_v121
sw $t4,0($t0)
# Original instruction: lw v121,0(v121)
la $t4,label_410_v121
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_410_v121
sw $t4,0($t0)
# Original instruction: lw v121,4(v121)
la $t4,label_410_v121
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_410_v121
sw $t4,0($t0)
# Original instruction: jalr v121
la $t5,label_410_v121
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v114,0($sp)
lw $t5,0($sp)
la $t0,label_411_v114
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
# Original instruction: lw v123,4($fp)
lw $t5,4($fp)
la $t0,label_421_v123
sw $t5,0($t0)
# Original instruction: addiu v123,v123,28
la $t4,label_421_v123
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_421_v123
sw $t4,0($t0)
# Original instruction: lw v123,0(v123)
la $t4,label_421_v123
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_421_v123
sw $t4,0($t0)
# Original instruction: addiu v123,v123,4
la $t4,label_421_v123
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_421_v123
sw $t4,0($t0)
# Original instruction: lw v123,0(v123)
la $t4,label_421_v123
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_421_v123
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v123,0($sp)
la $t5,label_421_v123
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
# Original instruction: lw v126,4($fp)
lw $t5,4($fp)
la $t0,label_427_v126
sw $t5,0($t0)
# Original instruction: addiu v126,v126,28
la $t4,label_427_v126
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_427_v126
sw $t4,0($t0)
# Original instruction: lw v126,0(v126)
la $t4,label_427_v126
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_427_v126
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v126,0($sp)
la $t5,label_427_v126
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: lw v127,4($fp)
lw $t5,4($fp)
la $t0,label_438_v127
sw $t5,0($t0)
# Original instruction: addiu v127,v127,28
la $t4,label_438_v127
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_438_v127
sw $t4,0($t0)
# Original instruction: lw v127,0(v127)
la $t4,label_438_v127
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_438_v127
sw $t4,0($t0)
# Original instruction: addiu v127,v127,4
la $t4,label_438_v127
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_438_v127
sw $t4,0($t0)
# Original instruction: lw v127,0(v127)
la $t4,label_438_v127
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_438_v127
sw $t4,0($t0)
# Original instruction: li v128,1
li $t5,1
la $t0,label_439_v128
sw $t5,0($t0)
# Original instruction: add v129,v127,v128
la $t5,label_438_v127
lw $t5,0($t5)
la $t4,label_439_v128
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_441_v129
sw $t3,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v129,0($sp)
la $t5,label_441_v129
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v130,4($fp)
lw $t5,4($fp)
la $t0,label_451_v130
sw $t5,0($t0)
# Original instruction: addiu v130,v130,28
la $t4,label_451_v130
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_451_v130
sw $t4,0($t0)
# Original instruction: lw v130,0(v130)
la $t4,label_451_v130
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_451_v130
sw $t4,0($t0)
# Original instruction: lw v130,0(v130)
la $t4,label_451_v130
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_451_v130
sw $t4,0($t0)
# Original instruction: lw v130,4(v130)
la $t4,label_451_v130
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_451_v130
sw $t4,0($t0)
# Original instruction: jalr v130
la $t5,label_451_v130
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v125,0($sp)
lw $t5,0($sp)
la $t0,label_453_v125
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
# Original instruction: sw v125,0($sp)
la $t5,label_453_v125
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
la $t1,label_410_v121
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_451_v130
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_373_v112
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_439_v128
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_453_v125
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_421_v123
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_367_v109
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_374_v111
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_390_v119
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_441_v129
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_411_v114
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_392_v120
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_427_v126
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_400_v116
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_380_v115
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_389_v118
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_368_v108
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_438_v127
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_398_v117
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
label_483_v138:
.space 4
label_460_v132:
.space 4
label_489_v141:
.space 4
label_471_v135:
.space 4
label_461_v131:
.space 4
label_458_v133:
.space 4
label_470_v136:
.space 4
label_482_v139:
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
la $t0,label_483_v138
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_460_v132
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_489_v141
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_471_v135
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_461_v131
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_458_v133
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_470_v136
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_482_v139
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: ast.PointerType@39a054a5
# >>Get VAR Addr<<
# Original instruction: lw v131,16($fp)
lw $t5,16($fp)
la $t0,label_461_v131
sw $t5,0($t0)
# Original instruction: addiu v131,v131,32
la $t4,label_461_v131
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_461_v131
sw $t4,0($t0)
# >>Get VAL<<
# Execute mcmalloc
# >>>Retrieving arg val<<<: INT
# Original instruction: li v133,8
li $t5,8
la $t0,label_458_v133
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v133,0($sp)
la $t5,label_458_v133
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: lw v132,0($sp)
lw $t5,0($sp)
la $t0,label_460_v132
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From mcmalloc
# >>Start Copy<<
# Original instruction: sw v132,0(v131)
la $t5,label_460_v132
lw $t5,0($t5)
la $t4,label_461_v131
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v135,16($fp)
lw $t5,16($fp)
la $t0,label_471_v135
sw $t5,0($t0)
# Original instruction: addiu v135,v135,32
la $t4,label_471_v135
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_471_v135
sw $t4,0($t0)
# Original instruction: lw v135,0(v135)
la $t4,label_471_v135
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_471_v135
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v136,$fp,12
addiu $t5,$fp,12
la $t0,label_470_v136
sw $t5,0($t0)
# Original instruction: lw v136,0(v136)
la $t4,label_470_v136
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_470_v136
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v136,0(v135)
la $t5,label_470_v136
lw $t5,0($t5)
la $t4,label_471_v135
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: lw v138,16($fp)
lw $t5,16($fp)
la $t0,label_483_v138
sw $t5,0($t0)
# Original instruction: addiu v138,v138,32
la $t4,label_483_v138
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_483_v138
sw $t4,0($t0)
# Original instruction: lw v138,0(v138)
la $t4,label_483_v138
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_483_v138
sw $t4,0($t0)
# Original instruction: addi v138,v138,4
la $t4,label_483_v138
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_483_v138
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v139,$fp,8
addiu $t5,$fp,8
la $t0,label_482_v139
sw $t5,0($t0)
# Original instruction: lb v139,0(v139)
la $t4,label_482_v139
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_482_v139
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v139,0(v138)
la $t5,label_482_v139
lw $t5,0($t5)
la $t4,label_483_v138
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: lw v141,16($fp)
lw $t5,16($fp)
la $t0,label_489_v141
sw $t5,0($t0)
# Original instruction: addiu v141,v141,32
la $t4,label_489_v141
lw $t4,0($t4)
addiu $t4,$t4,32
la $t0,label_489_v141
sw $t4,0($t0)
# Original instruction: lw v141,0(v141)
la $t4,label_489_v141
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_489_v141
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v141,4($fp)
la $t5,label_489_v141
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_482_v139
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_470_v136
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_458_v133
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_461_v131
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_471_v135
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_489_v141
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_460_v132
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_483_v138
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
label_494_v144:
.space 4
label_504_v146:
.space 4
label_506_v143:
.space 4
label_496_v145:
.space 4
label_507_v142:
.space 4
label_511_v148:
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
la $t0,label_494_v144
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_504_v146
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_506_v143
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_496_v145
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_507_v142
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_511_v148
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v142,$fp,-8
addiu $t5,$fp,-8
la $t0,label_507_v142
sw $t5,0($t0)
# >>Get VAL<<
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v144,$fp,8
addiu $t5,$fp,8
la $t0,label_494_v144
sw $t5,0($t0)
# Original instruction: lw v144,0(v144)
la $t4,label_494_v144
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_494_v144
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v144,0($sp)
la $t5,label_494_v144
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v145,1
li $t5,1
la $t0,label_496_v145
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v145,0($sp)
la $t5,label_496_v145
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v146,$fp,8
addiu $t5,$fp,8
la $t0,label_504_v146
sw $t5,0($t0)
# Original instruction: lw v146,0(v146)
la $t4,label_504_v146
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_504_v146
sw $t4,0($t0)
# Original instruction: lw v146,0(v146)
la $t4,label_504_v146
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_504_v146
sw $t4,0($t0)
# Original instruction: lw v146,4(v146)
la $t4,label_504_v146
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_504_v146
sw $t4,0($t0)
# Original instruction: jalr v146
la $t5,label_504_v146
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v143,0($sp)
lw $t5,0($sp)
la $t0,label_506_v143
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>Start Copy<<
# Original instruction: sw v143,0(v142)
la $t5,label_506_v143
lw $t5,0($t5)
la $t4,label_507_v142
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v148,$fp,-8
addiu $t5,$fp,-8
la $t0,label_511_v148
sw $t5,0($t0)
# Original instruction: lw v148,0(v148)
la $t4,label_511_v148
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_511_v148
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v148,4($fp)
la $t5,label_511_v148
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_511_v148
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_507_v142
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_496_v145
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_506_v143
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_504_v146
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_494_v144
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

