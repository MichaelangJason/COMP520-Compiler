.data
vtable_A:
.word classA_test
vtable_B:
.word classB_test

.data
# Allocated labels for virtual registers
label_33_v5:
.space 4
label_20_v0:
.space 4
label_19_v1:
.space 4
label_27_v4:
.space 4
label_32_v6:
.space 4
label_40_v9:
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
la $t0,label_33_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_20_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_19_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_27_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_20_v0
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,16
addiu $a0,$zero,16
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v1,vtable_B
la $t5,vtable_B
la $t0,label_19_v1
sw $t5,0($t0)
# Original instruction: lw v1,0(v1)
la $t4,label_19_v1
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_19_v1
sw $t4,0($t0)
# Original instruction: sw v1,0($v0)
la $t5,label_19_v1
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v1,vtable_B
la $t5,vtable_B
la $t0,label_19_v1
sw $t5,0($t0)
# Original instruction: lw v1,0(v1)
la $t4,label_19_v1
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_19_v1
sw $t4,0($t0)
# Original instruction: sw v1,8($v0)
la $t5,label_19_v1
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: addiu $v0,$v0,8
addiu $v0,$v0,8
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_20_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute test
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_27_v4
sw $t5,0($t0)
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v4,0($sp)
la $t5,label_27_v4
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: lw v4,0(v4)
la $t4,label_27_v4
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_27_v4
sw $t4,0($t0)
# Original instruction: lw v4,0(v4)
la $t4,label_27_v4
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_27_v4
sw $t4,0($t0)
# Original instruction: jalr v4
la $t5,label_27_v4
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From test
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: addiu v5,$fp,-8
addiu $t5,$fp,-8
la $t0,label_33_v5
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,8
addiu $a0,$zero,8
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v6,vtable_A
la $t5,vtable_A
la $t0,label_32_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_32_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_32_v6
sw $t4,0($t0)
# Original instruction: sw v6,0($v0)
la $t5,label_32_v6
lw $t5,0($t5)
sw $t5,0($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v5)
la $t5,label_33_v5
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute test
# Original instruction: addiu v9,$fp,-8
addiu $t5,$fp,-8
la $t0,label_40_v9
sw $t5,0($t0)
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v9,0($sp)
la $t5,label_40_v9
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: lw v9,0(v9)
la $t4,label_40_v9
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_40_v9
sw $t4,0($t0)
# Original instruction: lw v9,0(v9)
la $t4,label_40_v9
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_40_v9
sw $t4,0($t0)
# Original instruction: jalr v9
la $t5,label_40_v9
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From test
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_40_v9
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_32_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_27_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_19_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_20_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_33_v5
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
label_45_v11:
.space 4
label_46_v10:
.space 4
label_52_v14:
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
la $t0,label_45_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v10,0($fp)
lw $t5,0($fp)
la $t0,label_46_v10
sw $t5,0($t0)
# Original instruction: addiu v10,v10,4
la $t4,label_46_v10
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_46_v10
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v11,10
li $t5,10
la $t0,label_45_v11
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v11,0(v10)
la $t5,label_45_v11
lw $t5,0($t5)
la $t4,label_46_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: lw v14,0($fp)
lw $t5,0($fp)
la $t0,label_52_v14
sw $t5,0($t0)
# Original instruction: addiu v14,v14,4
la $t4,label_52_v14
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_52_v14
sw $t4,0($t0)
# Original instruction: lw v14,0(v14)
la $t4,label_52_v14
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_52_v14
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v14,0($sp)
la $t5,label_52_v14
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
la $t1,label_52_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_46_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_45_v11
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
label_64_v19:
.space 4
label_57_v16:
.space 4
label_58_v15:
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
la $t0,label_64_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_57_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_58_v15
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v15,0($fp)
lw $t5,0($fp)
la $t0,label_58_v15
sw $t5,0($t0)
# Original instruction: addiu v15,v15,12
la $t4,label_58_v15
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_58_v15
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v16,9
li $t5,9
la $t0,label_57_v16
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v16,0(v15)
la $t5,label_57_v16
lw $t5,0($t5)
la $t4,label_58_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: lw v19,0($fp)
lw $t5,0($fp)
la $t0,label_64_v19
sw $t5,0($t0)
# Original instruction: addiu v19,v19,12
la $t4,label_64_v19
lw $t4,0($t4)
addiu $t4,$t4,12
la $t0,label_64_v19
sw $t4,0($t0)
# Original instruction: lw v19,0(v19)
la $t4,label_64_v19
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_64_v19
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v19,0($sp)
la $t5,label_64_v19
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
la $t1,label_58_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_57_v16
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_64_v19
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

