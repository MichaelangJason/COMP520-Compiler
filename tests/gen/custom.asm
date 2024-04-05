.data
label_0_c:
.byte 'c'
.align 3

.data
# Allocated labels for virtual registers
label_29_v6:
.space 4
label_21_v4:
.space 4
label_24_v2:
.space 4
label_9_v0:
.space 4
label_15_v1:
.space 4
label_37_v5:
.space 4
label_32_v3:
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
# [[[Assign]]]: ast.StructType@7c3df479
# [[Get VAR Addr]]
# Original instruction: addiu v0,$fp,-12
addiu $t5,$fp,-12
la $t0,label_9_v0
sw $t5,0($t0)
# [[Get VAL Addr]]
# Execute getStruct
# [[[Reserver Stack size for Return VAL]]]: 8
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal getStruct
jal getStruct
# Original instruction: addiu $v0,$sp,0
addiu $v0,$sp,0
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Return From getStruct
# [[Start Copy]]
# Original instruction: lw $t0,0($v0)
lw $t0,0($v0)
# Original instruction: sw $t0,0(v0)
la $t5,label_9_v0
lw $t5,0($t5)
sw $t0,0($t5)
# Original instruction: lw $t0,4($v0)
lw $t0,4($v0)
# Original instruction: sw $t0,4(v0)
la $t5,label_9_v0
lw $t5,0($t5)
sw $t0,4($t5)
# Copy End
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v1,$fp,-12
addiu $t5,$fp,-12
la $t0,label_15_v1
sw $t5,0($t0)
# Original instruction: addi v1,v1,0
la $t4,label_15_v1
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_15_v1
sw $t4,0($t0)
# Original instruction: lw v1,0(v1)
la $t4,label_15_v1
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_15_v1
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v1,0($sp)
la $t5,label_15_v1
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Pushing arg]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# [ArrAccess]
# Original instruction: addiu v2,$fp,-12
addiu $t5,$fp,-12
la $t0,label_24_v2
sw $t5,0($t0)
# Original instruction: addi v2,v2,4
la $t4,label_24_v2
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_24_v2
sw $t4,0($t0)
# Original instruction: li v3,2
li $t5,2
la $t0,label_32_v3
sw $t5,0($t0)
# Original instruction: li v4,0
li $t5,0
la $t0,label_21_v4
sw $t5,0($t0)
# Original instruction: mult v4,v3
la $t5,label_21_v4
lw $t5,0($t5)
la $t4,label_32_v3
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v3
mflo $t5
la $t0,label_32_v3
sw $t5,0($t0)
# Original instruction: add v3,v2,v3
la $t5,label_24_v2
lw $t5,0($t5)
la $t3,label_32_v3
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_32_v3
sw $t3,0($t0)
# Original instruction: li v5,1
li $t5,1
la $t0,label_37_v5
sw $t5,0($t0)
# Original instruction: li v6,1
li $t5,1
la $t0,label_29_v6
sw $t5,0($t0)
# Original instruction: mult v6,v5
la $t5,label_29_v6
lw $t5,0($t5)
la $t4,label_37_v5
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v5
mflo $t5
la $t0,label_37_v5
sw $t5,0($t0)
# Original instruction: add v5,v3,v5
la $t5,label_32_v3
lw $t5,0($t5)
la $t3,label_37_v5
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_37_v5
sw $t3,0($t0)
# Original instruction: lb v5,0(v5)
la $t4,label_37_v5
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_37_v5
sw $t4,0($t0)
# [ArrAccess End]
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v5,0($sp)
la $t5,label_37_v5
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Pushing arg]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
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
label_42_v8:
.space 4
label_62_v13:
.space 4
label_76_v18:
.space 4
label_50_v11:
.space 4
label_59_v15:
.space 4
label_80_v19:
.space 4
label_52_v12:
.space 4
label_70_v14:
.space 4
label_43_v7:
.space 4
label_67_v17:
.space 4
label_77_v16:
.space 4
label_49_v10:
.space 4
label_53_v9:
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
# Original instruction: addiu $sp,$fp,-12
addiu $sp,$fp,-12
# [[[Assign]]]: ast.PointerType@531d72ca
# [[Get VAR Addr]]
# Original instruction: addiu v7,$fp,-12
addiu $t5,$fp,-12
la $t0,label_43_v7
sw $t5,0($t0)
# Original instruction: addi v7,v7,0
la $t4,label_43_v7
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_43_v7
sw $t4,0($t0)
# [[Get VAL Addr]]
# Execute mcmalloc
# [[[Retrieving arg val]]]: INT
# Original instruction: li v8,4
li $t5,4
la $t0,label_42_v8
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v8,0($sp)
la $t5,label_42_v8
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
# Original instruction: sw $v0,0(v7)
la $t5,label_43_v7
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v9,$fp,-12
addiu $t5,$fp,-12
la $t0,label_53_v9
sw $t5,0($t0)
# Original instruction: addi v9,v9,0
la $t4,label_53_v9
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_53_v9
sw $t4,0($t0)
# [[Get VAL Addr]]
# Original instruction: li v10,4
li $t5,4
la $t0,label_49_v10
sw $t5,0($t0)
# Original instruction: li v11,5
li $t5,5
la $t0,label_50_v11
sw $t5,0($t0)
# Original instruction: add v12,v10,v11
la $t5,label_49_v10
lw $t5,0($t5)
la $t4,label_50_v11
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_52_v12
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v12,0(v9)
la $t5,label_52_v12
lw $t5,0($t5)
la $t4,label_53_v9
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v13,$fp,-12
addiu $t5,$fp,-12
la $t0,label_62_v13
sw $t5,0($t0)
# Original instruction: addi v13,v13,4
la $t4,label_62_v13
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_62_v13
sw $t4,0($t0)
# Original instruction: li v14,2
li $t5,2
la $t0,label_70_v14
sw $t5,0($t0)
# Original instruction: li v15,0
li $t5,0
la $t0,label_59_v15
sw $t5,0($t0)
# Original instruction: mult v15,v14
la $t5,label_59_v15
lw $t5,0($t5)
la $t4,label_70_v14
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v14
mflo $t5
la $t0,label_70_v14
sw $t5,0($t0)
# Original instruction: add v14,v13,v14
la $t5,label_62_v13
lw $t5,0($t5)
la $t3,label_70_v14
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_70_v14
sw $t3,0($t0)
# Original instruction: li v16,1
li $t5,1
la $t0,label_77_v16
sw $t5,0($t0)
# Original instruction: li v17,1
li $t5,1
la $t0,label_67_v17
sw $t5,0($t0)
# Original instruction: mult v17,v16
la $t5,label_67_v17
lw $t5,0($t5)
la $t4,label_77_v16
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v16
mflo $t5
la $t0,label_77_v16
sw $t5,0($t0)
# Original instruction: add v16,v14,v16
la $t5,label_70_v14
lw $t5,0($t5)
la $t3,label_77_v16
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_77_v16
sw $t3,0($t0)
# [[Get VAL Addr]]
# Original instruction: la v18,label_0_c
la $t5,label_0_c
la $t0,label_76_v18
sw $t5,0($t0)
# Original instruction: lb v18,0(v18)
la $t4,label_76_v18
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_76_v18
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v18,0(v16)
la $t5,label_76_v18
lw $t5,0($t5)
la $t4,label_77_v16
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: addiu v19,$fp,-12
addiu $t5,$fp,-12
la $t0,label_80_v19
sw $t5,0($t0)
# Original instruction: lw $t0,0(v19)
la $t5,label_80_v19
lw $t5,0($t5)
lw $t0,0($t5)
# Original instruction: sw $t0,4($fp)
sw $t0,4($fp)
# Original instruction: lw $t0,4(v19)
la $t5,label_80_v19
lw $t5,0($t5)
lw $t0,4($t5)
# Original instruction: sw $t0,8($fp)
sw $t0,8($fp)
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

