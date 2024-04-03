.data
n:
.space 4
a:
.space 1
.align 3

.data
# Allocated labels for virtual registers
label_27_v7:
.space 4
label_21_v5:
.space 4
label_8_v1:
.space 4
label_9_v0:
.space 4
label_15_v2:
.space 4
label_30_v9:
.space 4
label_17_v4:
.space 4
label_28_v8:
.space 4
label_31_v6:
.space 4
label_14_v3:
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
# Original instruction: la v0,n
la $t5,n
la $t0,label_9_v0
sw $t5,0($t0)
# Original instruction: li v1,10
li $t5,10
la $t0,label_8_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_8_v1
lw $t5,0($t5)
la $t4,label_9_v0
lw $t4,0($t4)
sw $t5,0($t4)
label_3_while:
# Original instruction: la v2,n
la $t5,n
la $t0,label_15_v2
sw $t5,0($t0)
# Original instruction: lw v2,0(v2)
la $t4,label_15_v2
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_15_v2
sw $t4,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_14_v3
sw $t5,0($t0)
# Original instruction: slt v4,v3,v2
la $t5,label_14_v3
lw $t5,0($t5)
la $t4,label_15_v2
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_17_v4
sw $t3,0($t0)
# Original instruction: beq v4,$zero,label_4_end
la $t5,label_17_v4
lw $t5,0($t5)
beq $t5,$zero,label_4_end
# Original instruction: la v5,n
la $t5,n
la $t0,label_21_v5
sw $t5,0($t0)
# Original instruction: lw v5,0(v5)
la $t4,label_21_v5
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_21_v5
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v5,0($sp)
la $t5,label_21_v5
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v6,n
la $t5,n
la $t0,label_31_v6
sw $t5,0($t0)
# Original instruction: la v7,n
la $t5,n
la $t0,label_27_v7
sw $t5,0($t0)
# Original instruction: lw v7,0(v7)
la $t4,label_27_v7
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_27_v7
sw $t4,0($t0)
# Original instruction: li v8,1
li $t5,1
la $t0,label_28_v8
sw $t5,0($t0)
# Original instruction: sub v9,v7,v8
la $t5,label_27_v7
lw $t5,0($t5)
la $t4,label_28_v8
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_30_v9
sw $t3,0($t0)
# Original instruction: sw v9,0(v6)
la $t5,label_30_v9
lw $t5,0($t5)
la $t4,label_31_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j label_3_while
j label_3_while
label_4_end:
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

