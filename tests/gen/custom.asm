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

.data
# Allocated labels for virtual registers
label_242_v23:
.space 4
label_192_v6:
.space 4
label_262_v29:
.space 4
label_278_v34:
.space 4
label_231_v20:
.space 4
label_261_v30:
.space 4
label_183_v3:
.space 4
label_270_v32:
.space 4
label_222_v16:
.space 4
label_274_v33:
.space 4
label_244_v24:
.space 4
label_220_v15:
.space 4
label_213_v13:
.space 4
label_246_v25:
.space 4
label_210_v11:
.space 4
label_206_v10:
.space 4
label_216_v14:
.space 4
label_269_v31:
.space 4
label_277_v35:
.space 4
label_237_v21:
.space 4
label_184_v2:
.space 4
label_225_v18:
.space 4
label_188_v4:
.space 4
label_180_v0:
.space 4
label_187_v5:
.space 4
label_238_v22:
.space 4
label_179_v1:
.space 4
label_202_v8:
.space 4
label_258_v28:
.space 4
label_214_v12:
.space 4
label_253_v26:
.space 4
label_196_v7:
.space 4
label_226_v17:
.space 4
label_201_v9:
.space 4
label_232_v19:
.space 4
label_254_v27:
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
# Original instruction: addiu $sp,$fp,-20
addiu $sp,$fp,-20
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v0,empty
la $t5,empty
la $t0,label_180_v0
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v1,label_28_
la $t5,label_28_
la $t0,label_179_v1
sw $t5,0($t0)
# Original instruction: lb v1,0(v1)
la $t4,label_179_v1
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_179_v1
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v1,0(v0)
la $t5,label_179_v1
lw $t5,0($t5)
la $t4,label_180_v0
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v2,$fp,-8
addiu $t5,$fp,-8
la $t0,label_184_v2
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v3,1
li $t5,1
la $t0,label_183_v3
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v3,0(v2)
la $t5,label_183_v3
lw $t5,0($t5)
la $t4,label_184_v2
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: addiu v4,$fp,-12
addiu $t5,$fp,-12
la $t0,label_188_v4
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v5,1
li $t5,1
la $t0,label_187_v5
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v5,0(v4)
la $t5,label_187_v5
lw $t5,0($t5)
la $t4,label_188_v4
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_36_while:
# Original instruction: addiu v6,$fp,-8
addiu $t5,$fp,-8
la $t0,label_192_v6
sw $t5,0($t0)
# Original instruction: lw v6,0(v6)
la $t4,label_192_v6
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_192_v6
sw $t4,0($t0)
# Original instruction: beq v6,$zero,label_37_end
la $t5,label_192_v6
lw $t5,0($t5)
beq $t5,$zero,label_37_end
# Execute selectmove
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v7,$fp,-12
addiu $t5,$fp,-12
la $t0,label_196_v7
sw $t5,0($t0)
# Original instruction: lw v7,0(v7)
la $t4,label_196_v7
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_196_v7
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v7,0($sp)
la $t5,label_196_v7
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal selectmove
jal selectmove
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From selectmove
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v8,$fp,-16
addiu $t5,$fp,-16
la $t0,label_202_v8
sw $t5,0($t0)
# [[Get VAL]]
# Execute get_mark
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v9,$fp,-12
addiu $t5,$fp,-12
la $t0,label_201_v9
sw $t5,0($t0)
# Original instruction: lw v9,0(v9)
la $t4,label_201_v9
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_201_v9
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v9,0($sp)
la $t5,label_201_v9
lw $t5,0($t5)
sw $t5,0($sp)
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
# Original instruction: sb $v0,0(v8)
la $t5,label_202_v8
lw $t5,0($t5)
sb $v0,0($t5)
# Copy End
# Execute printGame
# Original instruction: jal printGame
jal printGame
# Return From printGame
# Execute won
# [[[Retrieving arg val]]]: CHAR
# Original instruction: addiu v10,$fp,-16
addiu $t5,$fp,-16
la $t0,label_206_v10
sw $t5,0($t0)
# Original instruction: lb v10,0(v10)
la $t4,label_206_v10
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_206_v10
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v10,0($sp)
la $t5,label_206_v10
lw $t5,0($t5)
sb $t5,0($sp)
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
# Original instruction: addiu v11,$fp,-12
addiu $t5,$fp,-12
la $t0,label_210_v11
sw $t5,0($t0)
# Original instruction: lw v11,0(v11)
la $t4,label_210_v11
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_210_v11
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v11,0($sp)
la $t5,label_210_v11
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal printWinner
jal printWinner
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From printWinner
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v12,$fp,-8
addiu $t5,$fp,-8
la $t0,label_214_v12
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v13,0
li $t5,0
la $t0,label_213_v13
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v13,0(v12)
la $t5,label_213_v13
lw $t5,0($t5)
la $t4,label_214_v12
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: li v14,1
li $t5,1
la $t0,label_216_v14
sw $t5,0($t0)
# Original instruction: xor v15,$v0,v14
la $t5,label_216_v14
lw $t5,0($t5)
xor $t4,$v0,$t5
la $t0,label_220_v15
sw $t4,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v15,v15,$t0
la $t4,label_220_v15
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_220_v15
sw $t4,0($t0)
# Original instruction: beq v15,$zero,label_45_else
la $t5,label_220_v15
lw $t5,0($t5)
beq $t5,$zero,label_45_else
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@3eb07fd3
# Original instruction: la v16,label_29_
la $t5,label_29_
la $t0,label_222_v16
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v16,0($sp)
la $t5,label_222_v16
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@3eb07fd3 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v17,$fp,-8
addiu $t5,$fp,-8
la $t0,label_226_v17
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v18,0
li $t5,0
la $t0,label_225_v18
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v18,0(v17)
la $t5,label_225_v18
lw $t5,0($t5)
la $t4,label_226_v17
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_46_end
j label_46_end
label_45_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v19,$fp,-12
addiu $t5,$fp,-12
la $t0,label_232_v19
sw $t5,0($t0)
# [[Get VAL]]
# Execute switchPlayer
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v20,$fp,-12
addiu $t5,$fp,-12
la $t0,label_231_v20
sw $t5,0($t0)
# Original instruction: lw v20,0(v20)
la $t4,label_231_v20
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_231_v20
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v20,0($sp)
la $t5,label_231_v20
lw $t5,0($t5)
sw $t5,0($sp)
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
# Original instruction: sw $v0,0(v19)
la $t5,label_232_v19
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
label_46_end:
label_42_end:
# Original instruction: addiu v21,$fp,-8
addiu $t5,$fp,-8
la $t0,label_237_v21
sw $t5,0($t0)
# Original instruction: lw v21,0(v21)
la $t4,label_237_v21
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_237_v21
sw $t4,0($t0)
# Original instruction: li v22,0
li $t5,0
la $t0,label_238_v22
sw $t5,0($t0)
# Original instruction: xor v23,v21,v22
la $t5,label_237_v21
lw $t5,0($t5)
la $t4,label_238_v22
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_242_v23
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v23,v23,$t0
la $t4,label_242_v23
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_242_v23
sw $t4,0($t0)
# Original instruction: beq v23,$zero,label_49_else
la $t5,label_242_v23
lw $t5,0($t5)
beq $t5,$zero,label_49_else
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@506c589e
# Original instruction: la v24,label_30_
la $t5,label_30_
la $t0,label_244_v24
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v24,0($sp)
la $t5,label_244_v24
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@506c589e ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v25,$fp,-20
addiu $t5,$fp,-20
la $t0,label_246_v25
sw $t5,0($t0)
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
# Original instruction: sb $v0,0(v25)
la $t5,label_246_v25
lw $t5,0($t5)
sb $v0,0($t5)
# Copy End
# Original instruction: addiu v26,$fp,-20
addiu $t5,$fp,-20
la $t0,label_253_v26
sw $t5,0($t0)
# Original instruction: lb v26,0(v26)
la $t4,label_253_v26
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_253_v26
sw $t4,0($t0)
# Original instruction: la v27,label_31_
la $t5,label_31_
la $t0,label_254_v27
sw $t5,0($t0)
# Original instruction: lb v27,0(v27)
la $t4,label_254_v27
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_254_v27
sw $t4,0($t0)
# Original instruction: xor v28,v26,v27
la $t5,label_253_v26
lw $t5,0($t5)
la $t4,label_254_v27
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_258_v28
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v28,v28,$t0
la $t4,label_258_v28
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_258_v28
sw $t4,0($t0)
# Original instruction: beq v28,$zero,label_52_else
la $t5,label_258_v28
lw $t5,0($t5)
beq $t5,$zero,label_52_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v29,$fp,-8
addiu $t5,$fp,-8
la $t0,label_262_v29
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v30,1
li $t5,1
la $t0,label_261_v30
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v30,0(v29)
la $t5,label_261_v30
lw $t5,0($t5)
la $t4,label_262_v29
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute reset
# Original instruction: jal reset
jal reset
# Return From reset
# Original instruction: j label_53_end
j label_53_end
label_52_else:
# Original instruction: addiu v31,$fp,-20
addiu $t5,$fp,-20
la $t0,label_269_v31
sw $t5,0($t0)
# Original instruction: lb v31,0(v31)
la $t4,label_269_v31
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_269_v31
sw $t4,0($t0)
# Original instruction: la v32,label_32_
la $t5,label_32_
la $t0,label_270_v32
sw $t5,0($t0)
# Original instruction: lb v32,0(v32)
la $t4,label_270_v32
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_270_v32
sw $t4,0($t0)
# Original instruction: xor v33,v31,v32
la $t5,label_269_v31
lw $t5,0($t5)
la $t4,label_270_v32
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_274_v33
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v33,v33,$t0
la $t4,label_274_v33
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_274_v33
sw $t4,0($t0)
# Original instruction: beq v33,$zero,label_54_else
la $t5,label_274_v33
lw $t5,0($t5)
beq $t5,$zero,label_54_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v34,$fp,-8
addiu $t5,$fp,-8
la $t0,label_278_v34
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v35,1
li $t5,1
la $t0,label_277_v35
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v35,0(v34)
la $t5,label_277_v35
lw $t5,0($t5)
la $t4,label_278_v34
lw $t4,0($t4)
sw $t5,0($t4)
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

.data
# Allocated labels for virtual registers
label_289_v39:
.space 4
label_319_v49:
.space 4
label_283_v37:
.space 4
label_320_v48:
.space 4
label_284_v36:
.space 4
label_313_v47:
.space 4
label_302_v42:
.space 4
label_314_v46:
.space 4
label_295_v41:
.space 4
label_307_v45:
.space 4
label_290_v38:
.space 4
label_325_v51:
.space 4
label_332_v52:
.space 4
label_308_v44:
.space 4
label_296_v40:
.space 4
label_331_v53:
.space 4
label_301_v43:
.space 4
label_326_v50:
.space 4

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
# Original instruction: la v36,a11
la $t5,a11
la $t0,label_284_v36
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v37,empty
la $t5,empty
la $t0,label_283_v37
sw $t5,0($t0)
# Original instruction: lb v37,0(v37)
la $t4,label_283_v37
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_283_v37
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v37,0(v36)
la $t5,label_283_v37
lw $t5,0($t5)
la $t4,label_284_v36
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v38,a12
la $t5,a12
la $t0,label_290_v38
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v39,empty
la $t5,empty
la $t0,label_289_v39
sw $t5,0($t0)
# Original instruction: lb v39,0(v39)
la $t4,label_289_v39
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_289_v39
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v39,0(v38)
la $t5,label_289_v39
lw $t5,0($t5)
la $t4,label_290_v38
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v40,a13
la $t5,a13
la $t0,label_296_v40
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v41,empty
la $t5,empty
la $t0,label_295_v41
sw $t5,0($t0)
# Original instruction: lb v41,0(v41)
la $t4,label_295_v41
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_295_v41
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v41,0(v40)
la $t5,label_295_v41
lw $t5,0($t5)
la $t4,label_296_v40
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v42,a21
la $t5,a21
la $t0,label_302_v42
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v43,empty
la $t5,empty
la $t0,label_301_v43
sw $t5,0($t0)
# Original instruction: lb v43,0(v43)
la $t4,label_301_v43
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_301_v43
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v43,0(v42)
la $t5,label_301_v43
lw $t5,0($t5)
la $t4,label_302_v42
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v44,a22
la $t5,a22
la $t0,label_308_v44
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v45,empty
la $t5,empty
la $t0,label_307_v45
sw $t5,0($t0)
# Original instruction: lb v45,0(v45)
la $t4,label_307_v45
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_307_v45
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v45,0(v44)
la $t5,label_307_v45
lw $t5,0($t5)
la $t4,label_308_v44
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v46,a23
la $t5,a23
la $t0,label_314_v46
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v47,empty
la $t5,empty
la $t0,label_313_v47
sw $t5,0($t0)
# Original instruction: lb v47,0(v47)
la $t4,label_313_v47
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_313_v47
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v47,0(v46)
la $t5,label_313_v47
lw $t5,0($t5)
la $t4,label_314_v46
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v48,a31
la $t5,a31
la $t0,label_320_v48
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v49,empty
la $t5,empty
la $t0,label_319_v49
sw $t5,0($t0)
# Original instruction: lb v49,0(v49)
la $t4,label_319_v49
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_319_v49
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v49,0(v48)
la $t5,label_319_v49
lw $t5,0($t5)
la $t4,label_320_v48
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v50,a32
la $t5,a32
la $t0,label_326_v50
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v51,empty
la $t5,empty
la $t0,label_325_v51
sw $t5,0($t0)
# Original instruction: lb v51,0(v51)
la $t4,label_325_v51
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_325_v51
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v51,0(v50)
la $t5,label_325_v51
lw $t5,0($t5)
la $t4,label_326_v50
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v52,a33
la $t5,a33
la $t0,label_332_v52
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: la v53,empty
la $t5,empty
la $t0,label_331_v53
sw $t5,0($t0)
# Original instruction: lb v53,0(v53)
la $t4,label_331_v53
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_331_v53
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v53,0(v52)
la $t5,label_331_v53
lw $t5,0($t5)
la $t4,label_332_v52
lw $t4,0($t4)
sb $t5,0($t4)
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

.data
# Allocated labels for virtual registers
label_445_v90:
.space 4
label_377_v68:
.space 4
label_348_v58:
.space 4
label_379_v69:
.space 4
label_502_v107:
.space 4
label_446_v87:
.space 4
label_442_v88:
.space 4
label_410_v78:
.space 4
label_486_v102:
.space 4
label_511_v111:
.space 4
label_476_v99:
.space 4
label_498_v106:
.space 4
label_370_v65:
.space 4
label_420_v81:
.space 4
label_392_v72:
.space 4
label_544_v121:
.space 4
label_388_v71:
.space 4
label_423_v83:
.space 4
label_421_v82:
.space 4
label_508_v109:
.space 4
label_487_v103:
.space 4
label_530_v116:
.space 4
label_366_v64:
.space 4
label_358_v59:
.space 4
label_520_v113:
.space 4
label_424_v80:
.space 4
label_531_v117:
.space 4
label_354_v60:
.space 4
label_453_v91:
.space 4
label_539_v119:
.space 4
label_387_v70:
.space 4
label_467_v97:
.space 4
label_365_v63:
.space 4
label_534_v115:
.space 4
label_468_v94:
.space 4
label_436_v86:
.space 4
label_380_v66:
.space 4
label_490_v101:
.space 4
label_464_v95:
.space 4
label_540_v120:
.space 4
label_414_v79:
.space 4
label_489_v104:
.space 4
label_475_v98:
.space 4
label_443_v89:
.space 4
label_409_v77:
.space 4
label_548_v123:
.space 4
label_480_v100:
.space 4
label_465_v96:
.space 4
label_357_v62:
.space 4
label_431_v84:
.space 4
label_533_v118:
.space 4
label_512_v108:
.space 4
label_401_v76:
.space 4
label_343_v56:
.space 4
label_519_v112:
.space 4
label_335_v55:
.space 4
label_458_v93:
.space 4
label_524_v114:
.space 4
label_355_v61:
.space 4
label_398_v74:
.space 4
label_454_v92:
.space 4
label_497_v105:
.space 4
label_509_v110:
.space 4
label_432_v85:
.space 4
label_336_v54:
.space 4
label_399_v75:
.space 4
label_344_v57:
.space 4
label_402_v73:
.space 4
label_546_v122:
.space 4
label_376_v67:
.space 4

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
# Original instruction: addiu v54,$fp,-8
addiu $t5,$fp,-8
la $t0,label_336_v54
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v55,0
li $t5,0
la $t0,label_335_v55
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v55,0(v54)
la $t5,label_335_v55
lw $t5,0($t5)
la $t4,label_336_v54
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: la v56,a11
la $t5,a11
la $t0,label_343_v56
sw $t5,0($t0)
# Original instruction: lb v56,0(v56)
la $t4,label_343_v56
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_343_v56
sw $t4,0($t0)
# Original instruction: la v57,empty
la $t5,empty
la $t0,label_344_v57
sw $t5,0($t0)
# Original instruction: lb v57,0(v57)
la $t4,label_344_v57
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_344_v57
sw $t4,0($t0)
# Original instruction: xor v58,v56,v57
la $t5,label_343_v56
lw $t5,0($t5)
la $t4,label_344_v57
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_348_v58
sw $t3,0($t0)
# Original instruction: sltu v58,$zero,v58
la $t4,label_348_v58
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_348_v58
sw $t4,0($t0)
# Original instruction: beq v58,$zero,label_56_else
la $t5,label_348_v58
lw $t5,0($t5)
beq $t5,$zero,label_56_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v59,$fp,-8
addiu $t5,$fp,-8
la $t0,label_358_v59
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v60,$fp,-8
addiu $t5,$fp,-8
la $t0,label_354_v60
sw $t5,0($t0)
# Original instruction: lw v60,0(v60)
la $t4,label_354_v60
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_354_v60
sw $t4,0($t0)
# Original instruction: li v61,1
li $t5,1
la $t0,label_355_v61
sw $t5,0($t0)
# Original instruction: add v62,v60,v61
la $t5,label_354_v60
lw $t5,0($t5)
la $t4,label_355_v61
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_357_v62
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v62,0(v59)
la $t5,label_357_v62
lw $t5,0($t5)
la $t4,label_358_v59
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_57_end
j label_57_end
label_56_else:
label_57_end:
# Original instruction: la v63,a21
la $t5,a21
la $t0,label_365_v63
sw $t5,0($t0)
# Original instruction: lb v63,0(v63)
la $t4,label_365_v63
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_365_v63
sw $t4,0($t0)
# Original instruction: la v64,empty
la $t5,empty
la $t0,label_366_v64
sw $t5,0($t0)
# Original instruction: lb v64,0(v64)
la $t4,label_366_v64
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_366_v64
sw $t4,0($t0)
# Original instruction: xor v65,v63,v64
la $t5,label_365_v63
lw $t5,0($t5)
la $t4,label_366_v64
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_370_v65
sw $t3,0($t0)
# Original instruction: sltu v65,$zero,v65
la $t4,label_370_v65
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_370_v65
sw $t4,0($t0)
# Original instruction: beq v65,$zero,label_58_else
la $t5,label_370_v65
lw $t5,0($t5)
beq $t5,$zero,label_58_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v66,$fp,-8
addiu $t5,$fp,-8
la $t0,label_380_v66
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v67,$fp,-8
addiu $t5,$fp,-8
la $t0,label_376_v67
sw $t5,0($t0)
# Original instruction: lw v67,0(v67)
la $t4,label_376_v67
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_376_v67
sw $t4,0($t0)
# Original instruction: li v68,1
li $t5,1
la $t0,label_377_v68
sw $t5,0($t0)
# Original instruction: add v69,v67,v68
la $t5,label_376_v67
lw $t5,0($t5)
la $t4,label_377_v68
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_379_v69
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v69,0(v66)
la $t5,label_379_v69
lw $t5,0($t5)
la $t4,label_380_v66
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_59_end
j label_59_end
label_58_else:
label_59_end:
# Original instruction: la v70,a31
la $t5,a31
la $t0,label_387_v70
sw $t5,0($t0)
# Original instruction: lb v70,0(v70)
la $t4,label_387_v70
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_387_v70
sw $t4,0($t0)
# Original instruction: la v71,empty
la $t5,empty
la $t0,label_388_v71
sw $t5,0($t0)
# Original instruction: lb v71,0(v71)
la $t4,label_388_v71
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_388_v71
sw $t4,0($t0)
# Original instruction: xor v72,v70,v71
la $t5,label_387_v70
lw $t5,0($t5)
la $t4,label_388_v71
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_392_v72
sw $t3,0($t0)
# Original instruction: sltu v72,$zero,v72
la $t4,label_392_v72
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_392_v72
sw $t4,0($t0)
# Original instruction: beq v72,$zero,label_60_else
la $t5,label_392_v72
lw $t5,0($t5)
beq $t5,$zero,label_60_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v73,$fp,-8
addiu $t5,$fp,-8
la $t0,label_402_v73
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v74,$fp,-8
addiu $t5,$fp,-8
la $t0,label_398_v74
sw $t5,0($t0)
# Original instruction: lw v74,0(v74)
la $t4,label_398_v74
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_398_v74
sw $t4,0($t0)
# Original instruction: li v75,1
li $t5,1
la $t0,label_399_v75
sw $t5,0($t0)
# Original instruction: add v76,v74,v75
la $t5,label_398_v74
lw $t5,0($t5)
la $t4,label_399_v75
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_401_v76
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v76,0(v73)
la $t5,label_401_v76
lw $t5,0($t5)
la $t4,label_402_v73
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_61_end
j label_61_end
label_60_else:
label_61_end:
# Original instruction: la v77,a12
la $t5,a12
la $t0,label_409_v77
sw $t5,0($t0)
# Original instruction: lb v77,0(v77)
la $t4,label_409_v77
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_409_v77
sw $t4,0($t0)
# Original instruction: la v78,empty
la $t5,empty
la $t0,label_410_v78
sw $t5,0($t0)
# Original instruction: lb v78,0(v78)
la $t4,label_410_v78
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_410_v78
sw $t4,0($t0)
# Original instruction: xor v79,v77,v78
la $t5,label_409_v77
lw $t5,0($t5)
la $t4,label_410_v78
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_414_v79
sw $t3,0($t0)
# Original instruction: sltu v79,$zero,v79
la $t4,label_414_v79
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_414_v79
sw $t4,0($t0)
# Original instruction: beq v79,$zero,label_62_else
la $t5,label_414_v79
lw $t5,0($t5)
beq $t5,$zero,label_62_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v80,$fp,-8
addiu $t5,$fp,-8
la $t0,label_424_v80
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v81,$fp,-8
addiu $t5,$fp,-8
la $t0,label_420_v81
sw $t5,0($t0)
# Original instruction: lw v81,0(v81)
la $t4,label_420_v81
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_420_v81
sw $t4,0($t0)
# Original instruction: li v82,1
li $t5,1
la $t0,label_421_v82
sw $t5,0($t0)
# Original instruction: add v83,v81,v82
la $t5,label_420_v81
lw $t5,0($t5)
la $t4,label_421_v82
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_423_v83
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v83,0(v80)
la $t5,label_423_v83
lw $t5,0($t5)
la $t4,label_424_v80
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_63_end
j label_63_end
label_62_else:
label_63_end:
# Original instruction: la v84,a22
la $t5,a22
la $t0,label_431_v84
sw $t5,0($t0)
# Original instruction: lb v84,0(v84)
la $t4,label_431_v84
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_431_v84
sw $t4,0($t0)
# Original instruction: la v85,empty
la $t5,empty
la $t0,label_432_v85
sw $t5,0($t0)
# Original instruction: lb v85,0(v85)
la $t4,label_432_v85
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_432_v85
sw $t4,0($t0)
# Original instruction: xor v86,v84,v85
la $t5,label_431_v84
lw $t5,0($t5)
la $t4,label_432_v85
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_436_v86
sw $t3,0($t0)
# Original instruction: sltu v86,$zero,v86
la $t4,label_436_v86
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_436_v86
sw $t4,0($t0)
# Original instruction: beq v86,$zero,label_64_else
la $t5,label_436_v86
lw $t5,0($t5)
beq $t5,$zero,label_64_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v87,$fp,-8
addiu $t5,$fp,-8
la $t0,label_446_v87
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v88,$fp,-8
addiu $t5,$fp,-8
la $t0,label_442_v88
sw $t5,0($t0)
# Original instruction: lw v88,0(v88)
la $t4,label_442_v88
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_442_v88
sw $t4,0($t0)
# Original instruction: li v89,1
li $t5,1
la $t0,label_443_v89
sw $t5,0($t0)
# Original instruction: add v90,v88,v89
la $t5,label_442_v88
lw $t5,0($t5)
la $t4,label_443_v89
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_445_v90
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v90,0(v87)
la $t5,label_445_v90
lw $t5,0($t5)
la $t4,label_446_v87
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_65_end
j label_65_end
label_64_else:
label_65_end:
# Original instruction: la v91,a32
la $t5,a32
la $t0,label_453_v91
sw $t5,0($t0)
# Original instruction: lb v91,0(v91)
la $t4,label_453_v91
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_453_v91
sw $t4,0($t0)
# Original instruction: la v92,empty
la $t5,empty
la $t0,label_454_v92
sw $t5,0($t0)
# Original instruction: lb v92,0(v92)
la $t4,label_454_v92
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_454_v92
sw $t4,0($t0)
# Original instruction: xor v93,v91,v92
la $t5,label_453_v91
lw $t5,0($t5)
la $t4,label_454_v92
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_458_v93
sw $t3,0($t0)
# Original instruction: sltu v93,$zero,v93
la $t4,label_458_v93
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_458_v93
sw $t4,0($t0)
# Original instruction: beq v93,$zero,label_66_else
la $t5,label_458_v93
lw $t5,0($t5)
beq $t5,$zero,label_66_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v94,$fp,-8
addiu $t5,$fp,-8
la $t0,label_468_v94
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v95,$fp,-8
addiu $t5,$fp,-8
la $t0,label_464_v95
sw $t5,0($t0)
# Original instruction: lw v95,0(v95)
la $t4,label_464_v95
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_464_v95
sw $t4,0($t0)
# Original instruction: li v96,1
li $t5,1
la $t0,label_465_v96
sw $t5,0($t0)
# Original instruction: add v97,v95,v96
la $t5,label_464_v95
lw $t5,0($t5)
la $t4,label_465_v96
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_467_v97
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v97,0(v94)
la $t5,label_467_v97
lw $t5,0($t5)
la $t4,label_468_v94
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_67_end
j label_67_end
label_66_else:
label_67_end:
# Original instruction: la v98,a13
la $t5,a13
la $t0,label_475_v98
sw $t5,0($t0)
# Original instruction: lb v98,0(v98)
la $t4,label_475_v98
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_475_v98
sw $t4,0($t0)
# Original instruction: la v99,empty
la $t5,empty
la $t0,label_476_v99
sw $t5,0($t0)
# Original instruction: lb v99,0(v99)
la $t4,label_476_v99
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_476_v99
sw $t4,0($t0)
# Original instruction: xor v100,v98,v99
la $t5,label_475_v98
lw $t5,0($t5)
la $t4,label_476_v99
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_480_v100
sw $t3,0($t0)
# Original instruction: sltu v100,$zero,v100
la $t4,label_480_v100
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_480_v100
sw $t4,0($t0)
# Original instruction: beq v100,$zero,label_68_else
la $t5,label_480_v100
lw $t5,0($t5)
beq $t5,$zero,label_68_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v101,$fp,-8
addiu $t5,$fp,-8
la $t0,label_490_v101
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v102,$fp,-8
addiu $t5,$fp,-8
la $t0,label_486_v102
sw $t5,0($t0)
# Original instruction: lw v102,0(v102)
la $t4,label_486_v102
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_486_v102
sw $t4,0($t0)
# Original instruction: li v103,1
li $t5,1
la $t0,label_487_v103
sw $t5,0($t0)
# Original instruction: add v104,v102,v103
la $t5,label_486_v102
lw $t5,0($t5)
la $t4,label_487_v103
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_489_v104
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v104,0(v101)
la $t5,label_489_v104
lw $t5,0($t5)
la $t4,label_490_v101
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_69_end
j label_69_end
label_68_else:
label_69_end:
# Original instruction: la v105,a23
la $t5,a23
la $t0,label_497_v105
sw $t5,0($t0)
# Original instruction: lb v105,0(v105)
la $t4,label_497_v105
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_497_v105
sw $t4,0($t0)
# Original instruction: la v106,empty
la $t5,empty
la $t0,label_498_v106
sw $t5,0($t0)
# Original instruction: lb v106,0(v106)
la $t4,label_498_v106
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_498_v106
sw $t4,0($t0)
# Original instruction: xor v107,v105,v106
la $t5,label_497_v105
lw $t5,0($t5)
la $t4,label_498_v106
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_502_v107
sw $t3,0($t0)
# Original instruction: sltu v107,$zero,v107
la $t4,label_502_v107
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_502_v107
sw $t4,0($t0)
# Original instruction: beq v107,$zero,label_70_else
la $t5,label_502_v107
lw $t5,0($t5)
beq $t5,$zero,label_70_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v108,$fp,-8
addiu $t5,$fp,-8
la $t0,label_512_v108
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v109,$fp,-8
addiu $t5,$fp,-8
la $t0,label_508_v109
sw $t5,0($t0)
# Original instruction: lw v109,0(v109)
la $t4,label_508_v109
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_508_v109
sw $t4,0($t0)
# Original instruction: li v110,1
li $t5,1
la $t0,label_509_v110
sw $t5,0($t0)
# Original instruction: add v111,v109,v110
la $t5,label_508_v109
lw $t5,0($t5)
la $t4,label_509_v110
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_511_v111
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v111,0(v108)
la $t5,label_511_v111
lw $t5,0($t5)
la $t4,label_512_v108
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_71_end
j label_71_end
label_70_else:
label_71_end:
# Original instruction: la v112,a33
la $t5,a33
la $t0,label_519_v112
sw $t5,0($t0)
# Original instruction: lb v112,0(v112)
la $t4,label_519_v112
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_519_v112
sw $t4,0($t0)
# Original instruction: la v113,empty
la $t5,empty
la $t0,label_520_v113
sw $t5,0($t0)
# Original instruction: lb v113,0(v113)
la $t4,label_520_v113
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_520_v113
sw $t4,0($t0)
# Original instruction: xor v114,v112,v113
la $t5,label_519_v112
lw $t5,0($t5)
la $t4,label_520_v113
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_524_v114
sw $t3,0($t0)
# Original instruction: sltu v114,$zero,v114
la $t4,label_524_v114
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_524_v114
sw $t4,0($t0)
# Original instruction: beq v114,$zero,label_72_else
la $t5,label_524_v114
lw $t5,0($t5)
beq $t5,$zero,label_72_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v115,$fp,-8
addiu $t5,$fp,-8
la $t0,label_534_v115
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v116,$fp,-8
addiu $t5,$fp,-8
la $t0,label_530_v116
sw $t5,0($t0)
# Original instruction: lw v116,0(v116)
la $t4,label_530_v116
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_530_v116
sw $t4,0($t0)
# Original instruction: li v117,1
li $t5,1
la $t0,label_531_v117
sw $t5,0($t0)
# Original instruction: add v118,v116,v117
la $t5,label_530_v116
lw $t5,0($t5)
la $t4,label_531_v117
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_533_v118
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v118,0(v115)
la $t5,label_533_v118
lw $t5,0($t5)
la $t4,label_534_v115
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_73_end
j label_73_end
label_72_else:
label_73_end:
# Original instruction: addiu v119,$fp,-8
addiu $t5,$fp,-8
la $t0,label_539_v119
sw $t5,0($t0)
# Original instruction: lw v119,0(v119)
la $t4,label_539_v119
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_539_v119
sw $t4,0($t0)
# Original instruction: li v120,9
li $t5,9
la $t0,label_540_v120
sw $t5,0($t0)
# Original instruction: xor v121,v119,v120
la $t5,label_539_v119
lw $t5,0($t5)
la $t4,label_540_v120
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_544_v121
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v121,v121,$t0
la $t4,label_544_v121
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_544_v121
sw $t4,0($t0)
# Original instruction: beq v121,$zero,label_74_else
la $t5,label_544_v121
lw $t5,0($t5)
beq $t5,$zero,label_74_else
# Original instruction: li v122,1
li $t5,1
la $t0,label_546_v122
sw $t5,0($t0)
# Original instruction: sw v122,4($fp)
la $t5,label_546_v122
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j label_75_end
j label_75_end
label_74_else:
# Original instruction: li v123,0
li $t5,0
la $t0,label_548_v123
sw $t5,0($t0)
# Original instruction: sw v123,4($fp)
la $t5,label_548_v123
lw $t5,0($t5)
sw $t5,4($fp)
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

.data
# Allocated labels for virtual registers
label_654_v157:
.space 4
label_591_v136:
.space 4
label_636_v149:
.space 4
label_734_v184:
.space 4
label_906_v240:
.space 4
label_560_v127:
.space 4
label_760_v190:
.space 4
label_582_v133:
.space 4
label_627_v148:
.space 4
label_911_v242:
.space 4
label_796_v202:
.space 4
label_658_v158:
.space 4
label_721_v180:
.space 4
label_688_v169:
.space 4
label_730_v183:
.space 4
label_812_v210:
.space 4
label_919_v246:
.space 4
label_830_v215:
.space 4
label_757_v192:
.space 4
label_782_v199:
.space 4
label_705_v173:
.space 4
label_756_v191:
.space 4
label_917_v245:
.space 4
label_778_v198:
.space 4
label_916_v244:
.space 4
label_741_v185:
.space 4
label_551_v125:
.space 4
label_932_v251:
.space 4
label_729_v182:
.space 4
label_653_v156:
.space 4
label_759_v193:
.space 4
label_610_v143:
.space 4
label_800_v206:
.space 4
label_641_v153:
.space 4
label_884_v231:
.space 4
label_622_v146:
.space 4
label_592_v135:
.space 4
label_854_v224:
.space 4
label_564_v128:
.space 4
label_570_v130:
.space 4
label_574_v131:
.space 4
label_633_v151:
.space 4
label_788_v200:
.space 4
label_746_v187:
.space 4
label_605_v141:
.space 4
label_924_v247:
.space 4
label_597_v139:
.space 4
label_853_v223:
.space 4
label_839_v218:
.space 4
label_581_v132:
.space 4
label_890_v236:
.space 4
label_927_v250:
.space 4
label_724_v178:
.space 4
label_723_v181:
.space 4
label_706_v174:
.space 4
label_795_v205:
.space 4
label_876_v229:
.space 4
label_902_v239:
.space 4
label_559_v126:
.space 4
label_845_v221:
.space 4
label_671_v164:
.space 4
label_596_v138:
.space 4
label_847_v222:
.space 4
label_818_v212:
.space 4
label_600_v137:
.space 4
label_618_v145:
.space 4
label_844_v220:
.space 4
label_883_v234:
.space 4
label_875_v230:
.space 4
label_742_v186:
.space 4
label_766_v195:
.space 4
label_817_v211:
.space 4
label_669_v163:
.space 4
label_675_v166:
.space 4
label_751_v189:
.space 4
label_683_v167:
.space 4
label_552_v124:
.space 4
label_928_v249:
.space 4
label_632_v150:
.space 4
label_889_v235:
.space 4
label_646_v155:
.space 4
label_834_v216:
.space 4
label_672_v161:
.space 4
label_617_v144:
.space 4
label_676_v165:
.space 4
label_793_v204:
.space 4
label_635_v152:
.space 4
label_716_v176:
.space 4
label_668_v162:
.space 4
label_664_v159:
.space 4
label_894_v237:
.space 4
label_865_v226:
.space 4
label_870_v228:
.space 4
label_720_v179:
.space 4
label_880_v232:
.space 4
label_770_v196:
.space 4
label_799_v207:
.space 4
label_710_v175:
.space 4
label_807_v208:
.space 4
label_586_v134:
.space 4
label_694_v171:
.space 4
label_599_v140:
.space 4
label_920_v243:
.space 4
label_787_v201:
.space 4
label_628_v147:
.space 4
label_881_v233:
.space 4
label_765_v194:
.space 4
label_848_v219:
.space 4
label_642_v154:
.space 4
label_822_v213:
.space 4
label_752_v188:
.space 4
label_715_v177:
.space 4
label_829_v214:
.space 4
label_901_v238:
.space 4
label_693_v170:
.space 4
label_684_v168:
.space 4
label_698_v172:
.space 4
label_858_v225:
.space 4
label_792_v203:
.space 4
label_840_v217:
.space 4
label_777_v197:
.space 4
label_912_v241:
.space 4
label_569_v129:
.space 4
label_808_v209:
.space 4
label_923_v248:
.space 4
label_663_v160:
.space 4
label_606_v142:
.space 4
label_866_v227:
.space 4

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
# Original instruction: addiu v124,$fp,-8
addiu $t5,$fp,-8
la $t0,label_552_v124
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v125,1
li $t5,1
la $t0,label_551_v125
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v125,0(v124)
la $t5,label_551_v125
lw $t5,0($t5)
la $t4,label_552_v124
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: addiu v126,$fp,16
addiu $t5,$fp,16
la $t0,label_559_v126
sw $t5,0($t0)
# Original instruction: lb v126,0(v126)
la $t4,label_559_v126
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_559_v126
sw $t4,0($t0)
# Original instruction: la v127,label_10_
la $t5,label_10_
la $t0,label_560_v127
sw $t5,0($t0)
# Original instruction: lb v127,0(v127)
la $t4,label_560_v127
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_560_v127
sw $t4,0($t0)
# Original instruction: xor v128,v126,v127
la $t5,label_559_v126
lw $t5,0($t5)
la $t4,label_560_v127
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_564_v128
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v128,v128,$t0
la $t4,label_564_v128
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_564_v128
sw $t4,0($t0)
# Original instruction: beq v128,$zero,label_77_else
la $t5,label_564_v128
lw $t5,0($t5)
beq $t5,$zero,label_77_else
# Original instruction: addiu v129,$fp,12
addiu $t5,$fp,12
la $t0,label_569_v129
sw $t5,0($t0)
# Original instruction: lw v129,0(v129)
la $t4,label_569_v129
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_569_v129
sw $t4,0($t0)
# Original instruction: li v130,1
li $t5,1
la $t0,label_570_v130
sw $t5,0($t0)
# Original instruction: xor v131,v129,v130
la $t5,label_569_v129
lw $t5,0($t5)
la $t4,label_570_v130
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_574_v131
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v131,v131,$t0
la $t4,label_574_v131
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_574_v131
sw $t4,0($t0)
# Original instruction: beq v131,$zero,label_79_else
la $t5,label_574_v131
lw $t5,0($t5)
beq $t5,$zero,label_79_else
# Original instruction: la v132,a11
la $t5,a11
la $t0,label_581_v132
sw $t5,0($t0)
# Original instruction: lb v132,0(v132)
la $t4,label_581_v132
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_581_v132
sw $t4,0($t0)
# Original instruction: la v133,empty
la $t5,empty
la $t0,label_582_v133
sw $t5,0($t0)
# Original instruction: lb v133,0(v133)
la $t4,label_582_v133
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_582_v133
sw $t4,0($t0)
# Original instruction: xor v134,v132,v133
la $t5,label_581_v132
lw $t5,0($t5)
la $t4,label_582_v133
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_586_v134
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v134,v134,$t0
la $t4,label_586_v134
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_586_v134
sw $t4,0($t0)
# Original instruction: beq v134,$zero,label_81_else
la $t5,label_586_v134
lw $t5,0($t5)
beq $t5,$zero,label_81_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v135,a11
la $t5,a11
la $t0,label_592_v135
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v136,$fp,8
addiu $t5,$fp,8
la $t0,label_591_v136
sw $t5,0($t0)
# Original instruction: lb v136,0(v136)
la $t4,label_591_v136
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_591_v136
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v136,0(v135)
la $t5,label_591_v136
lw $t5,0($t5)
la $t4,label_592_v135
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_82_end
j label_82_end
label_81_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v137,$fp,-8
addiu $t5,$fp,-8
la $t0,label_600_v137
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v138,0
li $t5,0
la $t0,label_596_v138
sw $t5,0($t0)
# Original instruction: li v139,1
li $t5,1
la $t0,label_597_v139
sw $t5,0($t0)
# Original instruction: sub v140,v138,v139
la $t5,label_596_v138
lw $t5,0($t5)
la $t4,label_597_v139
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_599_v140
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v140,0(v137)
la $t5,label_599_v140
lw $t5,0($t5)
la $t4,label_600_v137
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_82_end:
# Original instruction: j label_80_end
j label_80_end
label_79_else:
# Original instruction: addiu v141,$fp,12
addiu $t5,$fp,12
la $t0,label_605_v141
sw $t5,0($t0)
# Original instruction: lw v141,0(v141)
la $t4,label_605_v141
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_605_v141
sw $t4,0($t0)
# Original instruction: li v142,2
li $t5,2
la $t0,label_606_v142
sw $t5,0($t0)
# Original instruction: xor v143,v141,v142
la $t5,label_605_v141
lw $t5,0($t5)
la $t4,label_606_v142
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_610_v143
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v143,v143,$t0
la $t4,label_610_v143
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_610_v143
sw $t4,0($t0)
# Original instruction: beq v143,$zero,label_83_else
la $t5,label_610_v143
lw $t5,0($t5)
beq $t5,$zero,label_83_else
# Original instruction: la v144,a12
la $t5,a12
la $t0,label_617_v144
sw $t5,0($t0)
# Original instruction: lb v144,0(v144)
la $t4,label_617_v144
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_617_v144
sw $t4,0($t0)
# Original instruction: la v145,empty
la $t5,empty
la $t0,label_618_v145
sw $t5,0($t0)
# Original instruction: lb v145,0(v145)
la $t4,label_618_v145
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_618_v145
sw $t4,0($t0)
# Original instruction: xor v146,v144,v145
la $t5,label_617_v144
lw $t5,0($t5)
la $t4,label_618_v145
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_622_v146
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v146,v146,$t0
la $t4,label_622_v146
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_622_v146
sw $t4,0($t0)
# Original instruction: beq v146,$zero,label_85_else
la $t5,label_622_v146
lw $t5,0($t5)
beq $t5,$zero,label_85_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v147,a12
la $t5,a12
la $t0,label_628_v147
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v148,$fp,8
addiu $t5,$fp,8
la $t0,label_627_v148
sw $t5,0($t0)
# Original instruction: lb v148,0(v148)
la $t4,label_627_v148
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_627_v148
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v148,0(v147)
la $t5,label_627_v148
lw $t5,0($t5)
la $t4,label_628_v147
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_86_end
j label_86_end
label_85_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v149,$fp,-8
addiu $t5,$fp,-8
la $t0,label_636_v149
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v150,0
li $t5,0
la $t0,label_632_v150
sw $t5,0($t0)
# Original instruction: li v151,1
li $t5,1
la $t0,label_633_v151
sw $t5,0($t0)
# Original instruction: sub v152,v150,v151
la $t5,label_632_v150
lw $t5,0($t5)
la $t4,label_633_v151
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_635_v152
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v152,0(v149)
la $t5,label_635_v152
lw $t5,0($t5)
la $t4,label_636_v149
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_86_end:
# Original instruction: j label_84_end
j label_84_end
label_83_else:
# Original instruction: addiu v153,$fp,12
addiu $t5,$fp,12
la $t0,label_641_v153
sw $t5,0($t0)
# Original instruction: lw v153,0(v153)
la $t4,label_641_v153
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_641_v153
sw $t4,0($t0)
# Original instruction: li v154,3
li $t5,3
la $t0,label_642_v154
sw $t5,0($t0)
# Original instruction: xor v155,v153,v154
la $t5,label_641_v153
lw $t5,0($t5)
la $t4,label_642_v154
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_646_v155
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v155,v155,$t0
la $t4,label_646_v155
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_646_v155
sw $t4,0($t0)
# Original instruction: beq v155,$zero,label_87_else
la $t5,label_646_v155
lw $t5,0($t5)
beq $t5,$zero,label_87_else
# Original instruction: la v156,a13
la $t5,a13
la $t0,label_653_v156
sw $t5,0($t0)
# Original instruction: lb v156,0(v156)
la $t4,label_653_v156
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_653_v156
sw $t4,0($t0)
# Original instruction: la v157,empty
la $t5,empty
la $t0,label_654_v157
sw $t5,0($t0)
# Original instruction: lb v157,0(v157)
la $t4,label_654_v157
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_654_v157
sw $t4,0($t0)
# Original instruction: xor v158,v156,v157
la $t5,label_653_v156
lw $t5,0($t5)
la $t4,label_654_v157
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_658_v158
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v158,v158,$t0
la $t4,label_658_v158
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_658_v158
sw $t4,0($t0)
# Original instruction: beq v158,$zero,label_89_else
la $t5,label_658_v158
lw $t5,0($t5)
beq $t5,$zero,label_89_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v159,a13
la $t5,a13
la $t0,label_664_v159
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v160,$fp,8
addiu $t5,$fp,8
la $t0,label_663_v160
sw $t5,0($t0)
# Original instruction: lb v160,0(v160)
la $t4,label_663_v160
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_663_v160
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v160,0(v159)
la $t5,label_663_v160
lw $t5,0($t5)
la $t4,label_664_v159
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_90_end
j label_90_end
label_89_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v161,$fp,-8
addiu $t5,$fp,-8
la $t0,label_672_v161
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v162,0
li $t5,0
la $t0,label_668_v162
sw $t5,0($t0)
# Original instruction: li v163,1
li $t5,1
la $t0,label_669_v163
sw $t5,0($t0)
# Original instruction: sub v164,v162,v163
la $t5,label_668_v162
lw $t5,0($t5)
la $t4,label_669_v163
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_671_v164
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v164,0(v161)
la $t5,label_671_v164
lw $t5,0($t5)
la $t4,label_672_v161
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_90_end:
# Original instruction: j label_88_end
j label_88_end
label_87_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v165,$fp,-8
addiu $t5,$fp,-8
la $t0,label_676_v165
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v166,0
li $t5,0
la $t0,label_675_v166
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v166,0(v165)
la $t5,label_675_v166
lw $t5,0($t5)
la $t4,label_676_v165
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_88_end:
label_84_end:
label_80_end:
# Original instruction: j label_78_end
j label_78_end
label_77_else:
# Original instruction: addiu v167,$fp,16
addiu $t5,$fp,16
la $t0,label_683_v167
sw $t5,0($t0)
# Original instruction: lb v167,0(v167)
la $t4,label_683_v167
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_683_v167
sw $t4,0($t0)
# Original instruction: la v168,label_11_
la $t5,label_11_
la $t0,label_684_v168
sw $t5,0($t0)
# Original instruction: lb v168,0(v168)
la $t4,label_684_v168
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_684_v168
sw $t4,0($t0)
# Original instruction: xor v169,v167,v168
la $t5,label_683_v167
lw $t5,0($t5)
la $t4,label_684_v168
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_688_v169
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v169,v169,$t0
la $t4,label_688_v169
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_688_v169
sw $t4,0($t0)
# Original instruction: beq v169,$zero,label_91_else
la $t5,label_688_v169
lw $t5,0($t5)
beq $t5,$zero,label_91_else
# Original instruction: addiu v170,$fp,12
addiu $t5,$fp,12
la $t0,label_693_v170
sw $t5,0($t0)
# Original instruction: lw v170,0(v170)
la $t4,label_693_v170
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_693_v170
sw $t4,0($t0)
# Original instruction: li v171,1
li $t5,1
la $t0,label_694_v171
sw $t5,0($t0)
# Original instruction: xor v172,v170,v171
la $t5,label_693_v170
lw $t5,0($t5)
la $t4,label_694_v171
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_698_v172
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v172,v172,$t0
la $t4,label_698_v172
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_698_v172
sw $t4,0($t0)
# Original instruction: beq v172,$zero,label_93_else
la $t5,label_698_v172
lw $t5,0($t5)
beq $t5,$zero,label_93_else
# Original instruction: la v173,a21
la $t5,a21
la $t0,label_705_v173
sw $t5,0($t0)
# Original instruction: lb v173,0(v173)
la $t4,label_705_v173
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_705_v173
sw $t4,0($t0)
# Original instruction: la v174,empty
la $t5,empty
la $t0,label_706_v174
sw $t5,0($t0)
# Original instruction: lb v174,0(v174)
la $t4,label_706_v174
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_706_v174
sw $t4,0($t0)
# Original instruction: xor v175,v173,v174
la $t5,label_705_v173
lw $t5,0($t5)
la $t4,label_706_v174
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_710_v175
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v175,v175,$t0
la $t4,label_710_v175
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_710_v175
sw $t4,0($t0)
# Original instruction: beq v175,$zero,label_95_else
la $t5,label_710_v175
lw $t5,0($t5)
beq $t5,$zero,label_95_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v176,a21
la $t5,a21
la $t0,label_716_v176
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v177,$fp,8
addiu $t5,$fp,8
la $t0,label_715_v177
sw $t5,0($t0)
# Original instruction: lb v177,0(v177)
la $t4,label_715_v177
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_715_v177
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v177,0(v176)
la $t5,label_715_v177
lw $t5,0($t5)
la $t4,label_716_v176
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_96_end
j label_96_end
label_95_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v178,$fp,-8
addiu $t5,$fp,-8
la $t0,label_724_v178
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v179,0
li $t5,0
la $t0,label_720_v179
sw $t5,0($t0)
# Original instruction: li v180,1
li $t5,1
la $t0,label_721_v180
sw $t5,0($t0)
# Original instruction: sub v181,v179,v180
la $t5,label_720_v179
lw $t5,0($t5)
la $t4,label_721_v180
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_723_v181
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v181,0(v178)
la $t5,label_723_v181
lw $t5,0($t5)
la $t4,label_724_v178
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_96_end:
# Original instruction: j label_94_end
j label_94_end
label_93_else:
# Original instruction: addiu v182,$fp,12
addiu $t5,$fp,12
la $t0,label_729_v182
sw $t5,0($t0)
# Original instruction: lw v182,0(v182)
la $t4,label_729_v182
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_729_v182
sw $t4,0($t0)
# Original instruction: li v183,2
li $t5,2
la $t0,label_730_v183
sw $t5,0($t0)
# Original instruction: xor v184,v182,v183
la $t5,label_729_v182
lw $t5,0($t5)
la $t4,label_730_v183
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_734_v184
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v184,v184,$t0
la $t4,label_734_v184
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_734_v184
sw $t4,0($t0)
# Original instruction: beq v184,$zero,label_97_else
la $t5,label_734_v184
lw $t5,0($t5)
beq $t5,$zero,label_97_else
# Original instruction: la v185,a22
la $t5,a22
la $t0,label_741_v185
sw $t5,0($t0)
# Original instruction: lb v185,0(v185)
la $t4,label_741_v185
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_741_v185
sw $t4,0($t0)
# Original instruction: la v186,empty
la $t5,empty
la $t0,label_742_v186
sw $t5,0($t0)
# Original instruction: lb v186,0(v186)
la $t4,label_742_v186
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_742_v186
sw $t4,0($t0)
# Original instruction: xor v187,v185,v186
la $t5,label_741_v185
lw $t5,0($t5)
la $t4,label_742_v186
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_746_v187
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v187,v187,$t0
la $t4,label_746_v187
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_746_v187
sw $t4,0($t0)
# Original instruction: beq v187,$zero,label_99_else
la $t5,label_746_v187
lw $t5,0($t5)
beq $t5,$zero,label_99_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v188,a22
la $t5,a22
la $t0,label_752_v188
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v189,$fp,8
addiu $t5,$fp,8
la $t0,label_751_v189
sw $t5,0($t0)
# Original instruction: lb v189,0(v189)
la $t4,label_751_v189
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_751_v189
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v189,0(v188)
la $t5,label_751_v189
lw $t5,0($t5)
la $t4,label_752_v188
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_100_end
j label_100_end
label_99_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v190,$fp,-8
addiu $t5,$fp,-8
la $t0,label_760_v190
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v191,0
li $t5,0
la $t0,label_756_v191
sw $t5,0($t0)
# Original instruction: li v192,1
li $t5,1
la $t0,label_757_v192
sw $t5,0($t0)
# Original instruction: sub v193,v191,v192
la $t5,label_756_v191
lw $t5,0($t5)
la $t4,label_757_v192
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_759_v193
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v193,0(v190)
la $t5,label_759_v193
lw $t5,0($t5)
la $t4,label_760_v190
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_100_end:
# Original instruction: j label_98_end
j label_98_end
label_97_else:
# Original instruction: addiu v194,$fp,12
addiu $t5,$fp,12
la $t0,label_765_v194
sw $t5,0($t0)
# Original instruction: lw v194,0(v194)
la $t4,label_765_v194
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_765_v194
sw $t4,0($t0)
# Original instruction: li v195,3
li $t5,3
la $t0,label_766_v195
sw $t5,0($t0)
# Original instruction: xor v196,v194,v195
la $t5,label_765_v194
lw $t5,0($t5)
la $t4,label_766_v195
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_770_v196
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v196,v196,$t0
la $t4,label_770_v196
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_770_v196
sw $t4,0($t0)
# Original instruction: beq v196,$zero,label_101_else
la $t5,label_770_v196
lw $t5,0($t5)
beq $t5,$zero,label_101_else
# Original instruction: la v197,a23
la $t5,a23
la $t0,label_777_v197
sw $t5,0($t0)
# Original instruction: lb v197,0(v197)
la $t4,label_777_v197
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_777_v197
sw $t4,0($t0)
# Original instruction: la v198,empty
la $t5,empty
la $t0,label_778_v198
sw $t5,0($t0)
# Original instruction: lb v198,0(v198)
la $t4,label_778_v198
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_778_v198
sw $t4,0($t0)
# Original instruction: xor v199,v197,v198
la $t5,label_777_v197
lw $t5,0($t5)
la $t4,label_778_v198
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_782_v199
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v199,v199,$t0
la $t4,label_782_v199
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_782_v199
sw $t4,0($t0)
# Original instruction: beq v199,$zero,label_103_else
la $t5,label_782_v199
lw $t5,0($t5)
beq $t5,$zero,label_103_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v200,a23
la $t5,a23
la $t0,label_788_v200
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v201,$fp,8
addiu $t5,$fp,8
la $t0,label_787_v201
sw $t5,0($t0)
# Original instruction: lb v201,0(v201)
la $t4,label_787_v201
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_787_v201
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v201,0(v200)
la $t5,label_787_v201
lw $t5,0($t5)
la $t4,label_788_v200
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_104_end
j label_104_end
label_103_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v202,$fp,-8
addiu $t5,$fp,-8
la $t0,label_796_v202
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v203,0
li $t5,0
la $t0,label_792_v203
sw $t5,0($t0)
# Original instruction: li v204,1
li $t5,1
la $t0,label_793_v204
sw $t5,0($t0)
# Original instruction: sub v205,v203,v204
la $t5,label_792_v203
lw $t5,0($t5)
la $t4,label_793_v204
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_795_v205
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v205,0(v202)
la $t5,label_795_v205
lw $t5,0($t5)
la $t4,label_796_v202
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_104_end:
# Original instruction: j label_102_end
j label_102_end
label_101_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v206,$fp,-8
addiu $t5,$fp,-8
la $t0,label_800_v206
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v207,0
li $t5,0
la $t0,label_799_v207
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v207,0(v206)
la $t5,label_799_v207
lw $t5,0($t5)
la $t4,label_800_v206
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_102_end:
label_98_end:
label_94_end:
# Original instruction: j label_92_end
j label_92_end
label_91_else:
# Original instruction: addiu v208,$fp,16
addiu $t5,$fp,16
la $t0,label_807_v208
sw $t5,0($t0)
# Original instruction: lb v208,0(v208)
la $t4,label_807_v208
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_807_v208
sw $t4,0($t0)
# Original instruction: la v209,label_12_
la $t5,label_12_
la $t0,label_808_v209
sw $t5,0($t0)
# Original instruction: lb v209,0(v209)
la $t4,label_808_v209
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_808_v209
sw $t4,0($t0)
# Original instruction: xor v210,v208,v209
la $t5,label_807_v208
lw $t5,0($t5)
la $t4,label_808_v209
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_812_v210
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v210,v210,$t0
la $t4,label_812_v210
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_812_v210
sw $t4,0($t0)
# Original instruction: beq v210,$zero,label_105_else
la $t5,label_812_v210
lw $t5,0($t5)
beq $t5,$zero,label_105_else
# Original instruction: addiu v211,$fp,12
addiu $t5,$fp,12
la $t0,label_817_v211
sw $t5,0($t0)
# Original instruction: lw v211,0(v211)
la $t4,label_817_v211
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_817_v211
sw $t4,0($t0)
# Original instruction: li v212,1
li $t5,1
la $t0,label_818_v212
sw $t5,0($t0)
# Original instruction: xor v213,v211,v212
la $t5,label_817_v211
lw $t5,0($t5)
la $t4,label_818_v212
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_822_v213
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v213,v213,$t0
la $t4,label_822_v213
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_822_v213
sw $t4,0($t0)
# Original instruction: beq v213,$zero,label_107_else
la $t5,label_822_v213
lw $t5,0($t5)
beq $t5,$zero,label_107_else
# Original instruction: la v214,a31
la $t5,a31
la $t0,label_829_v214
sw $t5,0($t0)
# Original instruction: lb v214,0(v214)
la $t4,label_829_v214
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_829_v214
sw $t4,0($t0)
# Original instruction: la v215,empty
la $t5,empty
la $t0,label_830_v215
sw $t5,0($t0)
# Original instruction: lb v215,0(v215)
la $t4,label_830_v215
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_830_v215
sw $t4,0($t0)
# Original instruction: xor v216,v214,v215
la $t5,label_829_v214
lw $t5,0($t5)
la $t4,label_830_v215
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_834_v216
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v216,v216,$t0
la $t4,label_834_v216
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_834_v216
sw $t4,0($t0)
# Original instruction: beq v216,$zero,label_109_else
la $t5,label_834_v216
lw $t5,0($t5)
beq $t5,$zero,label_109_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v217,a31
la $t5,a31
la $t0,label_840_v217
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v218,$fp,8
addiu $t5,$fp,8
la $t0,label_839_v218
sw $t5,0($t0)
# Original instruction: lb v218,0(v218)
la $t4,label_839_v218
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_839_v218
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v218,0(v217)
la $t5,label_839_v218
lw $t5,0($t5)
la $t4,label_840_v217
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_110_end
j label_110_end
label_109_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v219,$fp,-8
addiu $t5,$fp,-8
la $t0,label_848_v219
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v220,0
li $t5,0
la $t0,label_844_v220
sw $t5,0($t0)
# Original instruction: li v221,1
li $t5,1
la $t0,label_845_v221
sw $t5,0($t0)
# Original instruction: sub v222,v220,v221
la $t5,label_844_v220
lw $t5,0($t5)
la $t4,label_845_v221
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_847_v222
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v222,0(v219)
la $t5,label_847_v222
lw $t5,0($t5)
la $t4,label_848_v219
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_110_end:
# Original instruction: j label_108_end
j label_108_end
label_107_else:
# Original instruction: addiu v223,$fp,12
addiu $t5,$fp,12
la $t0,label_853_v223
sw $t5,0($t0)
# Original instruction: lw v223,0(v223)
la $t4,label_853_v223
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_853_v223
sw $t4,0($t0)
# Original instruction: li v224,2
li $t5,2
la $t0,label_854_v224
sw $t5,0($t0)
# Original instruction: xor v225,v223,v224
la $t5,label_853_v223
lw $t5,0($t5)
la $t4,label_854_v224
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_858_v225
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v225,v225,$t0
la $t4,label_858_v225
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_858_v225
sw $t4,0($t0)
# Original instruction: beq v225,$zero,label_111_else
la $t5,label_858_v225
lw $t5,0($t5)
beq $t5,$zero,label_111_else
# Original instruction: la v226,a32
la $t5,a32
la $t0,label_865_v226
sw $t5,0($t0)
# Original instruction: lb v226,0(v226)
la $t4,label_865_v226
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_865_v226
sw $t4,0($t0)
# Original instruction: la v227,empty
la $t5,empty
la $t0,label_866_v227
sw $t5,0($t0)
# Original instruction: lb v227,0(v227)
la $t4,label_866_v227
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_866_v227
sw $t4,0($t0)
# Original instruction: xor v228,v226,v227
la $t5,label_865_v226
lw $t5,0($t5)
la $t4,label_866_v227
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_870_v228
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v228,v228,$t0
la $t4,label_870_v228
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_870_v228
sw $t4,0($t0)
# Original instruction: beq v228,$zero,label_113_else
la $t5,label_870_v228
lw $t5,0($t5)
beq $t5,$zero,label_113_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v229,a32
la $t5,a32
la $t0,label_876_v229
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v230,$fp,8
addiu $t5,$fp,8
la $t0,label_875_v230
sw $t5,0($t0)
# Original instruction: lb v230,0(v230)
la $t4,label_875_v230
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_875_v230
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v230,0(v229)
la $t5,label_875_v230
lw $t5,0($t5)
la $t4,label_876_v229
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_114_end
j label_114_end
label_113_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v231,$fp,-8
addiu $t5,$fp,-8
la $t0,label_884_v231
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v232,0
li $t5,0
la $t0,label_880_v232
sw $t5,0($t0)
# Original instruction: li v233,1
li $t5,1
la $t0,label_881_v233
sw $t5,0($t0)
# Original instruction: sub v234,v232,v233
la $t5,label_880_v232
lw $t5,0($t5)
la $t4,label_881_v233
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_883_v234
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v234,0(v231)
la $t5,label_883_v234
lw $t5,0($t5)
la $t4,label_884_v231
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_114_end:
# Original instruction: j label_112_end
j label_112_end
label_111_else:
# Original instruction: addiu v235,$fp,12
addiu $t5,$fp,12
la $t0,label_889_v235
sw $t5,0($t0)
# Original instruction: lw v235,0(v235)
la $t4,label_889_v235
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_889_v235
sw $t4,0($t0)
# Original instruction: li v236,3
li $t5,3
la $t0,label_890_v236
sw $t5,0($t0)
# Original instruction: xor v237,v235,v236
la $t5,label_889_v235
lw $t5,0($t5)
la $t4,label_890_v236
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_894_v237
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v237,v237,$t0
la $t4,label_894_v237
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_894_v237
sw $t4,0($t0)
# Original instruction: beq v237,$zero,label_115_else
la $t5,label_894_v237
lw $t5,0($t5)
beq $t5,$zero,label_115_else
# Original instruction: la v238,a33
la $t5,a33
la $t0,label_901_v238
sw $t5,0($t0)
# Original instruction: lb v238,0(v238)
la $t4,label_901_v238
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_901_v238
sw $t4,0($t0)
# Original instruction: la v239,empty
la $t5,empty
la $t0,label_902_v239
sw $t5,0($t0)
# Original instruction: lb v239,0(v239)
la $t4,label_902_v239
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_902_v239
sw $t4,0($t0)
# Original instruction: xor v240,v238,v239
la $t5,label_901_v238
lw $t5,0($t5)
la $t4,label_902_v239
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_906_v240
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v240,v240,$t0
la $t4,label_906_v240
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_906_v240
sw $t4,0($t0)
# Original instruction: beq v240,$zero,label_117_else
la $t5,label_906_v240
lw $t5,0($t5)
beq $t5,$zero,label_117_else
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: la v241,a33
la $t5,a33
la $t0,label_912_v241
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: addiu v242,$fp,8
addiu $t5,$fp,8
la $t0,label_911_v242
sw $t5,0($t0)
# Original instruction: lb v242,0(v242)
la $t4,label_911_v242
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_911_v242
sw $t4,0($t0)
# [[Start Copy]]
# Original instruction: sb v242,0(v241)
la $t5,label_911_v242
lw $t5,0($t5)
la $t4,label_912_v241
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_118_end
j label_118_end
label_117_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v243,$fp,-8
addiu $t5,$fp,-8
la $t0,label_920_v243
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v244,0
li $t5,0
la $t0,label_916_v244
sw $t5,0($t0)
# Original instruction: li v245,1
li $t5,1
la $t0,label_917_v245
sw $t5,0($t0)
# Original instruction: sub v246,v244,v245
la $t5,label_916_v244
lw $t5,0($t5)
la $t4,label_917_v245
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_919_v246
sw $t3,0($t0)
# [[Start Copy]]
# Original instruction: sw v246,0(v243)
la $t5,label_919_v246
lw $t5,0($t5)
la $t4,label_920_v243
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_118_end:
# Original instruction: j label_116_end
j label_116_end
label_115_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v247,$fp,-8
addiu $t5,$fp,-8
la $t0,label_924_v247
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v248,0
li $t5,0
la $t0,label_923_v248
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v248,0(v247)
la $t5,label_923_v248
lw $t5,0($t5)
la $t4,label_924_v247
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_116_end:
label_112_end:
label_108_end:
# Original instruction: j label_106_end
j label_106_end
label_105_else:
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v249,$fp,-8
addiu $t5,$fp,-8
la $t0,label_928_v249
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v250,0
li $t5,0
la $t0,label_927_v250
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v250,0(v249)
la $t5,label_927_v250
lw $t5,0($t5)
la $t4,label_928_v249
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_106_end:
label_92_end:
label_78_end:
# Original instruction: addiu v251,$fp,-8
addiu $t5,$fp,-8
la $t0,label_932_v251
sw $t5,0($t0)
# Original instruction: lw v251,0(v251)
la $t4,label_932_v251
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_932_v251
sw $t4,0($t0)
# Original instruction: sw v251,4($fp)
la $t5,label_932_v251
lw $t5,0($t5)
sw $t5,4($fp)
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
label_978_v268:
.space 4
label_1002_v277:
.space 4
label_940_v255:
.space 4
label_980_v269:
.space 4
label_984_v271:
.space 4
label_1006_v279:
.space 4
label_938_v254:
.space 4
label_966_v264:
.space 4
label_956_v260:
.space 4
label_990_v273:
.space 4
label_944_v256:
.space 4
label_946_v257:
.space 4
label_950_v258:
.space 4
label_962_v263:
.space 4
label_974_v267:
.space 4
label_988_v272:
.space 4
label_960_v262:
.space 4
label_936_v253:
.space 4
label_1000_v276:
.space 4
label_994_v274:
.space 4
label_934_v252:
.space 4
label_952_v259:
.space 4
label_982_v270:
.space 4
label_968_v265:
.space 4
label_996_v275:
.space 4
label_958_v261:
.space 4
label_1004_v278:
.space 4
label_972_v266:
.space 4

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
# [[[Retrieving arg val]]]: ast.PointerType@7aec35a
# Original instruction: la v252,label_13_
la $t5,label_13_
la $t0,label_934_v252
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v252,0($sp)
la $t5,label_934_v252
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@7aec35a ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@67424e82
# Original instruction: la v253,label_14_
la $t5,label_14_
la $t0,label_936_v253
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v253,0($sp)
la $t5,label_936_v253
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@67424e82 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@42110406
# Original instruction: la v254,label_15_
la $t5,label_15_
la $t0,label_938_v254
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v254,0($sp)
la $t5,label_938_v254
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@42110406 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@531d72ca
# Original instruction: la v255,label_16_
la $t5,label_16_
la $t0,label_940_v255
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v255,0($sp)
la $t5,label_940_v255
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@531d72ca ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v256,a11
la $t5,a11
la $t0,label_944_v256
sw $t5,0($t0)
# Original instruction: lb v256,0(v256)
la $t4,label_944_v256
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_944_v256
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v256,0($sp)
la $t5,label_944_v256
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@22d8cfe0
# Original instruction: la v257,label_17_
la $t5,label_17_
la $t0,label_946_v257
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v257,0($sp)
la $t5,label_946_v257
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@22d8cfe0 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v258,a12
la $t5,a12
la $t0,label_950_v258
sw $t5,0($t0)
# Original instruction: lb v258,0(v258)
la $t4,label_950_v258
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_950_v258
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v258,0($sp)
la $t5,label_950_v258
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@579bb367
# Original instruction: la v259,label_17_
la $t5,label_17_
la $t0,label_952_v259
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v259,0($sp)
la $t5,label_952_v259
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@579bb367 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v260,a13
la $t5,a13
la $t0,label_956_v260
sw $t5,0($t0)
# Original instruction: lb v260,0(v260)
la $t4,label_956_v260
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_956_v260
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v260,0($sp)
la $t5,label_956_v260
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@1de0aca6
# Original instruction: la v261,label_18_
la $t5,label_18_
la $t0,label_958_v261
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v261,0($sp)
la $t5,label_958_v261
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@1de0aca6 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@255316f2
# Original instruction: la v262,label_15_
la $t5,label_15_
la $t0,label_960_v262
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v262,0($sp)
la $t5,label_960_v262
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@255316f2 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@41906a77
# Original instruction: la v263,label_19_
la $t5,label_19_
la $t0,label_962_v263
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v263,0($sp)
la $t5,label_962_v263
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@41906a77 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v264,a21
la $t5,a21
la $t0,label_966_v264
sw $t5,0($t0)
# Original instruction: lb v264,0(v264)
la $t4,label_966_v264
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_966_v264
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v264,0($sp)
la $t5,label_966_v264
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@4b9af9a9
# Original instruction: la v265,label_17_
la $t5,label_17_
la $t0,label_968_v265
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v265,0($sp)
la $t5,label_968_v265
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@4b9af9a9 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v266,a22
la $t5,a22
la $t0,label_972_v266
sw $t5,0($t0)
# Original instruction: lb v266,0(v266)
la $t4,label_972_v266
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_972_v266
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v266,0($sp)
la $t5,label_972_v266
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5387f9e0
# Original instruction: la v267,label_17_
la $t5,label_17_
la $t0,label_974_v267
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v267,0($sp)
la $t5,label_974_v267
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5387f9e0 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v268,a23
la $t5,a23
la $t0,label_978_v268
sw $t5,0($t0)
# Original instruction: lb v268,0(v268)
la $t4,label_978_v268
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_978_v268
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v268,0($sp)
la $t5,label_978_v268
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@6e5e91e4
# Original instruction: la v269,label_18_
la $t5,label_18_
la $t0,label_980_v269
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v269,0($sp)
la $t5,label_980_v269
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@6e5e91e4 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@2cdf8d8a
# Original instruction: la v270,label_15_
la $t5,label_15_
la $t0,label_982_v270
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v270,0($sp)
la $t5,label_982_v270
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@2cdf8d8a ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@30946e09
# Original instruction: la v271,label_20_
la $t5,label_20_
la $t0,label_984_v271
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v271,0($sp)
la $t5,label_984_v271
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@30946e09 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v272,a31
la $t5,a31
la $t0,label_988_v272
sw $t5,0($t0)
# Original instruction: lb v272,0(v272)
la $t4,label_988_v272
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_988_v272
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v272,0($sp)
la $t5,label_988_v272
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5cb0d902
# Original instruction: la v273,label_17_
la $t5,label_17_
la $t0,label_990_v273
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v273,0($sp)
la $t5,label_990_v273
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5cb0d902 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v274,a32
la $t5,a32
la $t0,label_994_v274
sw $t5,0($t0)
# Original instruction: lb v274,0(v274)
la $t4,label_994_v274
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_994_v274
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v274,0($sp)
la $t5,label_994_v274
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@46fbb2c1
# Original instruction: la v275,label_17_
la $t5,label_17_
la $t0,label_996_v275
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v275,0($sp)
la $t5,label_996_v275
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@46fbb2c1 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_c
# [[[Retrieving arg val]]]: CHAR
# Original instruction: la v276,a33
la $t5,a33
la $t0,label_1000_v276
sw $t5,0($t0)
# Original instruction: lb v276,0(v276)
la $t4,label_1000_v276
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1000_v276
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v276,0($sp)
la $t5,label_1000_v276
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_c
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@1698c449
# Original instruction: la v277,label_18_
la $t5,label_18_
la $t0,label_1002_v277
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v277,0($sp)
la $t5,label_1002_v277
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@1698c449 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5ef04b5
# Original instruction: la v278,label_15_
la $t5,label_15_
la $t0,label_1004_v278
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v278,0($sp)
la $t5,label_1004_v278
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5ef04b5 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5f4da5c3
# Original instruction: la v279,label_13_
la $t5,label_13_
la $t0,label_1006_v279
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v279,0($sp)
la $t5,label_1006_v279
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5f4da5c3 ended
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

.data
# Allocated labels for virtual registers
label_1012_v281:
.space 4
label_1008_v280:
.space 4
label_1014_v282:
.space 4

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
# [[[Retrieving arg val]]]: ast.PointerType@443b7951
# Original instruction: la v280,label_21_
la $t5,label_21_
la $t0,label_1008_v280
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v280,0($sp)
la $t5,label_1008_v280
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@443b7951 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v281,$fp,4
addiu $t5,$fp,4
la $t0,label_1012_v281
sw $t5,0($t0)
# Original instruction: lw v281,0(v281)
la $t4,label_1012_v281
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1012_v281
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v281,0($sp)
la $t5,label_1012_v281
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@14514713
# Original instruction: la v282,label_22_
la $t5,label_22_
la $t0,label_1014_v282
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v282,0($sp)
la $t5,label_1014_v282
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@14514713 ended
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

.data
# Allocated labels for virtual registers
label_1028_v287:
.space 4
label_1020_v284:
.space 4
label_1024_v285:
.space 4
label_1019_v283:
.space 4
label_1026_v286:
.space 4

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
# Original instruction: addiu v283,$fp,8
addiu $t5,$fp,8
la $t0,label_1019_v283
sw $t5,0($t0)
# Original instruction: lw v283,0(v283)
la $t4,label_1019_v283
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1019_v283
sw $t4,0($t0)
# Original instruction: li v284,1
li $t5,1
la $t0,label_1020_v284
sw $t5,0($t0)
# Original instruction: xor v285,v283,v284
la $t5,label_1019_v283
lw $t5,0($t5)
la $t4,label_1020_v284
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1024_v285
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v285,v285,$t0
la $t4,label_1024_v285
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1024_v285
sw $t4,0($t0)
# Original instruction: beq v285,$zero,label_121_else
la $t5,label_1024_v285
lw $t5,0($t5)
beq $t5,$zero,label_121_else
# Original instruction: li v286,2
li $t5,2
la $t0,label_1026_v286
sw $t5,0($t0)
# Original instruction: sw v286,4($fp)
la $t5,label_1026_v286
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j label_122_end
j label_122_end
label_121_else:
# Original instruction: li v287,1
li $t5,1
la $t0,label_1028_v287
sw $t5,0($t0)
# Original instruction: sw v287,4($fp)
la $t5,label_1028_v287
lw $t5,0($t5)
sw $t5,4($fp)
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

.data
# Allocated labels for virtual registers
label_1042_v291:
.space 4
label_1034_v289:
.space 4
label_1046_v292:
.space 4
label_1033_v288:
.space 4
label_1038_v290:
.space 4

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
# Original instruction: addiu v288,$fp,8
addiu $t5,$fp,8
la $t0,label_1033_v288
sw $t5,0($t0)
# Original instruction: lw v288,0(v288)
la $t4,label_1033_v288
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1033_v288
sw $t4,0($t0)
# Original instruction: li v289,1
li $t5,1
la $t0,label_1034_v289
sw $t5,0($t0)
# Original instruction: xor v290,v288,v289
la $t5,label_1033_v288
lw $t5,0($t5)
la $t4,label_1034_v289
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1038_v290
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v290,v290,$t0
la $t4,label_1038_v290
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1038_v290
sw $t4,0($t0)
# Original instruction: beq v290,$zero,label_123_else
la $t5,label_1038_v290
lw $t5,0($t5)
beq $t5,$zero,label_123_else
# Original instruction: la v291,label_23_
la $t5,label_23_
la $t0,label_1042_v291
sw $t5,0($t0)
# Original instruction: lb v291,0(v291)
la $t4,label_1042_v291
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1042_v291
sw $t4,0($t0)
# Original instruction: sb v291,4($fp)
la $t5,label_1042_v291
lw $t5,0($t5)
sb $t5,4($fp)
# Original instruction: j label_124_end
j label_124_end
label_123_else:
# Original instruction: la v292,label_24_
la $t5,label_24_
la $t0,label_1046_v292
sw $t5,0($t0)
# Original instruction: lb v292,0(v292)
la $t4,label_1046_v292
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1046_v292
sw $t4,0($t0)
# Original instruction: sb v292,4($fp)
la $t5,label_1046_v292
lw $t5,0($t5)
sb $t5,4($fp)
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

.data
# Allocated labels for virtual registers
label_1107_v311:
.space 4
label_1072_v301:
.space 4
label_1104_v312:
.space 4
label_1062_v298:
.space 4
label_1060_v297:
.space 4
label_1071_v302:
.space 4
label_1114_v316:
.space 4
label_1056_v296:
.space 4
label_1050_v293:
.space 4
label_1086_v303:
.space 4
label_1096_v309:
.space 4
label_1049_v294:
.space 4
label_1081_v305:
.space 4
label_1054_v295:
.space 4
label_1085_v306:
.space 4
label_1098_v310:
.space 4
label_1118_v317:
.space 4
label_1066_v300:
.space 4
label_1077_v304:
.space 4
label_1105_v313:
.space 4
label_1108_v314:
.space 4
label_1117_v318:
.space 4
label_1092_v308:
.space 4
label_1112_v315:
.space 4
label_1064_v299:
.space 4
label_1091_v307:
.space 4

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
# Original instruction: addiu v293,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1050_v293
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v294,1
li $t5,1
la $t0,label_1049_v294
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v294,0(v293)
la $t5,label_1049_v294
lw $t5,0($t5)
la $t4,label_1050_v293
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_125_while:
# Original instruction: addiu v295,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1054_v295
sw $t5,0($t0)
# Original instruction: lw v295,0(v295)
la $t4,label_1054_v295
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1054_v295
sw $t4,0($t0)
# Original instruction: beq v295,$zero,label_126_end
la $t5,label_1054_v295
lw $t5,0($t5)
beq $t5,$zero,label_126_end
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@69663380
# Original instruction: la v296,label_21_
la $t5,label_21_
la $t0,label_1056_v296
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v296,0($sp)
la $t5,label_1056_v296
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@69663380 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Execute print_i
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v297,$fp,4
addiu $t5,$fp,4
la $t0,label_1060_v297
sw $t5,0($t0)
# Original instruction: lw v297,0(v297)
la $t4,label_1060_v297
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1060_v297
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v297,0($sp)
la $t5,label_1060_v297
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_i
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5b37e0d2
# Original instruction: la v298,label_25_
la $t5,label_25_
la $t0,label_1062_v298
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v298,0($sp)
la $t5,label_1062_v298
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5b37e0d2 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v299,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1064_v299
sw $t5,0($t0)
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
# Original instruction: sb $v0,0(v299)
la $t5,label_1064_v299
lw $t5,0($t5)
sb $v0,0($t5)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v300,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1066_v300
sw $t5,0($t0)
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
# Original instruction: sw $v0,0(v300)
la $t5,label_1066_v300
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# [[[Assign]]]: CHAR
# [[Get VAR Addr]]
# Original instruction: addiu v301,$fp,-24
addiu $t5,$fp,-24
la $t0,label_1072_v301
sw $t5,0($t0)
# [[Get VAL]]
# Execute get_mark
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v302,$fp,4
addiu $t5,$fp,4
la $t0,label_1071_v302
sw $t5,0($t0)
# Original instruction: lw v302,0(v302)
la $t4,label_1071_v302
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1071_v302
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v302,0($sp)
la $t5,label_1071_v302
lw $t5,0($t5)
sw $t5,0($sp)
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
# Original instruction: sb $v0,0(v301)
la $t5,label_1072_v301
lw $t5,0($t5)
sb $v0,0($t5)
# Copy End
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v303,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1086_v303
sw $t5,0($t0)
# [[Get VAL]]
# Execute set
# [[[Retrieving arg val]]]: CHAR
# Original instruction: addiu v304,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1077_v304
sw $t5,0($t0)
# Original instruction: lb v304,0(v304)
la $t4,label_1077_v304
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1077_v304
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v304,0($sp)
la $t5,label_1077_v304
lw $t5,0($t5)
sb $t5,0($sp)
# # [[[Arg Pushed]]]: CHAR ended
# [[[Retrieving arg val]]]: INT
# Original instruction: addiu v305,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1081_v305
sw $t5,0($t0)
# Original instruction: lw v305,0(v305)
la $t4,label_1081_v305
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1081_v305
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v305,0($sp)
la $t5,label_1081_v305
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: INT ended
# [[[Retrieving arg val]]]: CHAR
# Original instruction: addiu v306,$fp,-24
addiu $t5,$fp,-24
la $t0,label_1085_v306
sw $t5,0($t0)
# Original instruction: lb v306,0(v306)
la $t4,label_1085_v306
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1085_v306
sw $t4,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v306,0($sp)
la $t5,label_1085_v306
lw $t5,0($t5)
sb $t5,0($sp)
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
# Original instruction: sw $v0,0(v303)
la $t5,label_1086_v303
lw $t5,0($t5)
sw $v0,0($t5)
# Copy End
# Original instruction: addiu v307,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1091_v307
sw $t5,0($t0)
# Original instruction: lw v307,0(v307)
la $t4,label_1091_v307
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1091_v307
sw $t4,0($t0)
# Original instruction: li v308,0
li $t5,0
la $t0,label_1092_v308
sw $t5,0($t0)
# Original instruction: xor v309,v307,v308
la $t5,label_1091_v307
lw $t5,0($t5)
la $t4,label_1092_v308
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1096_v309
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v309,v309,$t0
la $t4,label_1096_v309
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1096_v309
sw $t4,0($t0)
# Original instruction: beq v309,$zero,label_128_else
la $t5,label_1096_v309
lw $t5,0($t5)
beq $t5,$zero,label_128_else
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@4459eb14
# Original instruction: la v310,label_26_
la $t5,label_26_
la $t0,label_1098_v310
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v310,0($sp)
la $t5,label_1098_v310
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@4459eb14 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Return From print_s
# Original instruction: j label_129_end
j label_129_end
label_128_else:
# Original instruction: addiu v311,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1107_v311
sw $t5,0($t0)
# Original instruction: lw v311,0(v311)
la $t4,label_1107_v311
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1107_v311
sw $t4,0($t0)
# Original instruction: li v312,0
li $t5,0
la $t0,label_1104_v312
sw $t5,0($t0)
# Original instruction: li v313,1
li $t5,1
la $t0,label_1105_v313
sw $t5,0($t0)
# Original instruction: sub v314,v312,v313
la $t5,label_1104_v312
lw $t5,0($t5)
la $t4,label_1105_v313
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_1108_v314
sw $t3,0($t0)
# Original instruction: xor v315,v311,v314
la $t5,label_1107_v311
lw $t5,0($t5)
la $t4,label_1108_v314
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1112_v315
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v315,v315,$t0
la $t4,label_1112_v315
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1112_v315
sw $t4,0($t0)
# Original instruction: beq v315,$zero,label_130_else
la $t5,label_1112_v315
lw $t5,0($t5)
beq $t5,$zero,label_130_else
# Execute print_s
# [[[Retrieving arg val]]]: ast.PointerType@5a2e4553
# Original instruction: la v316,label_27_
la $t5,label_27_
la $t0,label_1114_v316
sw $t5,0($t0)
# [[[Reserving Stack size for Args]]]
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v316,0($sp)
la $t5,label_1114_v316
lw $t5,0($t5)
sw $t5,0($sp)
# # [[[Arg Pushed]]]: ast.PointerType@5a2e4553 ended
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
# Original instruction: addiu v317,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1118_v317
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v318,0
li $t5,0
la $t0,label_1117_v318
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v318,0(v317)
la $t5,label_1117_v318
lw $t5,0($t5)
la $t4,label_1118_v317
lw $t4,0($t4)
sw $t5,0($t4)
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

.data
# Allocated labels for virtual registers
label_1141_v324:
.space 4
label_1278_v363:
.space 4
label_1366_v387:
.space 4
label_1142_v325:
.space 4
label_1322_v375:
.space 4
label_1190_v338:
.space 4
label_1134_v323:
.space 4
label_1226_v349:
.space 4
label_1357_v384:
.space 4
label_1250_v355:
.space 4
label_1182_v336:
.space 4
label_1390_v394:
.space 4
label_1238_v352:
.space 4
label_1154_v328:
.space 4
label_1317_v373:
.space 4
label_1225_v348:
.space 4
label_1318_v374:
.space 4
label_1230_v350:
.space 4
label_1146_v326:
.space 4
label_1358_v385:
.space 4
label_1373_v389:
.space 4
label_1130_v322:
.space 4
label_1249_v354:
.space 4
label_1265_v359:
.space 4
label_1282_v364:
.space 4
label_1298_v368:
.space 4
label_1289_v365:
.space 4
label_1210_v344:
.space 4
label_1386_v393:
.space 4
label_1334_v379:
.space 4
label_1350_v383:
.space 4
label_1186_v337:
.space 4
label_1217_v347:
.space 4
label_1346_v382:
.space 4
label_1189_v339:
.space 4
label_1202_v342:
.space 4
label_1169_v332:
.space 4
label_1158_v329:
.space 4
label_1237_v351:
.space 4
label_1310_v372:
.space 4
label_1305_v370:
.space 4
label_1326_v376:
.space 4
label_1402_v397:
.space 4
label_1325_v377:
.space 4
label_1218_v346:
.space 4
label_1129_v321:
.space 4
label_1174_v334:
.space 4
label_1254_v356:
.space 4
label_1365_v388:
.space 4
label_1181_v335:
.space 4
label_1170_v333:
.space 4
label_1277_v362:
.space 4
label_1345_v381:
.space 4
label_1297_v369:
.space 4
label_1162_v330:
.space 4
label_1198_v341:
.space 4
label_1385_v392:
.space 4
label_1258_v357:
.space 4
label_1374_v390:
.space 4
label_1214_v345:
.space 4
label_1242_v353:
.space 4
label_1398_v396:
.space 4
label_1306_v371:
.space 4
label_1338_v380:
.space 4
label_1257_v358:
.space 4
label_1290_v366:
.space 4
label_1406_v398:
.space 4
label_1266_v360:
.space 4
label_1161_v331:
.space 4
label_1378_v391:
.space 4
label_1397_v395:
.space 4
label_1153_v327:
.space 4
label_1270_v361:
.space 4
label_1121_v320:
.space 4
label_1209_v343:
.space 4
label_1197_v340:
.space 4
label_1410_v400:
.space 4
label_1122_v319:
.space 4
label_1294_v367:
.space 4
label_1362_v386:
.space 4
label_1333_v378:
.space 4
label_1405_v399:
.space 4

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
# Original instruction: addiu v319,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1122_v319
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v320,0
li $t5,0
la $t0,label_1121_v320
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v320,0(v319)
la $t5,label_1121_v320
lw $t5,0($t5)
la $t4,label_1122_v319
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: la v321,a11
la $t5,a11
la $t0,label_1129_v321
sw $t5,0($t0)
# Original instruction: lb v321,0(v321)
la $t4,label_1129_v321
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1129_v321
sw $t4,0($t0)
# Original instruction: addiu v322,$fp,8
addiu $t5,$fp,8
la $t0,label_1130_v322
sw $t5,0($t0)
# Original instruction: lb v322,0(v322)
la $t4,label_1130_v322
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1130_v322
sw $t4,0($t0)
# Original instruction: xor v323,v321,v322
la $t5,label_1129_v321
lw $t5,0($t5)
la $t4,label_1130_v322
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1134_v323
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v323,v323,$t0
la $t4,label_1134_v323
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1134_v323
sw $t4,0($t0)
# Original instruction: beq v323,$zero,label_132_else
la $t5,label_1134_v323
lw $t5,0($t5)
beq $t5,$zero,label_132_else
# Original instruction: la v324,a21
la $t5,a21
la $t0,label_1141_v324
sw $t5,0($t0)
# Original instruction: lb v324,0(v324)
la $t4,label_1141_v324
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1141_v324
sw $t4,0($t0)
# Original instruction: addiu v325,$fp,8
addiu $t5,$fp,8
la $t0,label_1142_v325
sw $t5,0($t0)
# Original instruction: lb v325,0(v325)
la $t4,label_1142_v325
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1142_v325
sw $t4,0($t0)
# Original instruction: xor v326,v324,v325
la $t5,label_1141_v324
lw $t5,0($t5)
la $t4,label_1142_v325
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1146_v326
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v326,v326,$t0
la $t4,label_1146_v326
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1146_v326
sw $t4,0($t0)
# Original instruction: beq v326,$zero,label_134_else
la $t5,label_1146_v326
lw $t5,0($t5)
beq $t5,$zero,label_134_else
# Original instruction: la v327,a31
la $t5,a31
la $t0,label_1153_v327
sw $t5,0($t0)
# Original instruction: lb v327,0(v327)
la $t4,label_1153_v327
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1153_v327
sw $t4,0($t0)
# Original instruction: addiu v328,$fp,8
addiu $t5,$fp,8
la $t0,label_1154_v328
sw $t5,0($t0)
# Original instruction: lb v328,0(v328)
la $t4,label_1154_v328
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1154_v328
sw $t4,0($t0)
# Original instruction: xor v329,v327,v328
la $t5,label_1153_v327
lw $t5,0($t5)
la $t4,label_1154_v328
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1158_v329
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v329,v329,$t0
la $t4,label_1158_v329
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1158_v329
sw $t4,0($t0)
# Original instruction: beq v329,$zero,label_136_else
la $t5,label_1158_v329
lw $t5,0($t5)
beq $t5,$zero,label_136_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v330,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1162_v330
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v331,1
li $t5,1
la $t0,label_1161_v331
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v331,0(v330)
la $t5,label_1161_v331
lw $t5,0($t5)
la $t4,label_1162_v330
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_137_end
j label_137_end
label_136_else:
label_137_end:
# Original instruction: j label_135_end
j label_135_end
label_134_else:
# Original instruction: la v332,a22
la $t5,a22
la $t0,label_1169_v332
sw $t5,0($t0)
# Original instruction: lb v332,0(v332)
la $t4,label_1169_v332
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1169_v332
sw $t4,0($t0)
# Original instruction: addiu v333,$fp,8
addiu $t5,$fp,8
la $t0,label_1170_v333
sw $t5,0($t0)
# Original instruction: lb v333,0(v333)
la $t4,label_1170_v333
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1170_v333
sw $t4,0($t0)
# Original instruction: xor v334,v332,v333
la $t5,label_1169_v332
lw $t5,0($t5)
la $t4,label_1170_v333
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1174_v334
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v334,v334,$t0
la $t4,label_1174_v334
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1174_v334
sw $t4,0($t0)
# Original instruction: beq v334,$zero,label_138_else
la $t5,label_1174_v334
lw $t5,0($t5)
beq $t5,$zero,label_138_else
# Original instruction: la v335,a33
la $t5,a33
la $t0,label_1181_v335
sw $t5,0($t0)
# Original instruction: lb v335,0(v335)
la $t4,label_1181_v335
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1181_v335
sw $t4,0($t0)
# Original instruction: addiu v336,$fp,8
addiu $t5,$fp,8
la $t0,label_1182_v336
sw $t5,0($t0)
# Original instruction: lb v336,0(v336)
la $t4,label_1182_v336
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1182_v336
sw $t4,0($t0)
# Original instruction: xor v337,v335,v336
la $t5,label_1181_v335
lw $t5,0($t5)
la $t4,label_1182_v336
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1186_v337
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v337,v337,$t0
la $t4,label_1186_v337
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1186_v337
sw $t4,0($t0)
# Original instruction: beq v337,$zero,label_140_else
la $t5,label_1186_v337
lw $t5,0($t5)
beq $t5,$zero,label_140_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v338,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1190_v338
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v339,1
li $t5,1
la $t0,label_1189_v339
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v339,0(v338)
la $t5,label_1189_v339
lw $t5,0($t5)
la $t4,label_1190_v338
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_141_end
j label_141_end
label_140_else:
label_141_end:
# Original instruction: j label_139_end
j label_139_end
label_138_else:
# Original instruction: la v340,a12
la $t5,a12
la $t0,label_1197_v340
sw $t5,0($t0)
# Original instruction: lb v340,0(v340)
la $t4,label_1197_v340
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1197_v340
sw $t4,0($t0)
# Original instruction: addiu v341,$fp,8
addiu $t5,$fp,8
la $t0,label_1198_v341
sw $t5,0($t0)
# Original instruction: lb v341,0(v341)
la $t4,label_1198_v341
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1198_v341
sw $t4,0($t0)
# Original instruction: xor v342,v340,v341
la $t5,label_1197_v340
lw $t5,0($t5)
la $t4,label_1198_v341
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1202_v342
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v342,v342,$t0
la $t4,label_1202_v342
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1202_v342
sw $t4,0($t0)
# Original instruction: beq v342,$zero,label_142_else
la $t5,label_1202_v342
lw $t5,0($t5)
beq $t5,$zero,label_142_else
# Original instruction: la v343,a13
la $t5,a13
la $t0,label_1209_v343
sw $t5,0($t0)
# Original instruction: lb v343,0(v343)
la $t4,label_1209_v343
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1209_v343
sw $t4,0($t0)
# Original instruction: addiu v344,$fp,8
addiu $t5,$fp,8
la $t0,label_1210_v344
sw $t5,0($t0)
# Original instruction: lb v344,0(v344)
la $t4,label_1210_v344
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1210_v344
sw $t4,0($t0)
# Original instruction: xor v345,v343,v344
la $t5,label_1209_v343
lw $t5,0($t5)
la $t4,label_1210_v344
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1214_v345
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v345,v345,$t0
la $t4,label_1214_v345
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1214_v345
sw $t4,0($t0)
# Original instruction: beq v345,$zero,label_144_else
la $t5,label_1214_v345
lw $t5,0($t5)
beq $t5,$zero,label_144_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v346,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1218_v346
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v347,1
li $t5,1
la $t0,label_1217_v347
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v347,0(v346)
la $t5,label_1217_v347
lw $t5,0($t5)
la $t4,label_1218_v346
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: la v348,a12
la $t5,a12
la $t0,label_1225_v348
sw $t5,0($t0)
# Original instruction: lb v348,0(v348)
la $t4,label_1225_v348
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1225_v348
sw $t4,0($t0)
# Original instruction: addiu v349,$fp,8
addiu $t5,$fp,8
la $t0,label_1226_v349
sw $t5,0($t0)
# Original instruction: lb v349,0(v349)
la $t4,label_1226_v349
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1226_v349
sw $t4,0($t0)
# Original instruction: xor v350,v348,v349
la $t5,label_1225_v348
lw $t5,0($t5)
la $t4,label_1226_v349
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1230_v350
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v350,v350,$t0
la $t4,label_1230_v350
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1230_v350
sw $t4,0($t0)
# Original instruction: beq v350,$zero,label_146_else
la $t5,label_1230_v350
lw $t5,0($t5)
beq $t5,$zero,label_146_else
# Original instruction: la v351,a22
la $t5,a22
la $t0,label_1237_v351
sw $t5,0($t0)
# Original instruction: lb v351,0(v351)
la $t4,label_1237_v351
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1237_v351
sw $t4,0($t0)
# Original instruction: addiu v352,$fp,8
addiu $t5,$fp,8
la $t0,label_1238_v352
sw $t5,0($t0)
# Original instruction: lb v352,0(v352)
la $t4,label_1238_v352
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1238_v352
sw $t4,0($t0)
# Original instruction: xor v353,v351,v352
la $t5,label_1237_v351
lw $t5,0($t5)
la $t4,label_1238_v352
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1242_v353
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v353,v353,$t0
la $t4,label_1242_v353
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1242_v353
sw $t4,0($t0)
# Original instruction: beq v353,$zero,label_148_else
la $t5,label_1242_v353
lw $t5,0($t5)
beq $t5,$zero,label_148_else
# Original instruction: la v354,a32
la $t5,a32
la $t0,label_1249_v354
sw $t5,0($t0)
# Original instruction: lb v354,0(v354)
la $t4,label_1249_v354
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1249_v354
sw $t4,0($t0)
# Original instruction: addiu v355,$fp,8
addiu $t5,$fp,8
la $t0,label_1250_v355
sw $t5,0($t0)
# Original instruction: lb v355,0(v355)
la $t4,label_1250_v355
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1250_v355
sw $t4,0($t0)
# Original instruction: xor v356,v354,v355
la $t5,label_1249_v354
lw $t5,0($t5)
la $t4,label_1250_v355
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1254_v356
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v356,v356,$t0
la $t4,label_1254_v356
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1254_v356
sw $t4,0($t0)
# Original instruction: beq v356,$zero,label_150_else
la $t5,label_1254_v356
lw $t5,0($t5)
beq $t5,$zero,label_150_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v357,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1258_v357
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v358,1
li $t5,1
la $t0,label_1257_v358
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v358,0(v357)
la $t5,label_1257_v358
lw $t5,0($t5)
la $t4,label_1258_v357
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: la v359,a13
la $t5,a13
la $t0,label_1265_v359
sw $t5,0($t0)
# Original instruction: lb v359,0(v359)
la $t4,label_1265_v359
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1265_v359
sw $t4,0($t0)
# Original instruction: addiu v360,$fp,8
addiu $t5,$fp,8
la $t0,label_1266_v360
sw $t5,0($t0)
# Original instruction: lb v360,0(v360)
la $t4,label_1266_v360
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1266_v360
sw $t4,0($t0)
# Original instruction: xor v361,v359,v360
la $t5,label_1265_v359
lw $t5,0($t5)
la $t4,label_1266_v360
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1270_v361
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v361,v361,$t0
la $t4,label_1270_v361
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1270_v361
sw $t4,0($t0)
# Original instruction: beq v361,$zero,label_152_else
la $t5,label_1270_v361
lw $t5,0($t5)
beq $t5,$zero,label_152_else
# Original instruction: la v362,a23
la $t5,a23
la $t0,label_1277_v362
sw $t5,0($t0)
# Original instruction: lb v362,0(v362)
la $t4,label_1277_v362
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1277_v362
sw $t4,0($t0)
# Original instruction: addiu v363,$fp,8
addiu $t5,$fp,8
la $t0,label_1278_v363
sw $t5,0($t0)
# Original instruction: lb v363,0(v363)
la $t4,label_1278_v363
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1278_v363
sw $t4,0($t0)
# Original instruction: xor v364,v362,v363
la $t5,label_1277_v362
lw $t5,0($t5)
la $t4,label_1278_v363
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1282_v364
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v364,v364,$t0
la $t4,label_1282_v364
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1282_v364
sw $t4,0($t0)
# Original instruction: beq v364,$zero,label_154_else
la $t5,label_1282_v364
lw $t5,0($t5)
beq $t5,$zero,label_154_else
# Original instruction: la v365,a33
la $t5,a33
la $t0,label_1289_v365
sw $t5,0($t0)
# Original instruction: lb v365,0(v365)
la $t4,label_1289_v365
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1289_v365
sw $t4,0($t0)
# Original instruction: addiu v366,$fp,8
addiu $t5,$fp,8
la $t0,label_1290_v366
sw $t5,0($t0)
# Original instruction: lb v366,0(v366)
la $t4,label_1290_v366
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1290_v366
sw $t4,0($t0)
# Original instruction: xor v367,v365,v366
la $t5,label_1289_v365
lw $t5,0($t5)
la $t4,label_1290_v366
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1294_v367
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v367,v367,$t0
la $t4,label_1294_v367
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1294_v367
sw $t4,0($t0)
# Original instruction: beq v367,$zero,label_156_else
la $t5,label_1294_v367
lw $t5,0($t5)
beq $t5,$zero,label_156_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v368,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1298_v368
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v369,1
li $t5,1
la $t0,label_1297_v369
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v369,0(v368)
la $t5,label_1297_v369
lw $t5,0($t5)
la $t4,label_1298_v368
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_157_end
j label_157_end
label_156_else:
label_157_end:
# Original instruction: j label_155_end
j label_155_end
label_154_else:
# Original instruction: la v370,a22
la $t5,a22
la $t0,label_1305_v370
sw $t5,0($t0)
# Original instruction: lb v370,0(v370)
la $t4,label_1305_v370
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1305_v370
sw $t4,0($t0)
# Original instruction: addiu v371,$fp,8
addiu $t5,$fp,8
la $t0,label_1306_v371
sw $t5,0($t0)
# Original instruction: lb v371,0(v371)
la $t4,label_1306_v371
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1306_v371
sw $t4,0($t0)
# Original instruction: xor v372,v370,v371
la $t5,label_1305_v370
lw $t5,0($t5)
la $t4,label_1306_v371
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1310_v372
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v372,v372,$t0
la $t4,label_1310_v372
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1310_v372
sw $t4,0($t0)
# Original instruction: beq v372,$zero,label_158_else
la $t5,label_1310_v372
lw $t5,0($t5)
beq $t5,$zero,label_158_else
# Original instruction: la v373,a31
la $t5,a31
la $t0,label_1317_v373
sw $t5,0($t0)
# Original instruction: lb v373,0(v373)
la $t4,label_1317_v373
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1317_v373
sw $t4,0($t0)
# Original instruction: addiu v374,$fp,8
addiu $t5,$fp,8
la $t0,label_1318_v374
sw $t5,0($t0)
# Original instruction: lb v374,0(v374)
la $t4,label_1318_v374
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1318_v374
sw $t4,0($t0)
# Original instruction: xor v375,v373,v374
la $t5,label_1317_v373
lw $t5,0($t5)
la $t4,label_1318_v374
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1322_v375
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v375,v375,$t0
la $t4,label_1322_v375
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1322_v375
sw $t4,0($t0)
# Original instruction: beq v375,$zero,label_160_else
la $t5,label_1322_v375
lw $t5,0($t5)
beq $t5,$zero,label_160_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v376,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1326_v376
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v377,1
li $t5,1
la $t0,label_1325_v377
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v377,0(v376)
la $t5,label_1325_v377
lw $t5,0($t5)
la $t4,label_1326_v376
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: la v378,a21
la $t5,a21
la $t0,label_1333_v378
sw $t5,0($t0)
# Original instruction: lb v378,0(v378)
la $t4,label_1333_v378
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1333_v378
sw $t4,0($t0)
# Original instruction: addiu v379,$fp,8
addiu $t5,$fp,8
la $t0,label_1334_v379
sw $t5,0($t0)
# Original instruction: lb v379,0(v379)
la $t4,label_1334_v379
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1334_v379
sw $t4,0($t0)
# Original instruction: xor v380,v378,v379
la $t5,label_1333_v378
lw $t5,0($t5)
la $t4,label_1334_v379
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1338_v380
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v380,v380,$t0
la $t4,label_1338_v380
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1338_v380
sw $t4,0($t0)
# Original instruction: beq v380,$zero,label_162_else
la $t5,label_1338_v380
lw $t5,0($t5)
beq $t5,$zero,label_162_else
# Original instruction: la v381,a22
la $t5,a22
la $t0,label_1345_v381
sw $t5,0($t0)
# Original instruction: lb v381,0(v381)
la $t4,label_1345_v381
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1345_v381
sw $t4,0($t0)
# Original instruction: addiu v382,$fp,8
addiu $t5,$fp,8
la $t0,label_1346_v382
sw $t5,0($t0)
# Original instruction: lb v382,0(v382)
la $t4,label_1346_v382
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1346_v382
sw $t4,0($t0)
# Original instruction: xor v383,v381,v382
la $t5,label_1345_v381
lw $t5,0($t5)
la $t4,label_1346_v382
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1350_v383
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v383,v383,$t0
la $t4,label_1350_v383
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1350_v383
sw $t4,0($t0)
# Original instruction: beq v383,$zero,label_164_else
la $t5,label_1350_v383
lw $t5,0($t5)
beq $t5,$zero,label_164_else
# Original instruction: la v384,a23
la $t5,a23
la $t0,label_1357_v384
sw $t5,0($t0)
# Original instruction: lb v384,0(v384)
la $t4,label_1357_v384
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1357_v384
sw $t4,0($t0)
# Original instruction: addiu v385,$fp,8
addiu $t5,$fp,8
la $t0,label_1358_v385
sw $t5,0($t0)
# Original instruction: lb v385,0(v385)
la $t4,label_1358_v385
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1358_v385
sw $t4,0($t0)
# Original instruction: xor v386,v384,v385
la $t5,label_1357_v384
lw $t5,0($t5)
la $t4,label_1358_v385
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1362_v386
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v386,v386,$t0
la $t4,label_1362_v386
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1362_v386
sw $t4,0($t0)
# Original instruction: beq v386,$zero,label_166_else
la $t5,label_1362_v386
lw $t5,0($t5)
beq $t5,$zero,label_166_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v387,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1366_v387
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v388,1
li $t5,1
la $t0,label_1365_v388
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v388,0(v387)
la $t5,label_1365_v388
lw $t5,0($t5)
la $t4,label_1366_v387
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: la v389,a31
la $t5,a31
la $t0,label_1373_v389
sw $t5,0($t0)
# Original instruction: lb v389,0(v389)
la $t4,label_1373_v389
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1373_v389
sw $t4,0($t0)
# Original instruction: addiu v390,$fp,8
addiu $t5,$fp,8
la $t0,label_1374_v390
sw $t5,0($t0)
# Original instruction: lb v390,0(v390)
la $t4,label_1374_v390
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1374_v390
sw $t4,0($t0)
# Original instruction: xor v391,v389,v390
la $t5,label_1373_v389
lw $t5,0($t5)
la $t4,label_1374_v390
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1378_v391
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v391,v391,$t0
la $t4,label_1378_v391
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1378_v391
sw $t4,0($t0)
# Original instruction: beq v391,$zero,label_168_else
la $t5,label_1378_v391
lw $t5,0($t5)
beq $t5,$zero,label_168_else
# Original instruction: la v392,a32
la $t5,a32
la $t0,label_1385_v392
sw $t5,0($t0)
# Original instruction: lb v392,0(v392)
la $t4,label_1385_v392
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1385_v392
sw $t4,0($t0)
# Original instruction: addiu v393,$fp,8
addiu $t5,$fp,8
la $t0,label_1386_v393
sw $t5,0($t0)
# Original instruction: lb v393,0(v393)
la $t4,label_1386_v393
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1386_v393
sw $t4,0($t0)
# Original instruction: xor v394,v392,v393
la $t5,label_1385_v392
lw $t5,0($t5)
la $t4,label_1386_v393
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1390_v394
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v394,v394,$t0
la $t4,label_1390_v394
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1390_v394
sw $t4,0($t0)
# Original instruction: beq v394,$zero,label_170_else
la $t5,label_1390_v394
lw $t5,0($t5)
beq $t5,$zero,label_170_else
# Original instruction: la v395,a33
la $t5,a33
la $t0,label_1397_v395
sw $t5,0($t0)
# Original instruction: lb v395,0(v395)
la $t4,label_1397_v395
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1397_v395
sw $t4,0($t0)
# Original instruction: addiu v396,$fp,8
addiu $t5,$fp,8
la $t0,label_1398_v396
sw $t5,0($t0)
# Original instruction: lb v396,0(v396)
la $t4,label_1398_v396
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1398_v396
sw $t4,0($t0)
# Original instruction: xor v397,v395,v396
la $t5,label_1397_v395
lw $t5,0($t5)
la $t4,label_1398_v396
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1402_v397
sw $t3,0($t0)
# Original instruction: li $t0,1
li $t0,1
# Original instruction: sltu v397,v397,$t0
la $t4,label_1402_v397
lw $t4,0($t4)
sltu $t4,$t4,$t0
la $t0,label_1402_v397
sw $t4,0($t0)
# Original instruction: beq v397,$zero,label_172_else
la $t5,label_1402_v397
lw $t5,0($t5)
beq $t5,$zero,label_172_else
# [[[Assign]]]: INT
# [[Get VAR Addr]]
# Original instruction: addiu v398,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1406_v398
sw $t5,0($t0)
# [[Get VAL]]
# Original instruction: li v399,1
li $t5,1
la $t0,label_1405_v399
sw $t5,0($t0)
# [[Start Copy]]
# Original instruction: sw v399,0(v398)
la $t5,label_1405_v399
lw $t5,0($t5)
la $t4,label_1406_v398
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: addiu v400,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1410_v400
sw $t5,0($t0)
# Original instruction: lw v400,0(v400)
la $t4,label_1410_v400
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1410_v400
sw $t4,0($t0)
# Original instruction: sw v400,4($fp)
la $t5,label_1410_v400
lw $t5,0($t5)
sw $t5,4($fp)
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

