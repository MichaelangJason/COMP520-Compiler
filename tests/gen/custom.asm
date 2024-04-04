.data
label_0_c:
.byte 'c'
.align 3

.data
# Allocated labels for virtual registers
label_12_v0:
.space 4
label_54_v13:
.space 4
label_62_v15:
.space 4
label_70_v14:
.space 4
label_11_v1:
.space 4
label_17_v3:
.space 4
label_65_v12:
.space 4
label_57_v11:
.space 4
label_41_v9:
.space 4
label_42_v7:
.space 4
label_18_v2:
.space 4
label_35_v5:
.space 4
label_27_v4:
.space 4
label_32_v8:
.space 4
label_48_v10:
.space 4
label_24_v6:
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
la $t0,label_12_v0
sw $t5,0($t0)
# Original instruction: addi v0,v0,0
la $t4,label_12_v0
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_12_v0
sw $t4,0($t0)
# Execute mcmalloc
# Original instruction: li v1,4
li $t5,4
la $t0,label_11_v1
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v1,0($sp)
la $t5,label_11_v1
lw $t5,0($t5)
sw $t5,0($sp)
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
# Original instruction: sw $v0,0(v0)
la $t5,label_12_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Original instruction: addiu v2,$fp,-12
addiu $t5,$fp,-12
la $t0,label_18_v2
sw $t5,0($t0)
# Original instruction: addi v2,v2,0
la $t4,label_18_v2
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_18_v2
sw $t4,0($t0)
# Original instruction: li v3,1
li $t5,1
la $t0,label_17_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_17_v3
lw $t5,0($t5)
la $t4,label_18_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v4,$fp,-12
addiu $t5,$fp,-12
la $t0,label_27_v4
sw $t5,0($t0)
# Original instruction: addi v4,v4,4
la $t4,label_27_v4
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_27_v4
sw $t4,0($t0)
# Original instruction: li v5,2
li $t5,2
la $t0,label_35_v5
sw $t5,0($t0)
# Original instruction: li v6,0
li $t5,0
la $t0,label_24_v6
sw $t5,0($t0)
# Original instruction: mult v6,v5
la $t5,label_24_v6
lw $t5,0($t5)
la $t4,label_35_v5
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v5
mflo $t5
la $t0,label_35_v5
sw $t5,0($t0)
# Original instruction: add v5,v4,v5
la $t5,label_27_v4
lw $t5,0($t5)
la $t3,label_35_v5
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_35_v5
sw $t3,0($t0)
# Original instruction: li v7,1
li $t5,1
la $t0,label_42_v7
sw $t5,0($t0)
# Original instruction: li v8,1
li $t5,1
la $t0,label_32_v8
sw $t5,0($t0)
# Original instruction: mult v8,v7
la $t5,label_32_v8
lw $t5,0($t5)
la $t4,label_42_v7
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v7
mflo $t5
la $t0,label_42_v7
sw $t5,0($t0)
# Original instruction: add v7,v5,v7
la $t5,label_35_v5
lw $t5,0($t5)
la $t3,label_42_v7
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_42_v7
sw $t3,0($t0)
# Original instruction: la v9,label_0_c
la $t5,label_0_c
la $t0,label_41_v9
sw $t5,0($t0)
# Original instruction: lb v9,0(v9)
la $t4,label_41_v9
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_41_v9
sw $t4,0($t0)
# Original instruction: sb v9,0(v7)
la $t5,label_41_v9
lw $t5,0($t5)
la $t4,label_42_v7
lw $t4,0($t4)
sb $t5,0($t4)
# Execute print_i
# Original instruction: addiu v10,$fp,-12
addiu $t5,$fp,-12
la $t0,label_48_v10
sw $t5,0($t0)
# Original instruction: addi v10,v10,0
la $t4,label_48_v10
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_48_v10
sw $t4,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_48_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_48_v10
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v10,0($sp)
la $t5,label_48_v10
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_c
# Original instruction: addiu v11,$fp,-12
addiu $t5,$fp,-12
la $t0,label_57_v11
sw $t5,0($t0)
# Original instruction: addi v11,v11,4
la $t4,label_57_v11
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_57_v11
sw $t4,0($t0)
# Original instruction: li v12,2
li $t5,2
la $t0,label_65_v12
sw $t5,0($t0)
# Original instruction: li v13,0
li $t5,0
la $t0,label_54_v13
sw $t5,0($t0)
# Original instruction: mult v13,v12
la $t5,label_54_v13
lw $t5,0($t5)
la $t4,label_65_v12
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v12
mflo $t5
la $t0,label_65_v12
sw $t5,0($t0)
# Original instruction: add v12,v11,v12
la $t5,label_57_v11
lw $t5,0($t5)
la $t3,label_65_v12
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_65_v12
sw $t3,0($t0)
# Original instruction: li v14,1
li $t5,1
la $t0,label_70_v14
sw $t5,0($t0)
# Original instruction: li v15,1
li $t5,1
la $t0,label_62_v15
sw $t5,0($t0)
# Original instruction: mult v15,v14
la $t5,label_62_v15
lw $t5,0($t5)
la $t4,label_70_v14
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v14
mflo $t5
la $t0,label_70_v14
sw $t5,0($t0)
# Original instruction: add v14,v12,v14
la $t5,label_65_v12
lw $t5,0($t5)
la $t3,label_70_v14
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_70_v14
sw $t3,0($t0)
# Original instruction: lb v14,0(v14)
la $t4,label_70_v14
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_70_v14
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v14,0($sp)
la $t5,label_70_v14
lw $t5,0($t5)
sb $t5,0($sp)
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
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
label_110_v25:
.space 4
label_76_v16:
.space 4
label_85_v21:
.space 4
label_113_v28:
.space 4
label_103_v23:
.space 4
label_86_v18:
.space 4
label_95_v22:
.space 4
label_75_v17:
.space 4
label_100_v26:
.space 4
label_92_v24:
.space 4
label_83_v20:
.space 4
label_109_v27:
.space 4
label_82_v19:
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
# Original instruction: addiu v16,$fp,-12
addiu $t5,$fp,-12
la $t0,label_76_v16
sw $t5,0($t0)
# Original instruction: addi v16,v16,0
la $t4,label_76_v16
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_76_v16
sw $t4,0($t0)
# Execute mcmalloc
# Original instruction: li v17,4
li $t5,4
la $t0,label_75_v17
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v17,0($sp)
la $t5,label_75_v17
lw $t5,0($t5)
sw $t5,0($sp)
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
# Original instruction: sw $v0,0(v16)
la $t5,label_76_v16
lw $t5,0($t5)
sw $v0,0($t5)
# Original instruction: addiu v18,$fp,-12
addiu $t5,$fp,-12
la $t0,label_86_v18
sw $t5,0($t0)
# Original instruction: addi v18,v18,0
la $t4,label_86_v18
lw $t4,0($t4)
addi $t4,$t4,0
la $t0,label_86_v18
sw $t4,0($t0)
# Original instruction: li v19,4
li $t5,4
la $t0,label_82_v19
sw $t5,0($t0)
# Original instruction: li v20,5
li $t5,5
la $t0,label_83_v20
sw $t5,0($t0)
# Original instruction: add v21,v19,v20
la $t5,label_82_v19
lw $t5,0($t5)
la $t4,label_83_v20
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_85_v21
sw $t3,0($t0)
# Original instruction: sw v21,0(v18)
la $t5,label_85_v21
lw $t5,0($t5)
la $t4,label_86_v18
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v22,$fp,-12
addiu $t5,$fp,-12
la $t0,label_95_v22
sw $t5,0($t0)
# Original instruction: addi v22,v22,4
la $t4,label_95_v22
lw $t4,0($t4)
addi $t4,$t4,4
la $t0,label_95_v22
sw $t4,0($t0)
# Original instruction: li v23,2
li $t5,2
la $t0,label_103_v23
sw $t5,0($t0)
# Original instruction: li v24,0
li $t5,0
la $t0,label_92_v24
sw $t5,0($t0)
# Original instruction: mult v24,v23
la $t5,label_92_v24
lw $t5,0($t5)
la $t4,label_103_v23
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v23
mflo $t5
la $t0,label_103_v23
sw $t5,0($t0)
# Original instruction: add v23,v22,v23
la $t5,label_95_v22
lw $t5,0($t5)
la $t3,label_103_v23
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_103_v23
sw $t3,0($t0)
# Original instruction: li v25,1
li $t5,1
la $t0,label_110_v25
sw $t5,0($t0)
# Original instruction: li v26,1
li $t5,1
la $t0,label_100_v26
sw $t5,0($t0)
# Original instruction: mult v26,v25
la $t5,label_100_v26
lw $t5,0($t5)
la $t4,label_110_v25
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v25
mflo $t5
la $t0,label_110_v25
sw $t5,0($t0)
# Original instruction: add v25,v23,v25
la $t5,label_103_v23
lw $t5,0($t5)
la $t3,label_110_v25
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_110_v25
sw $t3,0($t0)
# Original instruction: la v27,label_0_c
la $t5,label_0_c
la $t0,label_109_v27
sw $t5,0($t0)
# Original instruction: lb v27,0(v27)
la $t4,label_109_v27
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_109_v27
sw $t4,0($t0)
# Original instruction: sb v27,0(v25)
la $t5,label_109_v27
lw $t5,0($t5)
la $t4,label_110_v25
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v28,$fp,-12
addiu $t5,$fp,-12
la $t0,label_113_v28
sw $t5,0($t0)
# Original instruction: lw $t0,0(v28)
la $t5,label_113_v28
lw $t5,0($t5)
lw $t0,0($t5)
# Original instruction: sw $t0,4($fp)
sw $t0,4($fp)
# Original instruction: lw $t0,4(v28)
la $t5,label_113_v28
lw $t5,0($t5)
lw $t0,4($t5)
# Original instruction: sw $t0,8($fp)
sw $t0,8($fp)
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
# Original instruction: lw $a0,8($sp)
lw $a0,8($sp)
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: sb $v0,4($fp)
sb $v0,4($fp)
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

