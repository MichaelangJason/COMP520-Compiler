.data

.data
# Allocated labels for virtual registers
label_5_v0:
.space 4
label_4_v1:
.space 4
label_9_v2:
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
la $t0,label_5_v0
sw $t5,0($t0)
# Original instruction: li v1,5
li $t5,5
la $t0,label_4_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_4_v1
lw $t5,0($t5)
la $t4,label_5_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v2,$fp,-8
addi $t5,$fp,-8
la $t0,label_9_v2
sw $t5,0($t0)
# Original instruction: lw v2,0(v2)
la $t4,label_9_v2
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_9_v2
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v2,0($sp)
la $t5,label_9_v2
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

