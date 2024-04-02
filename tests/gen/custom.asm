.data

.data
# Allocated labels for virtual registers
label_31_v10:
.space 4
label_6_v2:
.space 4
label_21_v4:
.space 4
label_17_v5:
.space 4
label_9_v0:
.space 4
label_18_v6:
.space 4
label_28_v8:
.space 4
label_8_v3:
.space 4
label_20_v7:
.space 4
label_5_v1:
.space 4
label_29_v9:
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
# Original instruction: addi v0,$fp,-8
addi $t5,$fp,-8
la $t0,label_9_v0
sw $t5,0($t0)
# Original instruction: li v1,5
li $t5,5
la $t0,label_5_v1
sw $t5,0($t0)
# Original instruction: li v2,5
li $t5,5
la $t0,label_6_v2
sw $t5,0($t0)
# Original instruction: add v3,v1,v2
la $t5,label_5_v1
lw $t5,0($t5)
la $t4,label_6_v2
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_8_v3
sw $t3,0($t0)
# Original instruction: sw v3,0(v0)
la $t5,label_8_v3
lw $t5,0($t5)
la $t4,label_9_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v4,$fp,-12
addi $t5,$fp,-12
la $t0,label_21_v4
sw $t5,0($t0)
# Original instruction: addi v5,$fp,-8
addi $t5,$fp,-8
la $t0,label_17_v5
sw $t5,0($t0)
# Original instruction: lw v5,0(v5)
la $t4,label_17_v5
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_17_v5
sw $t4,0($t0)
# Original instruction: addi v6,$fp,-8
addi $t5,$fp,-8
la $t0,label_18_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_18_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_18_v6
sw $t4,0($t0)
# Original instruction: mult v5,v6
la $t5,label_17_v5
lw $t5,0($t5)
la $t4,label_18_v6
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v7
mflo $t5
la $t0,label_20_v7
sw $t5,0($t0)
# Original instruction: sw v7,0(v4)
la $t5,label_20_v7
lw $t5,0($t5)
la $t4,label_21_v4
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v8,$fp,-12
addi $t5,$fp,-12
la $t0,label_28_v8
sw $t5,0($t0)
# Original instruction: lw v8,0(v8)
la $t4,label_28_v8
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_28_v8
sw $t4,0($t0)
# Original instruction: addi v9,$fp,-12
addi $t5,$fp,-12
la $t0,label_29_v9
sw $t5,0($t0)
# Original instruction: lw v9,0(v9)
la $t4,label_29_v9
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_29_v9
sw $t4,0($t0)
# Original instruction: mult v8,v9
la $t5,label_28_v8
lw $t5,0($t5)
la $t4,label_29_v9
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v10
mflo $t5
la $t0,label_31_v10
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v10,0($sp)
la $t5,label_31_v10
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
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
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: syscall
syscall
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

