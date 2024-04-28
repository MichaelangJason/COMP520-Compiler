.data
global:
.space 4
vtable_A:
.word classA_getAndSetA
vtable_B:
.word classA_getAndSetA
.word classB_getAndSetB
vtable_C:
.word classA_getAndSetA
.word classB_getAndSetB
.word classC_getAndSetC

.data
# Allocated labels for virtual registers
label_21_v0:
.space 4
label_54_v10:
.space 4
label_29_v5:
.space 4
label_38_v3:
.space 4
label_20_v1:
.space 4
label_46_v8:
.space 4
label_37_v6:
.space 4
label_27_v4:
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
# Original instruction: addiu $sp,$fp,-8
addiu $sp,$fp,-8
# Original instruction: pushRegisters
la $t0,label_21_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_54_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_20_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_27_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class C
# >>Get VAR Addr<<
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_21_v0
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,24
addiu $a0,$zero,24
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_20_v1
sw $t5,0($t0)
# Original instruction: sw v1,0($v0)
la $t5,label_20_v1
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_20_v1
sw $t5,0($t0)
# Original instruction: sw v1,8($v0)
la $t5,label_20_v1
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_20_v1
sw $t5,0($t0)
# Original instruction: sw v1,16($v0)
la $t5,label_20_v1
lw $t5,0($t5)
sw $t5,16($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_21_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute getAndSetC
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_27_v4
sw $t5,0($t0)
# Original instruction: lw v4,0(v4)
la $t4,label_27_v4
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_27_v4
sw $t4,0($t0)
# Original instruction: addiu v4,v4,0
la $t4,label_27_v4
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_27_v4
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v4,0($sp)
la $t5,label_27_v4
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v5,1
li $t5,1
la $t0,label_29_v5
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v5,0($sp)
la $t5,label_29_v5
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v6,$fp,-8
addiu $t5,$fp,-8
la $t0,label_37_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_37_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_37_v6
sw $t4,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_37_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_37_v6
sw $t4,0($t0)
# Original instruction: lw v6,8(v6)
la $t4,label_37_v6
lw $t4,0($t4)
lw $t4,8($t4)
la $t0,label_37_v6
sw $t4,0($t0)
# Original instruction: jalr v6
la $t5,label_37_v6
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v3,0($sp)
lw $t5,0($sp)
la $t0,label_38_v3
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetC
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v8,$fp,-8
addiu $t5,$fp,-8
la $t0,label_46_v8
sw $t5,0($t0)
# Original instruction: lw v8,0(v8)
la $t4,label_46_v8
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_46_v8
sw $t4,0($t0)
# Original instruction: addiu v8,v8,4
la $t4,label_46_v8
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_46_v8
sw $t4,0($t0)
# Original instruction: lw v8,0(v8)
la $t4,label_46_v8
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_46_v8
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v8,0($sp)
la $t5,label_46_v8
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
# Original instruction: addiu v10,$fp,-8
addiu $t5,$fp,-8
la $t0,label_54_v10
sw $t5,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_54_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_54_v10
sw $t4,0($t0)
# Original instruction: addiu v10,v10,4
la $t4,label_54_v10
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_54_v10
sw $t4,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_54_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_54_v10
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v10,0($sp)
la $t5,label_54_v10
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
la $t1,label_27_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_37_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_46_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_20_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_38_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_29_v5
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_54_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_21_v0
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
label_61_v12:
.space 4
label_74_v17:
.space 4
label_62_v11:
.space 4
label_70_v14:
.space 4
label_69_v15:
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
la $t0,label_61_v12
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v17
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_70_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v15
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v11,$fp,-8
addiu $t5,$fp,-8
la $t0,label_62_v11
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v12,12($fp)
lw $t5,12($fp)
la $t0,label_61_v12
sw $t5,0($t0)
# Original instruction: addiu v12,v12,4
la $t4,label_61_v12
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_61_v12
sw $t4,0($t0)
# Original instruction: lw v12,0(v12)
la $t4,label_61_v12
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_61_v12
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v12,0(v11)
la $t5,label_61_v12
lw $t5,0($t5)
la $t4,label_62_v11
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v14,12($fp)
lw $t5,12($fp)
la $t0,label_70_v14
sw $t5,0($t0)
# Original instruction: addiu v14,v14,4
la $t4,label_70_v14
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_70_v14
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v15,$fp,8
addiu $t5,$fp,8
la $t0,label_69_v15
sw $t5,0($t0)
# Original instruction: lw v15,0(v15)
la $t4,label_69_v15
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_69_v15
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v15,0(v14)
la $t5,label_69_v15
lw $t5,0($t5)
la $t4,label_70_v14
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v17,$fp,-8
addiu $t5,$fp,-8
la $t0,label_74_v17
sw $t5,0($t0)
# Original instruction: lw v17,0(v17)
la $t4,label_74_v17
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_74_v17
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v17,4($fp)
la $t5,label_74_v17
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_69_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_70_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_62_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_74_v17
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_61_v12
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
label_81_v19:
.space 4
label_89_v22:
.space 4
label_94_v24:
.space 4
label_82_v18:
.space 4
label_90_v21:
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
la $t0,label_81_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_94_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v21
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v18,$fp,-8
addiu $t5,$fp,-8
la $t0,label_82_v18
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v19,12($fp)
lw $t5,12($fp)
la $t0,label_81_v19
sw $t5,0($t0)
# Original instruction: addiu v19,v19,4
la $t4,label_81_v19
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_81_v19
sw $t4,0($t0)
# Original instruction: lw v19,0(v19)
la $t4,label_81_v19
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_81_v19
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v19,0(v18)
la $t5,label_81_v19
lw $t5,0($t5)
la $t4,label_82_v18
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v21,12($fp)
lw $t5,12($fp)
la $t0,label_90_v21
sw $t5,0($t0)
# Original instruction: addiu v21,v21,4
la $t4,label_90_v21
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_90_v21
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v22,$fp,8
addiu $t5,$fp,8
la $t0,label_89_v22
sw $t5,0($t0)
# Original instruction: lw v22,0(v22)
la $t4,label_89_v22
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_89_v22
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v22,0(v21)
la $t5,label_89_v22
lw $t5,0($t5)
la $t4,label_90_v21
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v24,$fp,-8
addiu $t5,$fp,-8
la $t0,label_94_v24
sw $t5,0($t0)
# Original instruction: lw v24,0(v24)
la $t4,label_94_v24
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_94_v24
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v24,4($fp)
la $t5,label_94_v24
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_90_v21
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_82_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_94_v24
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_89_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_81_v19
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
label_101_v26:
.space 4
label_109_v30:
.space 4
label_112_v28:
.space 4
label_108_v29:
.space 4
label_102_v25:
.space 4
label_120_v35:
.space 4
label_134_v37:
.space 4
label_139_v39:
.space 4
label_127_v33:
.space 4
label_111_v31:
.space 4
label_126_v34:
.space 4
label_135_v36:
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
# Original instruction: addiu $sp,$fp,-8
addiu $sp,$fp,-8
# Original instruction: pushRegisters
la $t0,label_101_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_109_v30
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_112_v28
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_108_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_102_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_120_v35
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_134_v37
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_139_v39
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v33
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_111_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_126_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_135_v36
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v25,$fp,-8
addiu $t5,$fp,-8
la $t0,label_102_v25
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v26,12($fp)
lw $t5,12($fp)
la $t0,label_101_v26
sw $t5,0($t0)
# Original instruction: addiu v26,v26,4
la $t4,label_101_v26
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_101_v26
sw $t4,0($t0)
# Original instruction: lw v26,0(v26)
la $t4,label_101_v26
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_101_v26
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v26,0(v25)
la $t5,label_101_v26
lw $t5,0($t5)
la $t4,label_102_v25
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v28,$fp,8
addiu $t5,$fp,8
la $t0,label_112_v28
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v29,$fp,8
addiu $t5,$fp,8
la $t0,label_108_v29
sw $t5,0($t0)
# Original instruction: lw v29,0(v29)
la $t4,label_108_v29
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_108_v29
sw $t4,0($t0)
# Original instruction: li v30,2
li $t5,2
la $t0,label_109_v30
sw $t5,0($t0)
# Original instruction: add v31,v29,v30
la $t5,label_108_v29
lw $t5,0($t5)
la $t4,label_109_v30
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_111_v31
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v31,0(v28)
la $t5,label_111_v31
lw $t5,0($t5)
la $t4,label_112_v28
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v34,12($fp)
lw $t5,12($fp)
la $t0,label_126_v34
sw $t5,0($t0)
# Original instruction: addiu v34,v34,16
la $t4,label_126_v34
lw $t4,0($t4)
addiu $t4,$t4,16
la $t0,label_126_v34
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v34,0($sp)
la $t5,label_126_v34
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v35,$fp,8
addiu $t5,$fp,8
la $t0,label_120_v35
sw $t5,0($t0)
# Original instruction: lw v35,0(v35)
la $t4,label_120_v35
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_120_v35
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v35,0($sp)
la $t5,label_120_v35
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v34,12($fp)
lw $t5,12($fp)
la $t0,label_126_v34
sw $t5,0($t0)
# Original instruction: lw v34,0(v34)
la $t4,label_126_v34
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_126_v34
sw $t4,0($t0)
# Original instruction: lw v34,0(v34)
la $t4,label_126_v34
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_126_v34
sw $t4,0($t0)
# Original instruction: jalr v34
la $t5,label_126_v34
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v33,0($sp)
lw $t5,0($sp)
la $t0,label_127_v33
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v36,12($fp)
lw $t5,12($fp)
la $t0,label_135_v36
sw $t5,0($t0)
# Original instruction: addiu v36,v36,4
la $t4,label_135_v36
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_135_v36
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v37,$fp,8
addiu $t5,$fp,8
la $t0,label_134_v37
sw $t5,0($t0)
# Original instruction: lw v37,0(v37)
la $t4,label_134_v37
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_134_v37
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v37,0(v36)
la $t5,label_134_v37
lw $t5,0($t5)
la $t4,label_135_v36
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v39,$fp,-8
addiu $t5,$fp,-8
la $t0,label_139_v39
sw $t5,0($t0)
# Original instruction: lw v39,0(v39)
la $t4,label_139_v39
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_139_v39
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v39,4($fp)
la $t5,label_139_v39
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_135_v36
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_126_v34
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_111_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_127_v33
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_139_v39
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_134_v37
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_120_v35
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_102_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_108_v29
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_112_v28
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_109_v30
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_101_v26
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

