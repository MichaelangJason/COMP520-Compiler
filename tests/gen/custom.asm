.data

.data
# Allocated labels for virtual registers
label_7_v1:
.space 4
label_27_v7:
.space 4
label_8_v0:
.space 4
label_28_v6:
.space 4
label_14_v2:
.space 4
label_13_v3:
.space 4
label_32_v8:
.space 4
label_20_v4:
.space 4
label_19_v5:
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
# Original instruction: addiu $sp,$fp,-12
addiu $sp,$fp,-12
# [[[Assign]]]: ast.PointerType@4fca772d
# [[Get VAR Addr]]
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_8_v0
sw $t5,0($t0)
# [[Get VAL Addr]]
# Execute mcmalloc
# [[[Retrieving arg val]]]: INT
# Original instruction: li v1,8
li $t5,8
la $t0,label_7_v1
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v1,0($sp)
la $t5,label_7_v1
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Pushing arg]]]: INT ended
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: addiu $v0,$sp,0
addiu $v0,$sp,0
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From mcmalloc
# [[Start Copy]]
# Original instruction: sw $v0,0(v0)
la $t5,label_8_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# [[[Assign]]]: ast.PointerType@533ddba
# [[Get VAR Addr]]
# Original instruction: addiu v2,$fp,-8
addiu $t5,$fp,-8
la $t0,label_14_v2
sw $t5,0($t0)
# Original instruction: addi v2,v2,0
la $t4,label_14_v2
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_14_v2
sw $t4,0($t0)
# [[Get VAL Addr]]
# Execute mcmalloc
# [[[Retrieving arg val]]]: INT
# Original instruction: li v3,4
li $t5,4
la $t0,label_13_v3
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v3,0($sp)
la $t5,label_13_v3
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Pushing arg]]]: INT ended
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: addiu $v0,$sp,0
addiu $v0,$sp,0
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From mcmalloc
# [[Start Copy]]
# Original instruction: sw $v0,0(v2)
la $t5,label_14_v2
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_20_v4
sw $t5,0($t0)
# Original instruction: addi v4,v4,0
la $t4,label_20_v4
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_20_v4
sw $t4,0($t0)
# [[Get VAL Addr]]
# Original instruction: li v5,4
li $t5,4
la $t0,label_19_v5
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v5,0(v4)
la $t5,label_19_v5
lw $t5,0($t5)
la $t4,label_20_v4
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v6,$fp,-12
addiu $t5,$fp,-12
la $t0,label_28_v6
sw $t5,0($t0)
# [[Get VAL Addr]]
# Original instruction: addiu v7,$fp,-8
addiu $t5,$fp,-8
la $t0,label_27_v7
sw $t5,0($t0)
# Original instruction: addi v7,v7,0
la $t4,label_27_v7
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_27_v7
sw $t4,0($t0)
# Original instruction: lw v7,0(v7)
la $t4,label_27_v7
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_27_v7
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sw v7,0(v6)
la $t5,label_27_v7
lw $t5,0($t5)
la $t4,label_28_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v8,$fp,-12
addiu $t5,$fp,-12
la $t0,label_32_v8
sw $t5,0($t0)
# Original instruction: lw v8,0(v8)
la $t4,label_32_v8
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_32_v8
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v8,0($sp)
la $t5,label_32_v8
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Pushing arg]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
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

