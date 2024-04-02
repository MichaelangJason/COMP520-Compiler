.data
label_0_a:
.byte 'a'
.align 3

.data
# Allocated labels for virtual registers
label_6_v0:
.space 4
label_10_v2:
.space 4
label_5_v1:
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
# Original instruction: addiu v0,$fp,-5
addiu $t5,$fp,-5
la $t0,label_6_v0
sw $t5,0($t0)
# Original instruction: la v1,label_0_a
la $t5,label_0_a
la $t0,label_5_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_5_v1
lw $t5,0($t5)
la $t4,label_6_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v2,$fp,-5
addiu $t5,$fp,-5
la $t0,label_10_v2
sw $t5,0($t0)
# Original instruction: lb v2,0(v2)
la $t4,label_10_v2
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_10_v2
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v2,0($sp)
la $t5,label_10_v2
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

