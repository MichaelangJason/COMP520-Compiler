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
label_187_v9:
.space 4
label_278_v52:
.space 4
label_204_v14:
.space 4
label_247_v39:
.space 4
label_285_v56:
.space 4
label_183_v4:
.space 4
label_210_v19:
.space 4
label_180_v0:
.space 4
label_196_v13:
.space 4
label_239_v37:
.space 4
label_277_v53:
.space 4
label_295_v61:
.space 4
label_233_v33:
.space 4
label_179_v1:
.space 4
label_274_v50:
.space 4
label_292_v58:
.space 4
label_254_v41:
.space 4
label_268_v49:
.space 4
label_226_v29:
.space 4
label_201_v16:
.space 4
label_272_v51:
.space 4
label_252_v42:
.space 4
label_203_v15:
.space 4
label_260_v45:
.space 4
label_188_v8:
.space 4
label_214_v22:
.space 4
label_222_v27:
.space 4
label_259_v46:
.space 4
label_217_v24:
.space 4
label_218_v23:
.space 4
label_228_v28:
.space 4
label_241_v36:
.space 4
label_192_v11:
.space 4
label_290_v59:
.space 4
label_208_v20:
.space 4
label_286_v57:
.space 4
label_230_v31:
.space 4
label_267_v48:
.space 4
label_221_v26:
.space 4
label_256_v44:
.space 4
label_242_v35:
.space 4
label_248_v40:
.space 4
label_184_v3:
.space 4
label_234_v32:
.space 4
label_296_v60:
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
# Original instruction: pushRegisters
la $t0,label_187_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_278_v52
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_204_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_247_v39
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_285_v56
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_183_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_210_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_180_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_196_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_239_v37
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_277_v53
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_295_v61
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_233_v33
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_179_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_274_v50
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_292_v58
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_254_v41
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_268_v49
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_226_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_201_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_272_v51
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_252_v42
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_203_v15
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_260_v45
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_188_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_214_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_222_v27
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_259_v46
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_217_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_218_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_228_v28
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_241_v36
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_290_v59
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_208_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_286_v57
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_230_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_267_v48
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_221_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_256_v44
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_242_v35
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_248_v40
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_184_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_234_v32
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_296_v60
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v0,empty
la $t5,empty
la $t0,label_180_v0
sw $t5,0($t0)
# >>Get VAL<<
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
# >>Start Copy<<
# Original instruction: sb v1,0(v0)
la $t5,label_179_v1
lw $t5,0($t5)
la $t4,label_180_v0
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v3,$fp,-8
addiu $t5,$fp,-8
la $t0,label_184_v3
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v4,1
li $t5,1
la $t0,label_183_v4
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v4,0(v3)
la $t5,label_183_v4
lw $t5,0($t5)
la $t4,label_184_v3
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute reset
# Original instruction: jal reset
jal reset
# >>>>>>>>>Return From reset
# Execute printGame
# Original instruction: jal printGame
jal printGame
# >>>>>>>>>Return From printGame
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v8,$fp,-12
addiu $t5,$fp,-12
la $t0,label_188_v8
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v9,1
li $t5,1
la $t0,label_187_v9
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v9,0(v8)
la $t5,label_187_v9
lw $t5,0($t5)
la $t4,label_188_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_36_while:
# Original instruction: addiu v11,$fp,-8
addiu $t5,$fp,-8
la $t0,label_192_v11
sw $t5,0($t0)
# Original instruction: lw v11,0(v11)
la $t4,label_192_v11
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_192_v11
sw $t4,0($t0)
# Original instruction: beq v11,$zero,label_37_end
la $t5,label_192_v11
lw $t5,0($t5)
beq $t5,$zero,label_37_end
# Execute selectmove
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v13,$fp,-12
addiu $t5,$fp,-12
la $t0,label_196_v13
sw $t5,0($t0)
# Original instruction: lw v13,0(v13)
la $t4,label_196_v13
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_196_v13
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v13,0($sp)
la $t5,label_196_v13
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal selectmove
jal selectmove
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From selectmove
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: addiu v14,$fp,-16
addiu $t5,$fp,-16
la $t0,label_204_v14
sw $t5,0($t0)
# >>Get VAL<<
# Execute get_mark
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v16,$fp,-12
addiu $t5,$fp,-12
la $t0,label_201_v16
sw $t5,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_201_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_201_v16
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v16,0($sp)
la $t5,label_201_v16
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 1
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal get_mark
jal get_mark
# Original instruction: lb v15,0($sp)
lb $t5,0($sp)
la $t0,label_203_v15
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From get_mark
# >>Start Copy<<
# Original instruction: sb v15,0(v14)
la $t5,label_203_v15
lw $t5,0($t5)
la $t4,label_204_v14
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Execute printGame
# Original instruction: jal printGame
jal printGame
# >>>>>>>>>Return From printGame
# Execute won
# >>>Retrieving arg val<<<: CHAR
# Original instruction: addiu v20,$fp,-16
addiu $t5,$fp,-16
la $t0,label_208_v20
sw $t5,0($t0)
# Original instruction: lb v20,0(v20)
la $t4,label_208_v20
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_208_v20
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v20,0($sp)
la $t5,label_208_v20
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal won
jal won
# Original instruction: lw v19,0($sp)
lw $t5,0($sp)
la $t0,label_210_v19
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From won
# Original instruction: beq v19,$zero,label_41_else
la $t5,label_210_v19
lw $t5,0($t5)
beq $t5,$zero,label_41_else
# Execute printWinner
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v22,$fp,-12
addiu $t5,$fp,-12
la $t0,label_214_v22
sw $t5,0($t0)
# Original instruction: lw v22,0(v22)
la $t4,label_214_v22
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_214_v22
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v22,0($sp)
la $t5,label_214_v22
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal printWinner
jal printWinner
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From printWinner
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v23,$fp,-8
addiu $t5,$fp,-8
la $t0,label_218_v23
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v24,0
li $t5,0
la $t0,label_217_v24
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v24,0(v23)
la $t5,label_217_v24
lw $t5,0($t5)
la $t4,label_218_v23
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_42_end
j label_42_end
label_41_else:
# Execute full
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal full
jal full
# Original instruction: lw v26,0($sp)
lw $t5,0($sp)
la $t0,label_221_v26
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From full
# Original instruction: li v27,1
li $t5,1
la $t0,label_222_v27
sw $t5,0($t0)
# Original instruction: xor v28,v26,v27
la $t5,label_221_v26
lw $t5,0($t5)
la $t4,label_222_v27
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_228_v28
sw $t3,0($t0)
# Original instruction: li v29,1
li $t5,1
la $t0,label_226_v29
sw $t5,0($t0)
# Original instruction: sltu v28,v28,v29
la $t3,label_228_v28
lw $t3,0($t3)
la $t4,label_226_v29
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_228_v28
sw $t3,0($t0)
# Original instruction: beq v28,$zero,label_45_else
la $t5,label_228_v28
lw $t5,0($t5)
beq $t5,$zero,label_45_else
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@69222c14
# Original instruction: la v31,label_29_
la $t5,label_29_
la $t0,label_230_v31
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v31,0($sp)
la $t5,label_230_v31
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@69222c14 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v32,$fp,-8
addiu $t5,$fp,-8
la $t0,label_234_v32
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v33,0
li $t5,0
la $t0,label_233_v33
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v33,0(v32)
la $t5,label_233_v33
lw $t5,0($t5)
la $t4,label_234_v32
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_46_end
j label_46_end
label_45_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v35,$fp,-12
addiu $t5,$fp,-12
la $t0,label_242_v35
sw $t5,0($t0)
# >>Get VAL<<
# Execute switchPlayer
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v37,$fp,-12
addiu $t5,$fp,-12
la $t0,label_239_v37
sw $t5,0($t0)
# Original instruction: lw v37,0(v37)
la $t4,label_239_v37
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_239_v37
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v37,0($sp)
la $t5,label_239_v37
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal switchPlayer
jal switchPlayer
# Original instruction: lw v36,0($sp)
lw $t5,0($sp)
la $t0,label_241_v36
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From switchPlayer
# >>Start Copy<<
# Original instruction: sw v36,0(v35)
la $t5,label_241_v36
lw $t5,0($t5)
la $t4,label_242_v35
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_46_end:
label_42_end:
# Original instruction: addiu v39,$fp,-8
addiu $t5,$fp,-8
la $t0,label_247_v39
sw $t5,0($t0)
# Original instruction: lw v39,0(v39)
la $t4,label_247_v39
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_247_v39
sw $t4,0($t0)
# Original instruction: li v40,0
li $t5,0
la $t0,label_248_v40
sw $t5,0($t0)
# Original instruction: xor v41,v39,v40
la $t5,label_247_v39
lw $t5,0($t5)
la $t4,label_248_v40
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_254_v41
sw $t3,0($t0)
# Original instruction: li v42,1
li $t5,1
la $t0,label_252_v42
sw $t5,0($t0)
# Original instruction: sltu v41,v41,v42
la $t3,label_254_v41
lw $t3,0($t3)
la $t4,label_252_v42
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_254_v41
sw $t3,0($t0)
# Original instruction: beq v41,$zero,label_49_else
la $t5,label_254_v41
lw $t5,0($t5)
beq $t5,$zero,label_49_else
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@606d8acf
# Original instruction: la v44,label_30_
la $t5,label_30_
la $t0,label_256_v44
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v44,0($sp)
la $t5,label_256_v44
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@606d8acf ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: addiu v45,$fp,-20
addiu $t5,$fp,-20
la $t0,label_260_v45
sw $t5,0($t0)
# >>Get VAL<<
# Execute read_c
# >>>Reserver Stack size for Return VAL<<<: 1
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_c
jal read_c
# Original instruction: lb v46,0($sp)
lb $t5,0($sp)
la $t0,label_259_v46
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From read_c
# >>Start Copy<<
# Original instruction: sb v46,0(v45)
la $t5,label_259_v46
lw $t5,0($t5)
la $t4,label_260_v45
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: addiu v48,$fp,-20
addiu $t5,$fp,-20
la $t0,label_267_v48
sw $t5,0($t0)
# Original instruction: lb v48,0(v48)
la $t4,label_267_v48
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_267_v48
sw $t4,0($t0)
# Original instruction: la v49,label_31_
la $t5,label_31_
la $t0,label_268_v49
sw $t5,0($t0)
# Original instruction: lb v49,0(v49)
la $t4,label_268_v49
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_268_v49
sw $t4,0($t0)
# Original instruction: xor v50,v48,v49
la $t5,label_267_v48
lw $t5,0($t5)
la $t4,label_268_v49
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_274_v50
sw $t3,0($t0)
# Original instruction: li v51,1
li $t5,1
la $t0,label_272_v51
sw $t5,0($t0)
# Original instruction: sltu v50,v50,v51
la $t3,label_274_v50
lw $t3,0($t3)
la $t4,label_272_v51
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_274_v50
sw $t3,0($t0)
# Original instruction: beq v50,$zero,label_52_else
la $t5,label_274_v50
lw $t5,0($t5)
beq $t5,$zero,label_52_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v52,$fp,-8
addiu $t5,$fp,-8
la $t0,label_278_v52
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v53,1
li $t5,1
la $t0,label_277_v53
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v53,0(v52)
la $t5,label_277_v53
lw $t5,0($t5)
la $t4,label_278_v52
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute reset
# Original instruction: jal reset
jal reset
# >>>>>>>>>Return From reset
# Original instruction: j label_53_end
j label_53_end
label_52_else:
# Original instruction: addiu v56,$fp,-20
addiu $t5,$fp,-20
la $t0,label_285_v56
sw $t5,0($t0)
# Original instruction: lb v56,0(v56)
la $t4,label_285_v56
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_285_v56
sw $t4,0($t0)
# Original instruction: la v57,label_32_
la $t5,label_32_
la $t0,label_286_v57
sw $t5,0($t0)
# Original instruction: lb v57,0(v57)
la $t4,label_286_v57
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_286_v57
sw $t4,0($t0)
# Original instruction: xor v58,v56,v57
la $t5,label_285_v56
lw $t5,0($t5)
la $t4,label_286_v57
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_292_v58
sw $t3,0($t0)
# Original instruction: li v59,1
li $t5,1
la $t0,label_290_v59
sw $t5,0($t0)
# Original instruction: sltu v58,v58,v59
la $t3,label_292_v58
lw $t3,0($t3)
la $t4,label_290_v59
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_292_v58
sw $t3,0($t0)
# Original instruction: beq v58,$zero,label_54_else
la $t5,label_292_v58
lw $t5,0($t5)
beq $t5,$zero,label_54_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v60,$fp,-8
addiu $t5,$fp,-8
la $t0,label_296_v60
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v61,1
li $t5,1
la $t0,label_295_v61
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v61,0(v60)
la $t5,label_295_v61
lw $t5,0($t5)
la $t4,label_296_v60
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Execute reset
# Original instruction: jal reset
jal reset
# >>>>>>>>>Return From reset
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
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_296_v60
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_234_v32
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_184_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_248_v40
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_242_v35
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_256_v44
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_221_v26
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_267_v48
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_230_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_286_v57
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_208_v20
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_290_v59
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_192_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_241_v36
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_228_v28
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_218_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_217_v24
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_259_v46
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_222_v27
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_214_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_188_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_260_v45
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_203_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_252_v42
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_272_v51
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_201_v16
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_226_v29
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_268_v49
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_254_v41
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_292_v58
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_274_v50
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_179_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_233_v33
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_295_v61
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_277_v53
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_239_v37
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_196_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_180_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_210_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_183_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_285_v56
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_247_v39
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_204_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_278_v52
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_187_v9
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
label_319_v74:
.space 4
label_343_v86:
.space 4
label_320_v73:
.space 4
label_350_v88:
.space 4
label_313_v71:
.space 4
label_325_v77:
.space 4
label_301_v65:
.space 4
label_307_v68:
.space 4
label_314_v70:
.space 4
label_338_v82:
.space 4
label_302_v64:
.space 4
label_308_v67:
.space 4
label_332_v79:
.space 4
label_331_v80:
.space 4
label_344_v85:
.space 4
label_326_v76:
.space 4
label_349_v89:
.space 4
label_337_v83:
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
# Original instruction: pushRegisters
la $t0,label_319_v74
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_343_v86
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_320_v73
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_350_v88
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_313_v71
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_325_v77
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_301_v65
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_307_v68
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_314_v70
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_338_v82
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_302_v64
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_308_v67
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_332_v79
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_331_v80
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_344_v85
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_326_v76
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_349_v89
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_337_v83
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v64,a11
la $t5,a11
la $t0,label_302_v64
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v65,empty
la $t5,empty
la $t0,label_301_v65
sw $t5,0($t0)
# Original instruction: lb v65,0(v65)
la $t4,label_301_v65
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_301_v65
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v65,0(v64)
la $t5,label_301_v65
lw $t5,0($t5)
la $t4,label_302_v64
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v67,a12
la $t5,a12
la $t0,label_308_v67
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v68,empty
la $t5,empty
la $t0,label_307_v68
sw $t5,0($t0)
# Original instruction: lb v68,0(v68)
la $t4,label_307_v68
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_307_v68
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v68,0(v67)
la $t5,label_307_v68
lw $t5,0($t5)
la $t4,label_308_v67
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v70,a13
la $t5,a13
la $t0,label_314_v70
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v71,empty
la $t5,empty
la $t0,label_313_v71
sw $t5,0($t0)
# Original instruction: lb v71,0(v71)
la $t4,label_313_v71
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_313_v71
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v71,0(v70)
la $t5,label_313_v71
lw $t5,0($t5)
la $t4,label_314_v70
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v73,a21
la $t5,a21
la $t0,label_320_v73
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v74,empty
la $t5,empty
la $t0,label_319_v74
sw $t5,0($t0)
# Original instruction: lb v74,0(v74)
la $t4,label_319_v74
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_319_v74
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v74,0(v73)
la $t5,label_319_v74
lw $t5,0($t5)
la $t4,label_320_v73
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v76,a22
la $t5,a22
la $t0,label_326_v76
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v77,empty
la $t5,empty
la $t0,label_325_v77
sw $t5,0($t0)
# Original instruction: lb v77,0(v77)
la $t4,label_325_v77
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_325_v77
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v77,0(v76)
la $t5,label_325_v77
lw $t5,0($t5)
la $t4,label_326_v76
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v79,a23
la $t5,a23
la $t0,label_332_v79
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v80,empty
la $t5,empty
la $t0,label_331_v80
sw $t5,0($t0)
# Original instruction: lb v80,0(v80)
la $t4,label_331_v80
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_331_v80
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v80,0(v79)
la $t5,label_331_v80
lw $t5,0($t5)
la $t4,label_332_v79
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v82,a31
la $t5,a31
la $t0,label_338_v82
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v83,empty
la $t5,empty
la $t0,label_337_v83
sw $t5,0($t0)
# Original instruction: lb v83,0(v83)
la $t4,label_337_v83
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_337_v83
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v83,0(v82)
la $t5,label_337_v83
lw $t5,0($t5)
la $t4,label_338_v82
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v85,a32
la $t5,a32
la $t0,label_344_v85
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v86,empty
la $t5,empty
la $t0,label_343_v86
sw $t5,0($t0)
# Original instruction: lb v86,0(v86)
la $t4,label_343_v86
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_343_v86
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v86,0(v85)
la $t5,label_343_v86
lw $t5,0($t5)
la $t4,label_344_v85
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v88,a33
la $t5,a33
la $t0,label_350_v88
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: la v89,empty
la $t5,empty
la $t0,label_349_v89
sw $t5,0($t0)
# Original instruction: lb v89,0(v89)
la $t4,label_349_v89
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_349_v89
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v89,0(v88)
la $t5,label_349_v89
lw $t5,0($t5)
la $t4,label_350_v88
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_337_v83
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_349_v89
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_326_v76
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_344_v85
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_331_v80
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_332_v79
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_308_v67
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_302_v64
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_338_v82
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_314_v70
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_307_v68
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_301_v65
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_325_v77
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_313_v71
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_350_v88
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_320_v73
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_343_v86
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_319_v74
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
label_439_v123:
.space 4
label_548_v162:
.space 4
label_372_v98:
.space 4
label_549_v163:
.space 4
label_486_v137:
.space 4
label_505_v147:
.space 4
label_419_v116:
.space 4
label_485_v140:
.space 4
label_376_v97:
.space 4
label_504_v146:
.space 4
label_508_v145:
.space 4
label_530_v153:
.space 4
label_454_v128:
.space 4
label_450_v127:
.space 4
label_527_v155:
.space 4
label_388_v104:
.space 4
label_476_v136:
.space 4
label_428_v119:
.space 4
label_498_v144:
.space 4
label_529_v156:
.space 4
label_373_v99:
.space 4
label_395_v107:
.space 4
label_552_v161:
.space 4
label_562_v169:
.space 4
label_427_v118:
.space 4
label_515_v150:
.space 4
label_354_v91:
.space 4
label_366_v96:
.space 4
label_438_v122:
.space 4
label_463_v132:
.space 4
label_432_v120:
.space 4
label_464_v129:
.space 4
label_557_v166:
.space 4
label_362_v95:
.space 4
label_558_v167:
.space 4
label_405_v110:
.space 4
label_461_v131:
.space 4
label_442_v121:
.space 4
label_398_v105:
.space 4
label_406_v111:
.space 4
label_537_v158:
.space 4
label_482_v138:
.space 4
label_420_v113:
.space 4
label_416_v114:
.space 4
label_516_v151:
.space 4
label_361_v94:
.space 4
label_449_v126:
.space 4
label_520_v152:
.space 4
label_564_v168:
.space 4
label_472_v135:
.space 4
label_493_v142:
.space 4
label_397_v108:
.space 4
label_542_v160:
.space 4
label_494_v143:
.space 4
label_471_v134:
.space 4
label_375_v100:
.space 4
label_383_v102:
.space 4
label_410_v112:
.space 4
label_394_v106:
.space 4
label_526_v154:
.space 4
label_551_v164:
.space 4
label_566_v170:
.space 4
label_538_v159:
.space 4
label_384_v103:
.space 4
label_460_v130:
.space 4
label_353_v92:
.space 4
label_417_v115:
.space 4
label_483_v139:
.space 4
label_441_v124:
.space 4
label_507_v148:
.space 4
label_568_v171:
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
# Original instruction: pushRegisters
la $t0,label_439_v123
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_548_v162
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_372_v98
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_549_v163
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_486_v137
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_505_v147
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_419_v116
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_485_v140
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_376_v97
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_504_v146
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_508_v145
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_530_v153
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_454_v128
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_450_v127
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_527_v155
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_388_v104
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_476_v136
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_428_v119
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_498_v144
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_529_v156
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_373_v99
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_395_v107
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_552_v161
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_562_v169
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_427_v118
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_515_v150
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_354_v91
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_366_v96
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_438_v122
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_463_v132
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_432_v120
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_464_v129
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_557_v166
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_362_v95
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_558_v167
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_405_v110
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_461_v131
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_442_v121
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_398_v105
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_406_v111
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_537_v158
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_482_v138
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_420_v113
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_416_v114
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_516_v151
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_361_v94
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_449_v126
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_520_v152
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_564_v168
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_472_v135
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_493_v142
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_397_v108
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_542_v160
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_494_v143
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_471_v134
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_375_v100
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_383_v102
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_410_v112
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_394_v106
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_526_v154
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_551_v164
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_566_v170
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_538_v159
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_384_v103
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_460_v130
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_353_v92
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_417_v115
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_483_v139
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_441_v124
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_507_v148
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_568_v171
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v91,$fp,-8
addiu $t5,$fp,-8
la $t0,label_354_v91
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v92,0
li $t5,0
la $t0,label_353_v92
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v92,0(v91)
la $t5,label_353_v92
lw $t5,0($t5)
la $t4,label_354_v91
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: la v94,a11
la $t5,a11
la $t0,label_361_v94
sw $t5,0($t0)
# Original instruction: lb v94,0(v94)
la $t4,label_361_v94
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_361_v94
sw $t4,0($t0)
# Original instruction: la v95,empty
la $t5,empty
la $t0,label_362_v95
sw $t5,0($t0)
# Original instruction: lb v95,0(v95)
la $t4,label_362_v95
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_362_v95
sw $t4,0($t0)
# Original instruction: xor v96,v94,v95
la $t5,label_361_v94
lw $t5,0($t5)
la $t4,label_362_v95
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_366_v96
sw $t3,0($t0)
# Original instruction: sltu v96,$zero,v96
la $t4,label_366_v96
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_366_v96
sw $t4,0($t0)
# Original instruction: beq v96,$zero,label_56_else
la $t5,label_366_v96
lw $t5,0($t5)
beq $t5,$zero,label_56_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v97,$fp,-8
addiu $t5,$fp,-8
la $t0,label_376_v97
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v98,$fp,-8
addiu $t5,$fp,-8
la $t0,label_372_v98
sw $t5,0($t0)
# Original instruction: lw v98,0(v98)
la $t4,label_372_v98
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_372_v98
sw $t4,0($t0)
# Original instruction: li v99,1
li $t5,1
la $t0,label_373_v99
sw $t5,0($t0)
# Original instruction: add v100,v98,v99
la $t5,label_372_v98
lw $t5,0($t5)
la $t4,label_373_v99
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_375_v100
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v100,0(v97)
la $t5,label_375_v100
lw $t5,0($t5)
la $t4,label_376_v97
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_57_end
j label_57_end
label_56_else:
label_57_end:
# Original instruction: la v102,a21
la $t5,a21
la $t0,label_383_v102
sw $t5,0($t0)
# Original instruction: lb v102,0(v102)
la $t4,label_383_v102
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_383_v102
sw $t4,0($t0)
# Original instruction: la v103,empty
la $t5,empty
la $t0,label_384_v103
sw $t5,0($t0)
# Original instruction: lb v103,0(v103)
la $t4,label_384_v103
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_384_v103
sw $t4,0($t0)
# Original instruction: xor v104,v102,v103
la $t5,label_383_v102
lw $t5,0($t5)
la $t4,label_384_v103
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_388_v104
sw $t3,0($t0)
# Original instruction: sltu v104,$zero,v104
la $t4,label_388_v104
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_388_v104
sw $t4,0($t0)
# Original instruction: beq v104,$zero,label_58_else
la $t5,label_388_v104
lw $t5,0($t5)
beq $t5,$zero,label_58_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v105,$fp,-8
addiu $t5,$fp,-8
la $t0,label_398_v105
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v106,$fp,-8
addiu $t5,$fp,-8
la $t0,label_394_v106
sw $t5,0($t0)
# Original instruction: lw v106,0(v106)
la $t4,label_394_v106
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_394_v106
sw $t4,0($t0)
# Original instruction: li v107,1
li $t5,1
la $t0,label_395_v107
sw $t5,0($t0)
# Original instruction: add v108,v106,v107
la $t5,label_394_v106
lw $t5,0($t5)
la $t4,label_395_v107
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_397_v108
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v108,0(v105)
la $t5,label_397_v108
lw $t5,0($t5)
la $t4,label_398_v105
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_59_end
j label_59_end
label_58_else:
label_59_end:
# Original instruction: la v110,a31
la $t5,a31
la $t0,label_405_v110
sw $t5,0($t0)
# Original instruction: lb v110,0(v110)
la $t4,label_405_v110
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_405_v110
sw $t4,0($t0)
# Original instruction: la v111,empty
la $t5,empty
la $t0,label_406_v111
sw $t5,0($t0)
# Original instruction: lb v111,0(v111)
la $t4,label_406_v111
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_406_v111
sw $t4,0($t0)
# Original instruction: xor v112,v110,v111
la $t5,label_405_v110
lw $t5,0($t5)
la $t4,label_406_v111
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_410_v112
sw $t3,0($t0)
# Original instruction: sltu v112,$zero,v112
la $t4,label_410_v112
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_410_v112
sw $t4,0($t0)
# Original instruction: beq v112,$zero,label_60_else
la $t5,label_410_v112
lw $t5,0($t5)
beq $t5,$zero,label_60_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v113,$fp,-8
addiu $t5,$fp,-8
la $t0,label_420_v113
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v114,$fp,-8
addiu $t5,$fp,-8
la $t0,label_416_v114
sw $t5,0($t0)
# Original instruction: lw v114,0(v114)
la $t4,label_416_v114
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_416_v114
sw $t4,0($t0)
# Original instruction: li v115,1
li $t5,1
la $t0,label_417_v115
sw $t5,0($t0)
# Original instruction: add v116,v114,v115
la $t5,label_416_v114
lw $t5,0($t5)
la $t4,label_417_v115
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_419_v116
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v116,0(v113)
la $t5,label_419_v116
lw $t5,0($t5)
la $t4,label_420_v113
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_61_end
j label_61_end
label_60_else:
label_61_end:
# Original instruction: la v118,a12
la $t5,a12
la $t0,label_427_v118
sw $t5,0($t0)
# Original instruction: lb v118,0(v118)
la $t4,label_427_v118
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_427_v118
sw $t4,0($t0)
# Original instruction: la v119,empty
la $t5,empty
la $t0,label_428_v119
sw $t5,0($t0)
# Original instruction: lb v119,0(v119)
la $t4,label_428_v119
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_428_v119
sw $t4,0($t0)
# Original instruction: xor v120,v118,v119
la $t5,label_427_v118
lw $t5,0($t5)
la $t4,label_428_v119
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_432_v120
sw $t3,0($t0)
# Original instruction: sltu v120,$zero,v120
la $t4,label_432_v120
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_432_v120
sw $t4,0($t0)
# Original instruction: beq v120,$zero,label_62_else
la $t5,label_432_v120
lw $t5,0($t5)
beq $t5,$zero,label_62_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v121,$fp,-8
addiu $t5,$fp,-8
la $t0,label_442_v121
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v122,$fp,-8
addiu $t5,$fp,-8
la $t0,label_438_v122
sw $t5,0($t0)
# Original instruction: lw v122,0(v122)
la $t4,label_438_v122
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_438_v122
sw $t4,0($t0)
# Original instruction: li v123,1
li $t5,1
la $t0,label_439_v123
sw $t5,0($t0)
# Original instruction: add v124,v122,v123
la $t5,label_438_v122
lw $t5,0($t5)
la $t4,label_439_v123
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_441_v124
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v124,0(v121)
la $t5,label_441_v124
lw $t5,0($t5)
la $t4,label_442_v121
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_63_end
j label_63_end
label_62_else:
label_63_end:
# Original instruction: la v126,a22
la $t5,a22
la $t0,label_449_v126
sw $t5,0($t0)
# Original instruction: lb v126,0(v126)
la $t4,label_449_v126
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_449_v126
sw $t4,0($t0)
# Original instruction: la v127,empty
la $t5,empty
la $t0,label_450_v127
sw $t5,0($t0)
# Original instruction: lb v127,0(v127)
la $t4,label_450_v127
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_450_v127
sw $t4,0($t0)
# Original instruction: xor v128,v126,v127
la $t5,label_449_v126
lw $t5,0($t5)
la $t4,label_450_v127
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_454_v128
sw $t3,0($t0)
# Original instruction: sltu v128,$zero,v128
la $t4,label_454_v128
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_454_v128
sw $t4,0($t0)
# Original instruction: beq v128,$zero,label_64_else
la $t5,label_454_v128
lw $t5,0($t5)
beq $t5,$zero,label_64_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v129,$fp,-8
addiu $t5,$fp,-8
la $t0,label_464_v129
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v130,$fp,-8
addiu $t5,$fp,-8
la $t0,label_460_v130
sw $t5,0($t0)
# Original instruction: lw v130,0(v130)
la $t4,label_460_v130
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_460_v130
sw $t4,0($t0)
# Original instruction: li v131,1
li $t5,1
la $t0,label_461_v131
sw $t5,0($t0)
# Original instruction: add v132,v130,v131
la $t5,label_460_v130
lw $t5,0($t5)
la $t4,label_461_v131
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_463_v132
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v132,0(v129)
la $t5,label_463_v132
lw $t5,0($t5)
la $t4,label_464_v129
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_65_end
j label_65_end
label_64_else:
label_65_end:
# Original instruction: la v134,a32
la $t5,a32
la $t0,label_471_v134
sw $t5,0($t0)
# Original instruction: lb v134,0(v134)
la $t4,label_471_v134
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_471_v134
sw $t4,0($t0)
# Original instruction: la v135,empty
la $t5,empty
la $t0,label_472_v135
sw $t5,0($t0)
# Original instruction: lb v135,0(v135)
la $t4,label_472_v135
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_472_v135
sw $t4,0($t0)
# Original instruction: xor v136,v134,v135
la $t5,label_471_v134
lw $t5,0($t5)
la $t4,label_472_v135
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_476_v136
sw $t3,0($t0)
# Original instruction: sltu v136,$zero,v136
la $t4,label_476_v136
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_476_v136
sw $t4,0($t0)
# Original instruction: beq v136,$zero,label_66_else
la $t5,label_476_v136
lw $t5,0($t5)
beq $t5,$zero,label_66_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v137,$fp,-8
addiu $t5,$fp,-8
la $t0,label_486_v137
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v138,$fp,-8
addiu $t5,$fp,-8
la $t0,label_482_v138
sw $t5,0($t0)
# Original instruction: lw v138,0(v138)
la $t4,label_482_v138
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_482_v138
sw $t4,0($t0)
# Original instruction: li v139,1
li $t5,1
la $t0,label_483_v139
sw $t5,0($t0)
# Original instruction: add v140,v138,v139
la $t5,label_482_v138
lw $t5,0($t5)
la $t4,label_483_v139
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_485_v140
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v140,0(v137)
la $t5,label_485_v140
lw $t5,0($t5)
la $t4,label_486_v137
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_67_end
j label_67_end
label_66_else:
label_67_end:
# Original instruction: la v142,a13
la $t5,a13
la $t0,label_493_v142
sw $t5,0($t0)
# Original instruction: lb v142,0(v142)
la $t4,label_493_v142
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_493_v142
sw $t4,0($t0)
# Original instruction: la v143,empty
la $t5,empty
la $t0,label_494_v143
sw $t5,0($t0)
# Original instruction: lb v143,0(v143)
la $t4,label_494_v143
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_494_v143
sw $t4,0($t0)
# Original instruction: xor v144,v142,v143
la $t5,label_493_v142
lw $t5,0($t5)
la $t4,label_494_v143
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_498_v144
sw $t3,0($t0)
# Original instruction: sltu v144,$zero,v144
la $t4,label_498_v144
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_498_v144
sw $t4,0($t0)
# Original instruction: beq v144,$zero,label_68_else
la $t5,label_498_v144
lw $t5,0($t5)
beq $t5,$zero,label_68_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v145,$fp,-8
addiu $t5,$fp,-8
la $t0,label_508_v145
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v146,$fp,-8
addiu $t5,$fp,-8
la $t0,label_504_v146
sw $t5,0($t0)
# Original instruction: lw v146,0(v146)
la $t4,label_504_v146
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_504_v146
sw $t4,0($t0)
# Original instruction: li v147,1
li $t5,1
la $t0,label_505_v147
sw $t5,0($t0)
# Original instruction: add v148,v146,v147
la $t5,label_504_v146
lw $t5,0($t5)
la $t4,label_505_v147
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_507_v148
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v148,0(v145)
la $t5,label_507_v148
lw $t5,0($t5)
la $t4,label_508_v145
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_69_end
j label_69_end
label_68_else:
label_69_end:
# Original instruction: la v150,a23
la $t5,a23
la $t0,label_515_v150
sw $t5,0($t0)
# Original instruction: lb v150,0(v150)
la $t4,label_515_v150
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_515_v150
sw $t4,0($t0)
# Original instruction: la v151,empty
la $t5,empty
la $t0,label_516_v151
sw $t5,0($t0)
# Original instruction: lb v151,0(v151)
la $t4,label_516_v151
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_516_v151
sw $t4,0($t0)
# Original instruction: xor v152,v150,v151
la $t5,label_515_v150
lw $t5,0($t5)
la $t4,label_516_v151
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_520_v152
sw $t3,0($t0)
# Original instruction: sltu v152,$zero,v152
la $t4,label_520_v152
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_520_v152
sw $t4,0($t0)
# Original instruction: beq v152,$zero,label_70_else
la $t5,label_520_v152
lw $t5,0($t5)
beq $t5,$zero,label_70_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v153,$fp,-8
addiu $t5,$fp,-8
la $t0,label_530_v153
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v154,$fp,-8
addiu $t5,$fp,-8
la $t0,label_526_v154
sw $t5,0($t0)
# Original instruction: lw v154,0(v154)
la $t4,label_526_v154
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_526_v154
sw $t4,0($t0)
# Original instruction: li v155,1
li $t5,1
la $t0,label_527_v155
sw $t5,0($t0)
# Original instruction: add v156,v154,v155
la $t5,label_526_v154
lw $t5,0($t5)
la $t4,label_527_v155
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_529_v156
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v156,0(v153)
la $t5,label_529_v156
lw $t5,0($t5)
la $t4,label_530_v153
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_71_end
j label_71_end
label_70_else:
label_71_end:
# Original instruction: la v158,a33
la $t5,a33
la $t0,label_537_v158
sw $t5,0($t0)
# Original instruction: lb v158,0(v158)
la $t4,label_537_v158
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_537_v158
sw $t4,0($t0)
# Original instruction: la v159,empty
la $t5,empty
la $t0,label_538_v159
sw $t5,0($t0)
# Original instruction: lb v159,0(v159)
la $t4,label_538_v159
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_538_v159
sw $t4,0($t0)
# Original instruction: xor v160,v158,v159
la $t5,label_537_v158
lw $t5,0($t5)
la $t4,label_538_v159
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_542_v160
sw $t3,0($t0)
# Original instruction: sltu v160,$zero,v160
la $t4,label_542_v160
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_542_v160
sw $t4,0($t0)
# Original instruction: beq v160,$zero,label_72_else
la $t5,label_542_v160
lw $t5,0($t5)
beq $t5,$zero,label_72_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v161,$fp,-8
addiu $t5,$fp,-8
la $t0,label_552_v161
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v162,$fp,-8
addiu $t5,$fp,-8
la $t0,label_548_v162
sw $t5,0($t0)
# Original instruction: lw v162,0(v162)
la $t4,label_548_v162
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_548_v162
sw $t4,0($t0)
# Original instruction: li v163,1
li $t5,1
la $t0,label_549_v163
sw $t5,0($t0)
# Original instruction: add v164,v162,v163
la $t5,label_548_v162
lw $t5,0($t5)
la $t4,label_549_v163
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_551_v164
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v164,0(v161)
la $t5,label_551_v164
lw $t5,0($t5)
la $t4,label_552_v161
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: j label_73_end
j label_73_end
label_72_else:
label_73_end:
# Original instruction: addiu v166,$fp,-8
addiu $t5,$fp,-8
la $t0,label_557_v166
sw $t5,0($t0)
# Original instruction: lw v166,0(v166)
la $t4,label_557_v166
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_557_v166
sw $t4,0($t0)
# Original instruction: li v167,9
li $t5,9
la $t0,label_558_v167
sw $t5,0($t0)
# Original instruction: xor v168,v166,v167
la $t5,label_557_v166
lw $t5,0($t5)
la $t4,label_558_v167
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_564_v168
sw $t3,0($t0)
# Original instruction: li v169,1
li $t5,1
la $t0,label_562_v169
sw $t5,0($t0)
# Original instruction: sltu v168,v168,v169
la $t3,label_564_v168
lw $t3,0($t3)
la $t4,label_562_v169
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_564_v168
sw $t3,0($t0)
# Original instruction: beq v168,$zero,label_74_else
la $t5,label_564_v168
lw $t5,0($t5)
beq $t5,$zero,label_74_else
# Original instruction: li v170,1
li $t5,1
la $t0,label_566_v170
sw $t5,0($t0)
# Original instruction: sw v170,4($fp)
la $t5,label_566_v170
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j label_75_end
j label_75_end
label_74_else:
# Original instruction: li v171,0
li $t5,0
la $t0,label_568_v171
sw $t5,0($t0)
# Original instruction: sw v171,4($fp)
la $t5,label_568_v171
lw $t5,0($t5)
sw $t5,4($fp)
label_75_end:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_568_v171
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_507_v148
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_441_v124
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_483_v139
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_417_v115
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_353_v92
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_460_v130
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_384_v103
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_538_v159
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_566_v170
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_551_v164
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_526_v154
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_394_v106
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_410_v112
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_383_v102
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_375_v100
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_471_v134
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_494_v143
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_542_v160
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_397_v108
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_493_v142
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_472_v135
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_564_v168
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_520_v152
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_449_v126
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_361_v94
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_516_v151
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_416_v114
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_420_v113
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_482_v138
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_537_v158
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_406_v111
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_398_v105
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_442_v121
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_461_v131
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_405_v110
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_558_v167
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_362_v95
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_557_v166
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_464_v129
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_432_v120
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_463_v132
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_438_v122
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_366_v96
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_354_v91
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_515_v150
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_427_v118
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_562_v169
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_552_v161
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_395_v107
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_373_v99
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_529_v156
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_498_v144
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_428_v119
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_476_v136
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_388_v104
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_527_v155
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_450_v127
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_454_v128
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_530_v153
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_508_v145
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_504_v146
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_376_v97
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_485_v140
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_419_v116
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_505_v147
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_486_v137
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_549_v163
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_372_v98
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_548_v162
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_439_v123
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
label_584_v178:
.space 4
label_847_v283:
.space 4
label_623_v192:
.space 4
label_881_v293:
.space 4
label_657_v204:
.space 4
label_868_v290:
.space 4
label_966_v328:
.space 4
label_860_v288:
.space 4
label_672_v212:
.space 4
label_948_v322:
.space 4
label_790_v256:
.space 4
label_663_v208:
.space 4
label_598_v181:
.space 4
label_722_v233:
.space 4
label_844_v277:
.space 4
label_954_v323:
.space 4
label_862_v287:
.space 4
label_809_v266:
.space 4
label_840_v278:
.space 4
label_810_v267:
.space 4
label_706_v222:
.space 4
label_710_v227:
.space 4
label_645_v199:
.space 4
label_784_v255:
.space 4
label_901_v303:
.space 4
label_744_v239:
.space 4
label_755_v243:
.space 4
label_882_v294:
.space 4
label_961_v325:
.space 4
label_989_v341:
.space 4
label_928_v311:
.space 4
label_898_v301:
.space 4
label_650_v202:
.space 4
label_756_v242:
.space 4
label_952_v324:
.space 4
label_962_v326:
.space 4
label_874_v291:
.space 4
label_612_v185:
.space 4
label_724_v232:
.space 4
label_795_v259:
.space 4
label_899_v302:
.space 4
label_734_v237:
.space 4
label_907_v305:
.space 4
label_652_v201:
.space 4
label_571_v173:
.space 4
label_973_v330:
.space 4
label_912_v308:
.space 4
label_678_v213:
.space 4
label_835_v275:
.space 4
label_979_v334:
.space 4
label_617_v188:
.space 4
label_698_v219:
.space 4
label_888_v295:
.space 4
label_836_v274:
.space 4
label_828_v273:
.space 4
label_709_v228:
.space 4
label_824_v271:
.space 4
label_933_v314:
.space 4
label_605_v183:
.space 4
label_676_v214:
.space 4
label_942_v316:
.space 4
label_990_v340:
.space 4
label_908_v306:
.space 4
label_941_v319:
.space 4
label_703_v224:
.space 4
label_986_v337:
.space 4
label_692_v217:
.space 4
label_894_v297:
.space 4
label_606_v184:
.space 4
label_690_v218:
.space 4
label_978_v333:
.space 4
label_705_v225:
.space 4
label_761_v247:
.space 4
label_586_v177:
.space 4
label_697_v220:
.space 4
label_763_v248:
.space 4
label_730_v235:
.space 4
label_814_v269:
.space 4
label_580_v176:
.space 4
label_886_v296:
.space 4
label_764_v245:
.space 4
label_902_v300:
.space 4
label_626_v190:
.space 4
label_658_v203:
.space 4
label_981_v335:
.space 4
label_729_v234:
.space 4
label_666_v206:
.space 4
label_591_v179:
.space 4
label_760_v246:
.space 4
label_770_v251:
.space 4
label_579_v175:
.space 4
label_671_v211:
.space 4
label_686_v216:
.space 4
label_982_v332:
.space 4
label_816_v268:
.space 4
label_702_v223:
.space 4
label_622_v191:
.space 4
label_939_v318:
.space 4
label_947_v321:
.space 4
label_994_v343:
.space 4
label_926_v312:
.space 4
label_625_v193:
.space 4
label_856_v286:
.space 4
label_968_v327:
.space 4
label_638_v197:
.space 4
label_596_v182:
.space 4
label_662_v207:
.space 4
label_841_v279:
.space 4
label_717_v230:
.space 4
label_736_v236:
.space 4
label_848_v282:
.space 4
label_618_v187:
.space 4
label_938_v317:
.space 4
label_922_v310:
.space 4
label_769_v250:
.space 4
label_867_v289:
.space 4
label_610_v186:
.space 4
label_843_v280:
.space 4
label_748_v241:
.space 4
label_632_v196:
.space 4
label_783_v254:
.space 4
label_830_v272:
.space 4
label_776_v252:
.space 4
label_646_v200:
.space 4
label_665_v209:
.space 4
label_803_v264:
.space 4
label_796_v258:
.space 4
label_718_v231:
.space 4
label_914_v307:
.space 4
label_750_v240:
.space 4
label_685_v215:
.space 4
label_804_v261:
.space 4
label_893_v298:
.space 4
label_921_v309:
.space 4
label_934_v313:
.space 4
label_823_v270:
.space 4
label_985_v338:
.space 4
label_774_v253:
.space 4
label_788_v257:
.space 4
label_592_v180:
.space 4
label_974_v329:
.space 4
label_572_v172:
.space 4
label_636_v198:
.space 4
label_855_v285:
.space 4
label_631_v195:
.space 4
label_801_v263:
.space 4
label_872_v292:
.space 4
label_743_v238:
.space 4
label_800_v262:
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
# Original instruction: pushRegisters
la $t0,label_584_v178
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_847_v283
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_623_v192
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_881_v293
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_657_v204
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_868_v290
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_966_v328
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_860_v288
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_672_v212
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_948_v322
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_790_v256
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_663_v208
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_598_v181
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_722_v233
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_844_v277
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_954_v323
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_862_v287
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_809_v266
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_840_v278
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_810_v267
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_706_v222
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_710_v227
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_645_v199
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_784_v255
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_901_v303
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_744_v239
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_755_v243
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_882_v294
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_961_v325
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_989_v341
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_928_v311
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_898_v301
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_650_v202
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_756_v242
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_952_v324
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_962_v326
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_874_v291
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_612_v185
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_724_v232
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_795_v259
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_899_v302
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_734_v237
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_907_v305
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_652_v201
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_571_v173
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_973_v330
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_912_v308
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_678_v213
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_835_v275
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_979_v334
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_617_v188
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_698_v219
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_888_v295
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_836_v274
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_828_v273
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_709_v228
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_824_v271
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_933_v314
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_605_v183
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_676_v214
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_942_v316
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_990_v340
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_908_v306
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_941_v319
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_703_v224
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_986_v337
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_692_v217
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_894_v297
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_606_v184
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_690_v218
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_978_v333
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_705_v225
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_761_v247
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_586_v177
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_697_v220
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_763_v248
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_730_v235
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_814_v269
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_580_v176
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_886_v296
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_764_v245
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_902_v300
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_626_v190
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_658_v203
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_981_v335
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_729_v234
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_666_v206
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_591_v179
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_760_v246
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_770_v251
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_579_v175
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_671_v211
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_686_v216
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_982_v332
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_816_v268
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_702_v223
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_622_v191
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_939_v318
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_947_v321
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_994_v343
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_926_v312
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_625_v193
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_856_v286
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_968_v327
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_638_v197
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_596_v182
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_662_v207
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_841_v279
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_717_v230
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_736_v236
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_848_v282
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_618_v187
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_938_v317
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_922_v310
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_769_v250
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_867_v289
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_610_v186
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_843_v280
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_748_v241
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_632_v196
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_783_v254
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_830_v272
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_776_v252
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_646_v200
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_665_v209
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_803_v264
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_796_v258
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_718_v231
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_914_v307
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_750_v240
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_685_v215
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_804_v261
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_893_v298
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_921_v309
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_934_v313
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_823_v270
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_985_v338
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_774_v253
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_788_v257
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_592_v180
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_974_v329
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_572_v172
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_636_v198
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_855_v285
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_631_v195
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_801_v263
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_872_v292
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_743_v238
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_800_v262
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v172,$fp,-8
addiu $t5,$fp,-8
la $t0,label_572_v172
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v173,1
li $t5,1
la $t0,label_571_v173
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v173,0(v172)
la $t5,label_571_v173
lw $t5,0($t5)
la $t4,label_572_v172
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: addiu v175,$fp,16
addiu $t5,$fp,16
la $t0,label_579_v175
sw $t5,0($t0)
# Original instruction: lb v175,0(v175)
la $t4,label_579_v175
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_579_v175
sw $t4,0($t0)
# Original instruction: la v176,label_10_
la $t5,label_10_
la $t0,label_580_v176
sw $t5,0($t0)
# Original instruction: lb v176,0(v176)
la $t4,label_580_v176
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_580_v176
sw $t4,0($t0)
# Original instruction: xor v177,v175,v176
la $t5,label_579_v175
lw $t5,0($t5)
la $t4,label_580_v176
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_586_v177
sw $t3,0($t0)
# Original instruction: li v178,1
li $t5,1
la $t0,label_584_v178
sw $t5,0($t0)
# Original instruction: sltu v177,v177,v178
la $t3,label_586_v177
lw $t3,0($t3)
la $t4,label_584_v178
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_586_v177
sw $t3,0($t0)
# Original instruction: beq v177,$zero,label_77_else
la $t5,label_586_v177
lw $t5,0($t5)
beq $t5,$zero,label_77_else
# Original instruction: addiu v179,$fp,12
addiu $t5,$fp,12
la $t0,label_591_v179
sw $t5,0($t0)
# Original instruction: lw v179,0(v179)
la $t4,label_591_v179
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_591_v179
sw $t4,0($t0)
# Original instruction: li v180,1
li $t5,1
la $t0,label_592_v180
sw $t5,0($t0)
# Original instruction: xor v181,v179,v180
la $t5,label_591_v179
lw $t5,0($t5)
la $t4,label_592_v180
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_598_v181
sw $t3,0($t0)
# Original instruction: li v182,1
li $t5,1
la $t0,label_596_v182
sw $t5,0($t0)
# Original instruction: sltu v181,v181,v182
la $t3,label_598_v181
lw $t3,0($t3)
la $t4,label_596_v182
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_598_v181
sw $t3,0($t0)
# Original instruction: beq v181,$zero,label_79_else
la $t5,label_598_v181
lw $t5,0($t5)
beq $t5,$zero,label_79_else
# Original instruction: la v183,a11
la $t5,a11
la $t0,label_605_v183
sw $t5,0($t0)
# Original instruction: lb v183,0(v183)
la $t4,label_605_v183
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_605_v183
sw $t4,0($t0)
# Original instruction: la v184,empty
la $t5,empty
la $t0,label_606_v184
sw $t5,0($t0)
# Original instruction: lb v184,0(v184)
la $t4,label_606_v184
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_606_v184
sw $t4,0($t0)
# Original instruction: xor v185,v183,v184
la $t5,label_605_v183
lw $t5,0($t5)
la $t4,label_606_v184
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_612_v185
sw $t3,0($t0)
# Original instruction: li v186,1
li $t5,1
la $t0,label_610_v186
sw $t5,0($t0)
# Original instruction: sltu v185,v185,v186
la $t3,label_612_v185
lw $t3,0($t3)
la $t4,label_610_v186
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_612_v185
sw $t3,0($t0)
# Original instruction: beq v185,$zero,label_81_else
la $t5,label_612_v185
lw $t5,0($t5)
beq $t5,$zero,label_81_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v187,a11
la $t5,a11
la $t0,label_618_v187
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v188,$fp,8
addiu $t5,$fp,8
la $t0,label_617_v188
sw $t5,0($t0)
# Original instruction: lb v188,0(v188)
la $t4,label_617_v188
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_617_v188
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v188,0(v187)
la $t5,label_617_v188
lw $t5,0($t5)
la $t4,label_618_v187
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_82_end
j label_82_end
label_81_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v190,$fp,-8
addiu $t5,$fp,-8
la $t0,label_626_v190
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v191,0
li $t5,0
la $t0,label_622_v191
sw $t5,0($t0)
# Original instruction: li v192,1
li $t5,1
la $t0,label_623_v192
sw $t5,0($t0)
# Original instruction: sub v193,v191,v192
la $t5,label_622_v191
lw $t5,0($t5)
la $t4,label_623_v192
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_625_v193
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v193,0(v190)
la $t5,label_625_v193
lw $t5,0($t5)
la $t4,label_626_v190
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_82_end:
# Original instruction: j label_80_end
j label_80_end
label_79_else:
# Original instruction: addiu v195,$fp,12
addiu $t5,$fp,12
la $t0,label_631_v195
sw $t5,0($t0)
# Original instruction: lw v195,0(v195)
la $t4,label_631_v195
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_631_v195
sw $t4,0($t0)
# Original instruction: li v196,2
li $t5,2
la $t0,label_632_v196
sw $t5,0($t0)
# Original instruction: xor v197,v195,v196
la $t5,label_631_v195
lw $t5,0($t5)
la $t4,label_632_v196
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_638_v197
sw $t3,0($t0)
# Original instruction: li v198,1
li $t5,1
la $t0,label_636_v198
sw $t5,0($t0)
# Original instruction: sltu v197,v197,v198
la $t3,label_638_v197
lw $t3,0($t3)
la $t4,label_636_v198
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_638_v197
sw $t3,0($t0)
# Original instruction: beq v197,$zero,label_83_else
la $t5,label_638_v197
lw $t5,0($t5)
beq $t5,$zero,label_83_else
# Original instruction: la v199,a12
la $t5,a12
la $t0,label_645_v199
sw $t5,0($t0)
# Original instruction: lb v199,0(v199)
la $t4,label_645_v199
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_645_v199
sw $t4,0($t0)
# Original instruction: la v200,empty
la $t5,empty
la $t0,label_646_v200
sw $t5,0($t0)
# Original instruction: lb v200,0(v200)
la $t4,label_646_v200
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_646_v200
sw $t4,0($t0)
# Original instruction: xor v201,v199,v200
la $t5,label_645_v199
lw $t5,0($t5)
la $t4,label_646_v200
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_652_v201
sw $t3,0($t0)
# Original instruction: li v202,1
li $t5,1
la $t0,label_650_v202
sw $t5,0($t0)
# Original instruction: sltu v201,v201,v202
la $t3,label_652_v201
lw $t3,0($t3)
la $t4,label_650_v202
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_652_v201
sw $t3,0($t0)
# Original instruction: beq v201,$zero,label_85_else
la $t5,label_652_v201
lw $t5,0($t5)
beq $t5,$zero,label_85_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v203,a12
la $t5,a12
la $t0,label_658_v203
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v204,$fp,8
addiu $t5,$fp,8
la $t0,label_657_v204
sw $t5,0($t0)
# Original instruction: lb v204,0(v204)
la $t4,label_657_v204
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_657_v204
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v204,0(v203)
la $t5,label_657_v204
lw $t5,0($t5)
la $t4,label_658_v203
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_86_end
j label_86_end
label_85_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v206,$fp,-8
addiu $t5,$fp,-8
la $t0,label_666_v206
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v207,0
li $t5,0
la $t0,label_662_v207
sw $t5,0($t0)
# Original instruction: li v208,1
li $t5,1
la $t0,label_663_v208
sw $t5,0($t0)
# Original instruction: sub v209,v207,v208
la $t5,label_662_v207
lw $t5,0($t5)
la $t4,label_663_v208
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_665_v209
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v209,0(v206)
la $t5,label_665_v209
lw $t5,0($t5)
la $t4,label_666_v206
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_86_end:
# Original instruction: j label_84_end
j label_84_end
label_83_else:
# Original instruction: addiu v211,$fp,12
addiu $t5,$fp,12
la $t0,label_671_v211
sw $t5,0($t0)
# Original instruction: lw v211,0(v211)
la $t4,label_671_v211
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_671_v211
sw $t4,0($t0)
# Original instruction: li v212,3
li $t5,3
la $t0,label_672_v212
sw $t5,0($t0)
# Original instruction: xor v213,v211,v212
la $t5,label_671_v211
lw $t5,0($t5)
la $t4,label_672_v212
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_678_v213
sw $t3,0($t0)
# Original instruction: li v214,1
li $t5,1
la $t0,label_676_v214
sw $t5,0($t0)
# Original instruction: sltu v213,v213,v214
la $t3,label_678_v213
lw $t3,0($t3)
la $t4,label_676_v214
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_678_v213
sw $t3,0($t0)
# Original instruction: beq v213,$zero,label_87_else
la $t5,label_678_v213
lw $t5,0($t5)
beq $t5,$zero,label_87_else
# Original instruction: la v215,a13
la $t5,a13
la $t0,label_685_v215
sw $t5,0($t0)
# Original instruction: lb v215,0(v215)
la $t4,label_685_v215
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_685_v215
sw $t4,0($t0)
# Original instruction: la v216,empty
la $t5,empty
la $t0,label_686_v216
sw $t5,0($t0)
# Original instruction: lb v216,0(v216)
la $t4,label_686_v216
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_686_v216
sw $t4,0($t0)
# Original instruction: xor v217,v215,v216
la $t5,label_685_v215
lw $t5,0($t5)
la $t4,label_686_v216
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_692_v217
sw $t3,0($t0)
# Original instruction: li v218,1
li $t5,1
la $t0,label_690_v218
sw $t5,0($t0)
# Original instruction: sltu v217,v217,v218
la $t3,label_692_v217
lw $t3,0($t3)
la $t4,label_690_v218
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_692_v217
sw $t3,0($t0)
# Original instruction: beq v217,$zero,label_89_else
la $t5,label_692_v217
lw $t5,0($t5)
beq $t5,$zero,label_89_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v219,a13
la $t5,a13
la $t0,label_698_v219
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v220,$fp,8
addiu $t5,$fp,8
la $t0,label_697_v220
sw $t5,0($t0)
# Original instruction: lb v220,0(v220)
la $t4,label_697_v220
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_697_v220
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v220,0(v219)
la $t5,label_697_v220
lw $t5,0($t5)
la $t4,label_698_v219
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_90_end
j label_90_end
label_89_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v222,$fp,-8
addiu $t5,$fp,-8
la $t0,label_706_v222
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v223,0
li $t5,0
la $t0,label_702_v223
sw $t5,0($t0)
# Original instruction: li v224,1
li $t5,1
la $t0,label_703_v224
sw $t5,0($t0)
# Original instruction: sub v225,v223,v224
la $t5,label_702_v223
lw $t5,0($t5)
la $t4,label_703_v224
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_705_v225
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v225,0(v222)
la $t5,label_705_v225
lw $t5,0($t5)
la $t4,label_706_v222
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_90_end:
# Original instruction: j label_88_end
j label_88_end
label_87_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v227,$fp,-8
addiu $t5,$fp,-8
la $t0,label_710_v227
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v228,0
li $t5,0
la $t0,label_709_v228
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v228,0(v227)
la $t5,label_709_v228
lw $t5,0($t5)
la $t4,label_710_v227
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_88_end:
label_84_end:
label_80_end:
# Original instruction: j label_78_end
j label_78_end
label_77_else:
# Original instruction: addiu v230,$fp,16
addiu $t5,$fp,16
la $t0,label_717_v230
sw $t5,0($t0)
# Original instruction: lb v230,0(v230)
la $t4,label_717_v230
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_717_v230
sw $t4,0($t0)
# Original instruction: la v231,label_11_
la $t5,label_11_
la $t0,label_718_v231
sw $t5,0($t0)
# Original instruction: lb v231,0(v231)
la $t4,label_718_v231
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_718_v231
sw $t4,0($t0)
# Original instruction: xor v232,v230,v231
la $t5,label_717_v230
lw $t5,0($t5)
la $t4,label_718_v231
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_724_v232
sw $t3,0($t0)
# Original instruction: li v233,1
li $t5,1
la $t0,label_722_v233
sw $t5,0($t0)
# Original instruction: sltu v232,v232,v233
la $t3,label_724_v232
lw $t3,0($t3)
la $t4,label_722_v233
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_724_v232
sw $t3,0($t0)
# Original instruction: beq v232,$zero,label_91_else
la $t5,label_724_v232
lw $t5,0($t5)
beq $t5,$zero,label_91_else
# Original instruction: addiu v234,$fp,12
addiu $t5,$fp,12
la $t0,label_729_v234
sw $t5,0($t0)
# Original instruction: lw v234,0(v234)
la $t4,label_729_v234
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_729_v234
sw $t4,0($t0)
# Original instruction: li v235,1
li $t5,1
la $t0,label_730_v235
sw $t5,0($t0)
# Original instruction: xor v236,v234,v235
la $t5,label_729_v234
lw $t5,0($t5)
la $t4,label_730_v235
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_736_v236
sw $t3,0($t0)
# Original instruction: li v237,1
li $t5,1
la $t0,label_734_v237
sw $t5,0($t0)
# Original instruction: sltu v236,v236,v237
la $t3,label_736_v236
lw $t3,0($t3)
la $t4,label_734_v237
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_736_v236
sw $t3,0($t0)
# Original instruction: beq v236,$zero,label_93_else
la $t5,label_736_v236
lw $t5,0($t5)
beq $t5,$zero,label_93_else
# Original instruction: la v238,a21
la $t5,a21
la $t0,label_743_v238
sw $t5,0($t0)
# Original instruction: lb v238,0(v238)
la $t4,label_743_v238
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_743_v238
sw $t4,0($t0)
# Original instruction: la v239,empty
la $t5,empty
la $t0,label_744_v239
sw $t5,0($t0)
# Original instruction: lb v239,0(v239)
la $t4,label_744_v239
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_744_v239
sw $t4,0($t0)
# Original instruction: xor v240,v238,v239
la $t5,label_743_v238
lw $t5,0($t5)
la $t4,label_744_v239
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_750_v240
sw $t3,0($t0)
# Original instruction: li v241,1
li $t5,1
la $t0,label_748_v241
sw $t5,0($t0)
# Original instruction: sltu v240,v240,v241
la $t3,label_750_v240
lw $t3,0($t3)
la $t4,label_748_v241
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_750_v240
sw $t3,0($t0)
# Original instruction: beq v240,$zero,label_95_else
la $t5,label_750_v240
lw $t5,0($t5)
beq $t5,$zero,label_95_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v242,a21
la $t5,a21
la $t0,label_756_v242
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v243,$fp,8
addiu $t5,$fp,8
la $t0,label_755_v243
sw $t5,0($t0)
# Original instruction: lb v243,0(v243)
la $t4,label_755_v243
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_755_v243
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v243,0(v242)
la $t5,label_755_v243
lw $t5,0($t5)
la $t4,label_756_v242
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_96_end
j label_96_end
label_95_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v245,$fp,-8
addiu $t5,$fp,-8
la $t0,label_764_v245
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v246,0
li $t5,0
la $t0,label_760_v246
sw $t5,0($t0)
# Original instruction: li v247,1
li $t5,1
la $t0,label_761_v247
sw $t5,0($t0)
# Original instruction: sub v248,v246,v247
la $t5,label_760_v246
lw $t5,0($t5)
la $t4,label_761_v247
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_763_v248
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v248,0(v245)
la $t5,label_763_v248
lw $t5,0($t5)
la $t4,label_764_v245
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_96_end:
# Original instruction: j label_94_end
j label_94_end
label_93_else:
# Original instruction: addiu v250,$fp,12
addiu $t5,$fp,12
la $t0,label_769_v250
sw $t5,0($t0)
# Original instruction: lw v250,0(v250)
la $t4,label_769_v250
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_769_v250
sw $t4,0($t0)
# Original instruction: li v251,2
li $t5,2
la $t0,label_770_v251
sw $t5,0($t0)
# Original instruction: xor v252,v250,v251
la $t5,label_769_v250
lw $t5,0($t5)
la $t4,label_770_v251
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_776_v252
sw $t3,0($t0)
# Original instruction: li v253,1
li $t5,1
la $t0,label_774_v253
sw $t5,0($t0)
# Original instruction: sltu v252,v252,v253
la $t3,label_776_v252
lw $t3,0($t3)
la $t4,label_774_v253
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_776_v252
sw $t3,0($t0)
# Original instruction: beq v252,$zero,label_97_else
la $t5,label_776_v252
lw $t5,0($t5)
beq $t5,$zero,label_97_else
# Original instruction: la v254,a22
la $t5,a22
la $t0,label_783_v254
sw $t5,0($t0)
# Original instruction: lb v254,0(v254)
la $t4,label_783_v254
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_783_v254
sw $t4,0($t0)
# Original instruction: la v255,empty
la $t5,empty
la $t0,label_784_v255
sw $t5,0($t0)
# Original instruction: lb v255,0(v255)
la $t4,label_784_v255
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_784_v255
sw $t4,0($t0)
# Original instruction: xor v256,v254,v255
la $t5,label_783_v254
lw $t5,0($t5)
la $t4,label_784_v255
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_790_v256
sw $t3,0($t0)
# Original instruction: li v257,1
li $t5,1
la $t0,label_788_v257
sw $t5,0($t0)
# Original instruction: sltu v256,v256,v257
la $t3,label_790_v256
lw $t3,0($t3)
la $t4,label_788_v257
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_790_v256
sw $t3,0($t0)
# Original instruction: beq v256,$zero,label_99_else
la $t5,label_790_v256
lw $t5,0($t5)
beq $t5,$zero,label_99_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v258,a22
la $t5,a22
la $t0,label_796_v258
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v259,$fp,8
addiu $t5,$fp,8
la $t0,label_795_v259
sw $t5,0($t0)
# Original instruction: lb v259,0(v259)
la $t4,label_795_v259
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_795_v259
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v259,0(v258)
la $t5,label_795_v259
lw $t5,0($t5)
la $t4,label_796_v258
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_100_end
j label_100_end
label_99_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v261,$fp,-8
addiu $t5,$fp,-8
la $t0,label_804_v261
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v262,0
li $t5,0
la $t0,label_800_v262
sw $t5,0($t0)
# Original instruction: li v263,1
li $t5,1
la $t0,label_801_v263
sw $t5,0($t0)
# Original instruction: sub v264,v262,v263
la $t5,label_800_v262
lw $t5,0($t5)
la $t4,label_801_v263
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_803_v264
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v264,0(v261)
la $t5,label_803_v264
lw $t5,0($t5)
la $t4,label_804_v261
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_100_end:
# Original instruction: j label_98_end
j label_98_end
label_97_else:
# Original instruction: addiu v266,$fp,12
addiu $t5,$fp,12
la $t0,label_809_v266
sw $t5,0($t0)
# Original instruction: lw v266,0(v266)
la $t4,label_809_v266
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_809_v266
sw $t4,0($t0)
# Original instruction: li v267,3
li $t5,3
la $t0,label_810_v267
sw $t5,0($t0)
# Original instruction: xor v268,v266,v267
la $t5,label_809_v266
lw $t5,0($t5)
la $t4,label_810_v267
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_816_v268
sw $t3,0($t0)
# Original instruction: li v269,1
li $t5,1
la $t0,label_814_v269
sw $t5,0($t0)
# Original instruction: sltu v268,v268,v269
la $t3,label_816_v268
lw $t3,0($t3)
la $t4,label_814_v269
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_816_v268
sw $t3,0($t0)
# Original instruction: beq v268,$zero,label_101_else
la $t5,label_816_v268
lw $t5,0($t5)
beq $t5,$zero,label_101_else
# Original instruction: la v270,a23
la $t5,a23
la $t0,label_823_v270
sw $t5,0($t0)
# Original instruction: lb v270,0(v270)
la $t4,label_823_v270
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_823_v270
sw $t4,0($t0)
# Original instruction: la v271,empty
la $t5,empty
la $t0,label_824_v271
sw $t5,0($t0)
# Original instruction: lb v271,0(v271)
la $t4,label_824_v271
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_824_v271
sw $t4,0($t0)
# Original instruction: xor v272,v270,v271
la $t5,label_823_v270
lw $t5,0($t5)
la $t4,label_824_v271
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_830_v272
sw $t3,0($t0)
# Original instruction: li v273,1
li $t5,1
la $t0,label_828_v273
sw $t5,0($t0)
# Original instruction: sltu v272,v272,v273
la $t3,label_830_v272
lw $t3,0($t3)
la $t4,label_828_v273
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_830_v272
sw $t3,0($t0)
# Original instruction: beq v272,$zero,label_103_else
la $t5,label_830_v272
lw $t5,0($t5)
beq $t5,$zero,label_103_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v274,a23
la $t5,a23
la $t0,label_836_v274
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v275,$fp,8
addiu $t5,$fp,8
la $t0,label_835_v275
sw $t5,0($t0)
# Original instruction: lb v275,0(v275)
la $t4,label_835_v275
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_835_v275
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v275,0(v274)
la $t5,label_835_v275
lw $t5,0($t5)
la $t4,label_836_v274
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_104_end
j label_104_end
label_103_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v277,$fp,-8
addiu $t5,$fp,-8
la $t0,label_844_v277
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v278,0
li $t5,0
la $t0,label_840_v278
sw $t5,0($t0)
# Original instruction: li v279,1
li $t5,1
la $t0,label_841_v279
sw $t5,0($t0)
# Original instruction: sub v280,v278,v279
la $t5,label_840_v278
lw $t5,0($t5)
la $t4,label_841_v279
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_843_v280
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v280,0(v277)
la $t5,label_843_v280
lw $t5,0($t5)
la $t4,label_844_v277
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_104_end:
# Original instruction: j label_102_end
j label_102_end
label_101_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v282,$fp,-8
addiu $t5,$fp,-8
la $t0,label_848_v282
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v283,0
li $t5,0
la $t0,label_847_v283
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v283,0(v282)
la $t5,label_847_v283
lw $t5,0($t5)
la $t4,label_848_v282
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_102_end:
label_98_end:
label_94_end:
# Original instruction: j label_92_end
j label_92_end
label_91_else:
# Original instruction: addiu v285,$fp,16
addiu $t5,$fp,16
la $t0,label_855_v285
sw $t5,0($t0)
# Original instruction: lb v285,0(v285)
la $t4,label_855_v285
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_855_v285
sw $t4,0($t0)
# Original instruction: la v286,label_12_
la $t5,label_12_
la $t0,label_856_v286
sw $t5,0($t0)
# Original instruction: lb v286,0(v286)
la $t4,label_856_v286
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_856_v286
sw $t4,0($t0)
# Original instruction: xor v287,v285,v286
la $t5,label_855_v285
lw $t5,0($t5)
la $t4,label_856_v286
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_862_v287
sw $t3,0($t0)
# Original instruction: li v288,1
li $t5,1
la $t0,label_860_v288
sw $t5,0($t0)
# Original instruction: sltu v287,v287,v288
la $t3,label_862_v287
lw $t3,0($t3)
la $t4,label_860_v288
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_862_v287
sw $t3,0($t0)
# Original instruction: beq v287,$zero,label_105_else
la $t5,label_862_v287
lw $t5,0($t5)
beq $t5,$zero,label_105_else
# Original instruction: addiu v289,$fp,12
addiu $t5,$fp,12
la $t0,label_867_v289
sw $t5,0($t0)
# Original instruction: lw v289,0(v289)
la $t4,label_867_v289
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_867_v289
sw $t4,0($t0)
# Original instruction: li v290,1
li $t5,1
la $t0,label_868_v290
sw $t5,0($t0)
# Original instruction: xor v291,v289,v290
la $t5,label_867_v289
lw $t5,0($t5)
la $t4,label_868_v290
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_874_v291
sw $t3,0($t0)
# Original instruction: li v292,1
li $t5,1
la $t0,label_872_v292
sw $t5,0($t0)
# Original instruction: sltu v291,v291,v292
la $t3,label_874_v291
lw $t3,0($t3)
la $t4,label_872_v292
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_874_v291
sw $t3,0($t0)
# Original instruction: beq v291,$zero,label_107_else
la $t5,label_874_v291
lw $t5,0($t5)
beq $t5,$zero,label_107_else
# Original instruction: la v293,a31
la $t5,a31
la $t0,label_881_v293
sw $t5,0($t0)
# Original instruction: lb v293,0(v293)
la $t4,label_881_v293
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_881_v293
sw $t4,0($t0)
# Original instruction: la v294,empty
la $t5,empty
la $t0,label_882_v294
sw $t5,0($t0)
# Original instruction: lb v294,0(v294)
la $t4,label_882_v294
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_882_v294
sw $t4,0($t0)
# Original instruction: xor v295,v293,v294
la $t5,label_881_v293
lw $t5,0($t5)
la $t4,label_882_v294
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_888_v295
sw $t3,0($t0)
# Original instruction: li v296,1
li $t5,1
la $t0,label_886_v296
sw $t5,0($t0)
# Original instruction: sltu v295,v295,v296
la $t3,label_888_v295
lw $t3,0($t3)
la $t4,label_886_v296
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_888_v295
sw $t3,0($t0)
# Original instruction: beq v295,$zero,label_109_else
la $t5,label_888_v295
lw $t5,0($t5)
beq $t5,$zero,label_109_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v297,a31
la $t5,a31
la $t0,label_894_v297
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v298,$fp,8
addiu $t5,$fp,8
la $t0,label_893_v298
sw $t5,0($t0)
# Original instruction: lb v298,0(v298)
la $t4,label_893_v298
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_893_v298
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v298,0(v297)
la $t5,label_893_v298
lw $t5,0($t5)
la $t4,label_894_v297
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_110_end
j label_110_end
label_109_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v300,$fp,-8
addiu $t5,$fp,-8
la $t0,label_902_v300
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v301,0
li $t5,0
la $t0,label_898_v301
sw $t5,0($t0)
# Original instruction: li v302,1
li $t5,1
la $t0,label_899_v302
sw $t5,0($t0)
# Original instruction: sub v303,v301,v302
la $t5,label_898_v301
lw $t5,0($t5)
la $t4,label_899_v302
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_901_v303
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v303,0(v300)
la $t5,label_901_v303
lw $t5,0($t5)
la $t4,label_902_v300
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_110_end:
# Original instruction: j label_108_end
j label_108_end
label_107_else:
# Original instruction: addiu v305,$fp,12
addiu $t5,$fp,12
la $t0,label_907_v305
sw $t5,0($t0)
# Original instruction: lw v305,0(v305)
la $t4,label_907_v305
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_907_v305
sw $t4,0($t0)
# Original instruction: li v306,2
li $t5,2
la $t0,label_908_v306
sw $t5,0($t0)
# Original instruction: xor v307,v305,v306
la $t5,label_907_v305
lw $t5,0($t5)
la $t4,label_908_v306
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_914_v307
sw $t3,0($t0)
# Original instruction: li v308,1
li $t5,1
la $t0,label_912_v308
sw $t5,0($t0)
# Original instruction: sltu v307,v307,v308
la $t3,label_914_v307
lw $t3,0($t3)
la $t4,label_912_v308
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_914_v307
sw $t3,0($t0)
# Original instruction: beq v307,$zero,label_111_else
la $t5,label_914_v307
lw $t5,0($t5)
beq $t5,$zero,label_111_else
# Original instruction: la v309,a32
la $t5,a32
la $t0,label_921_v309
sw $t5,0($t0)
# Original instruction: lb v309,0(v309)
la $t4,label_921_v309
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_921_v309
sw $t4,0($t0)
# Original instruction: la v310,empty
la $t5,empty
la $t0,label_922_v310
sw $t5,0($t0)
# Original instruction: lb v310,0(v310)
la $t4,label_922_v310
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_922_v310
sw $t4,0($t0)
# Original instruction: xor v311,v309,v310
la $t5,label_921_v309
lw $t5,0($t5)
la $t4,label_922_v310
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_928_v311
sw $t3,0($t0)
# Original instruction: li v312,1
li $t5,1
la $t0,label_926_v312
sw $t5,0($t0)
# Original instruction: sltu v311,v311,v312
la $t3,label_928_v311
lw $t3,0($t3)
la $t4,label_926_v312
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_928_v311
sw $t3,0($t0)
# Original instruction: beq v311,$zero,label_113_else
la $t5,label_928_v311
lw $t5,0($t5)
beq $t5,$zero,label_113_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v313,a32
la $t5,a32
la $t0,label_934_v313
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v314,$fp,8
addiu $t5,$fp,8
la $t0,label_933_v314
sw $t5,0($t0)
# Original instruction: lb v314,0(v314)
la $t4,label_933_v314
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_933_v314
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v314,0(v313)
la $t5,label_933_v314
lw $t5,0($t5)
la $t4,label_934_v313
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_114_end
j label_114_end
label_113_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v316,$fp,-8
addiu $t5,$fp,-8
la $t0,label_942_v316
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v317,0
li $t5,0
la $t0,label_938_v317
sw $t5,0($t0)
# Original instruction: li v318,1
li $t5,1
la $t0,label_939_v318
sw $t5,0($t0)
# Original instruction: sub v319,v317,v318
la $t5,label_938_v317
lw $t5,0($t5)
la $t4,label_939_v318
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_941_v319
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v319,0(v316)
la $t5,label_941_v319
lw $t5,0($t5)
la $t4,label_942_v316
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_114_end:
# Original instruction: j label_112_end
j label_112_end
label_111_else:
# Original instruction: addiu v321,$fp,12
addiu $t5,$fp,12
la $t0,label_947_v321
sw $t5,0($t0)
# Original instruction: lw v321,0(v321)
la $t4,label_947_v321
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_947_v321
sw $t4,0($t0)
# Original instruction: li v322,3
li $t5,3
la $t0,label_948_v322
sw $t5,0($t0)
# Original instruction: xor v323,v321,v322
la $t5,label_947_v321
lw $t5,0($t5)
la $t4,label_948_v322
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_954_v323
sw $t3,0($t0)
# Original instruction: li v324,1
li $t5,1
la $t0,label_952_v324
sw $t5,0($t0)
# Original instruction: sltu v323,v323,v324
la $t3,label_954_v323
lw $t3,0($t3)
la $t4,label_952_v324
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_954_v323
sw $t3,0($t0)
# Original instruction: beq v323,$zero,label_115_else
la $t5,label_954_v323
lw $t5,0($t5)
beq $t5,$zero,label_115_else
# Original instruction: la v325,a33
la $t5,a33
la $t0,label_961_v325
sw $t5,0($t0)
# Original instruction: lb v325,0(v325)
la $t4,label_961_v325
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_961_v325
sw $t4,0($t0)
# Original instruction: la v326,empty
la $t5,empty
la $t0,label_962_v326
sw $t5,0($t0)
# Original instruction: lb v326,0(v326)
la $t4,label_962_v326
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_962_v326
sw $t4,0($t0)
# Original instruction: xor v327,v325,v326
la $t5,label_961_v325
lw $t5,0($t5)
la $t4,label_962_v326
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_968_v327
sw $t3,0($t0)
# Original instruction: li v328,1
li $t5,1
la $t0,label_966_v328
sw $t5,0($t0)
# Original instruction: sltu v327,v327,v328
la $t3,label_968_v327
lw $t3,0($t3)
la $t4,label_966_v328
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_968_v327
sw $t3,0($t0)
# Original instruction: beq v327,$zero,label_117_else
la $t5,label_968_v327
lw $t5,0($t5)
beq $t5,$zero,label_117_else
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: la v329,a33
la $t5,a33
la $t0,label_974_v329
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: addiu v330,$fp,8
addiu $t5,$fp,8
la $t0,label_973_v330
sw $t5,0($t0)
# Original instruction: lb v330,0(v330)
la $t4,label_973_v330
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_973_v330
sw $t4,0($t0)
# >>Start Copy<<
# Original instruction: sb v330,0(v329)
la $t5,label_973_v330
lw $t5,0($t5)
la $t4,label_974_v329
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# Original instruction: j label_118_end
j label_118_end
label_117_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v332,$fp,-8
addiu $t5,$fp,-8
la $t0,label_982_v332
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v333,0
li $t5,0
la $t0,label_978_v333
sw $t5,0($t0)
# Original instruction: li v334,1
li $t5,1
la $t0,label_979_v334
sw $t5,0($t0)
# Original instruction: sub v335,v333,v334
la $t5,label_978_v333
lw $t5,0($t5)
la $t4,label_979_v334
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_981_v335
sw $t3,0($t0)
# >>Start Copy<<
# Original instruction: sw v335,0(v332)
la $t5,label_981_v335
lw $t5,0($t5)
la $t4,label_982_v332
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_118_end:
# Original instruction: j label_116_end
j label_116_end
label_115_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v337,$fp,-8
addiu $t5,$fp,-8
la $t0,label_986_v337
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v338,0
li $t5,0
la $t0,label_985_v338
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v338,0(v337)
la $t5,label_985_v338
lw $t5,0($t5)
la $t4,label_986_v337
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_116_end:
label_112_end:
label_108_end:
# Original instruction: j label_106_end
j label_106_end
label_105_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v340,$fp,-8
addiu $t5,$fp,-8
la $t0,label_990_v340
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v341,0
li $t5,0
la $t0,label_989_v341
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v341,0(v340)
la $t5,label_989_v341
lw $t5,0($t5)
la $t4,label_990_v340
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_106_end:
label_92_end:
label_78_end:
# Original instruction: addiu v343,$fp,-8
addiu $t5,$fp,-8
la $t0,label_994_v343
sw $t5,0($t0)
# Original instruction: lw v343,0(v343)
la $t4,label_994_v343
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_994_v343
sw $t4,0($t0)
# Original instruction: sw v343,4($fp)
la $t5,label_994_v343
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_800_v262
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_743_v238
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_872_v292
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_801_v263
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_631_v195
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_855_v285
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_636_v198
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_572_v172
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_974_v329
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_592_v180
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_788_v257
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_774_v253
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_985_v338
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_823_v270
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_934_v313
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_921_v309
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_893_v298
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_804_v261
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_685_v215
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_750_v240
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_914_v307
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_718_v231
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_796_v258
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_803_v264
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_665_v209
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_646_v200
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_776_v252
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_830_v272
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_783_v254
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_632_v196
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_748_v241
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_843_v280
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_610_v186
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_867_v289
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_769_v250
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_922_v310
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_938_v317
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_618_v187
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_848_v282
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_736_v236
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_717_v230
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_841_v279
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_662_v207
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_596_v182
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_638_v197
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_968_v327
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_856_v286
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_625_v193
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_926_v312
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_994_v343
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_947_v321
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_939_v318
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_622_v191
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_702_v223
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_816_v268
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_982_v332
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_686_v216
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_671_v211
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_579_v175
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_770_v251
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_760_v246
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_591_v179
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_666_v206
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_729_v234
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_981_v335
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_658_v203
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_626_v190
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_902_v300
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_764_v245
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_886_v296
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_580_v176
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_814_v269
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_730_v235
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_763_v248
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_697_v220
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_586_v177
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_761_v247
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_705_v225
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_978_v333
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_690_v218
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_606_v184
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_894_v297
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_692_v217
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_986_v337
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_703_v224
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_941_v319
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_908_v306
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_990_v340
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_942_v316
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_676_v214
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_605_v183
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_933_v314
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_824_v271
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_709_v228
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_828_v273
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_836_v274
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_888_v295
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_698_v219
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_617_v188
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_979_v334
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_835_v275
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_678_v213
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_912_v308
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_973_v330
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_571_v173
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_652_v201
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_907_v305
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_734_v237
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_899_v302
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_795_v259
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_724_v232
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_612_v185
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_874_v291
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_962_v326
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_952_v324
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_756_v242
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_650_v202
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_898_v301
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_928_v311
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_989_v341
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_961_v325
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_882_v294
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_755_v243
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_744_v239
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_901_v303
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_784_v255
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_645_v199
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_710_v227
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_706_v222
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_810_v267
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_840_v278
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_809_v266
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_862_v287
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_954_v323
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_844_v277
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_722_v233
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_598_v181
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_663_v208
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_790_v256
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_948_v322
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_672_v212
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_860_v288
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_966_v328
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_868_v290
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_657_v204
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_881_v293
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_623_v192
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_847_v283
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_584_v178
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
label_1034_v373:
.space 4
label_1056_v389:
.space 4
label_1020_v363:
.space 4
label_1008_v355:
.space 4
label_1018_v361:
.space 4
label_1002_v351:
.space 4
label_1012_v357:
.space 4
label_1000_v349:
.space 4
label_1064_v395:
.space 4
label_1024_v367:
.space 4
label_1050_v385:
.space 4
label_1062_v393:
.space 4
label_1014_v359:
.space 4
label_1028_v369:
.space 4
label_996_v345:
.space 4
label_1022_v365:
.space 4
label_1040_v377:
.space 4
label_1058_v391:
.space 4
label_1044_v381:
.space 4
label_1036_v375:
.space 4
label_1046_v383:
.space 4
label_1066_v397:
.space 4
label_998_v347:
.space 4
label_1042_v379:
.space 4
label_1030_v371:
.space 4
label_1068_v399:
.space 4
label_1006_v353:
.space 4
label_1052_v387:
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
# Original instruction: pushRegisters
la $t0,label_1034_v373
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1056_v389
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1020_v363
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1008_v355
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1018_v361
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1002_v351
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1012_v357
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1000_v349
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1064_v395
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1024_v367
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1050_v385
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1062_v393
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1014_v359
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1028_v369
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_996_v345
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1022_v365
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1040_v377
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1058_v391
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1044_v381
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1036_v375
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1046_v383
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1066_v397
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_998_v347
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1042_v379
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1030_v371
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1068_v399
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1006_v353
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1052_v387
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@33833882
# Original instruction: la v345,label_13_
la $t5,label_13_
la $t0,label_996_v345
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v345,0($sp)
la $t5,label_996_v345
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@33833882 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@200a570f
# Original instruction: la v347,label_14_
la $t5,label_14_
la $t0,label_998_v347
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v347,0($sp)
la $t5,label_998_v347
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@200a570f ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@16b3fc9e
# Original instruction: la v349,label_15_
la $t5,label_15_
la $t0,label_1000_v349
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v349,0($sp)
la $t5,label_1000_v349
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@16b3fc9e ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@e2d56bf
# Original instruction: la v351,label_16_
la $t5,label_16_
la $t0,label_1002_v351
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v351,0($sp)
la $t5,label_1002_v351
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@e2d56bf ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v353,a11
la $t5,a11
la $t0,label_1006_v353
sw $t5,0($t0)
# Original instruction: lb v353,0(v353)
la $t4,label_1006_v353
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1006_v353
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v353,0($sp)
la $t5,label_1006_v353
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@244038d0
# Original instruction: la v355,label_17_
la $t5,label_17_
la $t0,label_1008_v355
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v355,0($sp)
la $t5,label_1008_v355
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@244038d0 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v357,a12
la $t5,a12
la $t0,label_1012_v357
sw $t5,0($t0)
# Original instruction: lb v357,0(v357)
la $t4,label_1012_v357
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1012_v357
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v357,0($sp)
la $t5,label_1012_v357
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@5680a178
# Original instruction: la v359,label_17_
la $t5,label_17_
la $t0,label_1014_v359
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v359,0($sp)
la $t5,label_1014_v359
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@5680a178 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v361,a13
la $t5,a13
la $t0,label_1018_v361
sw $t5,0($t0)
# Original instruction: lb v361,0(v361)
la $t4,label_1018_v361
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1018_v361
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v361,0($sp)
la $t5,label_1018_v361
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@5fdef03a
# Original instruction: la v363,label_18_
la $t5,label_18_
la $t0,label_1020_v363
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v363,0($sp)
la $t5,label_1020_v363
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@5fdef03a ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@3b22cdd0
# Original instruction: la v365,label_15_
la $t5,label_15_
la $t0,label_1022_v365
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v365,0($sp)
la $t5,label_1022_v365
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@3b22cdd0 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@1e81f4dc
# Original instruction: la v367,label_19_
la $t5,label_19_
la $t0,label_1024_v367
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v367,0($sp)
la $t5,label_1024_v367
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@1e81f4dc ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v369,a21
la $t5,a21
la $t0,label_1028_v369
sw $t5,0($t0)
# Original instruction: lb v369,0(v369)
la $t4,label_1028_v369
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1028_v369
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v369,0($sp)
la $t5,label_1028_v369
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@4d591d15
# Original instruction: la v371,label_17_
la $t5,label_17_
la $t0,label_1030_v371
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v371,0($sp)
la $t5,label_1030_v371
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@4d591d15 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v373,a22
la $t5,a22
la $t0,label_1034_v373
sw $t5,0($t0)
# Original instruction: lb v373,0(v373)
la $t4,label_1034_v373
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1034_v373
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v373,0($sp)
la $t5,label_1034_v373
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@65ae6ba4
# Original instruction: la v375,label_17_
la $t5,label_17_
la $t0,label_1036_v375
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v375,0($sp)
la $t5,label_1036_v375
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@65ae6ba4 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v377,a23
la $t5,a23
la $t0,label_1040_v377
sw $t5,0($t0)
# Original instruction: lb v377,0(v377)
la $t4,label_1040_v377
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1040_v377
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v377,0($sp)
la $t5,label_1040_v377
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@48cf768c
# Original instruction: la v379,label_18_
la $t5,label_18_
la $t0,label_1042_v379
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v379,0($sp)
la $t5,label_1042_v379
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@48cf768c ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@59f95c5d
# Original instruction: la v381,label_15_
la $t5,label_15_
la $t0,label_1044_v381
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v381,0($sp)
la $t5,label_1044_v381
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@59f95c5d ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@5ccd43c2
# Original instruction: la v383,label_20_
la $t5,label_20_
la $t0,label_1046_v383
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v383,0($sp)
la $t5,label_1046_v383
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@5ccd43c2 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v385,a31
la $t5,a31
la $t0,label_1050_v385
sw $t5,0($t0)
# Original instruction: lb v385,0(v385)
la $t4,label_1050_v385
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1050_v385
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v385,0($sp)
la $t5,label_1050_v385
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@4aa8f0b4
# Original instruction: la v387,label_17_
la $t5,label_17_
la $t0,label_1052_v387
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v387,0($sp)
la $t5,label_1052_v387
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@4aa8f0b4 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v389,a32
la $t5,a32
la $t0,label_1056_v389
sw $t5,0($t0)
# Original instruction: lb v389,0(v389)
la $t4,label_1056_v389
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1056_v389
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v389,0($sp)
la $t5,label_1056_v389
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@7960847b
# Original instruction: la v391,label_17_
la $t5,label_17_
la $t0,label_1058_v391
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v391,0($sp)
la $t5,label_1058_v391
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@7960847b ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_c
# >>>Retrieving arg val<<<: CHAR
# Original instruction: la v393,a33
la $t5,a33
la $t0,label_1062_v393
sw $t5,0($t0)
# Original instruction: lb v393,0(v393)
la $t4,label_1062_v393
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1062_v393
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v393,0($sp)
la $t5,label_1062_v393
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_c
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@6a6824be
# Original instruction: la v395,label_18_
la $t5,label_18_
la $t0,label_1064_v395
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v395,0($sp)
la $t5,label_1064_v395
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@6a6824be ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@5c8da962
# Original instruction: la v397,label_15_
la $t5,label_15_
la $t0,label_1066_v397
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v397,0($sp)
la $t5,label_1066_v397
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@5c8da962 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@512ddf17
# Original instruction: la v399,label_13_
la $t5,label_13_
la $t0,label_1068_v399
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v399,0($sp)
la $t5,label_1068_v399
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@512ddf17 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1052_v387
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1006_v353
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1068_v399
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1030_v371
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1042_v379
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_998_v347
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1066_v397
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1046_v383
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1036_v375
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1044_v381
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1058_v391
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1040_v377
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1022_v365
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_996_v345
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1028_v369
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1014_v359
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1062_v393
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1050_v385
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1024_v367
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1064_v395
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1000_v349
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1012_v357
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1002_v351
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1018_v361
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1008_v355
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1020_v363
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1056_v389
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1034_v373
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
label_1070_v401:
.space 4
label_1076_v405:
.space 4
label_1074_v403:
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
# Original instruction: pushRegisters
la $t0,label_1070_v401
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1076_v405
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1074_v403
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@2c13da15
# Original instruction: la v401,label_21_
la $t5,label_21_
la $t0,label_1070_v401
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v401,0($sp)
la $t5,label_1070_v401
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@2c13da15 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v403,$fp,4
addiu $t5,$fp,4
la $t0,label_1074_v403
sw $t5,0($t0)
# Original instruction: lw v403,0(v403)
la $t4,label_1074_v403
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1074_v403
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v403,0($sp)
la $t5,label_1074_v403
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@77556fd
# Original instruction: la v405,label_22_
la $t5,label_22_
la $t0,label_1076_v405
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v405,0($sp)
la $t5,label_1076_v405
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@77556fd ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1074_v403
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1076_v405
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1070_v401
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
label_1092_v411:
.space 4
label_1081_v406:
.space 4
label_1082_v407:
.space 4
label_1090_v410:
.space 4
label_1086_v409:
.space 4
label_1088_v408:
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
# Original instruction: pushRegisters
la $t0,label_1092_v411
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1081_v406
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1082_v407
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1090_v410
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1086_v409
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1088_v408
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v406,$fp,8
addiu $t5,$fp,8
la $t0,label_1081_v406
sw $t5,0($t0)
# Original instruction: lw v406,0(v406)
la $t4,label_1081_v406
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1081_v406
sw $t4,0($t0)
# Original instruction: li v407,1
li $t5,1
la $t0,label_1082_v407
sw $t5,0($t0)
# Original instruction: xor v408,v406,v407
la $t5,label_1081_v406
lw $t5,0($t5)
la $t4,label_1082_v407
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1088_v408
sw $t3,0($t0)
# Original instruction: li v409,1
li $t5,1
la $t0,label_1086_v409
sw $t5,0($t0)
# Original instruction: sltu v408,v408,v409
la $t3,label_1088_v408
lw $t3,0($t3)
la $t4,label_1086_v409
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1088_v408
sw $t3,0($t0)
# Original instruction: beq v408,$zero,label_121_else
la $t5,label_1088_v408
lw $t5,0($t5)
beq $t5,$zero,label_121_else
# Original instruction: li v410,2
li $t5,2
la $t0,label_1090_v410
sw $t5,0($t0)
# Original instruction: sw v410,4($fp)
la $t5,label_1090_v410
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j label_122_end
j label_122_end
label_121_else:
# Original instruction: li v411,1
li $t5,1
la $t0,label_1092_v411
sw $t5,0($t0)
# Original instruction: sw v411,4($fp)
la $t5,label_1092_v411
lw $t5,0($t5)
sw $t5,4($fp)
label_122_end:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1088_v408
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1086_v409
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1090_v410
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1082_v407
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1081_v406
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1092_v411
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
label_1098_v413:
.space 4
label_1104_v414:
.space 4
label_1102_v415:
.space 4
label_1097_v412:
.space 4
label_1108_v416:
.space 4
label_1112_v417:
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
# Original instruction: pushRegisters
la $t0,label_1098_v413
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1104_v414
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1102_v415
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1097_v412
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1108_v416
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1112_v417
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v412,$fp,8
addiu $t5,$fp,8
la $t0,label_1097_v412
sw $t5,0($t0)
# Original instruction: lw v412,0(v412)
la $t4,label_1097_v412
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1097_v412
sw $t4,0($t0)
# Original instruction: li v413,1
li $t5,1
la $t0,label_1098_v413
sw $t5,0($t0)
# Original instruction: xor v414,v412,v413
la $t5,label_1097_v412
lw $t5,0($t5)
la $t4,label_1098_v413
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1104_v414
sw $t3,0($t0)
# Original instruction: li v415,1
li $t5,1
la $t0,label_1102_v415
sw $t5,0($t0)
# Original instruction: sltu v414,v414,v415
la $t3,label_1104_v414
lw $t3,0($t3)
la $t4,label_1102_v415
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1104_v414
sw $t3,0($t0)
# Original instruction: beq v414,$zero,label_123_else
la $t5,label_1104_v414
lw $t5,0($t5)
beq $t5,$zero,label_123_else
# Original instruction: la v416,label_23_
la $t5,label_23_
la $t0,label_1108_v416
sw $t5,0($t0)
# Original instruction: lb v416,0(v416)
la $t4,label_1108_v416
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1108_v416
sw $t4,0($t0)
# Original instruction: sb v416,4($fp)
la $t5,label_1108_v416
lw $t5,0($t5)
sb $t5,4($fp)
# Original instruction: j label_124_end
j label_124_end
label_123_else:
# Original instruction: la v417,label_24_
la $t5,label_24_
la $t0,label_1112_v417
sw $t5,0($t0)
# Original instruction: lb v417,0(v417)
la $t4,label_1112_v417
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1112_v417
sw $t4,0($t0)
# Original instruction: sb v417,4($fp)
la $t5,label_1112_v417
lw $t5,0($t5)
sb $t5,4($fp)
label_124_end:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1112_v417
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1108_v416
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1097_v412
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1102_v415
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1104_v414
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1098_v413
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
label_1195_v459:
.space 4
label_1128_v427:
.space 4
label_1172_v446:
.space 4
label_1115_v419:
.space 4
label_1157_v442:
.space 4
label_1174_v449:
.space 4
label_1126_v425:
.space 4
label_1196_v458:
.space 4
label_1188_v455:
.space 4
label_1116_v418:
.space 4
label_1192_v457:
.space 4
label_1160_v438:
.space 4
label_1131_v429:
.space 4
label_1135_v432:
.space 4
label_1144_v434:
.space 4
label_1143_v435:
.space 4
label_1120_v421:
.space 4
label_1180_v451:
.space 4
label_1136_v431:
.space 4
label_1153_v441:
.space 4
label_1159_v439:
.space 4
label_1141_v436:
.space 4
label_1166_v445:
.space 4
label_1183_v450:
.space 4
label_1181_v452:
.space 4
label_1149_v440:
.space 4
label_1132_v428:
.space 4
label_1190_v454:
.space 4
label_1122_v423:
.space 4
label_1165_v444:
.space 4
label_1184_v453:
.space 4
label_1170_v447:
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
# Original instruction: pushRegisters
la $t0,label_1195_v459
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1128_v427
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1172_v446
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1115_v419
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1157_v442
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1174_v449
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1126_v425
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1196_v458
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1188_v455
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1116_v418
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1192_v457
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1160_v438
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1131_v429
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1135_v432
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1144_v434
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1143_v435
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1120_v421
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1180_v451
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1136_v431
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1153_v441
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1159_v439
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1141_v436
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1166_v445
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1183_v450
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1181_v452
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1149_v440
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1132_v428
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1190_v454
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1122_v423
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1165_v444
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1184_v453
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1170_v447
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v418,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1116_v418
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v419,1
li $t5,1
la $t0,label_1115_v419
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v419,0(v418)
la $t5,label_1115_v419
lw $t5,0($t5)
la $t4,label_1116_v418
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_125_while:
# Original instruction: addiu v421,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1120_v421
sw $t5,0($t0)
# Original instruction: lw v421,0(v421)
la $t4,label_1120_v421
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1120_v421
sw $t4,0($t0)
# Original instruction: beq v421,$zero,label_126_end
la $t5,label_1120_v421
lw $t5,0($t5)
beq $t5,$zero,label_126_end
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@368239c8
# Original instruction: la v423,label_21_
la $t5,label_21_
la $t0,label_1122_v423
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v423,0($sp)
la $t5,label_1122_v423
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@368239c8 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Execute print_i
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v425,$fp,4
addiu $t5,$fp,4
la $t0,label_1126_v425
sw $t5,0($t0)
# Original instruction: lw v425,0(v425)
la $t4,label_1126_v425
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1126_v425
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v425,0($sp)
la $t5,label_1126_v425
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_i
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@9e89d68
# Original instruction: la v427,label_25_
la $t5,label_25_
la $t0,label_1128_v427
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v427,0($sp)
la $t5,label_1128_v427
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@9e89d68 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: addiu v428,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1132_v428
sw $t5,0($t0)
# >>Get VAL<<
# Execute read_c
# >>>Reserver Stack size for Return VAL<<<: 1
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_c
jal read_c
# Original instruction: lb v429,0($sp)
lb $t5,0($sp)
la $t0,label_1131_v429
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From read_c
# >>Start Copy<<
# Original instruction: sb v429,0(v428)
la $t5,label_1131_v429
lw $t5,0($t5)
la $t4,label_1132_v428
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v431,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1136_v431
sw $t5,0($t0)
# >>Get VAL<<
# Execute read_i
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: lw v432,0($sp)
lw $t5,0($sp)
la $t0,label_1135_v432
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From read_i
# >>Start Copy<<
# Original instruction: sw v432,0(v431)
la $t5,label_1135_v432
lw $t5,0($t5)
la $t4,label_1136_v431
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# >>>Assign<<<: CHAR
# >>Get VAR Addr<<
# Original instruction: addiu v434,$fp,-24
addiu $t5,$fp,-24
la $t0,label_1144_v434
sw $t5,0($t0)
# >>Get VAL<<
# Execute get_mark
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v436,$fp,4
addiu $t5,$fp,4
la $t0,label_1141_v436
sw $t5,0($t0)
# Original instruction: lw v436,0(v436)
la $t4,label_1141_v436
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1141_v436
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v436,0($sp)
la $t5,label_1141_v436
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Reserver Stack size for Return VAL<<<: 1
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal get_mark
jal get_mark
# Original instruction: lb v435,0($sp)
lb $t5,0($sp)
la $t0,label_1143_v435
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From get_mark
# >>Start Copy<<
# Original instruction: sb v435,0(v434)
la $t5,label_1143_v435
lw $t5,0($t5)
la $t4,label_1144_v434
lw $t4,0($t4)
sb $t5,0($t4)
# Copy End
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v438,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1160_v438
sw $t5,0($t0)
# >>Get VAL<<
# Execute set
# >>>Retrieving arg val<<<: CHAR
# Original instruction: addiu v440,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1149_v440
sw $t5,0($t0)
# Original instruction: lb v440,0(v440)
la $t4,label_1149_v440
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1149_v440
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v440,0($sp)
la $t5,label_1149_v440
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# >>>Retrieving arg val<<<: INT
# Original instruction: addiu v441,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1153_v441
sw $t5,0($t0)
# Original instruction: lw v441,0(v441)
la $t4,label_1153_v441
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1153_v441
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v441,0($sp)
la $t5,label_1153_v441
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: INT ended
# >>>Retrieving arg val<<<: CHAR
# Original instruction: addiu v442,$fp,-24
addiu $t5,$fp,-24
la $t0,label_1157_v442
sw $t5,0($t0)
# Original instruction: lb v442,0(v442)
la $t4,label_1157_v442
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1157_v442
sw $t4,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sb v442,0($sp)
la $t5,label_1157_v442
lw $t5,0($t5)
sb $t5,0($sp)
# # >>>Arg Pushed<<<: CHAR ended
# >>>Reserver Stack size for Return VAL<<<: 4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal set
jal set
# Original instruction: lw v439,0($sp)
lw $t5,0($sp)
la $t0,label_1159_v439
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# >>>>>>>>>Return From set
# >>Start Copy<<
# Original instruction: sw v439,0(v438)
la $t5,label_1159_v439
lw $t5,0($t5)
la $t4,label_1160_v438
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: addiu v444,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1165_v444
sw $t5,0($t0)
# Original instruction: lw v444,0(v444)
la $t4,label_1165_v444
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1165_v444
sw $t4,0($t0)
# Original instruction: li v445,0
li $t5,0
la $t0,label_1166_v445
sw $t5,0($t0)
# Original instruction: xor v446,v444,v445
la $t5,label_1165_v444
lw $t5,0($t5)
la $t4,label_1166_v445
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1172_v446
sw $t3,0($t0)
# Original instruction: li v447,1
li $t5,1
la $t0,label_1170_v447
sw $t5,0($t0)
# Original instruction: sltu v446,v446,v447
la $t3,label_1172_v446
lw $t3,0($t3)
la $t4,label_1170_v447
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1172_v446
sw $t3,0($t0)
# Original instruction: beq v446,$zero,label_128_else
la $t5,label_1172_v446
lw $t5,0($t5)
beq $t5,$zero,label_128_else
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@3b192d32
# Original instruction: la v449,label_26_
la $t5,label_26_
la $t0,label_1174_v449
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v449,0($sp)
la $t5,label_1174_v449
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@3b192d32 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: j label_129_end
j label_129_end
label_128_else:
# Original instruction: addiu v450,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1183_v450
sw $t5,0($t0)
# Original instruction: lw v450,0(v450)
la $t4,label_1183_v450
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1183_v450
sw $t4,0($t0)
# Original instruction: li v451,0
li $t5,0
la $t0,label_1180_v451
sw $t5,0($t0)
# Original instruction: li v452,1
li $t5,1
la $t0,label_1181_v452
sw $t5,0($t0)
# Original instruction: sub v453,v451,v452
la $t5,label_1180_v451
lw $t5,0($t5)
la $t4,label_1181_v452
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_1184_v453
sw $t3,0($t0)
# Original instruction: xor v454,v450,v453
la $t5,label_1183_v450
lw $t5,0($t5)
la $t4,label_1184_v453
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1190_v454
sw $t3,0($t0)
# Original instruction: li v455,1
li $t5,1
la $t0,label_1188_v455
sw $t5,0($t0)
# Original instruction: sltu v454,v454,v455
la $t3,label_1190_v454
lw $t3,0($t3)
la $t4,label_1188_v455
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1190_v454
sw $t3,0($t0)
# Original instruction: beq v454,$zero,label_130_else
la $t5,label_1190_v454
lw $t5,0($t5)
beq $t5,$zero,label_130_else
# Execute print_s
# >>>Retrieving arg val<<<: ast.PointerType@16f65612
# Original instruction: la v457,label_27_
la $t5,label_27_
la $t0,label_1192_v457
sw $t5,0($t0)
# >>>Reserving Stack size for Args<<<
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v457,0($sp)
la $t5,label_1192_v457
lw $t5,0($t5)
sw $t5,0($sp)
# # >>>Arg Pushed<<<: ast.PointerType@16f65612 ended
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# >>>>>>>>>Return From print_s
# Original instruction: j label_131_end
j label_131_end
label_130_else:
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v458,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1196_v458
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v459,0
li $t5,0
la $t0,label_1195_v459
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v459,0(v458)
la $t5,label_1195_v459
lw $t5,0($t5)
la $t4,label_1196_v458
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
label_131_end:
label_129_end:
# Original instruction: j label_125_while
j label_125_while
label_126_end:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1170_v447
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1184_v453
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1165_v444
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1122_v423
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1190_v454
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1132_v428
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1149_v440
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1181_v452
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1183_v450
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1166_v445
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1141_v436
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1159_v439
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1153_v441
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1136_v431
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1180_v451
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1120_v421
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1143_v435
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1144_v434
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1135_v432
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1131_v429
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1160_v438
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1192_v457
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1116_v418
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1188_v455
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1196_v458
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1126_v425
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1174_v449
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1157_v442
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1115_v419
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1172_v446
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1128_v427
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1195_v459
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
label_1382_v523:
.space 4
label_1331_v505:
.space 4
label_1338_v507:
.space 4
label_1430_v537:
.space 4
label_1208_v465:
.space 4
label_1462_v548:
.space 4
label_1368_v519:
.space 4
label_1456_v547:
.space 4
label_1236_v473:
.space 4
label_1414_v534:
.space 4
label_1409_v531:
.space 4
label_1260_v481:
.space 4
label_1352_v511:
.space 4
label_1516_v566:
.space 4
label_1207_v464:
.space 4
label_1226_v471:
.space 4
label_1424_v536:
.space 4
label_1254_v480:
.space 4
label_1355_v514:
.space 4
label_1434_v539:
.space 4
label_1470_v551:
.space 4
label_1212_v467:
.space 4
label_1258_v482:
.space 4
label_1235_v472:
.space 4
label_1285_v490:
.space 4
label_1525_v570:
.space 4
label_1286_v491:
.space 4
label_1391_v524:
.space 4
label_1416_v533:
.space 4
label_1346_v510:
.space 4
label_1401_v529:
.space 4
label_1310_v498:
.space 4
label_1392_v525:
.space 4
label_1384_v522:
.space 4
label_1469_v550:
.space 4
label_1318_v502:
.space 4
label_1377_v520:
.space 4
label_1364_v517:
.space 4
label_1492_v560:
.space 4
label_1474_v553:
.space 4
label_1322_v504:
.space 4
label_1441_v542:
.space 4
label_1476_v552:
.space 4
label_1396_v527:
.space 4
label_1267_v483:
.space 4
label_1336_v508:
.space 4
label_1300_v495:
.space 4
label_1433_v540:
.space 4
label_1242_v474:
.space 4
label_1200_v461:
.space 4
label_1306_v496:
.space 4
label_1222_v469:
.space 4
label_1522_v567:
.space 4
label_1530_v572:
.space 4
label_1245_v477:
.space 4
label_1274_v485:
.space 4
label_1277_v488:
.space 4
label_1480_v554:
.space 4
label_1304_v497:
.space 4
label_1350_v512:
.space 4
label_1332_v506:
.space 4
label_1363_v516:
.space 4
label_1240_v475:
.space 4
label_1370_v518:
.space 4
label_1253_v479:
.space 4
label_1448_v544:
.space 4
label_1479_v555:
.space 4
label_1446_v545:
.space 4
label_1299_v494:
.space 4
label_1221_v468:
.space 4
label_1345_v509:
.space 4
label_1268_v484:
.space 4
label_1324_v503:
.space 4
label_1488_v558:
.space 4
label_1487_v557:
.space 4
label_1278_v487:
.space 4
label_1378_v521:
.space 4
label_1508_v563:
.space 4
label_1455_v546:
.space 4
label_1317_v501:
.space 4
label_1506_v564:
.space 4
label_1442_v543:
.space 4
label_1428_v538:
.space 4
label_1290_v493:
.space 4
label_1526_v569:
.space 4
label_1272_v486:
.space 4
label_1515_v565:
.space 4
label_1292_v492:
.space 4
label_1246_v476:
.space 4
label_1502_v562:
.space 4
label_1520_v568:
.space 4
label_1398_v526:
.space 4
label_1423_v535:
.space 4
label_1356_v513:
.space 4
label_1228_v470:
.space 4
label_1494_v559:
.space 4
label_1214_v466:
.space 4
label_1402_v528:
.space 4
label_1309_v499:
.space 4
label_1199_v462:
.space 4
label_1410_v532:
.space 4
label_1501_v561:
.space 4
label_1460_v549:
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
# Original instruction: pushRegisters
la $t0,label_1382_v523
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1331_v505
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1338_v507
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1430_v537
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1208_v465
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1462_v548
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1368_v519
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1456_v547
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1236_v473
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1414_v534
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1409_v531
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1260_v481
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1352_v511
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1516_v566
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1207_v464
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1226_v471
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1424_v536
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1254_v480
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1355_v514
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1434_v539
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1470_v551
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1212_v467
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1258_v482
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1235_v472
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1285_v490
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1525_v570
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1286_v491
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1391_v524
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1416_v533
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1346_v510
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1401_v529
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1310_v498
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1392_v525
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1384_v522
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1469_v550
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1318_v502
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1377_v520
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1364_v517
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1492_v560
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1474_v553
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1322_v504
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1441_v542
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1476_v552
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1396_v527
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1267_v483
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1336_v508
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1300_v495
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1433_v540
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1242_v474
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1200_v461
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1306_v496
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1222_v469
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1522_v567
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1530_v572
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1245_v477
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1274_v485
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1277_v488
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1480_v554
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1304_v497
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1350_v512
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1332_v506
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1363_v516
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1240_v475
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1370_v518
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1253_v479
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1448_v544
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1479_v555
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1446_v545
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1299_v494
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1221_v468
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1345_v509
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1268_v484
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1324_v503
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1488_v558
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1487_v557
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1278_v487
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1378_v521
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1508_v563
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1455_v546
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1317_v501
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1506_v564
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1442_v543
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1428_v538
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1290_v493
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1526_v569
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1272_v486
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1515_v565
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1292_v492
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1246_v476
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1502_v562
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1520_v568
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1398_v526
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1423_v535
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1356_v513
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1228_v470
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1494_v559
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1214_v466
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1402_v528
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1309_v499
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1199_v462
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1410_v532
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1501_v561
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1460_v549
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v461,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1200_v461
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v462,0
li $t5,0
la $t0,label_1199_v462
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v462,0(v461)
la $t5,label_1199_v462
lw $t5,0($t5)
la $t4,label_1200_v461
lw $t4,0($t4)
sw $t5,0($t4)
# Copy End
# Original instruction: la v464,a11
la $t5,a11
la $t0,label_1207_v464
sw $t5,0($t0)
# Original instruction: lb v464,0(v464)
la $t4,label_1207_v464
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1207_v464
sw $t4,0($t0)
# Original instruction: addiu v465,$fp,8
addiu $t5,$fp,8
la $t0,label_1208_v465
sw $t5,0($t0)
# Original instruction: lb v465,0(v465)
la $t4,label_1208_v465
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1208_v465
sw $t4,0($t0)
# Original instruction: xor v466,v464,v465
la $t5,label_1207_v464
lw $t5,0($t5)
la $t4,label_1208_v465
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1214_v466
sw $t3,0($t0)
# Original instruction: li v467,1
li $t5,1
la $t0,label_1212_v467
sw $t5,0($t0)
# Original instruction: sltu v466,v466,v467
la $t3,label_1214_v466
lw $t3,0($t3)
la $t4,label_1212_v467
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1214_v466
sw $t3,0($t0)
# Original instruction: beq v466,$zero,label_132_else
la $t5,label_1214_v466
lw $t5,0($t5)
beq $t5,$zero,label_132_else
# Original instruction: la v468,a21
la $t5,a21
la $t0,label_1221_v468
sw $t5,0($t0)
# Original instruction: lb v468,0(v468)
la $t4,label_1221_v468
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1221_v468
sw $t4,0($t0)
# Original instruction: addiu v469,$fp,8
addiu $t5,$fp,8
la $t0,label_1222_v469
sw $t5,0($t0)
# Original instruction: lb v469,0(v469)
la $t4,label_1222_v469
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1222_v469
sw $t4,0($t0)
# Original instruction: xor v470,v468,v469
la $t5,label_1221_v468
lw $t5,0($t5)
la $t4,label_1222_v469
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1228_v470
sw $t3,0($t0)
# Original instruction: li v471,1
li $t5,1
la $t0,label_1226_v471
sw $t5,0($t0)
# Original instruction: sltu v470,v470,v471
la $t3,label_1228_v470
lw $t3,0($t3)
la $t4,label_1226_v471
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1228_v470
sw $t3,0($t0)
# Original instruction: beq v470,$zero,label_134_else
la $t5,label_1228_v470
lw $t5,0($t5)
beq $t5,$zero,label_134_else
# Original instruction: la v472,a31
la $t5,a31
la $t0,label_1235_v472
sw $t5,0($t0)
# Original instruction: lb v472,0(v472)
la $t4,label_1235_v472
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1235_v472
sw $t4,0($t0)
# Original instruction: addiu v473,$fp,8
addiu $t5,$fp,8
la $t0,label_1236_v473
sw $t5,0($t0)
# Original instruction: lb v473,0(v473)
la $t4,label_1236_v473
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1236_v473
sw $t4,0($t0)
# Original instruction: xor v474,v472,v473
la $t5,label_1235_v472
lw $t5,0($t5)
la $t4,label_1236_v473
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1242_v474
sw $t3,0($t0)
# Original instruction: li v475,1
li $t5,1
la $t0,label_1240_v475
sw $t5,0($t0)
# Original instruction: sltu v474,v474,v475
la $t3,label_1242_v474
lw $t3,0($t3)
la $t4,label_1240_v475
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1242_v474
sw $t3,0($t0)
# Original instruction: beq v474,$zero,label_136_else
la $t5,label_1242_v474
lw $t5,0($t5)
beq $t5,$zero,label_136_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v476,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1246_v476
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v477,1
li $t5,1
la $t0,label_1245_v477
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v477,0(v476)
la $t5,label_1245_v477
lw $t5,0($t5)
la $t4,label_1246_v476
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
# Original instruction: la v479,a22
la $t5,a22
la $t0,label_1253_v479
sw $t5,0($t0)
# Original instruction: lb v479,0(v479)
la $t4,label_1253_v479
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1253_v479
sw $t4,0($t0)
# Original instruction: addiu v480,$fp,8
addiu $t5,$fp,8
la $t0,label_1254_v480
sw $t5,0($t0)
# Original instruction: lb v480,0(v480)
la $t4,label_1254_v480
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1254_v480
sw $t4,0($t0)
# Original instruction: xor v481,v479,v480
la $t5,label_1253_v479
lw $t5,0($t5)
la $t4,label_1254_v480
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1260_v481
sw $t3,0($t0)
# Original instruction: li v482,1
li $t5,1
la $t0,label_1258_v482
sw $t5,0($t0)
# Original instruction: sltu v481,v481,v482
la $t3,label_1260_v481
lw $t3,0($t3)
la $t4,label_1258_v482
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1260_v481
sw $t3,0($t0)
# Original instruction: beq v481,$zero,label_138_else
la $t5,label_1260_v481
lw $t5,0($t5)
beq $t5,$zero,label_138_else
# Original instruction: la v483,a33
la $t5,a33
la $t0,label_1267_v483
sw $t5,0($t0)
# Original instruction: lb v483,0(v483)
la $t4,label_1267_v483
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1267_v483
sw $t4,0($t0)
# Original instruction: addiu v484,$fp,8
addiu $t5,$fp,8
la $t0,label_1268_v484
sw $t5,0($t0)
# Original instruction: lb v484,0(v484)
la $t4,label_1268_v484
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1268_v484
sw $t4,0($t0)
# Original instruction: xor v485,v483,v484
la $t5,label_1267_v483
lw $t5,0($t5)
la $t4,label_1268_v484
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1274_v485
sw $t3,0($t0)
# Original instruction: li v486,1
li $t5,1
la $t0,label_1272_v486
sw $t5,0($t0)
# Original instruction: sltu v485,v485,v486
la $t3,label_1274_v485
lw $t3,0($t3)
la $t4,label_1272_v486
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1274_v485
sw $t3,0($t0)
# Original instruction: beq v485,$zero,label_140_else
la $t5,label_1274_v485
lw $t5,0($t5)
beq $t5,$zero,label_140_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v487,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1278_v487
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v488,1
li $t5,1
la $t0,label_1277_v488
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v488,0(v487)
la $t5,label_1277_v488
lw $t5,0($t5)
la $t4,label_1278_v487
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
# Original instruction: la v490,a12
la $t5,a12
la $t0,label_1285_v490
sw $t5,0($t0)
# Original instruction: lb v490,0(v490)
la $t4,label_1285_v490
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1285_v490
sw $t4,0($t0)
# Original instruction: addiu v491,$fp,8
addiu $t5,$fp,8
la $t0,label_1286_v491
sw $t5,0($t0)
# Original instruction: lb v491,0(v491)
la $t4,label_1286_v491
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1286_v491
sw $t4,0($t0)
# Original instruction: xor v492,v490,v491
la $t5,label_1285_v490
lw $t5,0($t5)
la $t4,label_1286_v491
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1292_v492
sw $t3,0($t0)
# Original instruction: li v493,1
li $t5,1
la $t0,label_1290_v493
sw $t5,0($t0)
# Original instruction: sltu v492,v492,v493
la $t3,label_1292_v492
lw $t3,0($t3)
la $t4,label_1290_v493
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1292_v492
sw $t3,0($t0)
# Original instruction: beq v492,$zero,label_142_else
la $t5,label_1292_v492
lw $t5,0($t5)
beq $t5,$zero,label_142_else
# Original instruction: la v494,a13
la $t5,a13
la $t0,label_1299_v494
sw $t5,0($t0)
# Original instruction: lb v494,0(v494)
la $t4,label_1299_v494
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1299_v494
sw $t4,0($t0)
# Original instruction: addiu v495,$fp,8
addiu $t5,$fp,8
la $t0,label_1300_v495
sw $t5,0($t0)
# Original instruction: lb v495,0(v495)
la $t4,label_1300_v495
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1300_v495
sw $t4,0($t0)
# Original instruction: xor v496,v494,v495
la $t5,label_1299_v494
lw $t5,0($t5)
la $t4,label_1300_v495
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1306_v496
sw $t3,0($t0)
# Original instruction: li v497,1
li $t5,1
la $t0,label_1304_v497
sw $t5,0($t0)
# Original instruction: sltu v496,v496,v497
la $t3,label_1306_v496
lw $t3,0($t3)
la $t4,label_1304_v497
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1306_v496
sw $t3,0($t0)
# Original instruction: beq v496,$zero,label_144_else
la $t5,label_1306_v496
lw $t5,0($t5)
beq $t5,$zero,label_144_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v498,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1310_v498
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v499,1
li $t5,1
la $t0,label_1309_v499
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v499,0(v498)
la $t5,label_1309_v499
lw $t5,0($t5)
la $t4,label_1310_v498
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
# Original instruction: la v501,a12
la $t5,a12
la $t0,label_1317_v501
sw $t5,0($t0)
# Original instruction: lb v501,0(v501)
la $t4,label_1317_v501
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1317_v501
sw $t4,0($t0)
# Original instruction: addiu v502,$fp,8
addiu $t5,$fp,8
la $t0,label_1318_v502
sw $t5,0($t0)
# Original instruction: lb v502,0(v502)
la $t4,label_1318_v502
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1318_v502
sw $t4,0($t0)
# Original instruction: xor v503,v501,v502
la $t5,label_1317_v501
lw $t5,0($t5)
la $t4,label_1318_v502
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1324_v503
sw $t3,0($t0)
# Original instruction: li v504,1
li $t5,1
la $t0,label_1322_v504
sw $t5,0($t0)
# Original instruction: sltu v503,v503,v504
la $t3,label_1324_v503
lw $t3,0($t3)
la $t4,label_1322_v504
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1324_v503
sw $t3,0($t0)
# Original instruction: beq v503,$zero,label_146_else
la $t5,label_1324_v503
lw $t5,0($t5)
beq $t5,$zero,label_146_else
# Original instruction: la v505,a22
la $t5,a22
la $t0,label_1331_v505
sw $t5,0($t0)
# Original instruction: lb v505,0(v505)
la $t4,label_1331_v505
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1331_v505
sw $t4,0($t0)
# Original instruction: addiu v506,$fp,8
addiu $t5,$fp,8
la $t0,label_1332_v506
sw $t5,0($t0)
# Original instruction: lb v506,0(v506)
la $t4,label_1332_v506
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1332_v506
sw $t4,0($t0)
# Original instruction: xor v507,v505,v506
la $t5,label_1331_v505
lw $t5,0($t5)
la $t4,label_1332_v506
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1338_v507
sw $t3,0($t0)
# Original instruction: li v508,1
li $t5,1
la $t0,label_1336_v508
sw $t5,0($t0)
# Original instruction: sltu v507,v507,v508
la $t3,label_1338_v507
lw $t3,0($t3)
la $t4,label_1336_v508
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1338_v507
sw $t3,0($t0)
# Original instruction: beq v507,$zero,label_148_else
la $t5,label_1338_v507
lw $t5,0($t5)
beq $t5,$zero,label_148_else
# Original instruction: la v509,a32
la $t5,a32
la $t0,label_1345_v509
sw $t5,0($t0)
# Original instruction: lb v509,0(v509)
la $t4,label_1345_v509
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1345_v509
sw $t4,0($t0)
# Original instruction: addiu v510,$fp,8
addiu $t5,$fp,8
la $t0,label_1346_v510
sw $t5,0($t0)
# Original instruction: lb v510,0(v510)
la $t4,label_1346_v510
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1346_v510
sw $t4,0($t0)
# Original instruction: xor v511,v509,v510
la $t5,label_1345_v509
lw $t5,0($t5)
la $t4,label_1346_v510
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1352_v511
sw $t3,0($t0)
# Original instruction: li v512,1
li $t5,1
la $t0,label_1350_v512
sw $t5,0($t0)
# Original instruction: sltu v511,v511,v512
la $t3,label_1352_v511
lw $t3,0($t3)
la $t4,label_1350_v512
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1352_v511
sw $t3,0($t0)
# Original instruction: beq v511,$zero,label_150_else
la $t5,label_1352_v511
lw $t5,0($t5)
beq $t5,$zero,label_150_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v513,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1356_v513
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v514,1
li $t5,1
la $t0,label_1355_v514
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v514,0(v513)
la $t5,label_1355_v514
lw $t5,0($t5)
la $t4,label_1356_v513
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
# Original instruction: la v516,a13
la $t5,a13
la $t0,label_1363_v516
sw $t5,0($t0)
# Original instruction: lb v516,0(v516)
la $t4,label_1363_v516
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1363_v516
sw $t4,0($t0)
# Original instruction: addiu v517,$fp,8
addiu $t5,$fp,8
la $t0,label_1364_v517
sw $t5,0($t0)
# Original instruction: lb v517,0(v517)
la $t4,label_1364_v517
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1364_v517
sw $t4,0($t0)
# Original instruction: xor v518,v516,v517
la $t5,label_1363_v516
lw $t5,0($t5)
la $t4,label_1364_v517
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1370_v518
sw $t3,0($t0)
# Original instruction: li v519,1
li $t5,1
la $t0,label_1368_v519
sw $t5,0($t0)
# Original instruction: sltu v518,v518,v519
la $t3,label_1370_v518
lw $t3,0($t3)
la $t4,label_1368_v519
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1370_v518
sw $t3,0($t0)
# Original instruction: beq v518,$zero,label_152_else
la $t5,label_1370_v518
lw $t5,0($t5)
beq $t5,$zero,label_152_else
# Original instruction: la v520,a23
la $t5,a23
la $t0,label_1377_v520
sw $t5,0($t0)
# Original instruction: lb v520,0(v520)
la $t4,label_1377_v520
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1377_v520
sw $t4,0($t0)
# Original instruction: addiu v521,$fp,8
addiu $t5,$fp,8
la $t0,label_1378_v521
sw $t5,0($t0)
# Original instruction: lb v521,0(v521)
la $t4,label_1378_v521
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1378_v521
sw $t4,0($t0)
# Original instruction: xor v522,v520,v521
la $t5,label_1377_v520
lw $t5,0($t5)
la $t4,label_1378_v521
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1384_v522
sw $t3,0($t0)
# Original instruction: li v523,1
li $t5,1
la $t0,label_1382_v523
sw $t5,0($t0)
# Original instruction: sltu v522,v522,v523
la $t3,label_1384_v522
lw $t3,0($t3)
la $t4,label_1382_v523
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1384_v522
sw $t3,0($t0)
# Original instruction: beq v522,$zero,label_154_else
la $t5,label_1384_v522
lw $t5,0($t5)
beq $t5,$zero,label_154_else
# Original instruction: la v524,a33
la $t5,a33
la $t0,label_1391_v524
sw $t5,0($t0)
# Original instruction: lb v524,0(v524)
la $t4,label_1391_v524
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1391_v524
sw $t4,0($t0)
# Original instruction: addiu v525,$fp,8
addiu $t5,$fp,8
la $t0,label_1392_v525
sw $t5,0($t0)
# Original instruction: lb v525,0(v525)
la $t4,label_1392_v525
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1392_v525
sw $t4,0($t0)
# Original instruction: xor v526,v524,v525
la $t5,label_1391_v524
lw $t5,0($t5)
la $t4,label_1392_v525
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1398_v526
sw $t3,0($t0)
# Original instruction: li v527,1
li $t5,1
la $t0,label_1396_v527
sw $t5,0($t0)
# Original instruction: sltu v526,v526,v527
la $t3,label_1398_v526
lw $t3,0($t3)
la $t4,label_1396_v527
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1398_v526
sw $t3,0($t0)
# Original instruction: beq v526,$zero,label_156_else
la $t5,label_1398_v526
lw $t5,0($t5)
beq $t5,$zero,label_156_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v528,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1402_v528
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v529,1
li $t5,1
la $t0,label_1401_v529
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v529,0(v528)
la $t5,label_1401_v529
lw $t5,0($t5)
la $t4,label_1402_v528
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
# Original instruction: la v531,a22
la $t5,a22
la $t0,label_1409_v531
sw $t5,0($t0)
# Original instruction: lb v531,0(v531)
la $t4,label_1409_v531
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1409_v531
sw $t4,0($t0)
# Original instruction: addiu v532,$fp,8
addiu $t5,$fp,8
la $t0,label_1410_v532
sw $t5,0($t0)
# Original instruction: lb v532,0(v532)
la $t4,label_1410_v532
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1410_v532
sw $t4,0($t0)
# Original instruction: xor v533,v531,v532
la $t5,label_1409_v531
lw $t5,0($t5)
la $t4,label_1410_v532
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1416_v533
sw $t3,0($t0)
# Original instruction: li v534,1
li $t5,1
la $t0,label_1414_v534
sw $t5,0($t0)
# Original instruction: sltu v533,v533,v534
la $t3,label_1416_v533
lw $t3,0($t3)
la $t4,label_1414_v534
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1416_v533
sw $t3,0($t0)
# Original instruction: beq v533,$zero,label_158_else
la $t5,label_1416_v533
lw $t5,0($t5)
beq $t5,$zero,label_158_else
# Original instruction: la v535,a31
la $t5,a31
la $t0,label_1423_v535
sw $t5,0($t0)
# Original instruction: lb v535,0(v535)
la $t4,label_1423_v535
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1423_v535
sw $t4,0($t0)
# Original instruction: addiu v536,$fp,8
addiu $t5,$fp,8
la $t0,label_1424_v536
sw $t5,0($t0)
# Original instruction: lb v536,0(v536)
la $t4,label_1424_v536
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1424_v536
sw $t4,0($t0)
# Original instruction: xor v537,v535,v536
la $t5,label_1423_v535
lw $t5,0($t5)
la $t4,label_1424_v536
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1430_v537
sw $t3,0($t0)
# Original instruction: li v538,1
li $t5,1
la $t0,label_1428_v538
sw $t5,0($t0)
# Original instruction: sltu v537,v537,v538
la $t3,label_1430_v537
lw $t3,0($t3)
la $t4,label_1428_v538
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1430_v537
sw $t3,0($t0)
# Original instruction: beq v537,$zero,label_160_else
la $t5,label_1430_v537
lw $t5,0($t5)
beq $t5,$zero,label_160_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v539,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1434_v539
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v540,1
li $t5,1
la $t0,label_1433_v540
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v540,0(v539)
la $t5,label_1433_v540
lw $t5,0($t5)
la $t4,label_1434_v539
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
# Original instruction: la v542,a21
la $t5,a21
la $t0,label_1441_v542
sw $t5,0($t0)
# Original instruction: lb v542,0(v542)
la $t4,label_1441_v542
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1441_v542
sw $t4,0($t0)
# Original instruction: addiu v543,$fp,8
addiu $t5,$fp,8
la $t0,label_1442_v543
sw $t5,0($t0)
# Original instruction: lb v543,0(v543)
la $t4,label_1442_v543
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1442_v543
sw $t4,0($t0)
# Original instruction: xor v544,v542,v543
la $t5,label_1441_v542
lw $t5,0($t5)
la $t4,label_1442_v543
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1448_v544
sw $t3,0($t0)
# Original instruction: li v545,1
li $t5,1
la $t0,label_1446_v545
sw $t5,0($t0)
# Original instruction: sltu v544,v544,v545
la $t3,label_1448_v544
lw $t3,0($t3)
la $t4,label_1446_v545
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1448_v544
sw $t3,0($t0)
# Original instruction: beq v544,$zero,label_162_else
la $t5,label_1448_v544
lw $t5,0($t5)
beq $t5,$zero,label_162_else
# Original instruction: la v546,a22
la $t5,a22
la $t0,label_1455_v546
sw $t5,0($t0)
# Original instruction: lb v546,0(v546)
la $t4,label_1455_v546
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1455_v546
sw $t4,0($t0)
# Original instruction: addiu v547,$fp,8
addiu $t5,$fp,8
la $t0,label_1456_v547
sw $t5,0($t0)
# Original instruction: lb v547,0(v547)
la $t4,label_1456_v547
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1456_v547
sw $t4,0($t0)
# Original instruction: xor v548,v546,v547
la $t5,label_1455_v546
lw $t5,0($t5)
la $t4,label_1456_v547
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1462_v548
sw $t3,0($t0)
# Original instruction: li v549,1
li $t5,1
la $t0,label_1460_v549
sw $t5,0($t0)
# Original instruction: sltu v548,v548,v549
la $t3,label_1462_v548
lw $t3,0($t3)
la $t4,label_1460_v549
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1462_v548
sw $t3,0($t0)
# Original instruction: beq v548,$zero,label_164_else
la $t5,label_1462_v548
lw $t5,0($t5)
beq $t5,$zero,label_164_else
# Original instruction: la v550,a23
la $t5,a23
la $t0,label_1469_v550
sw $t5,0($t0)
# Original instruction: lb v550,0(v550)
la $t4,label_1469_v550
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1469_v550
sw $t4,0($t0)
# Original instruction: addiu v551,$fp,8
addiu $t5,$fp,8
la $t0,label_1470_v551
sw $t5,0($t0)
# Original instruction: lb v551,0(v551)
la $t4,label_1470_v551
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1470_v551
sw $t4,0($t0)
# Original instruction: xor v552,v550,v551
la $t5,label_1469_v550
lw $t5,0($t5)
la $t4,label_1470_v551
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1476_v552
sw $t3,0($t0)
# Original instruction: li v553,1
li $t5,1
la $t0,label_1474_v553
sw $t5,0($t0)
# Original instruction: sltu v552,v552,v553
la $t3,label_1476_v552
lw $t3,0($t3)
la $t4,label_1474_v553
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1476_v552
sw $t3,0($t0)
# Original instruction: beq v552,$zero,label_166_else
la $t5,label_1476_v552
lw $t5,0($t5)
beq $t5,$zero,label_166_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v554,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1480_v554
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v555,1
li $t5,1
la $t0,label_1479_v555
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v555,0(v554)
la $t5,label_1479_v555
lw $t5,0($t5)
la $t4,label_1480_v554
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
# Original instruction: la v557,a31
la $t5,a31
la $t0,label_1487_v557
sw $t5,0($t0)
# Original instruction: lb v557,0(v557)
la $t4,label_1487_v557
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1487_v557
sw $t4,0($t0)
# Original instruction: addiu v558,$fp,8
addiu $t5,$fp,8
la $t0,label_1488_v558
sw $t5,0($t0)
# Original instruction: lb v558,0(v558)
la $t4,label_1488_v558
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1488_v558
sw $t4,0($t0)
# Original instruction: xor v559,v557,v558
la $t5,label_1487_v557
lw $t5,0($t5)
la $t4,label_1488_v558
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1494_v559
sw $t3,0($t0)
# Original instruction: li v560,1
li $t5,1
la $t0,label_1492_v560
sw $t5,0($t0)
# Original instruction: sltu v559,v559,v560
la $t3,label_1494_v559
lw $t3,0($t3)
la $t4,label_1492_v560
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1494_v559
sw $t3,0($t0)
# Original instruction: beq v559,$zero,label_168_else
la $t5,label_1494_v559
lw $t5,0($t5)
beq $t5,$zero,label_168_else
# Original instruction: la v561,a32
la $t5,a32
la $t0,label_1501_v561
sw $t5,0($t0)
# Original instruction: lb v561,0(v561)
la $t4,label_1501_v561
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1501_v561
sw $t4,0($t0)
# Original instruction: addiu v562,$fp,8
addiu $t5,$fp,8
la $t0,label_1502_v562
sw $t5,0($t0)
# Original instruction: lb v562,0(v562)
la $t4,label_1502_v562
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1502_v562
sw $t4,0($t0)
# Original instruction: xor v563,v561,v562
la $t5,label_1501_v561
lw $t5,0($t5)
la $t4,label_1502_v562
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1508_v563
sw $t3,0($t0)
# Original instruction: li v564,1
li $t5,1
la $t0,label_1506_v564
sw $t5,0($t0)
# Original instruction: sltu v563,v563,v564
la $t3,label_1508_v563
lw $t3,0($t3)
la $t4,label_1506_v564
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1508_v563
sw $t3,0($t0)
# Original instruction: beq v563,$zero,label_170_else
la $t5,label_1508_v563
lw $t5,0($t5)
beq $t5,$zero,label_170_else
# Original instruction: la v565,a33
la $t5,a33
la $t0,label_1515_v565
sw $t5,0($t0)
# Original instruction: lb v565,0(v565)
la $t4,label_1515_v565
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1515_v565
sw $t4,0($t0)
# Original instruction: addiu v566,$fp,8
addiu $t5,$fp,8
la $t0,label_1516_v566
sw $t5,0($t0)
# Original instruction: lb v566,0(v566)
la $t4,label_1516_v566
lw $t4,0($t4)
lb $t4,0($t4)
la $t0,label_1516_v566
sw $t4,0($t0)
# Original instruction: xor v567,v565,v566
la $t5,label_1515_v565
lw $t5,0($t5)
la $t4,label_1516_v566
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1522_v567
sw $t3,0($t0)
# Original instruction: li v568,1
li $t5,1
la $t0,label_1520_v568
sw $t5,0($t0)
# Original instruction: sltu v567,v567,v568
la $t3,label_1522_v567
lw $t3,0($t3)
la $t4,label_1520_v568
lw $t4,0($t4)
sltu $t3,$t3,$t4
la $t0,label_1522_v567
sw $t3,0($t0)
# Original instruction: beq v567,$zero,label_172_else
la $t5,label_1522_v567
lw $t5,0($t5)
beq $t5,$zero,label_172_else
# >>>Assign<<<: INT
# >>Get VAR Addr<<
# Original instruction: addiu v569,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1526_v569
sw $t5,0($t0)
# >>Get VAL<<
# Original instruction: li v570,1
li $t5,1
la $t0,label_1525_v570
sw $t5,0($t0)
# >>Start Copy<<
# Original instruction: sw v570,0(v569)
la $t5,label_1525_v570
lw $t5,0($t5)
la $t4,label_1526_v569
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
# Original instruction: addiu v572,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1530_v572
sw $t5,0($t0)
# Original instruction: lw v572,0(v572)
la $t4,label_1530_v572
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_1530_v572
sw $t4,0($t0)
# Original instruction: sw v572,4($fp)
la $t5,label_1530_v572
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1460_v549
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1501_v561
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1410_v532
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1199_v462
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1309_v499
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1402_v528
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1214_v466
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1494_v559
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1228_v470
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1356_v513
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1423_v535
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1398_v526
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1520_v568
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1502_v562
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1246_v476
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1292_v492
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1515_v565
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1272_v486
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1526_v569
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1290_v493
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1428_v538
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1442_v543
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1506_v564
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1317_v501
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1455_v546
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1508_v563
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1378_v521
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1278_v487
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1487_v557
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1488_v558
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1324_v503
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1268_v484
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1345_v509
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1221_v468
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1299_v494
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1446_v545
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1479_v555
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1448_v544
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1253_v479
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1370_v518
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1240_v475
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1363_v516
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1332_v506
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1350_v512
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1304_v497
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1480_v554
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1277_v488
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1274_v485
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1245_v477
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1530_v572
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1522_v567
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1222_v469
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1306_v496
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1200_v461
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1242_v474
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1433_v540
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1300_v495
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1336_v508
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1267_v483
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1396_v527
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1476_v552
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1441_v542
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1322_v504
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1474_v553
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1492_v560
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1364_v517
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1377_v520
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1318_v502
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1469_v550
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1384_v522
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1392_v525
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1310_v498
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1401_v529
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1346_v510
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1416_v533
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1391_v524
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1286_v491
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1525_v570
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1285_v490
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1235_v472
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1258_v482
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1212_v467
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1470_v551
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1434_v539
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1355_v514
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1254_v480
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1424_v536
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1226_v471
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1207_v464
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1516_v566
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1352_v511
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1260_v481
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1409_v531
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1414_v534
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1236_v473
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1456_v547
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1368_v519
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1462_v548
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1208_v465
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1430_v537
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1338_v507
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1331_v505
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_1382_v523
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

