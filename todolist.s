	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 4
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #976
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	wzr, [x29, #-20]
	add	x0, sp, #176
	mov	x1, #792                        ; =0x318
	bl	_bzero
	str	wzr, [sp, #172]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	str	wzr, [sp, #168]
	b	LBB0_2
LBB0_2:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #168]
	ldr	w9, [sp, #172]
	subs	w8, w8, w9
	b.ge	LBB0_5
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #168]
	add	w11, w8, #1
	ldrsw	x9, [sp, #168]
	add	x8, sp, #176
	ldr	x8, [x8, x9, lsl #3]
	mov	x9, sp
                                        ; implicit-def: $x10
	mov	x10, x11
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #168]
	add	w8, w8, #1
	str	w8, [sp, #168]
	b	LBB0_2
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	x9, sp
	add	x8, sp, #167
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_scanf
	b	LBB0_6
LBB0_6:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_getchar
	str	w0, [sp, #160]
	mov	w8, #0                          ; =0x0
	subs	w9, w0, #10
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b.eq	LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_6 Depth=2
	ldr	w8, [sp, #160]
	adds	w8, w8, #1
	cset	w8, ne
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_6 Depth=2
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_6 Depth=2
	b	LBB0_6
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	ldrsb	w8, [sp, #167]
	subs	w8, w8, #97
	b.ne	LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	adrp	x8, ___stdinp@GOTPAGE
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
	ldr	x2, [x8]
	add	x0, sp, #61
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	w1, #99                         ; =0x63
	bl	_fgets
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	_strcspn
	mov	x9, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	mov	x8, x0
	add	x8, x8, x9
	strb	wzr, [x8]
	bl	_strdup
	ldrsw	x9, [sp, #172]
	add	x8, sp, #176
	str	x0, [x8, x9, lsl #3]
	ldr	w8, [sp, #172]
	add	w8, w8, #1
	str	w8, [sp, #172]
	b	LBB0_27
LBB0_12:                                ;   in Loop: Header=BB0_1 Depth=1
	ldrsb	w8, [sp, #167]
	subs	w8, w8, #114
	b.ne	LBB0_25
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	mov	x9, sp
	add	x8, sp, #56
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_scanf
	b	LBB0_14
LBB0_14:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_getchar
	str	w0, [sp, #52]
	mov	w8, #0                          ; =0x0
	subs	w9, w0, #10
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b.eq	LBB0_16
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_14 Depth=2
	ldr	w8, [sp, #52]
	adds	w8, w8, #1
	cset	w8, ne
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_14 Depth=2
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_18
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_14 Depth=2
	b	LBB0_14
LBB0_18:                                ;   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #48]
	b	LBB0_19
LBB0_19:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #172]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	LBB0_24
	b	LBB0_20
LBB0_20:                                ;   in Loop: Header=BB0_19 Depth=2
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #56]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.lt	LBB0_22
	b	LBB0_21
LBB0_21:                                ;   in Loop: Header=BB0_19 Depth=2
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	add	x9, sp, #176
	ldr	x8, [x9, w8, sxtw #3]
	ldrsw	x10, [sp, #48]
	str	x8, [x9, x10, lsl #3]
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_19 Depth=2
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_19 Depth=2
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	LBB0_19
LBB0_24:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #172]
	subs	w10, w8, #1
	add	x9, sp, #176
	adrp	x8, l_.str.8@PAGE
	add	x8, x8, l_.str.8@PAGEOFF
	str	x8, [x9, w10, sxtw #3]
	ldr	w8, [sp, #172]
	subs	w8, w8, #1
	str	w8, [sp, #172]
	b	LBB0_26
LBB0_25:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #976
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_26:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_27
LBB0_27:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"TO-DO LIST:\n"

l_.str.1:                               ; @.str.1
	.asciz	"%d.) %s\n"

l_.str.2:                               ; @.str.2
	.asciz	"Type \"a\" to Add or Type \"r\" to Remove: "

l_.str.3:                               ; @.str.3
	.asciz	"%c"

l_.str.4:                               ; @.str.4
	.asciz	"New item: "

l_.str.5:                               ; @.str.5
	.asciz	"\n"

l_.str.6:                               ; @.str.6
	.asciz	"Type which list number to remove: "

l_.str.7:                               ; @.str.7
	.asciz	"%d"

l_.str.8:                               ; @.str.8
	.asciz	"0"

.subsections_via_symbols
