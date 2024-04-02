.data
label_0_c:
.byte 'c'
.align 3

.data
# Allocated labels for virtual registers
label_17_v4:
.space 4
label_27_v7:
.space 4
label_11_v3:
.space 4
label_30_v5:
.space 4
label_14_v1:
.space 4
label_21_v6:
.space 4
label_18_v0:
.space 4
label_5_v2:
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
# Original instruction: li v2,0
li $t5,0
la $t0,label_5_v2
sw $t5,0($t0)
# Original instruction: li v1,1
li $t5,1
la $t0,label_14_v1
sw $t5,0($t0)
# Original instruction: mult v2,v1
la $t5,label_5_v2
lw $t5,0($t5)
la $t4,label_14_v1
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v1
mflo $t5
la $t0,label_14_v1
sw $t5,0($t0)
# Original instruction: addi v3,$fp,-16
addi $t5,$fp,-16
la $t0,label_11_v3
sw $t5,0($t0)
# Original instruction: addi v3,v3,12
la $t4,label_11_v3
lw $t4,0($t4)
addi $t4,$t4,12
la $t0,label_11_v3
sw $t4,0($t0)
# Original instruction: add v1,v3,v1
la $t5,label_11_v3
lw $t5,0($t5)
la $t3,label_14_v1
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_14_v1
sw $t3,0($t0)
# Original instruction: addi v0,v1,0
la $t5,label_14_v1
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_18_v0
sw $t4,0($t0)
# Original instruction: la v4,label_0_c
la $t5,label_0_c
la $t0,label_17_v4
sw $t5,0($t0)
# Original instruction: sw v4,0(v0)
la $t5,label_17_v4
lw $t5,0($t5)
la $t4,label_18_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: li v6,0
li $t5,0
la $t0,label_21_v6
sw $t5,0($t0)
# Original instruction: li v5,1
li $t5,1
la $t0,label_30_v5
sw $t5,0($t0)
# Original instruction: mult v6,v5
la $t5,label_21_v6
lw $t5,0($t5)
la $t4,label_30_v5
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v5
mflo $t5
la $t0,label_30_v5
sw $t5,0($t0)
# Original instruction: addi v7,$fp,-16
addi $t5,$fp,-16
la $t0,label_27_v7
sw $t5,0($t0)
# Original instruction: addi v7,v7,12
la $t4,label_27_v7
lw $t4,0($t4)
addi $t4,$t4,12
la $t0,label_27_v7
sw $t4,0($t0)
# Original instruction: add v5,v7,v5
la $t5,label_27_v7
lw $t5,0($t5)
la $t3,label_30_v5
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_30_v5
sw $t3,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v5,0($sp)
la $t5,label_30_v5
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: jal print_c
jal print_c
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
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: lw $a0,0($a0)
lw $a0,0($a0)
# Original instruction: li $v0,11
li $v0,11
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

