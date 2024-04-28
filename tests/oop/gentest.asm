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

.data
# Allocated labels for virtual registers
label_30_v4:
.space 4
label_41_v3:
.space 4
label_112_v25:
.space 4
label_26_v0:
.space 4
label_57_v8:
.space 4
label_40_v6:
.space 4
label_103_v27:
.space 4
label_96_v23:
.space 4
label_158_v40:
.space 4
label_118_v31:
.space 4
label_159_v39:
.space 4
label_87_v21:
.space 4
label_45_v9:
.space 4
label_126_v32:
.space 4
label_47_v10:
.space 4
label_135_v34:
.space 4
label_25_v1:
.space 4
label_61_v14:
.space 4
label_77_v19:
.space 4
label_143_v36:
.space 4
label_71_v16:
.space 4
label_63_v15:
.space 4
label_79_v20:
.space 4
label_111_v28:
.space 4
label_32_v5:
.space 4
label_55_v11:
.space 4
label_89_v18:
.space 4
label_151_v38:
.space 4
label_73_v13:
.space 4
label_127_v29:
.space 4
label_101_v26:
.space 4
label_116_v30:
.space 4
label_97_v22:
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
# Original instruction: addiu $sp,$fp,-16
addiu $sp,$fp,-16
# Original instruction: pushRegisters
la $t0,label_30_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_112_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_57_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v27
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_96_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_158_v40
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_118_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_159_v39
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_87_v21
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_45_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_126_v32
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_47_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_135_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_25_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_61_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_77_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_143_v36
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v15
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_79_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_111_v28
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_151_v38
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_73_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_101_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_116_v30
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_97_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_26_v0
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,36
addiu $a0,$zero,36
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_25_v1
sw $t5,0($t0)
# Original instruction: sw v1,0($v0)
la $t5,label_25_v1
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_25_v1
sw $t5,0($t0)
# Original instruction: sw v1,8($v0)
la $t5,label_25_v1
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_25_v1
sw $t5,0($t0)
# Original instruction: sw v1,20($v0)
la $t5,label_25_v1
lw $t5,0($t5)
sw $t5,20($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_26_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_30_v4
sw $t5,0($t0)
# Original instruction: lw v4,0(v4)
la $t4,label_30_v4
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_30_v4
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v4,0($sp)
la $t5,label_30_v4
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v5,2
li $t5,2
la $t0,label_32_v5
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v5,0($sp)
la $t5,label_32_v5
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v6,$fp,-8
addiu $t5,$fp,-8
la $t0,label_40_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_40_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_40_v6
sw $t4,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_40_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_40_v6
sw $t4,0($t0)
# Original instruction: lw v6,4(v6)
la $t4,label_40_v6
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_40_v6
sw $t4,0($t0)
# Original instruction: jalr v6
la $t5,label_40_v6
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v3,0($sp)
lw $t5,0($sp)
la $t0,label_41_v3
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
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v9,$fp,-8
addiu $t5,$fp,-8
la $t0,label_45_v9
sw $t5,0($t0)
# Original instruction: lw v9,0(v9)
la $t4,label_45_v9
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_45_v9
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v9,0($sp)
la $t5,label_45_v9
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v10,3
li $t5,3
la $t0,label_47_v10
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v10,0($sp)
la $t5,label_47_v10
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v11,$fp,-8
addiu $t5,$fp,-8
la $t0,label_55_v11
sw $t5,0($t0)
# Original instruction: lw v11,0(v11)
la $t4,label_55_v11
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_55_v11
sw $t4,0($t0)
# Original instruction: lw v11,0(v11)
la $t4,label_55_v11
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_55_v11
sw $t4,0($t0)
# Original instruction: lw v11,4(v11)
la $t4,label_55_v11
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_55_v11
sw $t4,0($t0)
# Original instruction: jalr v11
la $t5,label_55_v11
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v8,0($sp)
lw $t5,0($sp)
la $t0,label_57_v8
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
# Original instruction: sw v8,0($sp)
la $t5,label_57_v8
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
# Original instruction: addiu v14,$fp,-8
addiu $t5,$fp,-8
la $t0,label_61_v14
sw $t5,0($t0)
# Original instruction: lw v14,0(v14)
la $t4,label_61_v14
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_61_v14
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v14,0($sp)
la $t5,label_61_v14
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v15,4
li $t5,4
la $t0,label_63_v15
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v15,0($sp)
la $t5,label_63_v15
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v16,$fp,-8
addiu $t5,$fp,-8
la $t0,label_71_v16
sw $t5,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_71_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_71_v16
sw $t4,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_71_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_71_v16
sw $t4,0($t0)
# Original instruction: lw v16,4(v16)
la $t4,label_71_v16
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_71_v16
sw $t4,0($t0)
# Original instruction: jalr v16
la $t5,label_71_v16
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v13,0($sp)
lw $t5,0($sp)
la $t0,label_73_v13
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
# Original instruction: sw v13,0($sp)
la $t5,label_73_v13
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
# Original instruction: addiu v19,$fp,-8
addiu $t5,$fp,-8
la $t0,label_77_v19
sw $t5,0($t0)
# Original instruction: lw v19,0(v19)
la $t4,label_77_v19
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_77_v19
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v19,0($sp)
la $t5,label_77_v19
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v20,5
li $t5,5
la $t0,label_79_v20
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v20,0($sp)
la $t5,label_79_v20
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v21,$fp,-8
addiu $t5,$fp,-8
la $t0,label_87_v21
sw $t5,0($t0)
# Original instruction: lw v21,0(v21)
la $t4,label_87_v21
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_87_v21
sw $t4,0($t0)
# Original instruction: lw v21,0(v21)
la $t4,label_87_v21
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_87_v21
sw $t4,0($t0)
# Original instruction: lw v21,4(v21)
la $t4,label_87_v21
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_87_v21
sw $t4,0($t0)
# Original instruction: jalr v21
la $t5,label_87_v21
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v18,0($sp)
lw $t5,0($sp)
la $t0,label_89_v18
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
# Original instruction: sw v18,0($sp)
la $t5,label_89_v18
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
# Original instruction: addiu v22,$fp,-16
addiu $t5,$fp,-16
la $t0,label_97_v22
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,36
addiu $a0,$zero,36
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v23,vtable_C
la $t5,vtable_C
la $t0,label_96_v23
sw $t5,0($t0)
# Original instruction: sw v23,0($v0)
la $t5,label_96_v23
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v23,vtable_C
la $t5,vtable_C
la $t0,label_96_v23
sw $t5,0($t0)
# Original instruction: sw v23,8($v0)
la $t5,label_96_v23
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v23,vtable_C
la $t5,vtable_C
la $t0,label_96_v23
sw $t5,0($t0)
# Original instruction: sw v23,20($v0)
la $t5,label_96_v23
lw $t5,0($t5)
sw $t5,20($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v22)
la $t5,label_97_v22
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute getAndSetC
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v26,$fp,-16
addiu $t5,$fp,-16
la $t0,label_101_v26
sw $t5,0($t0)
# Original instruction: lw v26,0(v26)
la $t4,label_101_v26
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_101_v26
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v26,0($sp)
la $t5,label_101_v26
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v27,1
li $t5,1
la $t0,label_103_v27
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v27,0($sp)
la $t5,label_103_v27
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v28,$fp,-16
addiu $t5,$fp,-16
la $t0,label_111_v28
sw $t5,0($t0)
# Original instruction: lw v28,0(v28)
la $t4,label_111_v28
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_111_v28
sw $t4,0($t0)
# Original instruction: lw v28,0(v28)
la $t4,label_111_v28
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_111_v28
sw $t4,0($t0)
# Original instruction: lw v28,12(v28)
la $t4,label_111_v28
lw $t4,0($t4)
lw $t4,12($t4)
la $t0,label_111_v28
sw $t4,0($t0)
# Original instruction: jalr v28
la $t5,label_111_v28
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v25,0($sp)
lw $t5,0($sp)
la $t0,label_112_v25
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetC
# Execute getAndSetB
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v30,$fp,-16
addiu $t5,$fp,-16
la $t0,label_116_v30
sw $t5,0($t0)
# Original instruction: lw v30,0(v30)
la $t4,label_116_v30
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_116_v30
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v30,0($sp)
la $t5,label_116_v30
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v31,3
li $t5,3
la $t0,label_118_v31
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v31,0($sp)
la $t5,label_118_v31
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v32,$fp,-16
addiu $t5,$fp,-16
la $t0,label_126_v32
sw $t5,0($t0)
# Original instruction: lw v32,0(v32)
la $t4,label_126_v32
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_126_v32
sw $t4,0($t0)
# Original instruction: lw v32,0(v32)
la $t4,label_126_v32
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_126_v32
sw $t4,0($t0)
# Original instruction: lw v32,8(v32)
la $t4,label_126_v32
lw $t4,0($t4)
lw $t4,8($t4)
la $t0,label_126_v32
sw $t4,0($t0)
# Original instruction: jalr v32
la $t5,label_126_v32
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v29,0($sp)
lw $t5,0($sp)
la $t0,label_127_v29
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetB
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v34,$fp,-16
addiu $t5,$fp,-16
la $t0,label_135_v34
sw $t5,0($t0)
# Original instruction: lw v34,0(v34)
la $t4,label_135_v34
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_135_v34
sw $t4,0($t0)
# Original instruction: addiu v34,v34,4
la $t4,label_135_v34
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_135_v34
sw $t4,0($t0)
# Original instruction: lw v34,0(v34)
la $t4,label_135_v34
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_135_v34
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v34,0($sp)
la $t5,label_135_v34
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
# Original instruction: addiu v36,$fp,-16
addiu $t5,$fp,-16
la $t0,label_143_v36
sw $t5,0($t0)
# Original instruction: lw v36,0(v36)
la $t4,label_143_v36
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_143_v36
sw $t4,0($t0)
# Original instruction: addiu v36,v36,12
la $t4,label_143_v36
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_143_v36
sw $t4,0($t0)
# Original instruction: lw v36,0(v36)
la $t4,label_143_v36
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_143_v36
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v36,0($sp)
la $t5,label_143_v36
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
# Original instruction: addiu v38,$fp,-16
addiu $t5,$fp,-16
la $t0,label_151_v38
sw $t5,0($t0)
# Original instruction: lw v38,0(v38)
la $t4,label_151_v38
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_151_v38
sw $t4,0($t0)
# Original instruction: addiu v38,v38,24
la $t4,label_151_v38
lw $t4,0($t4)
addiu $t4,$t4,24
la $t0,label_151_v38
sw $t4,0($t0)
# Original instruction: lw v38,0(v38)
la $t4,label_151_v38
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_151_v38
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v38,0($sp)
la $t5,label_151_v38
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
# Original instruction: addiu v39,$fp,-8
addiu $t5,$fp,-8
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
# >>Get VAL<<
# Original instruction: li v40,10
li $t5,10
la $t0,label_158_v40
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v40,0(v39)
la $t5,label_158_v40
lw $t5,0($t5)
la $t4,label_159_v39
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_97_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_116_v30
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_101_v26
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_127_v29
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_73_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_151_v38
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_89_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_55_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_32_v5
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_111_v28
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_79_v20
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_63_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_71_v16
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_143_v36
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_77_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_61_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_25_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_135_v34
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_47_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_126_v32
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_45_v9
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_87_v21
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_159_v39
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_118_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_158_v40
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_96_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_103_v27
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_40_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_57_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_26_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_112_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_41_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_30_v4
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
label_165_v42:
.space 4
label_164_v43:
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
la $t0,label_165_v42
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_164_v43
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v42,4($fp)
lw $t5,4($fp)
la $t0,label_165_v42
sw $t5,0($t0)
# Original instruction: addiu v42,v42,4
la $t4,label_165_v42
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_165_v42
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v43,11
li $t5,11
la $t0,label_164_v43
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v43,0(v42)
la $t5,label_164_v43
lw $t5,0($t5)
la $t4,label_165_v42
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_164_v43
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_165_v42
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
label_185_v51:
.space 4
label_172_v46:
.space 4
label_180_v49:
.space 4
label_181_v48:
.space 4
label_173_v45:
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
la $t0,label_185_v51
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_172_v46
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_180_v49
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_181_v48
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_173_v45
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v45,$fp,-8
addiu $t5,$fp,-8
la $t0,label_173_v45
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v46,12($fp)
lw $t5,12($fp)
la $t0,label_172_v46
sw $t5,0($t0)
# Original instruction: addiu v46,v46,4
la $t4,label_172_v46
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_172_v46
sw $t4,0($t0)
# Original instruction: lw v46,0(v46)
la $t4,label_172_v46
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_172_v46
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v46,0(v45)
la $t5,label_172_v46
lw $t5,0($t5)
la $t4,label_173_v45
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v48,12($fp)
lw $t5,12($fp)
la $t0,label_181_v48
sw $t5,0($t0)
# Original instruction: addiu v48,v48,4
la $t4,label_181_v48
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_181_v48
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v49,$fp,8
addiu $t5,$fp,8
la $t0,label_180_v49
sw $t5,0($t0)
# Original instruction: lw v49,0(v49)
la $t4,label_180_v49
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_180_v49
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v49,0(v48)
la $t5,label_180_v49
lw $t5,0($t5)
la $t4,label_181_v48
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v51,$fp,-8
addiu $t5,$fp,-8
la $t0,label_185_v51
sw $t5,0($t0)
# Original instruction: lw v51,0(v51)
la $t4,label_185_v51
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_185_v51
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v51,4($fp)
la $t5,label_185_v51
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_173_v45
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_181_v48
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_180_v49
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_172_v46
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_185_v51
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
label_190_v53:
.space 4
label_191_v52:
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
la $t0,label_190_v53
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_191_v52
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v52,4($fp)
lw $t5,4($fp)
la $t0,label_191_v52
sw $t5,0($t0)
# Original instruction: addiu v52,v52,4
la $t4,label_191_v52
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_191_v52
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v53,22
li $t5,22
la $t0,label_190_v53
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v53,0(v52)
la $t5,label_190_v53
lw $t5,0($t5)
la $t4,label_191_v52
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_191_v52
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_190_v53
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
label_211_v61:
.space 4
label_207_v58:
.space 4
label_206_v59:
.space 4
label_198_v56:
.space 4
label_199_v55:
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
la $t0,label_211_v61
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_207_v58
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_206_v59
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_198_v56
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_199_v55
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v55,$fp,-8
addiu $t5,$fp,-8
la $t0,label_199_v55
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v56,12($fp)
lw $t5,12($fp)
la $t0,label_198_v56
sw $t5,0($t0)
# Original instruction: addiu v56,v56,12
la $t4,label_198_v56
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_198_v56
sw $t4,0($t0)
# Original instruction: lw v56,0(v56)
la $t4,label_198_v56
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_198_v56
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v56,0(v55)
la $t5,label_198_v56
lw $t5,0($t5)
la $t4,label_199_v55
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v58,12($fp)
lw $t5,12($fp)
la $t0,label_207_v58
sw $t5,0($t0)
# Original instruction: addiu v58,v58,12
la $t4,label_207_v58
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_207_v58
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v59,$fp,8
addiu $t5,$fp,8
la $t0,label_206_v59
sw $t5,0($t0)
# Original instruction: lw v59,0(v59)
la $t4,label_206_v59
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_206_v59
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v59,0(v58)
la $t5,label_206_v59
lw $t5,0($t5)
la $t4,label_207_v58
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v61,$fp,-8
addiu $t5,$fp,-8
la $t0,label_211_v61
sw $t5,0($t0)
# Original instruction: lw v61,0(v61)
la $t4,label_211_v61
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_211_v61
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v61,4($fp)
la $t5,label_211_v61
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_199_v55
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_198_v56
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_206_v59
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_207_v58
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_211_v61
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
label_216_v63:
.space 4
label_217_v62:
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
la $t0,label_216_v63
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_217_v62
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v62,4($fp)
lw $t5,4($fp)
la $t0,label_217_v62
sw $t5,0($t0)
# Original instruction: addiu v62,v62,4
la $t4,label_217_v62
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_217_v62
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v63,33
li $t5,33
la $t0,label_216_v63
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v63,0(v62)
la $t5,label_216_v63
lw $t5,0($t5)
la $t4,label_217_v62
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_217_v62
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_216_v63
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
label_257_v79:
.space 4
label_258_v78:
.space 4
label_220_v66:
.space 4
label_250_v77:
.space 4
label_236_v73:
.space 4
label_239_v75:
.space 4
label_246_v71:
.space 4
label_228_v69:
.space 4
label_245_v72:
.space 4
label_237_v74:
.space 4
label_229_v68:
.space 4
label_262_v81:
.space 4
label_221_v65:
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
la $t0,label_257_v79
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_258_v78
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_220_v66
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_250_v77
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_236_v73
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_239_v75
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_246_v71
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_228_v69
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_245_v72
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_237_v74
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_229_v68
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_262_v81
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_221_v65
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v65,$fp,-12
addiu $t5,$fp,-12
la $t0,label_221_v65
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v66,10
li $t5,10
la $t0,label_220_v66
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v66,0(v65)
la $t5,label_220_v66
lw $t5,0($t5)
la $t4,label_221_v65
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v68,$fp,-8
addiu $t5,$fp,-8
la $t0,label_229_v68
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v69,12($fp)
lw $t5,12($fp)
la $t0,label_228_v69
sw $t5,0($t0)
# Original instruction: addiu v69,v69,24
la $t4,label_228_v69
lw $t4,0($t4)
addiu $t4,$t4,24
la $t0,label_228_v69
sw $t4,0($t0)
# Original instruction: lw v69,0(v69)
la $t4,label_228_v69
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_228_v69
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v69,0(v68)
la $t5,label_228_v69
lw $t5,0($t5)
la $t4,label_229_v68
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v72,12($fp)
lw $t5,12($fp)
la $t0,label_245_v72
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v72,0($sp)
la $t5,label_245_v72
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v73,$fp,8
addiu $t5,$fp,8
la $t0,label_236_v73
sw $t5,0($t0)
# Original instruction: lw v73,0(v73)
la $t4,label_236_v73
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_236_v73
sw $t4,0($t0)
# Original instruction: li v74,2
li $t5,2
la $t0,label_237_v74
sw $t5,0($t0)
# Original instruction: add v75,v73,v74
la $t5,label_236_v73
lw $t5,0($t5)
la $t4,label_237_v74
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_239_v75
sw $t3,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v75,0($sp)
la $t5,label_239_v75
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v72,12($fp)
lw $t5,12($fp)
la $t0,label_245_v72
sw $t5,0($t0)
# Original instruction: lw v72,0(v72)
la $t4,label_245_v72
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_245_v72
sw $t4,0($t0)
# Original instruction: lw v72,4(v72)
la $t4,label_245_v72
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_245_v72
sw $t4,0($t0)
# Original instruction: jalr v72
la $t5,label_245_v72
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v71,0($sp)
lw $t5,0($sp)
la $t0,label_246_v71
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
# Original instruction: addiu v77,$fp,-12
addiu $t5,$fp,-12
la $t0,label_250_v77
sw $t5,0($t0)
# Original instruction: lw v77,0(v77)
la $t4,label_250_v77
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_250_v77
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v77,0($sp)
la $t5,label_250_v77
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
# Original instruction: lw v78,12($fp)
lw $t5,12($fp)
la $t0,label_258_v78
sw $t5,0($t0)
# Original instruction: addiu v78,v78,24
la $t4,label_258_v78
lw $t4,0($t4)
addiu $t4,$t4,24
la $t0,label_258_v78
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v79,$fp,8
addiu $t5,$fp,8
la $t0,label_257_v79
sw $t5,0($t0)
# Original instruction: lw v79,0(v79)
la $t4,label_257_v79
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_257_v79
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v79,0(v78)
la $t5,label_257_v79
lw $t5,0($t5)
la $t4,label_258_v78
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v81,$fp,-8
addiu $t5,$fp,-8
la $t0,label_262_v81
sw $t5,0($t0)
# Original instruction: lw v81,0(v81)
la $t4,label_262_v81
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_262_v81
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v81,4($fp)
la $t5,label_262_v81
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_221_v65
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_262_v81
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_229_v68
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_237_v74
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_245_v72
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_228_v69
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_246_v71
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_239_v75
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_236_v73
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_250_v77
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_220_v66
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_258_v78
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_257_v79
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
label_276_v87:
.space 4
label_293_v91:
.space 4
label_267_v83:
.space 4
label_274_v86:
.space 4
label_287_v85:
.space 4
label_307_v90:
.space 4
label_305_v93:
.space 4
label_295_v92:
.space 4
label_268_v82:
.space 4
label_286_v88:
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
la $t0,label_276_v87
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_293_v91
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_267_v83
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_274_v86
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_287_v85
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_307_v90
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_305_v93
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_295_v92
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_268_v82
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_286_v88
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: lw v82,4($fp)
lw $t5,4($fp)
la $t0,label_268_v82
sw $t5,0($t0)
# Original instruction: addiu v82,v82,28
la $t4,label_268_v82
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_268_v82
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,8
addiu $a0,$zero,8
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v83,vtable_A
la $t5,vtable_A
la $t0,label_267_v83
sw $t5,0($t0)
# Original instruction: sw v83,0($v0)
la $t5,label_267_v83
lw $t5,0($t5)
sw $t5,0($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v82)
la $t5,label_268_v82
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v86,4($fp)
lw $t5,4($fp)
la $t0,label_274_v86
sw $t5,0($t0)
# Original instruction: addiu v86,v86,28
la $t4,label_274_v86
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_274_v86
sw $t4,0($t0)
# Original instruction: lw v86,0(v86)
la $t4,label_274_v86
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_274_v86
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v86,0($sp)
la $t5,label_274_v86
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v87,1
li $t5,1
la $t0,label_276_v87
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v87,0($sp)
la $t5,label_276_v87
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v88,4($fp)
lw $t5,4($fp)
la $t0,label_286_v88
sw $t5,0($t0)
# Original instruction: addiu v88,v88,28
la $t4,label_286_v88
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_286_v88
sw $t4,0($t0)
# Original instruction: lw v88,0(v88)
la $t4,label_286_v88
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_286_v88
sw $t4,0($t0)
# Original instruction: lw v88,0(v88)
la $t4,label_286_v88
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_286_v88
sw $t4,0($t0)
# Original instruction: lw v88,4(v88)
la $t4,label_286_v88
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_286_v88
sw $t4,0($t0)
# Original instruction: jalr v88
la $t5,label_286_v88
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v85,0($sp)
lw $t5,0($sp)
la $t0,label_287_v85
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
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v91,4($fp)
lw $t5,4($fp)
la $t0,label_293_v91
sw $t5,0($t0)
# Original instruction: addiu v91,v91,28
la $t4,label_293_v91
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_293_v91
sw $t4,0($t0)
# Original instruction: lw v91,0(v91)
la $t4,label_293_v91
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_293_v91
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v91,0($sp)
la $t5,label_293_v91
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v92,1
li $t5,1
la $t0,label_295_v92
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v92,0($sp)
la $t5,label_295_v92
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v93,4($fp)
lw $t5,4($fp)
la $t0,label_305_v93
sw $t5,0($t0)
# Original instruction: addiu v93,v93,28
la $t4,label_305_v93
lw $t4,0($t4)
addiu $t4,$t4,28
la $t0,label_305_v93
sw $t4,0($t0)
# Original instruction: lw v93,0(v93)
la $t4,label_305_v93
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_305_v93
sw $t4,0($t0)
# Original instruction: lw v93,0(v93)
la $t4,label_305_v93
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_305_v93
sw $t4,0($t0)
# Original instruction: lw v93,4(v93)
la $t4,label_305_v93
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_305_v93
sw $t4,0($t0)
# Original instruction: jalr v93
la $t5,label_305_v93
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v90,0($sp)
lw $t5,0($sp)
la $t0,label_307_v90
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
# Original instruction: sw v90,0($sp)
la $t5,label_307_v90
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
la $t1,label_286_v88
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_268_v82
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_295_v92
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_305_v93
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_307_v90
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_287_v85
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_274_v86
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_267_v83
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_293_v91
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_276_v87
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
label_325_v94:
.space 4
label_329_v100:
.space 4
label_312_v96:
.space 4
label_322_v98:
.space 4
label_324_v95:
.space 4
label_314_v97:
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
la $t0,label_325_v94
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_329_v100
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_312_v96
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_322_v98
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_324_v95
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_314_v97
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v94,$fp,-8
addiu $t5,$fp,-8
la $t0,label_325_v94
sw $t5,0($t0)
# >>Get VAL<<
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v96,$fp,8
addiu $t5,$fp,8
la $t0,label_312_v96
sw $t5,0($t0)
# Original instruction: lw v96,0(v96)
la $t4,label_312_v96
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_312_v96
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v96,0($sp)
la $t5,label_312_v96
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v97,1
li $t5,1
la $t0,label_314_v97
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v97,0($sp)
la $t5,label_314_v97
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v98,$fp,8
addiu $t5,$fp,8
la $t0,label_322_v98
sw $t5,0($t0)
# Original instruction: lw v98,0(v98)
la $t4,label_322_v98
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_322_v98
sw $t4,0($t0)
# Original instruction: lw v98,0(v98)
la $t4,label_322_v98
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_322_v98
sw $t4,0($t0)
# Original instruction: lw v98,4(v98)
la $t4,label_322_v98
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_322_v98
sw $t4,0($t0)
# Original instruction: jalr v98
la $t5,label_322_v98
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v95,0($sp)
lw $t5,0($sp)
la $t0,label_324_v95
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>Start Copy<<
# Original instruction: sw v95,0(v94)
la $t5,label_324_v95
lw $t5,0($t5)
la $t4,label_325_v94
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v100,$fp,-8
addiu $t5,$fp,-8
la $t0,label_329_v100
sw $t5,0($t0)
# Original instruction: lw v100,0(v100)
la $t4,label_329_v100
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_329_v100
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v100,4($fp)
la $t5,label_329_v100
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_314_v97
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_324_v95
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_322_v98
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_312_v96
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_329_v100
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_325_v94
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

