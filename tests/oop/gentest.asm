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
label_23_v0:
.space 4
label_22_v1:
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
la $t0,label_23_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_22_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class C
# >>Get VAR Addr<<
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_23_v0
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
la $t0,label_22_v1
sw $t5,0($t0)
# Original instruction: sw v1,0($v0)
la $t5,label_22_v1
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_22_v1
sw $t5,0($t0)
# Original instruction: sw v1,8($v0)
la $t5,label_22_v1
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_22_v1
sw $t5,0($t0)
# Original instruction: sw v1,16($v0)
la $t5,label_22_v1
lw $t5,0($t5)
sw $t5,16($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_23_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_22_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_23_v0
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
label_31_v3:
.space 4
label_39_v6:
.space 4
label_43_v9:
.space 4
label_30_v4:
.space 4
label_38_v7:
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
la $t0,label_31_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_39_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_43_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_30_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v7
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v3,$fp,-8
addiu $t5,$fp,-8
la $t0,label_31_v3
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v4,12($fp)
lw $t5,12($fp)
la $t0,label_30_v4
sw $t5,0($t0)
# Original instruction: addiu v4,v4,4
la $t4,label_30_v4
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_30_v4
sw $t4,0($t0)
# Original instruction: lw v4,0(v4)
la $t4,label_30_v4
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_30_v4
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v4,0(v3)
la $t5,label_30_v4
lw $t5,0($t5)
la $t4,label_31_v3
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v6,12($fp)
lw $t5,12($fp)
la $t0,label_39_v6
sw $t5,0($t0)
# Original instruction: addiu v6,v6,4
la $t4,label_39_v6
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_39_v6
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v7,$fp,8
addiu $t5,$fp,8
la $t0,label_38_v7
sw $t5,0($t0)
# Original instruction: lw v7,0(v7)
la $t4,label_38_v7
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_38_v7
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v7,0(v6)
la $t5,label_38_v7
lw $t5,0($t5)
la $t4,label_39_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v9,$fp,-8
addiu $t5,$fp,-8
la $t0,label_43_v9
sw $t5,0($t0)
# Original instruction: lw v9,0(v9)
la $t4,label_43_v9
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_43_v9
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v9,4($fp)
la $t5,label_43_v9
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_38_v7
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_30_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_43_v9
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_39_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_31_v3
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
label_63_v16:
.space 4
label_51_v10:
.space 4
label_59_v13:
.space 4
label_58_v14:
.space 4
label_50_v11:
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
la $t0,label_63_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_59_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_58_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_50_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v10,$fp,-8
addiu $t5,$fp,-8
la $t0,label_51_v10
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v11,12($fp)
lw $t5,12($fp)
la $t0,label_50_v11
sw $t5,0($t0)
# Original instruction: addiu v11,v11,4
la $t4,label_50_v11
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_50_v11
sw $t4,0($t0)
# Original instruction: lw v11,0(v11)
la $t4,label_50_v11
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_50_v11
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v11,0(v10)
la $t5,label_50_v11
lw $t5,0($t5)
la $t4,label_51_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v13,12($fp)
lw $t5,12($fp)
la $t0,label_59_v13
sw $t5,0($t0)
# Original instruction: addiu v13,v13,4
la $t4,label_59_v13
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_59_v13
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v14,$fp,8
addiu $t5,$fp,8
la $t0,label_58_v14
sw $t5,0($t0)
# Original instruction: lw v14,0(v14)
la $t4,label_58_v14
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_58_v14
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v14,0(v13)
la $t5,label_58_v14
lw $t5,0($t5)
la $t4,label_59_v13
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v16,$fp,-8
addiu $t5,$fp,-8
la $t0,label_63_v16
sw $t5,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_63_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_63_v16
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v16,4($fp)
la $t5,label_63_v16
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_50_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_58_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_59_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_51_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_63_v16
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
label_75_v21:
.space 4
label_89_v24:
.space 4
label_93_v27:
.space 4
label_80_v23:
.space 4
label_71_v17:
.space 4
label_88_v25:
.space 4
label_76_v20:
.space 4
label_70_v18:
.space 4
label_81_v22:
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
la $t0,label_75_v21
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_93_v27
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_80_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v17
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_88_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_76_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_70_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_81_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v17,$fp,-8
addiu $t5,$fp,-8
la $t0,label_71_v17
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v18,12($fp)
lw $t5,12($fp)
la $t0,label_70_v18
sw $t5,0($t0)
# Original instruction: addiu v18,v18,4
la $t4,label_70_v18
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_70_v18
sw $t4,0($t0)
# Original instruction: lw v18,0(v18)
la $t4,label_70_v18
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_70_v18
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v18,0(v17)
la $t5,label_70_v18
lw $t5,0($t5)
la $t4,label_71_v17
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute getAndSetA
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v21,$fp,8
addiu $t5,$fp,8
la $t0,label_75_v21
sw $t5,0($t0)
# Original instruction: lw v21,0(v21)
la $t4,label_75_v21
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_75_v21
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v21,0($sp)
la $t5,label_75_v21
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getAndSetA
jal getAndSetA
# Original instruction: lw v20,0($sp)
lw $t5,0($sp)
la $t0,label_76_v20
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# Execute getAndSetB
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v23,$fp,8
addiu $t5,$fp,8
la $t0,label_80_v23
sw $t5,0($t0)
# Original instruction: lw v23,0(v23)
la $t4,label_80_v23
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_80_v23
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v23,0($sp)
la $t5,label_80_v23
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getAndSetB
jal getAndSetB
# Original instruction: lw v22,0($sp)
lw $t5,0($sp)
la $t0,label_81_v22
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetB
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v24,12($fp)
lw $t5,12($fp)
la $t0,label_89_v24
sw $t5,0($t0)
# Original instruction: addiu v24,v24,4
la $t4,label_89_v24
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_89_v24
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v25,$fp,8
addiu $t5,$fp,8
la $t0,label_88_v25
sw $t5,0($t0)
# Original instruction: lw v25,0(v25)
la $t4,label_88_v25
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_88_v25
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v25,0(v24)
la $t5,label_88_v25
lw $t5,0($t5)
la $t4,label_89_v24
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v27,$fp,-8
addiu $t5,$fp,-8
la $t0,label_93_v27
sw $t5,0($t0)
# Original instruction: lw v27,0(v27)
la $t4,label_93_v27
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_93_v27
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v27,4($fp)
la $t5,label_93_v27
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_81_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_70_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_76_v20
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_88_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_71_v17
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_80_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_93_v27
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_89_v24
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_75_v21
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

