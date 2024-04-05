.data
label_0_:
.byte '\n'
.align 3

.data
# Allocated labels for virtual registers
label_12_v1:
.space 4
label_19_v2:
.space 4
label_21_v4:
.space 4
label_39_v7:
.space 4
label_29_v6:
.space 4
label_13_v0:
.space 4
label_25_v5:
.space 4
label_35_v8:
.space 4
label_38_v10:
.space 4
label_18_v3:
.space 4
label_36_v9:
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
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_13_v0
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v1,10
li $t5,10
la $t0,label_12_v1
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v1,0(v0)
la $t5,label_12_v1
lw $t5,0($t5)
la $t4,label_13_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_2_while:
# Original instruction: addiu v2,$fp,-8
addiu $t5,$fp,-8
la $t0,label_19_v2
sw $t5,0($t0)
# Original instruction: lw v2,0(v2)
la $t4,label_19_v2
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_19_v2
sw $t4,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_18_v3
sw $t5,0($t0)
# Original instruction: slt v4,v3,v2
la $t5,label_18_v3
lw $t5,0($t5)
la $t4,label_19_v2
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_21_v4
sw $t3,0($t0)
# Original instruction: beq v4,$zero,label_3_end
la $t5,label_21_v4
lw $t5,0($t5)
beq $t5,$zero,label_3_end
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v5,$fp,-8
addiu $t5,$fp,-8
la $t0,label_25_v5
sw $t5,0($t0)
# Original instruction: lw v5,0(v5)
la $t4,label_25_v5
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_25_v5
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v5,0($sp)
la $t5,label_25_v5
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v6,label_0_
la $t5,label_0_
la $t0,label_29_v6
sw $t5,0($t0)
# Original instruction: lb v6,0(v6)
la $t4,label_29_v6
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_29_v6
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v6,0($sp)
la $t5,label_29_v6
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v7,$fp,-8
addiu $t5,$fp,-8
la $t0,label_39_v7
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v8,$fp,-8
addiu $t5,$fp,-8
la $t0,label_35_v8
sw $t5,0($t0)
# Original instruction: lw v8,0(v8)
la $t4,label_35_v8
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_35_v8
sw $t4,0($t0)
# Original instruction: li v9,1
li $t5,1
la $t0,label_36_v9
sw $t5,0($t0)
# Original instruction: sub v10,v8,v9
la $t5,label_35_v8
lw $t5,0($t5)
la $t4,label_36_v9
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_38_v10
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v10,0(v7)
la $t5,label_38_v10
lw $t5,0($t5)
la $t4,label_39_v7
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_2_while
j label_2_while
label_3_end:
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
# Original instruction: lw $a0,8($fp)
lw $a0,8($fp)
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
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
# Original instruction: li $v0,5
li $v0,5
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
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
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: sb $v0,4($fp)
sb $v0,4($fp)
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
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: syscall
syscall
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
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: syscall
syscall
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
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: syscall
syscall
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

