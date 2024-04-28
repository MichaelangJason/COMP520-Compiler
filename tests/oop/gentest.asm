.data
label_0_:
.asciiz "aa\n"
.align 1
vtable_A:
.word classA_test
.word classA_aa
label_2_:
.asciiz "bb\n"
.align 1
vtable_B:
.word classB_test
.word classA_aa
.word classB_bb
label_4_:
.asciiz "cc\n"
.align 1
vtable_C:
.word classC_test
.word classA_aa
.word classB_bb
.word classC_cc

.data
# Allocated labels for virtual registers
label_25_v1:
.space 4
label_82_v19:
.space 4
label_54_v12:
.space 4
label_34_v3:
.space 4
label_74_v18:
.space 4
label_72_v16:
.space 4
label_33_v4:
.space 4
label_44_v9:
.space 4
label_42_v7:
.space 4
label_62_v13:
.space 4
label_52_v10:
.space 4
label_26_v0:
.space 4
label_64_v15:
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
# Original instruction: addiu $sp,$fp,-12
addiu $sp,$fp,-12
# Original instruction: pushRegisters
la $t0,label_25_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_54_v12
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v7
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_64_v15
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
# Original instruction: addiu $a0,$zero,24
addiu $a0,$zero,24
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
# Original instruction: sw v1,16($v0)
la $t5,label_25_v1
lw $t5,0($t5)
sw $t5,16($v0)
# Original instruction: addiu $v0,$v0,16
addiu $v0,$v0,16
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_26_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# >>>Assign<<<: class C
# >>Get VAR Addr<<
# Original instruction: addiu v3,$fp,-12
addiu $t5,$fp,-12
la $t0,label_34_v3
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,24
addiu $a0,$zero,24
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v4,vtable_C
la $t5,vtable_C
la $t0,label_33_v4
sw $t5,0($t0)
# Original instruction: sw v4,0($v0)
la $t5,label_33_v4
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v4,vtable_C
la $t5,vtable_C
la $t0,label_33_v4
sw $t5,0($t0)
# Original instruction: sw v4,8($v0)
la $t5,label_33_v4
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v4,vtable_C
la $t5,vtable_C
la $t0,label_33_v4
sw $t5,0($t0)
# Original instruction: sw v4,16($v0)
la $t5,label_33_v4
lw $t5,0($t5)
sw $t5,16($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v3)
la $t5,label_34_v3
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v7,$fp,-8
addiu $t5,$fp,-8
la $t0,label_42_v7
sw $t5,0($t0)
# Original instruction: lw v7,0(v7)
la $t4,label_42_v7
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_42_v7
sw $t4,0($t0)
# Original instruction: addiu v7,v7,4
la $t4,label_42_v7
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_42_v7
sw $t4,0($t0)
# Original instruction: lw v7,0(v7)
la $t4,label_42_v7
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_42_v7
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v7,0($sp)
la $t5,label_42_v7
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute aa
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v9,$fp,-8
addiu $t5,$fp,-8
la $t0,label_44_v9
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v9,0($sp)
la $t5,label_44_v9
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v10,$fp,-8
addiu $t5,$fp,-8
la $t0,label_52_v10
sw $t5,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_52_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_52_v10
sw $t4,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_52_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_52_v10
sw $t4,0($t0)
# Original instruction: lw v10,4(v10)
la $t4,label_52_v10
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_52_v10
sw $t4,0($t0)
# Original instruction: jalr v10
la $t5,label_52_v10
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From aa
# Execute aa
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v12,$fp,-12
addiu $t5,$fp,-12
la $t0,label_54_v12
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v12,0($sp)
la $t5,label_54_v12
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v13,$fp,-12
addiu $t5,$fp,-12
la $t0,label_62_v13
sw $t5,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_62_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_62_v13
sw $t4,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_62_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_62_v13
sw $t4,0($t0)
# Original instruction: lw v13,4(v13)
la $t4,label_62_v13
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_62_v13
sw $t4,0($t0)
# Original instruction: jalr v13
la $t5,label_62_v13
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From aa
# Execute bb
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v15,$fp,-12
addiu $t5,$fp,-12
la $t0,label_64_v15
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v15,0($sp)
la $t5,label_64_v15
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v16,$fp,-12
addiu $t5,$fp,-12
la $t0,label_72_v16
sw $t5,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_72_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_72_v16
sw $t4,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_72_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_72_v16
sw $t4,0($t0)
# Original instruction: lw v16,8(v16)
la $t4,label_72_v16
lw $t4,0($t4)
lw $t4,8($t4)
la $t0,label_72_v16
sw $t4,0($t0)
# Original instruction: jalr v16
la $t5,label_72_v16
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From bb
# Execute cc
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v18,$fp,-12
addiu $t5,$fp,-12
la $t0,label_74_v18
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v18,0($sp)
la $t5,label_74_v18
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v19,$fp,-12
addiu $t5,$fp,-12
la $t0,label_82_v19
sw $t5,0($t0)
# Original instruction: lw v19,0(v19)
la $t4,label_82_v19
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_82_v19
sw $t4,0($t0)
# Original instruction: lw v19,0(v19)
la $t4,label_82_v19
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_82_v19
sw $t4,0($t0)
# Original instruction: lw v19,12(v19)
la $t4,label_82_v19
lw $t4,0($t4)
lw $t4,12($t4)
la $t0,label_82_v19
sw $t4,0($t0)
# Original instruction: jalr v19
la $t5,label_82_v19
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From cc
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_64_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_26_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_52_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_62_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_42_v7
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_44_v9
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_33_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_72_v16
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_74_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_34_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_54_v12
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_82_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_25_v1
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
label_89_v21:
.space 4
label_90_v20:
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
la $t0,label_89_v21
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v20,4($fp)
lw $t5,4($fp)
la $t0,label_90_v20
sw $t5,0($t0)
# Original instruction: lw v20,0(v20)
la $t4,label_90_v20
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_90_v20
sw $t4,0($t0)
# Original instruction: addiu v20,v20,4
la $t4,label_90_v20
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_90_v20
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v21,10
li $t5,10
la $t0,label_89_v21
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v21,0(v20)
la $t5,label_89_v21
lw $t5,0($t5)
la $t4,label_90_v20
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_90_v20
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_89_v21
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
label_92_v24:
.space 4

.text
classA_aa:
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
la $t0,label_92_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@4926097b
# Original instruction: la v24,label_0_
la $t5,label_0_
la $t0,label_92_v24
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v24,0($sp)
la $t5,label_92_v24
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@4926097b ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_92_v24
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
label_100_v25:
.space 4
label_99_v26:
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
la $t0,label_100_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_99_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v25,4($fp)
lw $t5,4($fp)
la $t0,label_100_v25
sw $t5,0($t0)
# Original instruction: lw v25,0(v25)
la $t4,label_100_v25
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_100_v25
sw $t4,0($t0)
# Original instruction: addiu v25,v25,4
la $t4,label_100_v25
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_100_v25
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v26,9
li $t5,9
la $t0,label_99_v26
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v26,0(v25)
la $t5,label_99_v26
lw $t5,0($t5)
la $t4,label_100_v25
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_99_v26
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_100_v25
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
label_102_v29:
.space 4

.text
classB_bb:
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
la $t0,label_102_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@762efe5d
# Original instruction: la v29,label_2_
la $t5,label_2_
la $t0,label_102_v29
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v29,0($sp)
la $t5,label_102_v29
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@762efe5d ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_102_v29
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
label_110_v30:
.space 4
label_109_v31:
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
la $t0,label_110_v30
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_109_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v30,4($fp)
lw $t5,4($fp)
la $t0,label_110_v30
sw $t5,0($t0)
# Original instruction: lw v30,0(v30)
la $t4,label_110_v30
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_110_v30
sw $t4,0($t0)
# Original instruction: addiu v30,v30,4
la $t4,label_110_v30
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_110_v30
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v31,67
li $t5,67
la $t0,label_109_v31
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v31,0(v30)
la $t5,label_109_v31
lw $t5,0($t5)
la $t4,label_110_v30
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_109_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_110_v30
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
label_112_v34:
.space 4

.text
classC_cc:
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
la $t0,label_112_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@5d22bbb7
# Original instruction: la v34,label_4_
la $t5,label_4_
la $t0,label_112_v34
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v34,0($sp)
la $t5,label_112_v34
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@5d22bbb7 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_112_v34
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

