.data
a11:
.space 1
.align 3
a12:
.space 1
.align 3
a13:
.space 1
.align 3
a21:
.space 1
.align 3
a22:
.space 1
.align 3
a23:
.space 1
.align 3
a31:
.space 1
.align 3
a32:
.space 1
.align 3
a33:
.space 1
.align 3
empty:
.space 1
.align 3
label_10_:
.byte 'a'
.align 3
label_11_:
.byte 'b'
.align 3
label_12_:
.byte 'c'
.align 3
label_13_:
.asciiz "\n"
.align 3
label_14_:
.asciiz "     1   2   3\n"
.align 1
label_15_:
.asciiz "   +---+---+---+\n"
.align 3
label_16_:
.asciiz "a  | "
.align 3
label_17_:
.asciiz " | "
.align 1
label_18_:
.asciiz " |\n"
.align 1
label_19_:
.asciiz "b  | "
.align 3
label_20_:
.asciiz "c  | "
.align 3
label_21_:
.asciiz "Player "
.align 1
label_22_:
.asciiz " has won!\n"
.align 2
label_23_:
.byte 'X'
.align 3
label_24_:
.byte 'O'
.align 3
label_25_:
.asciiz " select move (e.g. a2)>"
.align 1
label_26_:
.asciiz "That is not a valid move!\n"
.align 2
label_27_:
.asciiz "That move is not possible!\n"
.align 1
label_28_:
.byte ' '
.align 3
label_29_:
.asciiz "It\'s a draw!\n"
.align 3
label_30_:
.asciiz "Play again? (y/n)> "
.align 1
label_31_:
.byte 'y'
.align 3
label_32_:
.byte 'Y'
.align 3

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
# Original instruction: addiu $sp,$fp,-20
addiu $sp,$fp,-20
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v0,empty
la $t0,empty
# [[Get VAL]]
# Original instruction: la v1,label_28_
la $t1,label_28_
# Original instruction: lb v1,0(v1)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v1,0(v0)
sb $t1,0($t0)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v3,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v4,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v4,0(v3)
sw $t1,0($t0)
# Copy End
# Execute reset
# Original instruction: jal reset
jal reset
# Return From reset
# Execute printGame
# Original instruction: jal printGame
jal printGame
# Return From printGame
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v6,$fp,-12
addiu $t0,$fp,-12
# [[Get VAL]]
# Original instruction: li v7,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v7,0(v6)
sw $t1,0($t0)
# Copy End
label_36_while:
# Original instruction: addiu v9,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v9,0(v9)
lw $t0,0($t0)
# Original instruction: beq v9,$zero,label_37_end
beq $t0,$zero,label_37_end
# Execute selectmove
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v10,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v10,0(v10)
lw $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v10,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal selectmove
jal selectmove
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From selectmove
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v11,$fp,-16
addiu $t0,$fp,-16
# [[Get VAL]]
# Execute get_mark
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v12,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v12,0(v12)
lw $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v12,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: INT ended
# [[[Reserver Stack size for Return VAL]]]: 1
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal get_mark
jal get_mark
# Original instruction: lb $v0,0($sp)
lb $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From get_mark
# [[Start Copy]]
# Original instruction: sb $v0,0(v11)
sb $v0,0($t0)
# Copy End
# Execute printGame
# Original instruction: jal printGame
jal printGame
# Return From printGame
# Execute won
# [[[Retrieving arg val]]]: CHAR
# Original instruction: addiu v14,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lb v14,0(v14)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v14,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal won
jal won
# Original instruction: lw $v0,0($sp)
lw $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From won
# Original instruction: beq $v0,$zero,label_41_else
beq $v0,$zero,label_41_else
# Execute printWinner
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v15,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v15,0(v15)
lw $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v15,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal printWinner
jal printWinner
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From printWinner
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v16,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v17,0
li $t1,0
# [[Start Copy]]
# Original instruction: sw v17,0(v16)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_42_end
j label_42_end
label_41_else:
# Execute full
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal full
jal full
# Original instruction: lw $v0,0($sp)
lw $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From full
# Original instruction: li v19,1
li $t0,1
# Original instruction: xor v20,$v0,v19
xor $t0,$v0,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v20,v20,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v20,$zero,label_45_else
beq $t0,$zero,label_45_else
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@506c589e
# Original instruction: la v21,label_29_
la $t0,label_29_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v21,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@506c589e ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v22,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v23,0
li $t1,0
# [[Start Copy]]
# Original instruction: sw v23,0(v22)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_46_end
j label_46_end
label_45_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v25,$fp,-12
addiu $t0,$fp,-12
# [[Get VAL]]
# Execute switchPlayer
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v26,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v26,0(v26)
lw $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v26,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: INT ended
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal switchPlayer
jal switchPlayer
# Original instruction: lw $v0,0($sp)
lw $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From switchPlayer
# [[Start Copy]]
# Original instruction: sw $v0,0(v25)
sw $v0,0($t0)
# Copy End
label_46_end:
label_42_end:
# Original instruction: addiu v28,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v28,0(v28)
lw $t0,0($t0)
# Original instruction: li v29,0
li $t1,0
# Original instruction: xor v30,v28,v29
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v30,v30,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v30,$zero,label_49_else
beq $t0,$zero,label_49_else
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@69d0a921
# Original instruction: la v31,label_30_
la $t0,label_30_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v31,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@69d0a921 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v32,$fp,-20
addiu $t0,$fp,-20
# [[Get VAL]]
# Execute read_c
# [[[Reserver Stack size for Return VAL]]]: 1
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_c
jal read_c
# Original instruction: lb $v0,0($sp)
lb $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From read_c
# [[Start Copy]]
# Original instruction: sb $v0,0(v32)
sb $v0,0($t0)
# Copy End
# Original instruction: addiu v34,$fp,-20
addiu $t1,$fp,-20
# Original instruction: lb v34,0(v34)
lb $t1,0($t1)
# Original instruction: la v35,label_31_
la $t0,label_31_
# Original instruction: lb v35,0(v35)
lb $t0,0($t0)
# Original instruction: xor v36,v34,v35
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v36,v36,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v36,$zero,label_52_else
beq $t0,$zero,label_52_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v37,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v38,1
li $t0,1
# [[Start Copy]]
# Original instruction: sw v38,0(v37)
sw $t0,0($t1)
# Copy End
# Execute reset
# Original instruction: jal reset
jal reset
# Return From reset
# Original instruction: j label_53_end
j label_53_end
label_52_else:
# Original instruction: addiu v40,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lb v40,0(v40)
lb $t0,0($t0)
# Original instruction: la v41,label_32_
la $t1,label_32_
# Original instruction: lb v41,0(v41)
lb $t1,0($t1)
# Original instruction: xor v42,v40,v41
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v42,v42,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v42,$zero,label_54_else
beq $t0,$zero,label_54_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v43,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v44,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v44,0(v43)
sw $t1,0($t0)
# Copy End
# Execute reset
# Original instruction: jal reset
jal reset
# Return From reset
# Original instruction: j label_55_end
j label_55_end
label_54_else:
label_55_end:
label_53_end:
# Original instruction: j label_50_end
j label_50_end
label_49_else:
label_50_end:
# Original instruction: j label_36_while
j label_36_while
label_37_end:
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

.text
reset:
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
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v46,a11
la $t0,a11
# [[Get VAL]]
# Original instruction: la v47,empty
la $t1,empty
# Original instruction: lb v47,0(v47)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v47,0(v46)
sb $t1,0($t0)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v49,a12
la $t0,a12
# [[Get VAL]]
# Original instruction: la v50,empty
la $t1,empty
# Original instruction: lb v50,0(v50)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v50,0(v49)
sb $t1,0($t0)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v52,a13
la $t0,a13
# [[Get VAL]]
# Original instruction: la v53,empty
la $t1,empty
# Original instruction: lb v53,0(v53)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v53,0(v52)
sb $t1,0($t0)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v55,a21
la $t0,a21
# [[Get VAL]]
# Original instruction: la v56,empty
la $t1,empty
# Original instruction: lb v56,0(v56)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v56,0(v55)
sb $t1,0($t0)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v58,a22
la $t0,a22
# [[Get VAL]]
# Original instruction: la v59,empty
la $t1,empty
# Original instruction: lb v59,0(v59)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v59,0(v58)
sb $t1,0($t0)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v61,a23
la $t0,a23
# [[Get VAL]]
# Original instruction: la v62,empty
la $t1,empty
# Original instruction: lb v62,0(v62)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v62,0(v61)
sb $t1,0($t0)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v64,a31
la $t0,a31
# [[Get VAL]]
# Original instruction: la v65,empty
la $t1,empty
# Original instruction: lb v65,0(v65)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v65,0(v64)
sb $t1,0($t0)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v67,a32
la $t1,a32
# [[Get VAL]]
# Original instruction: la v68,empty
la $t0,empty
# Original instruction: lb v68,0(v68)
lb $t0,0($t0)
# [[Start Copy]]
# Original instruction: sb v68,0(v67)
sb $t0,0($t1)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v70,a33
la $t1,a33
# [[Get VAL]]
# Original instruction: la v71,empty
la $t0,empty
# Original instruction: lb v71,0(v71)
lb $t0,0($t0)
# [[Start Copy]]
# Original instruction: sb v71,0(v70)
sb $t0,0($t1)
# Copy End
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

.text
full:
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
# Original instruction: addiu v73,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v74,0
li $t0,0
# [[Start Copy]]
# Original instruction: sw v74,0(v73)
sw $t0,0($t1)
# Copy End
# Original instruction: la v76,a11
la $t0,a11
# Original instruction: lb v76,0(v76)
lb $t0,0($t0)
# Original instruction: la v77,empty
la $t1,empty
# Original instruction: lb v77,0(v77)
lb $t1,0($t1)
# Original instruction: xor v78,v76,v77
xor $t0,$t0,$t1
# Original instruction: sltu v78,$zero,v78
sltu $t0,$zero,$t0
# Original instruction: beq v78,$zero,label_56_else
beq $t0,$zero,label_56_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v79,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v80,$fp,-8
addiu $t1,$fp,-8
# Original instruction: lw v80,0(v80)
lw $t1,0($t1)
# Original instruction: li v81,1
li $t2,1
# Original instruction: add v82,v80,v81
add $t1,$t1,$t2
# [[Start Copy]]
# Original instruction: sw v82,0(v79)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_57_end
j label_57_end
label_56_else:
label_57_end:
# Original instruction: la v84,a21
la $t1,a21
# Original instruction: lb v84,0(v84)
lb $t1,0($t1)
# Original instruction: la v85,empty
la $t0,empty
# Original instruction: lb v85,0(v85)
lb $t0,0($t0)
# Original instruction: xor v86,v84,v85
xor $t0,$t1,$t0
# Original instruction: sltu v86,$zero,v86
sltu $t0,$zero,$t0
# Original instruction: beq v86,$zero,label_58_else
beq $t0,$zero,label_58_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v87,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v88,$fp,-8
addiu $t2,$fp,-8
# Original instruction: lw v88,0(v88)
lw $t2,0($t2)
# Original instruction: li v89,1
li $t1,1
# Original instruction: add v90,v88,v89
add $t1,$t2,$t1
# [[Start Copy]]
# Original instruction: sw v90,0(v87)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_59_end
j label_59_end
label_58_else:
label_59_end:
# Original instruction: la v92,a31
la $t1,a31
# Original instruction: lb v92,0(v92)
lb $t1,0($t1)
# Original instruction: la v93,empty
la $t0,empty
# Original instruction: lb v93,0(v93)
lb $t0,0($t0)
# Original instruction: xor v94,v92,v93
xor $t0,$t1,$t0
# Original instruction: sltu v94,$zero,v94
sltu $t0,$zero,$t0
# Original instruction: beq v94,$zero,label_60_else
beq $t0,$zero,label_60_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v95,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v96,$fp,-8
addiu $t2,$fp,-8
# Original instruction: lw v96,0(v96)
lw $t2,0($t2)
# Original instruction: li v97,1
li $t1,1
# Original instruction: add v98,v96,v97
add $t1,$t2,$t1
# [[Start Copy]]
# Original instruction: sw v98,0(v95)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_61_end
j label_61_end
label_60_else:
label_61_end:
# Original instruction: la v100,a12
la $t0,a12
# Original instruction: lb v100,0(v100)
lb $t0,0($t0)
# Original instruction: la v101,empty
la $t1,empty
# Original instruction: lb v101,0(v101)
lb $t1,0($t1)
# Original instruction: xor v102,v100,v101
xor $t0,$t0,$t1
# Original instruction: sltu v102,$zero,v102
sltu $t0,$zero,$t0
# Original instruction: beq v102,$zero,label_62_else
beq $t0,$zero,label_62_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v103,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v104,$fp,-8
addiu $t2,$fp,-8
# Original instruction: lw v104,0(v104)
lw $t2,0($t2)
# Original instruction: li v105,1
li $t1,1
# Original instruction: add v106,v104,v105
add $t1,$t2,$t1
# [[Start Copy]]
# Original instruction: sw v106,0(v103)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_63_end
j label_63_end
label_62_else:
label_63_end:
# Original instruction: la v108,a22
la $t0,a22
# Original instruction: lb v108,0(v108)
lb $t0,0($t0)
# Original instruction: la v109,empty
la $t1,empty
# Original instruction: lb v109,0(v109)
lb $t1,0($t1)
# Original instruction: xor v110,v108,v109
xor $t0,$t0,$t1
# Original instruction: sltu v110,$zero,v110
sltu $t0,$zero,$t0
# Original instruction: beq v110,$zero,label_64_else
beq $t0,$zero,label_64_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v111,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v112,$fp,-8
addiu $t2,$fp,-8
# Original instruction: lw v112,0(v112)
lw $t2,0($t2)
# Original instruction: li v113,1
li $t0,1
# Original instruction: add v114,v112,v113
add $t0,$t2,$t0
# [[Start Copy]]
# Original instruction: sw v114,0(v111)
sw $t0,0($t1)
# Copy End
# Original instruction: j label_65_end
j label_65_end
label_64_else:
label_65_end:
# Original instruction: la v116,a32
la $t1,a32
# Original instruction: lb v116,0(v116)
lb $t1,0($t1)
# Original instruction: la v117,empty
la $t0,empty
# Original instruction: lb v117,0(v117)
lb $t0,0($t0)
# Original instruction: xor v118,v116,v117
xor $t0,$t1,$t0
# Original instruction: sltu v118,$zero,v118
sltu $t0,$zero,$t0
# Original instruction: beq v118,$zero,label_66_else
beq $t0,$zero,label_66_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v119,$fp,-8
addiu $t2,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v120,$fp,-8
addiu $t1,$fp,-8
# Original instruction: lw v120,0(v120)
lw $t1,0($t1)
# Original instruction: li v121,1
li $t0,1
# Original instruction: add v122,v120,v121
add $t0,$t1,$t0
# [[Start Copy]]
# Original instruction: sw v122,0(v119)
sw $t0,0($t2)
# Copy End
# Original instruction: j label_67_end
j label_67_end
label_66_else:
label_67_end:
# Original instruction: la v124,a13
la $t1,a13
# Original instruction: lb v124,0(v124)
lb $t1,0($t1)
# Original instruction: la v125,empty
la $t0,empty
# Original instruction: lb v125,0(v125)
lb $t0,0($t0)
# Original instruction: xor v126,v124,v125
xor $t0,$t1,$t0
# Original instruction: sltu v126,$zero,v126
sltu $t0,$zero,$t0
# Original instruction: beq v126,$zero,label_68_else
beq $t0,$zero,label_68_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v127,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v128,$fp,-8
addiu $t2,$fp,-8
# Original instruction: lw v128,0(v128)
lw $t2,0($t2)
# Original instruction: li v129,1
li $t1,1
# Original instruction: add v130,v128,v129
add $t1,$t2,$t1
# [[Start Copy]]
# Original instruction: sw v130,0(v127)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_69_end
j label_69_end
label_68_else:
label_69_end:
# Original instruction: la v132,a23
la $t0,a23
# Original instruction: lb v132,0(v132)
lb $t0,0($t0)
# Original instruction: la v133,empty
la $t1,empty
# Original instruction: lb v133,0(v133)
lb $t1,0($t1)
# Original instruction: xor v134,v132,v133
xor $t0,$t0,$t1
# Original instruction: sltu v134,$zero,v134
sltu $t0,$zero,$t0
# Original instruction: beq v134,$zero,label_70_else
beq $t0,$zero,label_70_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v135,$fp,-8
addiu $t2,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v136,$fp,-8
addiu $t1,$fp,-8
# Original instruction: lw v136,0(v136)
lw $t1,0($t1)
# Original instruction: li v137,1
li $t0,1
# Original instruction: add v138,v136,v137
add $t0,$t1,$t0
# [[Start Copy]]
# Original instruction: sw v138,0(v135)
sw $t0,0($t2)
# Copy End
# Original instruction: j label_71_end
j label_71_end
label_70_else:
label_71_end:
# Original instruction: la v140,a33
la $t0,a33
# Original instruction: lb v140,0(v140)
lb $t0,0($t0)
# Original instruction: la v141,empty
la $t1,empty
# Original instruction: lb v141,0(v141)
lb $t1,0($t1)
# Original instruction: xor v142,v140,v141
xor $t0,$t0,$t1
# Original instruction: sltu v142,$zero,v142
sltu $t0,$zero,$t0
# Original instruction: beq v142,$zero,label_72_else
beq $t0,$zero,label_72_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v143,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: addiu v144,$fp,-8
addiu $t2,$fp,-8
# Original instruction: lw v144,0(v144)
lw $t2,0($t2)
# Original instruction: li v145,1
li $t0,1
# Original instruction: add v146,v144,v145
add $t0,$t2,$t0
# [[Start Copy]]
# Original instruction: sw v146,0(v143)
sw $t0,0($t1)
# Copy End
# Original instruction: j label_73_end
j label_73_end
label_72_else:
label_73_end:
# Original instruction: addiu v148,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v148,0(v148)
lw $t0,0($t0)
# Original instruction: li v149,9
li $t1,9
# Original instruction: xor v150,v148,v149
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v150,v150,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v150,$zero,label_74_else
beq $t0,$zero,label_74_else
# Original instruction: li v151,1
li $t0,1
# Original instruction: sw v151,4($fp)
sw $t0,4($fp)
# Original instruction: j label_75_end
j label_75_end
label_74_else:
# Original instruction: li v152,0
li $t0,0
# Original instruction: sw v152,4($fp)
sw $t0,4($fp)
label_75_end:
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

.text
set:
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
# Original instruction: addiu v153,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v154,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v154,0(v153)
sw $t1,0($t0)
# Copy End
# Original instruction: addiu v156,$fp,16
addiu $t1,$fp,16
# Original instruction: lb v156,0(v156)
lb $t1,0($t1)
# Original instruction: la v157,label_10_
la $t0,label_10_
# Original instruction: lb v157,0(v157)
lb $t0,0($t0)
# Original instruction: xor v158,v156,v157
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v158,v158,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v158,$zero,label_77_else
beq $t0,$zero,label_77_else
# Original instruction: addiu v159,$fp,12
addiu $t1,$fp,12
# Original instruction: lw v159,0(v159)
lw $t1,0($t1)
# Original instruction: li v160,1
li $t0,1
# Original instruction: xor v161,v159,v160
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v161,v161,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v161,$zero,label_79_else
beq $t0,$zero,label_79_else
# Original instruction: la v162,a11
la $t1,a11
# Original instruction: lb v162,0(v162)
lb $t1,0($t1)
# Original instruction: la v163,empty
la $t0,empty
# Original instruction: lb v163,0(v163)
lb $t0,0($t0)
# Original instruction: xor v164,v162,v163
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v164,v164,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v164,$zero,label_81_else
beq $t0,$zero,label_81_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v165,a11
la $t1,a11
# [[Get VAL]]
# Original instruction: addiu v166,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v166,0(v166)
lb $t0,0($t0)
# [[Start Copy]]
# Original instruction: sb v166,0(v165)
sb $t0,0($t1)
# Copy End
# Original instruction: j label_82_end
j label_82_end
label_81_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v168,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v169,0
li $t0,0
# Original instruction: li v170,1
li $t2,1
# Original instruction: sub v171,v169,v170
sub $t0,$t0,$t2
# [[Start Copy]]
# Original instruction: sw v171,0(v168)
sw $t0,0($t1)
# Copy End
label_82_end:
# Original instruction: j label_80_end
j label_80_end
label_79_else:
# Original instruction: addiu v173,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v173,0(v173)
lw $t0,0($t0)
# Original instruction: li v174,2
li $t1,2
# Original instruction: xor v175,v173,v174
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v175,v175,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v175,$zero,label_83_else
beq $t0,$zero,label_83_else
# Original instruction: la v176,a12
la $t1,a12
# Original instruction: lb v176,0(v176)
lb $t1,0($t1)
# Original instruction: la v177,empty
la $t0,empty
# Original instruction: lb v177,0(v177)
lb $t0,0($t0)
# Original instruction: xor v178,v176,v177
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v178,v178,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v178,$zero,label_85_else
beq $t0,$zero,label_85_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v179,a12
la $t0,a12
# [[Get VAL]]
# Original instruction: addiu v180,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v180,0(v180)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v180,0(v179)
sb $t1,0($t0)
# Copy End
# Original instruction: j label_86_end
j label_86_end
label_85_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v182,$fp,-8
addiu $t2,$fp,-8
# [[Get VAL]]
# Original instruction: li v183,0
li $t0,0
# Original instruction: li v184,1
li $t1,1
# Original instruction: sub v185,v183,v184
sub $t0,$t0,$t1
# [[Start Copy]]
# Original instruction: sw v185,0(v182)
sw $t0,0($t2)
# Copy End
label_86_end:
# Original instruction: j label_84_end
j label_84_end
label_83_else:
# Original instruction: addiu v187,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v187,0(v187)
lw $t0,0($t0)
# Original instruction: li v188,3
li $t1,3
# Original instruction: xor v189,v187,v188
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v189,v189,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v189,$zero,label_87_else
beq $t0,$zero,label_87_else
# Original instruction: la v190,a13
la $t1,a13
# Original instruction: lb v190,0(v190)
lb $t1,0($t1)
# Original instruction: la v191,empty
la $t0,empty
# Original instruction: lb v191,0(v191)
lb $t0,0($t0)
# Original instruction: xor v192,v190,v191
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v192,v192,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v192,$zero,label_89_else
beq $t0,$zero,label_89_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v193,a13
la $t0,a13
# [[Get VAL]]
# Original instruction: addiu v194,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v194,0(v194)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v194,0(v193)
sb $t1,0($t0)
# Copy End
# Original instruction: j label_90_end
j label_90_end
label_89_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v196,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v197,0
li $t0,0
# Original instruction: li v198,1
li $t2,1
# Original instruction: sub v199,v197,v198
sub $t0,$t0,$t2
# [[Start Copy]]
# Original instruction: sw v199,0(v196)
sw $t0,0($t1)
# Copy End
label_90_end:
# Original instruction: j label_88_end
j label_88_end
label_87_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v201,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v202,0
li $t1,0
# [[Start Copy]]
# Original instruction: sw v202,0(v201)
sw $t1,0($t0)
# Copy End
label_88_end:
label_84_end:
label_80_end:
# Original instruction: j label_78_end
j label_78_end
label_77_else:
# Original instruction: addiu v204,$fp,16
addiu $t0,$fp,16
# Original instruction: lb v204,0(v204)
lb $t0,0($t0)
# Original instruction: la v205,label_11_
la $t1,label_11_
# Original instruction: lb v205,0(v205)
lb $t1,0($t1)
# Original instruction: xor v206,v204,v205
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v206,v206,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v206,$zero,label_91_else
beq $t0,$zero,label_91_else
# Original instruction: addiu v207,$fp,12
addiu $t1,$fp,12
# Original instruction: lw v207,0(v207)
lw $t1,0($t1)
# Original instruction: li v208,1
li $t0,1
# Original instruction: xor v209,v207,v208
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v209,v209,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v209,$zero,label_93_else
beq $t0,$zero,label_93_else
# Original instruction: la v210,a21
la $t0,a21
# Original instruction: lb v210,0(v210)
lb $t0,0($t0)
# Original instruction: la v211,empty
la $t1,empty
# Original instruction: lb v211,0(v211)
lb $t1,0($t1)
# Original instruction: xor v212,v210,v211
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v212,v212,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v212,$zero,label_95_else
beq $t0,$zero,label_95_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v213,a21
la $t0,a21
# [[Get VAL]]
# Original instruction: addiu v214,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v214,0(v214)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v214,0(v213)
sb $t1,0($t0)
# Copy End
# Original instruction: j label_96_end
j label_96_end
label_95_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v216,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v217,0
li $t0,0
# Original instruction: li v218,1
li $t2,1
# Original instruction: sub v219,v217,v218
sub $t0,$t0,$t2
# [[Start Copy]]
# Original instruction: sw v219,0(v216)
sw $t0,0($t1)
# Copy End
label_96_end:
# Original instruction: j label_94_end
j label_94_end
label_93_else:
# Original instruction: addiu v221,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v221,0(v221)
lw $t0,0($t0)
# Original instruction: li v222,2
li $t1,2
# Original instruction: xor v223,v221,v222
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v223,v223,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v223,$zero,label_97_else
beq $t0,$zero,label_97_else
# Original instruction: la v224,a22
la $t0,a22
# Original instruction: lb v224,0(v224)
lb $t0,0($t0)
# Original instruction: la v225,empty
la $t1,empty
# Original instruction: lb v225,0(v225)
lb $t1,0($t1)
# Original instruction: xor v226,v224,v225
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v226,v226,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v226,$zero,label_99_else
beq $t0,$zero,label_99_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v227,a22
la $t1,a22
# [[Get VAL]]
# Original instruction: addiu v228,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v228,0(v228)
lb $t0,0($t0)
# [[Start Copy]]
# Original instruction: sb v228,0(v227)
sb $t0,0($t1)
# Copy End
# Original instruction: j label_100_end
j label_100_end
label_99_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v230,$fp,-8
addiu $t2,$fp,-8
# [[Get VAL]]
# Original instruction: li v231,0
li $t1,0
# Original instruction: li v232,1
li $t0,1
# Original instruction: sub v233,v231,v232
sub $t0,$t1,$t0
# [[Start Copy]]
# Original instruction: sw v233,0(v230)
sw $t0,0($t2)
# Copy End
label_100_end:
# Original instruction: j label_98_end
j label_98_end
label_97_else:
# Original instruction: addiu v235,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v235,0(v235)
lw $t0,0($t0)
# Original instruction: li v236,3
li $t1,3
# Original instruction: xor v237,v235,v236
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v237,v237,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v237,$zero,label_101_else
beq $t0,$zero,label_101_else
# Original instruction: la v238,a23
la $t1,a23
# Original instruction: lb v238,0(v238)
lb $t1,0($t1)
# Original instruction: la v239,empty
la $t0,empty
# Original instruction: lb v239,0(v239)
lb $t0,0($t0)
# Original instruction: xor v240,v238,v239
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v240,v240,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v240,$zero,label_103_else
beq $t0,$zero,label_103_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v241,a23
la $t1,a23
# [[Get VAL]]
# Original instruction: addiu v242,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v242,0(v242)
lb $t0,0($t0)
# [[Start Copy]]
# Original instruction: sb v242,0(v241)
sb $t0,0($t1)
# Copy End
# Original instruction: j label_104_end
j label_104_end
label_103_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v244,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v245,0
li $t0,0
# Original instruction: li v246,1
li $t2,1
# Original instruction: sub v247,v245,v246
sub $t0,$t0,$t2
# [[Start Copy]]
# Original instruction: sw v247,0(v244)
sw $t0,0($t1)
# Copy End
label_104_end:
# Original instruction: j label_102_end
j label_102_end
label_101_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v249,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v250,0
li $t0,0
# [[Start Copy]]
# Original instruction: sw v250,0(v249)
sw $t0,0($t1)
# Copy End
label_102_end:
label_98_end:
label_94_end:
# Original instruction: j label_92_end
j label_92_end
label_91_else:
# Original instruction: addiu v252,$fp,16
addiu $t1,$fp,16
# Original instruction: lb v252,0(v252)
lb $t1,0($t1)
# Original instruction: la v253,label_12_
la $t0,label_12_
# Original instruction: lb v253,0(v253)
lb $t0,0($t0)
# Original instruction: xor v254,v252,v253
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v254,v254,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v254,$zero,label_105_else
beq $t0,$zero,label_105_else
# Original instruction: addiu v255,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v255,0(v255)
lw $t0,0($t0)
# Original instruction: li v256,1
li $t1,1
# Original instruction: xor v257,v255,v256
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v257,v257,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v257,$zero,label_107_else
beq $t0,$zero,label_107_else
# Original instruction: la v258,a31
la $t1,a31
# Original instruction: lb v258,0(v258)
lb $t1,0($t1)
# Original instruction: la v259,empty
la $t0,empty
# Original instruction: lb v259,0(v259)
lb $t0,0($t0)
# Original instruction: xor v260,v258,v259
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v260,v260,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v260,$zero,label_109_else
beq $t0,$zero,label_109_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v261,a31
la $t0,a31
# [[Get VAL]]
# Original instruction: addiu v262,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v262,0(v262)
lb $t1,0($t1)
# [[Start Copy]]
# Original instruction: sb v262,0(v261)
sb $t1,0($t0)
# Copy End
# Original instruction: j label_110_end
j label_110_end
label_109_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v264,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v265,0
li $t0,0
# Original instruction: li v266,1
li $t2,1
# Original instruction: sub v267,v265,v266
sub $t0,$t0,$t2
# [[Start Copy]]
# Original instruction: sw v267,0(v264)
sw $t0,0($t1)
# Copy End
label_110_end:
# Original instruction: j label_108_end
j label_108_end
label_107_else:
# Original instruction: addiu v269,$fp,12
addiu $t1,$fp,12
# Original instruction: lw v269,0(v269)
lw $t1,0($t1)
# Original instruction: li v270,2
li $t0,2
# Original instruction: xor v271,v269,v270
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v271,v271,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v271,$zero,label_111_else
beq $t0,$zero,label_111_else
# Original instruction: la v272,a32
la $t0,a32
# Original instruction: lb v272,0(v272)
lb $t0,0($t0)
# Original instruction: la v273,empty
la $t1,empty
# Original instruction: lb v273,0(v273)
lb $t1,0($t1)
# Original instruction: xor v274,v272,v273
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v274,v274,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v274,$zero,label_113_else
beq $t0,$zero,label_113_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v275,a32
la $t1,a32
# [[Get VAL]]
# Original instruction: addiu v276,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v276,0(v276)
lb $t0,0($t0)
# [[Start Copy]]
# Original instruction: sb v276,0(v275)
sb $t0,0($t1)
# Copy End
# Original instruction: j label_114_end
j label_114_end
label_113_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v278,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v279,0
li $t2,0
# Original instruction: li v280,1
li $t0,1
# Original instruction: sub v281,v279,v280
sub $t0,$t2,$t0
# [[Start Copy]]
# Original instruction: sw v281,0(v278)
sw $t0,0($t1)
# Copy End
label_114_end:
# Original instruction: j label_112_end
j label_112_end
label_111_else:
# Original instruction: addiu v283,$fp,12
addiu $t1,$fp,12
# Original instruction: lw v283,0(v283)
lw $t1,0($t1)
# Original instruction: li v284,3
li $t0,3
# Original instruction: xor v285,v283,v284
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v285,v285,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v285,$zero,label_115_else
beq $t0,$zero,label_115_else
# Original instruction: la v286,a33
la $t1,a33
# Original instruction: lb v286,0(v286)
lb $t1,0($t1)
# Original instruction: la v287,empty
la $t0,empty
# Original instruction: lb v287,0(v287)
lb $t0,0($t0)
# Original instruction: xor v288,v286,v287
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v288,v288,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v288,$zero,label_117_else
beq $t0,$zero,label_117_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v289,a33
la $t1,a33
# [[Get VAL]]
# Original instruction: addiu v290,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v290,0(v290)
lb $t0,0($t0)
# [[Start Copy]]
# Original instruction: sb v290,0(v289)
sb $t0,0($t1)
# Copy End
# Original instruction: j label_118_end
j label_118_end
label_117_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v292,$fp,-8
addiu $t2,$fp,-8
# [[Get VAL]]
# Original instruction: li v293,0
li $t0,0
# Original instruction: li v294,1
li $t1,1
# Original instruction: sub v295,v293,v294
sub $t0,$t0,$t1
# [[Start Copy]]
# Original instruction: sw v295,0(v292)
sw $t0,0($t2)
# Copy End
label_118_end:
# Original instruction: j label_116_end
j label_116_end
label_115_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v297,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v298,0
li $t0,0
# [[Start Copy]]
# Original instruction: sw v298,0(v297)
sw $t0,0($t1)
# Copy End
label_116_end:
label_112_end:
label_108_end:
# Original instruction: j label_106_end
j label_106_end
label_105_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v300,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v301,0
li $t1,0
# [[Start Copy]]
# Original instruction: sw v301,0(v300)
sw $t1,0($t0)
# Copy End
label_106_end:
label_92_end:
label_78_end:
# Original instruction: addiu v303,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v303,0(v303)
lw $t0,0($t0)
# Original instruction: sw v303,4($fp)
sw $t0,4($fp)
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

.text
printGame:
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
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@67424e82
# Original instruction: la v304,label_13_
la $t0,label_13_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v304,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@67424e82 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@42110406
# Original instruction: la v305,label_14_
la $t0,label_14_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v305,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@42110406 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@531d72ca
# Original instruction: la v306,label_15_
la $t0,label_15_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v306,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@531d72ca ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@22d8cfe0
# Original instruction: la v307,label_16_
la $t0,label_16_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v307,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@22d8cfe0 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v308,a11
la $t0,a11
# Original instruction: lb v308,0(v308)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v308,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@579bb367
# Original instruction: la v309,label_17_
la $t0,label_17_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v309,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@579bb367 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v310,a12
la $t0,a12
# Original instruction: lb v310,0(v310)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v310,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@1de0aca6
# Original instruction: la v311,label_17_
la $t0,label_17_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v311,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@1de0aca6 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v312,a13
la $t0,a13
# Original instruction: lb v312,0(v312)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v312,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@255316f2
# Original instruction: la v313,label_18_
la $t0,label_18_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v313,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@255316f2 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@41906a77
# Original instruction: la v314,label_15_
la $t0,label_15_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v314,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@41906a77 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@4b9af9a9
# Original instruction: la v315,label_19_
la $t0,label_19_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v315,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@4b9af9a9 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v316,a21
la $t0,a21
# Original instruction: lb v316,0(v316)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v316,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5387f9e0
# Original instruction: la v317,label_17_
la $t0,label_17_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v317,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5387f9e0 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v318,a22
la $t0,a22
# Original instruction: lb v318,0(v318)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v318,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@6e5e91e4
# Original instruction: la v319,label_17_
la $t0,label_17_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v319,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@6e5e91e4 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v320,a23
la $t0,a23
# Original instruction: lb v320,0(v320)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v320,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@2cdf8d8a
# Original instruction: la v321,label_18_
la $t0,label_18_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v321,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@2cdf8d8a ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@30946e09
# Original instruction: la v322,label_15_
la $t0,label_15_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v322,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@30946e09 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5cb0d902
# Original instruction: la v323,label_20_
la $t0,label_20_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v323,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5cb0d902 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v324,a31
la $t0,a31
# Original instruction: lb v324,0(v324)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v324,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@46fbb2c1
# Original instruction: la v325,label_17_
la $t0,label_17_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v325,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@46fbb2c1 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v326,a32
la $t0,a32
# Original instruction: lb v326,0(v326)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v326,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@1698c449
# Original instruction: la v327,label_17_
la $t0,label_17_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v327,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@1698c449 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v328,a33
la $t0,a33
# Original instruction: lb v328,0(v328)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v328,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5ef04b5
# Original instruction: la v329,label_18_
la $t0,label_18_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v329,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5ef04b5 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5f4da5c3
# Original instruction: la v330,label_15_
la $t0,label_15_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v330,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5f4da5c3 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@443b7951
# Original instruction: la v331,label_13_
la $t0,label_13_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v331,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@443b7951 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
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

.text
printWinner:
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
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@14514713
# Original instruction: la v332,label_21_
la $t0,label_21_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v332,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@14514713 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v333,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v333,0(v333)
lw $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v333,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@69663380
# Original instruction: la v334,label_22_
la $t0,label_22_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v334,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@69663380 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
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

.text
switchPlayer:
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
# Original instruction: addiu v335,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v335,0(v335)
lw $t0,0($t0)
# Original instruction: li v336,1
li $t1,1
# Original instruction: xor v337,v335,v336
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v337,v337,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v337,$zero,label_121_else
beq $t0,$zero,label_121_else
# Original instruction: li v338,2
li $t0,2
# Original instruction: sw v338,4($fp)
sw $t0,4($fp)
# Original instruction: j label_122_end
j label_122_end
label_121_else:
# Original instruction: li v339,1
li $t0,1
# Original instruction: sw v339,4($fp)
sw $t0,4($fp)
label_122_end:
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

.text
get_mark:
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
# Original instruction: addiu v340,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v340,0(v340)
lw $t0,0($t0)
# Original instruction: li v341,1
li $t1,1
# Original instruction: xor v342,v340,v341
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v342,v342,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v342,$zero,label_123_else
beq $t0,$zero,label_123_else
# Original instruction: la v343,label_23_
la $t0,label_23_
# Original instruction: lb v343,0(v343)
lb $t0,0($t0)
# Original instruction: sb v343,4($fp)
sb $t0,4($fp)
# Original instruction: j label_124_end
j label_124_end
label_123_else:
# Original instruction: la v344,label_24_
la $t0,label_24_
# Original instruction: lb v344,0(v344)
lb $t0,0($t0)
# Original instruction: sb v344,4($fp)
sb $t0,4($fp)
label_124_end:
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

.text
selectmove:
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
# Original instruction: addiu $sp,$fp,-24
addiu $sp,$fp,-24
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v345,$fp,-16
addiu $t0,$fp,-16
# [[Get VAL]]
# Original instruction: li v346,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v346,0(v345)
sw $t1,0($t0)
# Copy End
label_125_while:
# Original instruction: addiu v348,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v348,0(v348)
lw $t0,0($t0)
# Original instruction: beq v348,$zero,label_126_end
beq $t0,$zero,label_126_end
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5b37e0d2
# Original instruction: la v349,label_21_
la $t0,label_21_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v349,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5b37e0d2 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v350,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v350,0(v350)
lw $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v350,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@4459eb14
# Original instruction: la v351,label_25_
la $t0,label_25_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v351,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@4459eb14 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v352,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Execute read_c
# [[[Reserver Stack size for Return VAL]]]: 1
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_c
jal read_c
# Original instruction: lb $v0,0($sp)
lb $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From read_c
# [[Start Copy]]
# Original instruction: sb $v0,0(v352)
sb $v0,0($t0)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v354,$fp,-12
addiu $t0,$fp,-12
# [[Get VAL]]
# Execute read_i
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: lw $v0,0($sp)
lw $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From read_i
# [[Start Copy]]
# Original instruction: sw $v0,0(v354)
sw $v0,0($t0)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v356,$fp,-24
addiu $t0,$fp,-24
# [[Get VAL]]
# Execute get_mark
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v357,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v357,0(v357)
lw $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v357,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: INT ended
# [[[Reserver Stack size for Return VAL]]]: 1
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal get_mark
jal get_mark
# Original instruction: lb $v0,0($sp)
lb $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From get_mark
# [[Start Copy]]
# Original instruction: sb $v0,0(v356)
sb $v0,0($t0)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v359,$fp,-20
addiu $t0,$fp,-20
# [[Get VAL]]
# Execute set
# [[[Retrieving arg val]]]: CHAR
# Original instruction: addiu v360,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lb v360,0(v360)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v360,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v361,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v361,0(v361)
lw $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v361,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: INT ended
# [[[Retrieving arg val]]]: CHAR
# Original instruction: addiu v362,$fp,-24
addiu $t0,$fp,-24
# Original instruction: lb v362,0(v362)
lb $t0,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v362,0($sp)
sb $t0,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# [[[Reserver Stack size for Return VAL]]]: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal set
jal set
# Original instruction: lw $v0,0($sp)
lw $v0,0($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# Return From set
# [[Start Copy]]
# Original instruction: sw $v0,0(v359)
sw $v0,0($t0)
# Copy End
# Original instruction: addiu v364,$fp,-20
addiu $t1,$fp,-20
# Original instruction: lw v364,0(v364)
lw $t1,0($t1)
# Original instruction: li v365,0
li $t0,0
# Original instruction: xor v366,v364,v365
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v366,v366,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v366,$zero,label_128_else
beq $t0,$zero,label_128_else
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5a2e4553
# Original instruction: la v367,label_26_
la $t0,label_26_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v367,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5a2e4553 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Original instruction: j label_129_end
j label_129_end
label_128_else:
# Original instruction: addiu v368,$fp,-20
addiu $t1,$fp,-20
# Original instruction: lw v368,0(v368)
lw $t1,0($t1)
# Original instruction: li v369,0
li $t0,0
# Original instruction: li v370,1
li $t2,1
# Original instruction: sub v371,v369,v370
sub $t0,$t0,$t2
# Original instruction: xor v372,v368,v371
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v372,v372,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v372,$zero,label_130_else
beq $t0,$zero,label_130_else
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@28c97a5
# Original instruction: la v373,label_27_
la $t0,label_27_
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v373,0($sp)
sw $t0,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@28c97a5 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Original instruction: j label_131_end
j label_131_end
label_130_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v374,$fp,-16
addiu $t0,$fp,-16
# [[Get VAL]]
# Original instruction: li v375,0
li $t1,0
# [[Start Copy]]
# Original instruction: sw v375,0(v374)
sw $t1,0($t0)
# Copy End
label_131_end:
label_129_end:
# Original instruction: j label_125_while
j label_125_while
label_126_end:
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

.text
won:
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
# Original instruction: addiu v377,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v378,0
li $t1,0
# [[Start Copy]]
# Original instruction: sw v378,0(v377)
sw $t1,0($t0)
# Copy End
# Original instruction: la v380,a11
la $t1,a11
# Original instruction: lb v380,0(v380)
lb $t1,0($t1)
# Original instruction: addiu v381,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v381,0(v381)
lb $t0,0($t0)
# Original instruction: xor v382,v380,v381
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v382,v382,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v382,$zero,label_132_else
beq $t0,$zero,label_132_else
# Original instruction: la v383,a21
la $t1,a21
# Original instruction: lb v383,0(v383)
lb $t1,0($t1)
# Original instruction: addiu v384,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v384,0(v384)
lb $t0,0($t0)
# Original instruction: xor v385,v383,v384
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v385,v385,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v385,$zero,label_134_else
beq $t0,$zero,label_134_else
# Original instruction: la v386,a31
la $t1,a31
# Original instruction: lb v386,0(v386)
lb $t1,0($t1)
# Original instruction: addiu v387,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v387,0(v387)
lb $t0,0($t0)
# Original instruction: xor v388,v386,v387
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v388,v388,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v388,$zero,label_136_else
beq $t0,$zero,label_136_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v389,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v390,1
li $t0,1
# [[Start Copy]]
# Original instruction: sw v390,0(v389)
sw $t0,0($t1)
# Copy End
# Original instruction: j label_137_end
j label_137_end
label_136_else:
label_137_end:
# Original instruction: j label_135_end
j label_135_end
label_134_else:
# Original instruction: la v392,a22
la $t1,a22
# Original instruction: lb v392,0(v392)
lb $t1,0($t1)
# Original instruction: addiu v393,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v393,0(v393)
lb $t0,0($t0)
# Original instruction: xor v394,v392,v393
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v394,v394,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v394,$zero,label_138_else
beq $t0,$zero,label_138_else
# Original instruction: la v395,a33
la $t1,a33
# Original instruction: lb v395,0(v395)
lb $t1,0($t1)
# Original instruction: addiu v396,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v396,0(v396)
lb $t0,0($t0)
# Original instruction: xor v397,v395,v396
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v397,v397,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v397,$zero,label_140_else
beq $t0,$zero,label_140_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v398,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v399,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v399,0(v398)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_141_end
j label_141_end
label_140_else:
label_141_end:
# Original instruction: j label_139_end
j label_139_end
label_138_else:
# Original instruction: la v401,a12
la $t0,a12
# Original instruction: lb v401,0(v401)
lb $t0,0($t0)
# Original instruction: addiu v402,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v402,0(v402)
lb $t1,0($t1)
# Original instruction: xor v403,v401,v402
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v403,v403,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v403,$zero,label_142_else
beq $t0,$zero,label_142_else
# Original instruction: la v404,a13
la $t1,a13
# Original instruction: lb v404,0(v404)
lb $t1,0($t1)
# Original instruction: addiu v405,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v405,0(v405)
lb $t0,0($t0)
# Original instruction: xor v406,v404,v405
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v406,v406,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v406,$zero,label_144_else
beq $t0,$zero,label_144_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v407,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v408,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v408,0(v407)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_145_end
j label_145_end
label_144_else:
label_145_end:
# Original instruction: j label_143_end
j label_143_end
label_142_else:
label_143_end:
label_139_end:
label_135_end:
# Original instruction: j label_133_end
j label_133_end
label_132_else:
label_133_end:
# Original instruction: la v410,a12
la $t1,a12
# Original instruction: lb v410,0(v410)
lb $t1,0($t1)
# Original instruction: addiu v411,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v411,0(v411)
lb $t0,0($t0)
# Original instruction: xor v412,v410,v411
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v412,v412,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v412,$zero,label_146_else
beq $t0,$zero,label_146_else
# Original instruction: la v413,a22
la $t1,a22
# Original instruction: lb v413,0(v413)
lb $t1,0($t1)
# Original instruction: addiu v414,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v414,0(v414)
lb $t0,0($t0)
# Original instruction: xor v415,v413,v414
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v415,v415,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v415,$zero,label_148_else
beq $t0,$zero,label_148_else
# Original instruction: la v416,a32
la $t1,a32
# Original instruction: lb v416,0(v416)
lb $t1,0($t1)
# Original instruction: addiu v417,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v417,0(v417)
lb $t0,0($t0)
# Original instruction: xor v418,v416,v417
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v418,v418,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v418,$zero,label_150_else
beq $t0,$zero,label_150_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v419,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v420,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v420,0(v419)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_151_end
j label_151_end
label_150_else:
label_151_end:
# Original instruction: j label_149_end
j label_149_end
label_148_else:
label_149_end:
# Original instruction: j label_147_end
j label_147_end
label_146_else:
label_147_end:
# Original instruction: la v422,a13
la $t1,a13
# Original instruction: lb v422,0(v422)
lb $t1,0($t1)
# Original instruction: addiu v423,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v423,0(v423)
lb $t0,0($t0)
# Original instruction: xor v424,v422,v423
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v424,v424,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v424,$zero,label_152_else
beq $t0,$zero,label_152_else
# Original instruction: la v425,a23
la $t1,a23
# Original instruction: lb v425,0(v425)
lb $t1,0($t1)
# Original instruction: addiu v426,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v426,0(v426)
lb $t0,0($t0)
# Original instruction: xor v427,v425,v426
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v427,v427,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v427,$zero,label_154_else
beq $t0,$zero,label_154_else
# Original instruction: la v428,a33
la $t1,a33
# Original instruction: lb v428,0(v428)
lb $t1,0($t1)
# Original instruction: addiu v429,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v429,0(v429)
lb $t0,0($t0)
# Original instruction: xor v430,v428,v429
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v430,v430,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v430,$zero,label_156_else
beq $t0,$zero,label_156_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v431,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v432,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v432,0(v431)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_157_end
j label_157_end
label_156_else:
label_157_end:
# Original instruction: j label_155_end
j label_155_end
label_154_else:
# Original instruction: la v434,a22
la $t0,a22
# Original instruction: lb v434,0(v434)
lb $t0,0($t0)
# Original instruction: addiu v435,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v435,0(v435)
lb $t1,0($t1)
# Original instruction: xor v436,v434,v435
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v436,v436,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v436,$zero,label_158_else
beq $t0,$zero,label_158_else
# Original instruction: la v437,a31
la $t1,a31
# Original instruction: lb v437,0(v437)
lb $t1,0($t1)
# Original instruction: addiu v438,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v438,0(v438)
lb $t0,0($t0)
# Original instruction: xor v439,v437,v438
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v439,v439,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v439,$zero,label_160_else
beq $t0,$zero,label_160_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v440,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v441,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v441,0(v440)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_161_end
j label_161_end
label_160_else:
label_161_end:
# Original instruction: j label_159_end
j label_159_end
label_158_else:
label_159_end:
label_155_end:
# Original instruction: j label_153_end
j label_153_end
label_152_else:
label_153_end:
# Original instruction: la v443,a21
la $t0,a21
# Original instruction: lb v443,0(v443)
lb $t0,0($t0)
# Original instruction: addiu v444,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v444,0(v444)
lb $t1,0($t1)
# Original instruction: xor v445,v443,v444
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v445,v445,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v445,$zero,label_162_else
beq $t0,$zero,label_162_else
# Original instruction: la v446,a22
la $t1,a22
# Original instruction: lb v446,0(v446)
lb $t1,0($t1)
# Original instruction: addiu v447,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v447,0(v447)
lb $t0,0($t0)
# Original instruction: xor v448,v446,v447
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v448,v448,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v448,$zero,label_164_else
beq $t0,$zero,label_164_else
# Original instruction: la v449,a23
la $t1,a23
# Original instruction: lb v449,0(v449)
lb $t1,0($t1)
# Original instruction: addiu v450,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v450,0(v450)
lb $t0,0($t0)
# Original instruction: xor v451,v449,v450
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v451,v451,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v451,$zero,label_166_else
beq $t0,$zero,label_166_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v452,$fp,-8
addiu $t0,$fp,-8
# [[Get VAL]]
# Original instruction: li v453,1
li $t1,1
# [[Start Copy]]
# Original instruction: sw v453,0(v452)
sw $t1,0($t0)
# Copy End
# Original instruction: j label_167_end
j label_167_end
label_166_else:
label_167_end:
# Original instruction: j label_165_end
j label_165_end
label_164_else:
label_165_end:
# Original instruction: j label_163_end
j label_163_end
label_162_else:
label_163_end:
# Original instruction: la v455,a31
la $t1,a31
# Original instruction: lb v455,0(v455)
lb $t1,0($t1)
# Original instruction: addiu v456,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v456,0(v456)
lb $t0,0($t0)
# Original instruction: xor v457,v455,v456
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v457,v457,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v457,$zero,label_168_else
beq $t0,$zero,label_168_else
# Original instruction: la v458,a32
la $t0,a32
# Original instruction: lb v458,0(v458)
lb $t0,0($t0)
# Original instruction: addiu v459,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v459,0(v459)
lb $t1,0($t1)
# Original instruction: xor v460,v458,v459
xor $t0,$t0,$t1
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v460,v460,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v460,$zero,label_170_else
beq $t0,$zero,label_170_else
# Original instruction: la v461,a33
la $t1,a33
# Original instruction: lb v461,0(v461)
lb $t1,0($t1)
# Original instruction: addiu v462,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v462,0(v462)
lb $t0,0($t0)
# Original instruction: xor v463,v461,v462
xor $t0,$t1,$t0
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v463,v463,$t0
sltu $t0,$t0,$t0
# Original instruction: beq v463,$zero,label_172_else
beq $t0,$zero,label_172_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v464,$fp,-8
addiu $t1,$fp,-8
# [[Get VAL]]
# Original instruction: li v465,1
li $t0,1
# [[Start Copy]]
# Original instruction: sw v465,0(v464)
sw $t0,0($t1)
# Copy End
# Original instruction: j label_173_end
j label_173_end
label_172_else:
label_173_end:
# Original instruction: j label_171_end
j label_171_end
label_170_else:
label_171_end:
# Original instruction: j label_169_end
j label_169_end
label_168_else:
label_169_end:
# Original instruction: addiu v467,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v467,0(v467)
lw $t0,0($t0)
# Original instruction: sw v467,4($fp)
sw $t0,4($fp)
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

