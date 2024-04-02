.data

.data
# Allocated labels for virtual registers
label_33_v11:
.space 4
label_22_v8:
.space 4
label_5_v1:
.space 4
label_18_v4:
.space 4
label_26_v7:
.space 4
label_15_v6:
.space 4
label_36_v9:
.space 4
label_8_v3:
.space 4
label_6_v2:
.space 4
label_27_v5:
.space 4
label_9_v0:
.space 4
label_41_v10:
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
# Original instruction: addiu v0,$fp,-32
addiu $t5,$fp,-32
la $t0,label_9_v0
sw $t5,0($t0)
# Original instruction: li v1,4
li $t5,4
la $t0,label_5_v1
sw $t5,0($t0)
# Original instruction: li v2,4
li $t5,4
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
# Original instruction: addiu v4,$fp,-28
addiu $t5,$fp,-28
la $t0,label_18_v4
sw $t5,0($t0)
# Original instruction: addi v4,v4,4
la $t4,label_18_v4
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_18_v4
sw $t4,0($t0)
# Original instruction: li v5,4
li $t5,4
la $t0,label_27_v5
sw $t5,0($t0)
# Original instruction: li v6,2
li $t5,2
la $t0,label_15_v6
sw $t5,0($t0)
# Original instruction: mult v6,v5
la $t5,label_15_v6
lw $t5,0($t5)
la $t4,label_27_v5
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v5
mflo $t5
la $t0,label_27_v5
sw $t5,0($t0)
# Original instruction: add v5,v4,v5
la $t5,label_18_v4
lw $t5,0($t5)
la $t3,label_27_v5
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_27_v5
sw $t3,0($t0)
# Original instruction: addiu v8,$fp,-32
addiu $t5,$fp,-32
la $t0,label_22_v8
sw $t5,0($t0)
# Original instruction: addi v7,v8,0
la $t5,label_22_v8
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_26_v7
sw $t4,0($t0)
# Original instruction: lw v7,0(v7)
la $t4,label_26_v7
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_26_v7
sw $t4,0($t0)
# Original instruction: sw v7,0(v5)
la $t5,label_26_v7
lw $t5,0($t5)
la $t4,label_27_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v9,$fp,-28
addiu $t5,$fp,-28
la $t0,label_36_v9
sw $t5,0($t0)
# Original instruction: addi v9,v9,4
la $t4,label_36_v9
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_36_v9
sw $t4,0($t0)
# Original instruction: li v10,4
li $t5,4
la $t0,label_41_v10
sw $t5,0($t0)
# Original instruction: li v11,2
li $t5,2
la $t0,label_33_v11
sw $t5,0($t0)
# Original instruction: mult v11,v10
la $t5,label_33_v11
lw $t5,0($t5)
la $t4,label_41_v10
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v10
mflo $t5
la $t0,label_41_v10
sw $t5,0($t0)
# Original instruction: add v10,v9,v10
la $t5,label_36_v9
lw $t5,0($t5)
la $t3,label_41_v10
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_41_v10
sw $t3,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_41_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_41_v10
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v10,0($sp)
la $t5,label_41_v10
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

