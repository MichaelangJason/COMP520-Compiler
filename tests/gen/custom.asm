.data

.data
# Allocated labels for virtual registers
label_7_v0:
.space 4
label_13_v1:
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
# Original instruction: addiu v0,$fp,-12
addiu $t5,$fp,-12
la $t0,label_7_v0
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal getStruct
jal getStruct
# Original instruction: addiu $v0,$sp,0
addiu $v0,$sp,0
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: lw $t0,0($v0)
lw $t0,0($v0)
# Original instruction: sw $t0,0(v0)
la $t5,label_7_v0
lw $t5,0($t5)
sw $t0,0($t5)
# Original instruction: lw $t0,4($v0)
lw $t0,4($v0)
# Original instruction: sw $t0,4(v0)
la $t5,label_7_v0
lw $t5,0($t5)
sw $t0,4($t5)
# Original instruction: addiu v1,$fp,-12
addiu $t5,$fp,-12
la $t0,label_13_v1
sw $t5,0($t0)
# Original instruction: addi v1,v1,0
la $t4,label_13_v1
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_13_v1
sw $t4,0($t0)
# Original instruction: lw v1,0(v1)
la $t4,label_13_v1
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_13_v1
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v1,0($sp)
la $t5,label_13_v1
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
label_26_v6:
.space 4
label_20_v4:
.space 4
label_23_v2:
.space 4
label_19_v3:
.space 4
label_22_v5:
.space 4

.text
getStruct:
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
# Original instruction: addiu v2,$fp,-12
addiu $t5,$fp,-12
la $t0,label_23_v2
sw $t5,0($t0)
# Original instruction: addi v2,v2,0
la $t4,label_23_v2
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_23_v2
sw $t4,0($t0)
# Original instruction: li v3,4
li $t5,4
la $t0,label_19_v3
sw $t5,0($t0)
# Original instruction: li v4,5
li $t5,5
la $t0,label_20_v4
sw $t5,0($t0)
# Original instruction: add v5,v3,v4
la $t5,label_19_v3
lw $t5,0($t5)
la $t4,label_20_v4
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_22_v5
sw $t3,0($t0)
# Original instruction: sw v5,0(v2)
la $t5,label_22_v5
lw $t5,0($t5)
la $t4,label_23_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v6,$fp,-12
addiu $t5,$fp,-12
la $t0,label_26_v6
sw $t5,0($t0)
# Original instruction: sw v6,0($fp)
la $t5,label_26_v6
lw $t5,0($t5)
sw $t5,0($fp)
# Original instruction: sw v6,4($fp)
la $t5,label_26_v6
lw $t5,0($t5)
sw $t5,4($fp)
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
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
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
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,4
li $v0,4
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

