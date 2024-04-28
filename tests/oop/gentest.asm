.data
global:
.space 4
vtable_A:
.word classA_test
.word classA_getAndSetA
vtable_B:
.word classB_test
.word classA_getAndSetA
vtable_C:
.word classC_test
.word classA_getAndSetA
.word classC_getAndSetC

.data
# Allocated labels for virtual registers
label_36_v5:
.space 4
label_40_v8:
.space 4
label_23_v1:
.space 4
label_42_v7:
.space 4
label_24_v0:
.space 4
label_28_v4:
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
# Original instruction: addiu $sp,$fp,-16
addiu $sp,$fp,-16
# Original instruction: pushRegisters
la $t0,label_36_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_23_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v7
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: class C
# >>Get VAR Addr<<
# Original instruction: addiu v0,$fp,-16
addiu $t5,$fp,-16
la $t0,label_24_v0
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
la $t0,label_23_v1
sw $t5,0($t0)
# Original instruction: sw v1,0($v0)
la $t5,label_23_v1
lw $t5,0($t5)
sw $t5,0($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_23_v1
sw $t5,0($t0)
# Original instruction: sw v1,8($v0)
la $t5,label_23_v1
lw $t5,0($t5)
sw $t5,8($v0)
# Original instruction: la v1,vtable_C
la $t5,vtable_C
la $t0,label_23_v1
sw $t5,0($t0)
# Original instruction: sw v1,16($v0)
la $t5,label_23_v1
lw $t5,0($t5)
sw $t5,16($v0)
# >>Start Copy<<
# Original instruction: sw $v0,0(v0)
la $t5,label_24_v0
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Execute test
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v4,$fp,-16
addiu $t5,$fp,-16
la $t0,label_28_v4
sw $t5,0($t0)
# Original instruction: lw v4,0(v4)
la $t4,label_28_v4
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_28_v4
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v4,0($sp)
la $t5,label_28_v4
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# Original instruction: addiu v5,$fp,-16
addiu $t5,$fp,-16
la $t0,label_36_v5
sw $t5,0($t0)
# Original instruction: lw v5,0(v5)
la $t4,label_36_v5
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_36_v5
sw $t4,0($t0)
# Original instruction: lw v5,0(v5)
la $t4,label_36_v5
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_36_v5
sw $t4,0($t0)
# Original instruction: lw v5,0(v5)
la $t4,label_36_v5
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_36_v5
sw $t4,0($t0)
# Original instruction: jalr v5
la $t5,label_36_v5
lw $t5,0($t5)
jalr $t5
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From test
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Execute getA
# >>>Retrieving arg val<<<: class A
# Original instruction: addiu v8,$fp,-16
addiu $t5,$fp,-16
la $t0,label_40_v8
sw $t5,0($t0)
# Original instruction: lw v8,0(v8)
la $t4,label_40_v8
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_40_v8
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v8,0($sp)
la $t5,label_40_v8
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: class A ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal getA
jal getA
# Original instruction: lw v7,0($sp)
lw $t5,0($sp)
la $t0,label_42_v7
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getA
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v7,0($sp)
la $t5,label_42_v7
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
la $t1,label_28_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_24_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_42_v7
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_23_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_40_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_36_v5
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
label_48_v9:
.space 4
label_47_v10:
.space 4

.text
classA_test:
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
la $t0,label_48_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_47_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v9,4($fp)
lw $t5,4($fp)
la $t0,label_48_v9
sw $t5,0($t0)
# Original instruction: addiu v9,v9,4
la $t4,label_48_v9
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_48_v9
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v10,11
li $t5,11
la $t0,label_47_v10
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v10,0(v9)
la $t5,label_47_v10
lw $t5,0($t5)
la $t4,label_48_v9
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_47_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_48_v9
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
label_63_v16:
.space 4
label_56_v12:
.space 4
label_68_v18:
.space 4
label_64_v15:
.space 4
label_55_v13:
.space 4

.text
classA_getAndSetA:
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
# Original instruction: pushRegisters
la $t0,label_63_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v12
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_64_v15
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v12,$fp,-8
addiu $t5,$fp,-8
la $t0,label_56_v12
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v13,12($fp)
lw $t5,12($fp)
la $t0,label_55_v13
sw $t5,0($t0)
# Original instruction: addiu v13,v13,4
la $t4,label_55_v13
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_55_v13
sw $t4,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_55_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_55_v13
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v13,0(v12)
la $t5,label_55_v13
lw $t5,0($t5)
la $t4,label_56_v12
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v15,12($fp)
lw $t5,12($fp)
la $t0,label_64_v15
sw $t5,0($t0)
# Original instruction: addiu v15,v15,4
la $t4,label_64_v15
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_64_v15
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v16,$fp,8
addiu $t5,$fp,8
la $t0,label_63_v16
sw $t5,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_63_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_63_v16
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v16,0(v15)
la $t5,label_63_v16
lw $t5,0($t5)
la $t4,label_64_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v18,$fp,-8
addiu $t5,$fp,-8
la $t0,label_68_v18
sw $t5,0($t0)
# Original instruction: lw v18,0(v18)
la $t4,label_68_v18
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_68_v18
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v18,4($fp)
la $t5,label_68_v18
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_55_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_64_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_68_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_56_v12
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_63_v16
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
label_73_v20:
.space 4
label_74_v19:
.space 4

.text
classB_test:
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
la $t0,label_73_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v19,4($fp)
lw $t5,4($fp)
la $t0,label_74_v19
sw $t5,0($t0)
# Original instruction: addiu v19,v19,4
la $t4,label_74_v19
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_74_v19
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v20,22
li $t5,22
la $t0,label_73_v20
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v20,0(v19)
la $t5,label_73_v20
lw $t5,0($t5)
la $t4,label_74_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_74_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_73_v20
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
label_80_v22:
.space 4
label_79_v23:
.space 4

.text
classC_test:
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
la $t0,label_80_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_79_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v22,4($fp)
lw $t5,4($fp)
la $t0,label_80_v22
sw $t5,0($t0)
# Original instruction: addiu v22,v22,4
la $t4,label_80_v22
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_80_v22
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: li v23,33
li $t5,33
la $t0,label_79_v23
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v23,0(v22)
la $t5,label_79_v23
lw $t5,0($t5)
la $t4,label_80_v22
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_79_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_80_v22
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
label_100_v34:
.space 4
label_99_v33:
.space 4
label_125_v41:
.space 4
label_92_v28:
.space 4
label_113_v37:
.space 4
label_102_v35:
.space 4
label_84_v25:
.space 4
label_91_v29:
.space 4
label_109_v31:
.space 4
label_120_v39:
.space 4
label_108_v32:
.space 4
label_83_v26:
.space 4
label_121_v38:
.space 4

.text
classC_getAndSetC:
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
la $t0,label_100_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_99_v33
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v41
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_92_v28
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v37
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_102_v35
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_91_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_109_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_120_v39
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_108_v32
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_121_v38
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v25,$fp,-12
addiu $t5,$fp,-12
la $t0,label_84_v25
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v26,10
li $t5,10
la $t0,label_83_v26
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v26,0(v25)
la $t5,label_83_v26
lw $t5,0($t5)
la $t4,label_84_v25
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v28,$fp,-8
addiu $t5,$fp,-8
la $t0,label_92_v28
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: lw v29,12($fp)
lw $t5,12($fp)
la $t0,label_91_v29
sw $t5,0($t0)
# Original instruction: addiu v29,v29,20
la $t4,label_91_v29
lw $t4,0($t4)
addiu $t4,$t4,20
la $t0,label_91_v29
sw $t4,0($t0)
# Original instruction: lw v29,0(v29)
la $t4,label_91_v29
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_91_v29
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v29,0(v28)
la $t5,label_91_v29
lw $t5,0($t5)
la $t4,label_92_v28
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: lw v32,12($fp)
lw $t5,12($fp)
la $t0,label_108_v32
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v32,0($sp)
la $t5,label_108_v32
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v33,$fp,8
addiu $t5,$fp,8
la $t0,label_99_v33
sw $t5,0($t0)
# Original instruction: lw v33,0(v33)
la $t4,label_99_v33
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_99_v33
sw $t4,0($t0)
# Original instruction: li v34,2
li $t5,2
la $t0,label_100_v34
sw $t5,0($t0)
# Original instruction: add v35,v33,v34
la $t5,label_99_v33
lw $t5,0($t5)
la $t4,label_100_v34
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_102_v35
sw $t3,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v35,0($sp)
la $t5,label_102_v35
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: lw v32,12($fp)
lw $t5,12($fp)
la $t0,label_108_v32
sw $t5,0($t0)
# Original instruction: lw v32,0(v32)
la $t4,label_108_v32
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_108_v32
sw $t4,0($t0)
# Original instruction: lw v32,4(v32)
la $t4,label_108_v32
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_108_v32
sw $t4,0($t0)
# Original instruction: jalr v32
la $t5,label_108_v32
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v31,0($sp)
lw $t5,0($sp)
la $t0,label_109_v31
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v37,$fp,-12
addiu $t5,$fp,-12
la $t0,label_113_v37
sw $t5,0($t0)
# Original instruction: lw v37,0(v37)
la $t4,label_113_v37
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_113_v37
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v37,0($sp)
la $t5,label_113_v37
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: lw v38,12($fp)
lw $t5,12($fp)
la $t0,label_121_v38
sw $t5,0($t0)
# Original instruction: addiu v38,v38,20
la $t4,label_121_v38
lw $t4,0($t4)
addiu $t4,$t4,20
la $t0,label_121_v38
sw $t4,0($t0)
# >>Get VAL<<
# Original instruction: addiu v39,$fp,8
addiu $t5,$fp,8
la $t0,label_120_v39
sw $t5,0($t0)
# Original instruction: lw v39,0(v39)
la $t4,label_120_v39
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_120_v39
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sw v39,0(v38)
la $t5,label_120_v39
lw $t5,0($t5)
la $t4,label_121_v38
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v41,$fp,-8
addiu $t5,$fp,-8
la $t0,label_125_v41
sw $t5,0($t0)
# Original instruction: lw v41,0(v41)
la $t4,label_125_v41
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_125_v41
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v41,4($fp)
la $t5,label_125_v41
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_121_v38
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_83_v26
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_108_v32
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_120_v39
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_109_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_91_v29
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_84_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_102_v35
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_113_v37
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_92_v28
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_125_v41
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_99_v33
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_100_v34
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
label_130_v44:
.space 4
label_140_v46:
.space 4
label_132_v45:
.space 4
label_142_v43:
.space 4
label_147_v48:
.space 4
label_143_v42:
.space 4

.text
getA:
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
# Original instruction: pushRegisters
la $t0,label_130_v44
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_140_v46
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_132_v45
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_142_v43
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_147_v48
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_143_v42
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v42,$fp,-8
addiu $t5,$fp,-8
la $t0,label_143_v42
sw $t5,0($t0)
# >>Get VAL<<
# Execute getAndSetA
# >>>Instance FunCall pushing this<<<
# Original instruction: addiu v44,$fp,8
addiu $t5,$fp,8
la $t0,label_130_v44
sw $t5,0($t0)
# Original instruction: lw v44,0(v44)
la $t4,label_130_v44
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_130_v44
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v44,0($sp)
la $t5,label_130_v44
lw $t5,0($t5)
sw $t5,0($sp)
# >>>This Pushed<<<
# >>>Retrieving arg val<<<: INT
# Original instruction: li v45,1
li $t5,1
la $t0,label_132_v45
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v45,0($sp)
la $t5,label_132_v45
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v46,$fp,8
addiu $t5,$fp,8
la $t0,label_140_v46
sw $t5,0($t0)
# Original instruction: lw v46,0(v46)
la $t4,label_140_v46
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_140_v46
sw $t4,0($t0)
# Original instruction: lw v46,0(v46)
la $t4,label_140_v46
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_140_v46
sw $t4,0($t0)
# Original instruction: lw v46,4(v46)
la $t4,label_140_v46
lw $t4,0($t4)
lw $t4,4($t4)
la $t0,label_140_v46
sw $t4,0($t0)
# Original instruction: jalr v46
la $t5,label_140_v46
lw $t5,0($t5)
jalr $t5
# Original instruction: lw v43,0($sp)
lw $t5,0($sp)
la $t0,label_142_v43
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From getAndSetA
# >>Start Copy<<
# Original instruction: sw v43,0(v42)
la $t5,label_142_v43
lw $t5,0($t5)
la $t4,label_143_v42
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Returning Value<<<
# Original instruction: addiu v48,$fp,-8
addiu $t5,$fp,-8
la $t0,label_147_v48
sw $t5,0($t0)
# Original instruction: lw v48,0(v48)
la $t4,label_147_v48
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_147_v48
sw $t4,0($t0)
# >>>Copy Value<<<
# Original instruction: sw v48,4($fp)
la $t5,label_147_v48
lw $t5,0($t5)
sw $t5,4($fp)
# >>>Returned<<<
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_143_v42
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_147_v48
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_142_v43
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_132_v45
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_140_v46
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_130_v44
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

