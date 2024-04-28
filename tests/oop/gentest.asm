.data
vtable_A:
.word classA_setA
.word classA_getA
label_1_:
.asciiz "bb\n"
.align 1
vtable_B:
.word classA_setA
.word classA_getA
.word classB_bb
.word classB_getB
label_3_:
.asciiz "cc\n"
.align 1
vtable_C:
.word classA_setA
.word classA_getA
.word classB_bb
.word classB_getB
.word classC_cc
.word classC_getC

.data
# Allocated labels for virtual registers
label_31_v4:
.space 4
label_47_v9:
.space 4
label_55_v10:
.space 4
label_33_v5:
.space 4
label_25_v0:
.space 4
label_41_v6:
.space 4
label_57_v8:
.space 4
label_24_v1:
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
# Original instruction: pushRegisters
la $t0,label_31_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_47_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_25_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_57_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class A
# >>Get VAR Addr<<
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_25_v0
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu $a0,$zero,24
addiu $a0,$zero,24
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_24_v1
sw $t5,0($t0)
# Original instruction: sw v1,0($v0)
la $t5,label_24_v1
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_24_v1
sw $t5,0($t0)
# Original instruction: sw v1,8($v0)
la $t5,label_24_v1
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_24_v1
sw $t5,0($t0)
# Original instruction: sw v1,16($v0)
la $t5,label_24_v1
lw $t5,0($t5)
sw $t5,16($v0)
# Original instruction: addiu $v0,$v0,16
addiu $v0,$v0,16
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_25_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute setA
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_31_v4
sw $t5,0($t0)
# Original instruction: lw v4,0(v4)
la $t4,label_31_v4
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_31_v4
sw $t4,0($t0)
# Original instruction: addiu v4,v4,0
la $t4,label_31_v4
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_31_v4
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v4,0($sp)
la $t5,label_31_v4
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v5,10
li $t5,10
la $t0,label_33_v5
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v5,0($sp)
la $t5,label_33_v5
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: addiu v6,$fp,-8
addiu $t5,$fp,-8
la $t0,label_41_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_41_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_41_v6
sw $t4,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_41_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_41_v6
sw $t4,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_41_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_41_v6
sw $t4,0($t0)
# Original instruction: jalr v6
la $t5,label_41_v6
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From setA
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getA
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v9,$fp,-8
addiu $t5,$fp,-8
la $t0,label_47_v9
sw $t5,0($t0)
# Original instruction: lw v9,0(v9)
la $t4,label_47_v9
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_47_v9
sw $t4,0($t0)
# Original instruction: addiu v9,v9,0
la $t4,label_47_v9
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_47_v9
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v9,0($sp)
la $t5,label_47_v9
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v10,$fp,-8
addiu $t5,$fp,-8
la $t0,label_55_v10
sw $t5,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_55_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_55_v10
sw $t4,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_55_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_55_v10
sw $t4,0($t0)
# Original instruction: lw v10,4(v10)
la $t4,label_55_v10
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_55_v10
sw $t4,0($t0)
# Original instruction: jalr v10
la $t5,label_55_v10
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v8,0($sp)
lw $t5,0($sp)
la $t0,label_57_v8
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v8,0($sp)
la $t5,label_57_v8
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_24_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_57_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_41_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_25_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_33_v5
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_55_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_47_v9
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_31_v4
sw $t0,0($t1)
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
label_64_v12:
.space 4
label_65_v11:
.space 4

.text
classA_setA:
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
# Original instruction: pushRegisters
la $t0,label_64_v12
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v11,8($fp)
lw $t5,8($fp)
la $t0,label_65_v11
sw $t5,0($t0)
# Original instruction: addiu v11,v11,4
la $t4,label_65_v11
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_65_v11
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v12,$fp,4
addiu $t5,$fp,4
la $t0,label_64_v12
sw $t5,0($t0)
# Original instruction: lw v12,0(v12)
la $t4,label_64_v12
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_64_v12
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v12,0(v11)
la $t5,label_64_v12
lw $t5,0($t5)
la $t4,label_65_v11
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_65_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_64_v12
sw $t0,0($t1)
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
label_71_v14:
.space 4

.text
classA_getA:
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
# Original instruction: pushRegisters
la $t0,label_71_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Returning Value<<<
# Original instruction: lw v14,8($fp)
lw $t5,8($fp)
la $t0,label_71_v14
sw $t5,0($t0)
# Original instruction: addiu v14,v14,4
la $t4,label_71_v14
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_71_v14
sw $t4,0($t0)
# Original instruction: lw v14,0(v14)
la $t4,label_71_v14
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_71_v14
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v14,4($fp)
la $t5,label_71_v14
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_71_v14
sw $t0,0($t1)
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
label_73_v16:
.space 4

.text
classB_bb:
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
# Original instruction: pushRegisters
la $t0,label_73_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@7c53a9eb
# Original instruction: la v16,label_1_
la $t5,label_1_
la $t0,label_73_v16
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v16,0($sp)
la $t5,label_73_v16
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@7c53a9eb ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_73_v16
sw $t0,0($t1)
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
label_79_v17:
.space 4

.text
classB_getB:
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
# Original instruction: pushRegisters
la $t0,label_79_v17
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Returning Value<<<
# Original instruction: lw v17,8($fp)
lw $t5,8($fp)
la $t0,label_79_v17
sw $t5,0($t0)
# Original instruction: addiu v17,v17,4
la $t4,label_79_v17
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_79_v17
sw $t4,0($t0)
# Original instruction: lw v17,0(v17)
la $t4,label_79_v17
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_79_v17
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v17,4($fp)
la $t5,label_79_v17
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_79_v17
sw $t0,0($t1)
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
label_81_v19:
.space 4

.text
classC_cc:
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
# Original instruction: pushRegisters
la $t0,label_81_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@ed17bee
# Original instruction: la v19,label_3_
la $t5,label_3_
la $t0,label_81_v19
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v19,0($sp)
la $t5,label_81_v19
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@ed17bee ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_81_v19
sw $t0,0($t1)
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
label_87_v20:
.space 4

.text
classC_getC:
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
# Original instruction: pushRegisters
la $t0,label_87_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Returning Value<<<
# Original instruction: lw v20,8($fp)
lw $t5,8($fp)
la $t0,label_87_v20
sw $t5,0($t0)
# Original instruction: addiu v20,v20,4
la $t4,label_87_v20
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_87_v20
sw $t4,0($t0)
# Original instruction: lw v20,0(v20)
la $t4,label_87_v20
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_87_v20
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v20,4($fp)
la $t5,label_87_v20
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_87_v20
sw $t0,0($t1)
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
# Original instruction: pushRegisters
# Original instruction: lw $a0,8($fp)
lw $a0,8($fp)
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
# Original instruction: popRegisters
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
# Original instruction: pushRegisters
# Original instruction: li $v0,5
li $v0,5
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
# Original instruction: popRegisters
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
# Original instruction: pushRegisters
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: sb $v0,4($fp)
sb $v0,4($fp)
# Original instruction: popRegisters
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
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: syscall
syscall
# Original instruction: popRegisters
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
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: syscall
syscall
# Original instruction: popRegisters
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
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: syscall
syscall
# Original instruction: popRegisters
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

