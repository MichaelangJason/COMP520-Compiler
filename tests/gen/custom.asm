.data

.data
# Allocated labels for virtual registers
label_15_v2:
.space 4
label_33_v9:
.space 4
label_19_v4:
.space 4
label_24_v7:
.space 4
label_8_v1:
.space 4
label_14_v3:
.space 4
label_18_v5:
.space 4
label_25_v6:
.space 4
label_39_v10:
.space 4
label_9_v0:
.space 4
label_31_v8:
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
# Original instruction: addiu $sp,$fp,-56
addiu $sp,$fp,-56
# [[[Assign]]]: ast.PointerType@1e80bfe8
# [[Get VAR Addr]]
# Original instruction: addiu v0,$fp,-24
addiu $t5,$fp,-24
la $t0,label_9_v0
sw $t5,0($t0)
# [[Get VAL]]
# Execute mcmalloc
# [[[Retrieving arg val]]]: INT
# Original instruction: li v1,4
li $t5,4
la $t0,label_8_v1
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v1,0($sp)
la $t5,label_8_v1
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: lw $v0,0($sp)
lw $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From mcmalloc
# [[Start Copy]]
# Original instruction: sw $v0,0(v0)
la $t5,label_9_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v2,$fp,-24
addiu $t5,$fp,-24
la $t0,label_15_v2
sw $t5,0($t0)
# Original instruction: lw v2,0(v2)
la $t4,label_15_v2
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_15_v2
sw $t4,0($t0)
# [[Get VAL]]
# Original instruction: li v3,4
li $t5,4
la $t0,label_14_v3
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v3,0(v2)
la $t5,label_14_v3
lw $t5,0($t5)
la $t4,label_15_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# [[[Assign]]]: ast.PointerType@5a10411
# [[Get VAR Addr]]
# Original instruction: addiu v4,$fp,-56
addiu $t5,$fp,-56
la $t0,label_19_v4
sw $t5,0($t0)
# [[Get VAL]]
# Execute mcmalloc
# [[[Retrieving arg val]]]: INT
# Original instruction: li v5,4
li $t5,4
la $t0,label_18_v5
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v5,0($sp)
la $t5,label_18_v5
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: lw $v0,0($sp)
lw $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From mcmalloc
# [[Start Copy]]
# Original instruction: sw $v0,0(v4)
la $t5,label_19_v4
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v6,$fp,-56
addiu $t5,$fp,-56
la $t0,label_25_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_25_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_25_v6
sw $t4,0($t0)
# [[Get VAL]]
# Original instruction: li v7,6
li $t5,6
la $t0,label_24_v7
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v7,0(v6)
la $t5,label_24_v7
lw $t5,0($t5)
la $t4,label_25_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute print_t
# [[[Retrieving arg val]]]: ast.StructType@2ef1e4fa
# Original instruction: addiu v8,$fp,-24
addiu $t5,$fp,-24
la $t0,label_31_v8
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-20
addiu $sp,$sp,-20
# Original instruction: lw $v0,0(v8)
la $t5,label_31_v8
lw $t5,0($t5)
lw $v0,0($t5)
# Original instruction: sw $v0,0($sp)
sw $v0,0($sp)
# Original instruction: lw $v0,4(v8)
la $t5,label_31_v8
lw $t5,0($t5)
lw $v0,4($t5)
# Original instruction: sw $v0,4($sp)
sw $v0,4($sp)
# Original instruction: lw $v0,8(v8)
la $t5,label_31_v8
lw $t5,0($t5)
lw $v0,8($t5)
# Original instruction: sw $v0,8($sp)
sw $v0,8($sp)
# Original instruction: lw $v0,12(v8)
la $t5,label_31_v8
lw $t5,0($t5)
lw $v0,12($t5)
# Original instruction: sw $v0,12($sp)
sw $v0,12($sp)
# Original instruction: lw $v0,16(v8)
la $t5,label_31_v8
lw $t5,0($t5)
lw $v0,16($t5)
# Original instruction: sw $v0,16($sp)
sw $v0,16($sp)
# # [[[Arg Pushed]]]: ast.StructType@2ef1e4fa ended
# [[[Retrieving arg val]]]: INT
# Original instruction: li v9,3
li $t5,3
la $t0,label_33_v9
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v9,0($sp)
la $t5,label_33_v9
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# [[[Retrieving arg val]]]: ast.StructType@306a30c7
# Original instruction: addiu v10,$fp,-56
addiu $t5,$fp,-56
la $t0,label_39_v10
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-20
addiu $sp,$sp,-20
# Original instruction: lw $v0,0(v10)
la $t5,label_39_v10
lw $t5,0($t5)
lw $v0,0($t5)
# Original instruction: sw $v0,0($sp)
sw $v0,0($sp)
# Original instruction: lw $v0,4(v10)
la $t5,label_39_v10
lw $t5,0($t5)
lw $v0,4($t5)
# Original instruction: sw $v0,4($sp)
sw $v0,4($sp)
# Original instruction: lw $v0,8(v10)
la $t5,label_39_v10
lw $t5,0($t5)
lw $v0,8($t5)
# Original instruction: sw $v0,8($sp)
sw $v0,8($sp)
# Original instruction: lw $v0,12(v10)
la $t5,label_39_v10
lw $t5,0($t5)
lw $v0,12($t5)
# Original instruction: sw $v0,12($sp)
sw $v0,12($sp)
# Original instruction: lw $v0,16(v10)
la $t5,label_39_v10
lw $t5,0($t5)
lw $v0,16($t5)
# Original instruction: sw $v0,16($sp)
sw $v0,16($sp)
# # [[[Arg Pushed]]]: ast.StructType@306a30c7 ended
# Original instruction: jal print_t
jal print_t
# Original instruction: addiu $sp,$sp,44
addiu $sp,$sp,44
# Return From print_t
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
label_49_v12:
.space 4
label_45_v11:
.space 4
label_55_v13:
.space 4

.text
print_t:
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
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v11,$fp,28
addiu $t5,$fp,28
la $t0,label_45_v11
sw $t5,0($t0)
# Original instruction: lw v11,0(v11)
la $t4,label_45_v11
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_45_v11
sw $t4,0($t0)
# Original instruction: lw v11,0(v11)
la $t4,label_45_v11
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_45_v11
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v11,0($sp)
la $t5,label_45_v11
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v12,$fp,24
addiu $t5,$fp,24
la $t0,label_49_v12
sw $t5,0($t0)
# Original instruction: lw v12,0(v12)
la $t4,label_49_v12
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_49_v12
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v12,0($sp)
la $t5,label_49_v12
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v13,$fp,4
addiu $t5,$fp,4
la $t0,label_55_v13
sw $t5,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_55_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_55_v13
sw $t4,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_55_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_55_v13
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v13,0($sp)
la $t5,label_55_v13
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
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

