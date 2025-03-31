// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"ebc_dev_y8.c"

	.section	.initcall6s.init,"a",@progbits
__initcall__kmod_rkebc__465_4518_ebc_init6s:
.Ltmp0:
	.word	ebc_init-.Ltmp0
	.text



	.globl	refresh_new_image
	.p2align	2
	.type	refresh_new_image,@function
refresh_new_image:
	str	x29, [sp, #-96]!
	ldp	w9, w8, [x5, #80]
	stp	x28, x27, [sp, #16]
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w11, w10, w8, lt
	cmp	w9, #1
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	b.lt	.LBB0_125
	asr	w11, w11, #3
	mov	w10, wzr
	sub	w14, w11, #1
	mov	w12, #-268435456
	mov	x13, #1030792151040
	add	x14, x14, #1
	mov	x15, #263882790666240
	mov	x16, #67553994410557440
	mov	x17, #-2305843009213693952
	mov	x5, #63050394783186944
	mov	x6, #246290604621824
	mov	x7, #962072674304
	mov	w19, #-536870912
	b	.LBB0_4
.LBB0_2:
	add	x3, x3, x14, lsl #3
.LBB0_3:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB0_125
.LBB0_4:
	cmp	w8, #8
	b.lt	.LBB0_3
	mov	w20, w11
	mov	x21, x3
.LBB0_6:
	ldr	x27, [x21], #8
	ldr	x26, [x1], #8
	ldr	x24, [x0]
	ldr	x22, [x2], #8
	cbnz	x27, .LBB0_24
	and	x27, x26, #0xf0
	cmp	w27, #240
	b.ne	.LBB0_26
	and	x23, x22, #0xff
	mov	w25, #255
	cmp	x23, #240
	cset	w23, eq
.LBB0_9:
	and	x27, x26, #0xf000
	cmp	w27, #15, lsl #12
	b.ne	.LBB0_28
	and	x27, x22, #0xff00
	orr	x28, x23, #0x100
	cmp	x27, #15, lsl #12
	orr	x25, x25, #0xff00
	csel	x23, x28, x23, eq
.LBB0_11:
	and	x27, x26, #0xf00000
	cmp	x27, #3840, lsl #12
	b.ne	.LBB0_30
	and	x27, x22, #0xff0000
	orr	x28, x23, #0x10000
	cmp	x27, #3840, lsl #12
	orr	x25, x25, #0xff0000
	csel	x23, x28, x23, eq
.LBB0_13:
	and	x27, x26, #0xf0000000
	cmp	w27, w12
	b.ne	.LBB0_32
	and	x27, x22, #0xff000000
	orr	x28, x23, #0x1000000
	cmp	x27, x12
	orr	x25, x25, #0xff000000
	csel	x23, x28, x23, eq
.LBB0_15:
	and	x27, x26, #0xf000000000
	cmp	x27, x13
	b.ne	.LBB0_34
	and	x27, x22, #0xff00000000
	orr	x28, x23, #0x100000000
	cmp	x27, x13
	orr	x25, x25, #0xff00000000
	csel	x23, x28, x23, eq
.LBB0_17:
	and	x27, x26, #0xf00000000000
	cmp	x27, x15
	b.ne	.LBB0_36
	and	x27, x22, #0xff0000000000
	orr	x28, x23, #0x10000000000
	cmp	x27, x15
	orr	x25, x25, #0xff0000000000
	csel	x23, x28, x23, eq
.LBB0_19:
	and	x27, x26, #0xf0000000000000
	cmp	x27, x16
	b.ne	.LBB0_38
	and	x27, x22, #0xff000000000000
	orr	x28, x23, #0x1000000000000
	cmp	x27, x16
	orr	x25, x25, #0xff000000000000
	csel	x23, x28, x23, eq
.LBB0_21:
	lsr	x27, x26, #60
	cmp	x27, #15
	b.lo	.LBB0_40
.LBB0_22:
	lsr	x26, x22, #56
	orr	x27, x23, #0x100000000000000
	cmp	x26, #240
	orr	x25, x25, #0xff00000000000000
	csel	x23, x27, x23, eq
.LBB0_23:
	bic	x24, x24, x25
	and	x22, x25, x22
	orr	x22, x24, x22
	subs	w20, w20, #1
	str	x23, [x4], #8
	str	x22, [x0], #8
	b.ne	.LBB0_6
	b	.LBB0_2
.LBB0_24:
	ldr	x23, [x4]
	tst	x27, #0xff
	b.eq	.LBB0_57
	mov	x25, xzr
	b	.LBB0_59
.LBB0_26:
	cbnz	w27, .LBB0_43
	mov	x25, xzr
	and	x24, x24, #0xffffffffffffff00
	mov	w23, #1
	b	.LBB0_9
.LBB0_28:
	and	x24, x24, #0xffffffffffff00ff
	cbnz	w27, .LBB0_45
	orr	x23, x23, #0x100
	b	.LBB0_11
.LBB0_30:
	and	x24, x24, #0xffffffffff00ffff
	cbnz	x27, .LBB0_47
	orr	x23, x23, #0x10000
	b	.LBB0_13
.LBB0_32:
	and	x24, x24, #0xffffffff00ffffff
	cbnz	w27, .LBB0_49
	orr	x23, x23, #0x1000000
	b	.LBB0_15
.LBB0_34:
	and	x24, x24, #0xffffff00ffffffff
	cbnz	x27, .LBB0_51
	orr	x23, x23, #0x100000000
	b	.LBB0_17
.LBB0_36:
	and	x24, x24, #0xffff00ffffffffff
	cbnz	x27, .LBB0_53
	orr	x23, x23, #0x10000000000
	b	.LBB0_19
.LBB0_38:
	and	x24, x24, #0xff00ffffffffffff
	cbnz	x27, .LBB0_55
	orr	x23, x23, #0x1000000000000
	b	.LBB0_21
.LBB0_40:
	and	x26, x26, #0xf000000000000000
	cmp	x26, x17
	b.eq	.LBB0_82
	cbz	x26, .LBB0_81
.LBB0_42:
	and	x24, x24, #0xffffffffffffff
	orr	x24, x24, x26
	b	.LBB0_23
.LBB0_43:
	cmp	w27, #224
	b.ne	.LBB0_83
	and	x23, x24, #0xffffffffffffff00
	mov	x25, xzr
	orr	x24, x23, #0xf0
	mov	w23, #1
	b	.LBB0_9
.LBB0_45:
	cmp	w27, #14, lsl #12
	b.ne	.LBB0_84
	orr	x24, x24, #0xf000
	orr	x23, x23, #0x100
	b	.LBB0_11
.LBB0_47:
	cmp	x27, #3584, lsl #12
	b.ne	.LBB0_85
	orr	x24, x24, #0xf00000
	orr	x23, x23, #0x10000
	b	.LBB0_13
.LBB0_49:
	cmp	w27, w19
	b.ne	.LBB0_86
	orr	x24, x24, #0xf0000000
	orr	x23, x23, #0x1000000
	b	.LBB0_15
.LBB0_51:
	cmp	x27, x7
	b.ne	.LBB0_87
	orr	x24, x24, #0xf000000000
	orr	x23, x23, #0x100000000
	b	.LBB0_17
.LBB0_53:
	cmp	x27, x6
	b.ne	.LBB0_88
	orr	x24, x24, #0xf00000000000
	orr	x23, x23, #0x10000000000
	b	.LBB0_19
.LBB0_55:
	cmp	x27, x5
	b.ne	.LBB0_89
	orr	x24, x24, #0xf0000000000000
	orr	x23, x23, #0x1000000000000
	b	.LBB0_21
.LBB0_57:
	and	x23, x23, #0xffffffffffffff00
	and	x25, x26, #0xf0
	cmp	w25, #240
	b.ne	.LBB0_90
	and	x25, x22, #0xff
	cmp	x25, #240
	cset	w25, eq
	orr	x23, x23, x25
	mov	w25, #255
.LBB0_59:
	tst	x27, #0xff00
	b.eq	.LBB0_66
	tst	x27, #0xff0000
	b.eq	.LBB0_68
.LBB0_61:
	tst	x27, #0xff000000
	b.eq	.LBB0_70
.LBB0_62:
	tst	x27, #0xff00000000
	b.eq	.LBB0_72
.LBB0_63:
	tst	x27, #0xff0000000000
	b.eq	.LBB0_74
.LBB0_64:
	tst	x27, #0xff000000000000
	b.eq	.LBB0_76
.LBB0_65:
	lsr	x27, x27, #56
	cbnz	x27, .LBB0_23
	b	.LBB0_78
.LBB0_66:
	and	x23, x23, #0xffffffffffff00ff
	and	x28, x26, #0xf000
	cmp	w28, #15, lsl #12
	b.ne	.LBB0_92
	and	x28, x22, #0xff00
	orr	x29, x23, #0x100
	cmp	x28, #15, lsl #12
	orr	x25, x25, #0xff00
	csel	x23, x29, x23, eq
	tst	x27, #0xff0000
	b.ne	.LBB0_61
.LBB0_68:
	and	x23, x23, #0xffffffffff00ffff
	and	x28, x26, #0xf00000
	cmp	x28, #3840, lsl #12
	b.ne	.LBB0_96
	and	x28, x22, #0xff0000
	orr	x29, x23, #0x10000
	cmp	x28, #3840, lsl #12
	orr	x25, x25, #0xff0000
	csel	x23, x29, x23, eq
	tst	x27, #0xff000000
	b.ne	.LBB0_62
.LBB0_70:
	and	x23, x23, #0xffffffff00ffffff
	and	x28, x26, #0xf0000000
	cmp	w28, w12
	b.ne	.LBB0_100
	and	x28, x22, #0xff000000
	orr	x29, x23, #0x1000000
	cmp	x28, x12
	orr	x25, x25, #0xff000000
	csel	x23, x29, x23, eq
	tst	x27, #0xff00000000
	b.ne	.LBB0_63
.LBB0_72:
	and	x23, x23, #0xffffff00ffffffff
	and	x28, x26, #0xf000000000
	cmp	x28, x13
	b.ne	.LBB0_104
	and	x28, x22, #0xff00000000
	orr	x29, x23, #0x100000000
	cmp	x28, x13
	orr	x25, x25, #0xff00000000
	csel	x23, x29, x23, eq
	tst	x27, #0xff0000000000
	b.ne	.LBB0_64
.LBB0_74:
	and	x23, x23, #0xffff00ffffffffff
	and	x28, x26, #0xf00000000000
	cmp	x28, x15
	b.ne	.LBB0_108
	and	x28, x22, #0xff0000000000
	orr	x29, x23, #0x10000000000
	cmp	x28, x15
	orr	x25, x25, #0xff0000000000
	csel	x23, x29, x23, eq
	tst	x27, #0xff000000000000
	b.ne	.LBB0_65
.LBB0_76:
	and	x23, x23, #0xff00ffffffffffff
	and	x28, x26, #0xf0000000000000
	cmp	x28, x16
	b.ne	.LBB0_112
	and	x28, x22, #0xff000000000000
	orr	x29, x23, #0x1000000000000
	cmp	x28, x16
	orr	x25, x25, #0xff000000000000
	csel	x23, x29, x23, eq
	lsr	x27, x27, #56
	cbnz	x27, .LBB0_23
.LBB0_78:
	and	x23, x23, #0xffffffffffffff
	lsr	x27, x26, #60
	cmp	x27, #15
	b.hs	.LBB0_22
	and	x26, x26, #0xf000000000000000
	cmp	x26, x17
	b.eq	.LBB0_82
	cbnz	x26, .LBB0_42
.LBB0_81:
	and	x24, x24, #0xffffffffffffff
	orr	x23, x23, #0x100000000000000
	b	.LBB0_23
.LBB0_82:
	mov	x26, #-1152921504606846976
	orr	x23, x23, #0x100000000000000
	bfxil	x26, x24, #0, #56
	mov	x24, x26
	b	.LBB0_23
.LBB0_83:
	and	x24, x24, #0xffffffffffffff00
	mov	x23, xzr
	mov	x25, xzr
	orr	x24, x24, x27
	b	.LBB0_9
.LBB0_84:
	orr	x24, x24, x27
	b	.LBB0_11
.LBB0_85:
	orr	x24, x24, x27
	b	.LBB0_13
.LBB0_86:
	orr	x24, x24, x27
	b	.LBB0_15
.LBB0_87:
	orr	x24, x24, x27
	b	.LBB0_17
.LBB0_88:
	orr	x24, x24, x27
	b	.LBB0_19
.LBB0_89:
	orr	x24, x24, x27
	b	.LBB0_21
.LBB0_90:
	cbnz	w25, .LBB0_116
	mov	x25, xzr
	and	x24, x24, #0xffffffffffffff00
	orr	x23, x23, #0x1
	b	.LBB0_59
.LBB0_92:
	and	x24, x24, #0xffffffffffff00ff
	cbz	w28, .LBB0_95
	cmp	w28, #14, lsl #12
	b.ne	.LBB0_118
	orr	x24, x24, #0xf000
.LBB0_95:
	orr	x23, x23, #0x100
	tst	x27, #0xff0000
	b.ne	.LBB0_61
	b	.LBB0_68
.LBB0_96:
	and	x24, x24, #0xffffffffff00ffff
	cbz	x28, .LBB0_99
	cmp	x28, #3584, lsl #12
	b.ne	.LBB0_119
	orr	x24, x24, #0xf00000
.LBB0_99:
	orr	x23, x23, #0x10000
	tst	x27, #0xff000000
	b.ne	.LBB0_62
	b	.LBB0_70
.LBB0_100:
	and	x24, x24, #0xffffffff00ffffff
	cbz	w28, .LBB0_103
	cmp	w28, w19
	b.ne	.LBB0_120
	orr	x24, x24, #0xf0000000
.LBB0_103:
	orr	x23, x23, #0x1000000
	tst	x27, #0xff00000000
	b.ne	.LBB0_63
	b	.LBB0_72
.LBB0_104:
	and	x24, x24, #0xffffff00ffffffff
	cbz	x28, .LBB0_107
	cmp	x28, x7
	b.ne	.LBB0_121
	orr	x24, x24, #0xf000000000
.LBB0_107:
	orr	x23, x23, #0x100000000
	tst	x27, #0xff0000000000
	b.ne	.LBB0_64
	b	.LBB0_74
.LBB0_108:
	and	x24, x24, #0xffff00ffffffffff
	cbz	x28, .LBB0_111
	cmp	x28, x6
	b.ne	.LBB0_122
	orr	x24, x24, #0xf00000000000
.LBB0_111:
	orr	x23, x23, #0x10000000000
	tst	x27, #0xff000000000000
	b.ne	.LBB0_65
	b	.LBB0_76
.LBB0_112:
	and	x24, x24, #0xff00ffffffffffff
	cbz	x28, .LBB0_115
	cmp	x28, x5
	b.ne	.LBB0_123
	orr	x24, x24, #0xf0000000000000
.LBB0_115:
	orr	x23, x23, #0x1000000000000
	lsr	x27, x27, #56
	cbnz	x27, .LBB0_23
	b	.LBB0_78
.LBB0_116:
	mov	x28, x25
	cmp	w28, #224
	b.ne	.LBB0_124
	and	x24, x24, #0xffffffffffffff00
	mov	x25, xzr
	orr	x24, x24, #0xf0
	orr	x23, x23, #0x1
	b	.LBB0_59
.LBB0_118:
	orr	x24, x24, x28
	tst	x27, #0xff0000
	b.ne	.LBB0_61
	b	.LBB0_68
.LBB0_119:
	orr	x24, x24, x28
	tst	x27, #0xff000000
	b.ne	.LBB0_62
	b	.LBB0_70
.LBB0_120:
	orr	x24, x24, x28
	tst	x27, #0xff00000000
	b.ne	.LBB0_63
	b	.LBB0_72
.LBB0_121:
	orr	x24, x24, x28
	tst	x27, #0xff0000000000
	b.ne	.LBB0_64
	b	.LBB0_74
.LBB0_122:
	orr	x24, x24, x28
	tst	x27, #0xff000000000000
	b.ne	.LBB0_65
	b	.LBB0_76
.LBB0_123:
	orr	x24, x24, x28
	lsr	x27, x27, #56
	cbnz	x27, .LBB0_23
	b	.LBB0_78
.LBB0_124:
	and	x24, x24, #0xffffffffffffff00
	mov	x25, xzr
	orr	x24, x24, x28
	b	.LBB0_59
.LBB0_125:
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldr	x29, [sp], #96
	ret
.Lfunc_end0:
	.size	refresh_new_image, .Lfunc_end0-refresh_new_image

	.globl	refresh_new_image_auto
	.p2align	2
	.type	refresh_new_image_auto,@function
refresh_new_image_auto:
	ldp	w9, w8, [x3, #80]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w11, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB1_8
	mov	w10, wzr
	asr	w11, w11, #3
	mov	w12, #255
	b	.LBB1_3
.LBB1_2:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB1_8
.LBB1_3:
	cmp	w8, #8
	b.lt	.LBB1_2
	mov	w13, w11
	b	.LBB1_6
.LBB1_5:
	add	x0, x0, #8
	subs	w13, w13, #1
	b.eq	.LBB1_2
.LBB1_6:
	ldr	x14, [x1], #8
	ldr	x15, [x0]
	ldr	x16, [x2], #8
	cmp	x14, x15
	b.eq	.LBB1_5
	tst	x16, #0xff
	csel	x17, x12, xzr, eq
	tst	x16, #0xff00
	orr	x3, x17, #0xff00
	csel	x17, x3, x17, eq
	tst	x16, #0xff0000
	orr	x3, x17, #0xff0000
	csel	x17, x3, x17, eq
	tst	x16, #0xff000000
	orr	x3, x17, #0xff000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff00000000
	orr	x3, x17, #0xff00000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff0000000000
	orr	x3, x17, #0xff0000000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff000000000000
	orr	x3, x17, #0xff000000000000
	lsr	x16, x16, #56
	csel	x17, x3, x17, eq
	cmp	x16, #0
	orr	x3, x17, #0xff00000000000000
	csel	x16, x3, x17, eq
	bic	x15, x15, x16
	and	x14, x16, x14
	orr	x14, x15, x14
	str	x14, [x0]
	b	.LBB1_5
.LBB1_8:
	ret
.Lfunc_end1:
	.size	refresh_new_image_auto, .Lfunc_end1-refresh_new_image_auto

	.section	.exit.text,"ax",@progbits
	.p2align	2
	.type	ebc_exit,@function
ebc_exit:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x0, ebc_driver
	mov	x29, sp
	add	x0, x0, :lo12:ebc_driver
	bl	platform_driver_unregister
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end2:
	.size	ebc_exit, .Lfunc_end2-ebc_exit

	.section	.init.text,"ax",@progbits
	.p2align	2
	.type	ebc_init,@function
ebc_init:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x0, ebc_driver
	mov	x1, xzr
	add	x0, x0, :lo12:ebc_driver
	mov	x29, sp
	bl	__platform_driver_register
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end3:
	.size	ebc_init, .Lfunc_end3-ebc_init

	.text
	.p2align	2
	.type	ebc_probe,@function
ebc_probe:
	sub	sp, sp, #208
	str	x30, [x18], #8
	stp	x29, x30, [sp, #112]
	adrp	x1, .L.str.1
	stp	x28, x27, [sp, #128]
	adrp	x2, .L.str.2
	stp	x26, x25, [sp, #144]
	add	x29, sp, #112
	stp	x24, x23, [sp, #160]
	add	x1, x1, :lo12:.L.str.1
	stp	x22, x21, [sp, #176]
	add	x2, x2, :lo12:.L.str.2
	stp	x20, x19, [sp, #192]
	mrs	x8, SP_EL0
	add	x19, x0, #16
	mov	x20, x0
	ldr	x8, [x8, #1584]
	mov	x0, x19
	stur	x8, [x29, #-8]
	str	xzr, [sp, #16]
	str	wzr, [sp, #12]
	str	xzr, [sp]
	bl	_dev_info
	adrp	x1, .L.str.3
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.3
	bl	nvmem_cell_get
	cmn	x0, #4095
	b.hs	.LBB4_16
	mov	x1, sp
	mov	x21, x0
	bl	nvmem_cell_read
	mov	x22, x0
	mov	x0, x21
	bl	nvmem_cell_put
	cmn	x22, #4095
	b.hs	.LBB4_18
	ldr	x8, [sp]
	cmp	x8, #2
	b.ne	.LBB4_15
	ldrb	w8, [x22]
	cmp	w8, #53
	b.ne	.LBB4_15
	ldrb	w8, [x22, #1]
	cmp	w8, #102
	b.eq	.LBB4_7
	cmp	w8, #118
	b.ne	.LBB4_15
	mov	w25, #3576
	b	.LBB4_8
.LBB4_7:
	mov	w25, #3566
.LBB4_8:
	mov	x0, x22
	bl	kfree
	mov	x0, x19
	mov	w1, #880
	mov	w2, #3520
	bl	devm_kmalloc
	cbz	x0, .LBB4_14
	adrp	x8, global_ebc
	adrp	x1, .L.str.7
	mov	x21, x0
	str	x19, [x0]
	add	x1, x1, :lo12:.L.str.7
	add	x5, sp, #24
	str	x0, [x8, :lo12:global_ebc]
	ldr	x0, [x20, #672]
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	bl	__of_parse_phandle_with_args
	cbnz	w0, .LBB4_20
	ldr	x0, [sp, #24]
	cbz	x0, .LBB4_20
	bl	of_find_device_by_node
	cbz	x0, .LBB4_13
	ldr	x8, [x0, #136]
	str	x8, [x21, #8]
	cbnz	x8, .LBB4_22
.LBB4_13:
	mov	w22, #-517
	b	.LBB4_24
.LBB4_14:
	mov	w22, #-12
	b	.LBB4_24
.LBB4_15:
	mov	x0, x22
	bl	kfree
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	b	.LBB4_17
.LBB4_16:
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
.LBB4_17:
	mov	x0, x19
	bl	_dev_err
	mov	w22, #-12
	b	.LBB4_24
.LBB4_18:
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
.LBB4_19:
	mov	x0, x19
	bl	_dev_err
	b	.LBB4_24
.LBB4_20:
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
.LBB4_21:
	mov	x0, x19
	bl	_dev_err
	mov	w22, #-19
	b	.LBB4_24
.LBB4_22:
	adrp	x9, frame_done_callback
	adrp	x1, .L.str.9
	add	x9, x9, :lo12:frame_done_callback
	add	x1, x1, :lo12:.L.str.9
	add	x2, sp, #12
	str	x9, [x8, #136]
	ldr	x0, [x20, #672]
	bl	of_get_property
	ldr	w8, [sp, #12]
	asr	w9, w8, #2
	cmp	w8, #3
	str	w9, [sp, #12]
	b.hi	.LBB4_26
	adrp	x1, .L.str.10
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.10
	bl	_dev_err
	mov	w22, #-22
.LBB4_24:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB4_56
	mov	w0, w22
	ldp	x20, x19, [sp, #192]
	ldp	x22, x21, [sp, #176]
	ldp	x24, x23, [sp, #160]
	ldp	x26, x25, [sp, #144]
	ldp	x28, x27, [sp, #128]
	ldp	x29, x30, [sp, #112]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #208
	ret
.LBB4_26:
	cmp	w8, #4
	b.lt	.LBB4_51
	adrp	x24, .L.str.14
	adrp	x26, .L.str.16
	mov	x22, x0
	mov	w23, wzr
	mov	w27, wzr
	add	x24, x24, :lo12:.L.str.14
	add	x26, x26, :lo12:.L.str.16
	b	.LBB4_29
.LBB4_28:
	ldr	w8, [sp, #12]
	add	w23, w23, #1
	mov	w27, #1
	cmp	w23, w8
	b.ge	.LBB4_44
.LBB4_29:
	add	x22, x22, #4
.LBB4_30:
	ldur	w8, [x22, #-4]
	rev	w0, w8
	bl	of_find_node_by_phandle
	cbz	x0, .LBB4_40
	bl	of_find_i2c_device_by_node
	cbz	x0, .LBB4_41
	ldr	x8, [x0, #152]
	str	x8, [x21, #16]
	cbnz	x8, .LBB4_42
	add	x28, x0, #32
	mov	x1, x24
	mov	x0, x28
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #24]
	b.hs	.LBB4_38
	add	x2, sp, #16
	mov	x0, x28
	mov	x1, x26
	bl	device_property_read_string
	cbnz	w0, .LBB4_39
	ldr	x0, [sp, #16]
	bl	thermal_zone_get_zone_by_name
	cmn	x0, #4095
	str	x0, [x21, #32]
	b.lo	.LBB4_28
	adrp	x1, .L.str.18
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.18
	bl	_dev_err
.LBB4_37:
	ldr	w8, [sp, #12]
	add	w23, w23, #1
	add	x22, x22, #4
	cmp	w23, w8
	b.lt	.LBB4_30
	b	.LBB4_43
.LBB4_38:
	adrp	x1, .L.str.15
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.15
	bl	_dev_warn
	b	.LBB4_37
.LBB4_39:
	adrp	x1, .L.str.17
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.17
	bl	_dev_warn
	b	.LBB4_37
.LBB4_40:
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	b	.LBB4_21
.LBB4_41:
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	b	.LBB4_21
.LBB4_42:
	adrp	x1, .L.str.13
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.13
	mov	w2, w23
	bl	_dev_info
	b	.LBB4_44
.LBB4_43:
	tbz	w27, #0, .LBB4_51
.LBB4_44:
	mov	x23, x21
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	mov	x0, x19
	str	x19, [x23, #40]!
	ldp	x8, x9, [x23, #-32]
	str	x19, [x23, #280]
	str	w25, [x23, #836]
	stp	x8, x9, [x23, #8]
	bl	device_property_present
	tbz	w0, #0, .LBB4_46
	mov	w8, #1
	str	w8, [x21, #796]
.LBB4_46:
	mov	x0, x23
	bl	ebc_panel_probe
	cbnz	w0, .LBB4_52
	ldp	w9, w8, [x21, #116]
	mov	w11, #1
	mov	x0, x21
	mul	w10, w9, w8
	str	w8, [x21, #304]
	str	w9, [x21, #308]
	lsr	w8, w10, #2
	str	w9, [x21, #856]
	str	w11, [x21, #864]
	stp	w10, w8, [x21, #252]
	bl	ebc_buffer_manage_init
	cbnz	w0, .LBB4_53
	add	x24, x23, #184
	mov	x0, x24
	bl	ebc_lut_table_init
	cbnz	w0, .LBB4_54
	adrp	x8, nr_cpu_ids
	adrp	x0, __cpu_possible_mask
	add	x0, x0, :lo12:__cpu_possible_mask
	ldr	w1, [x8, :lo12:nr_cpu_ids]
	bl	__bitmap_weight
	str	w0, [x21, #792]
	mov	x0, x24
	bl	ebc_task_init
	mov	w22, w0
	cbnz	w0, .LBB4_55
	mov	x0, x24
	bl	ebc_other_init
	mov	x0, x21
	mov	x1, x23
	bl	ebc_logo_init
	mov	x0, x24
	str	x21, [x20, #136]
	bl	ebc_sysfs_init
	adrp	x1, .L.str.25
	adrp	x2, .L.str.2
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.25
	add	x2, x2, :lo12:.L.str.2
	bl	_dev_info
	b	.LBB4_24
.LBB4_51:
	adrp	x1, .L.str.19
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.19
	bl	_dev_err
	b	.LBB4_13
.LBB4_52:
	mov	w22, w0
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	mov	x0, x19
	mov	w2, w22
	bl	_dev_err
	b	.LBB4_24
.LBB4_53:
	adrp	x1, .L.str.22
	mov	w22, w0
	add	x1, x1, :lo12:.L.str.22
	b	.LBB4_19
.LBB4_54:
	adrp	x1, .L.str.23
	mov	w22, w0
	add	x1, x1, :lo12:.L.str.23
	b	.LBB4_19
.LBB4_55:
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	b	.LBB4_19
.LBB4_56:
	bl	__stack_chk_fail
.Lfunc_end4:
	.size	ebc_probe, .Lfunc_end4-ebc_probe

	.p2align	2
	.type	ebc_remove,@function
ebc_remove:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	ldr	x19, [x0, #136]
	mov	x29, sp
	ldr	x0, [x19, #808]
	cbz	x0, .LBB5_2
	bl	dma_buf_put
	str	xzr, [x19, #808]
.LBB5_2:
	ldr	x0, [x19, #816]
	cbz	x0, .LBB5_4
	bl	dma_buf_put
	str	xzr, [x19, #816]
.LBB5_4:
	ldr	x0, [x19, #824]
	cbz	x0, .LBB5_6
	bl	dma_buf_put
	str	xzr, [x19, #824]
.LBB5_6:
	ldr	x0, [x19, #832]
	cbz	x0, .LBB5_8
	bl	dma_buf_put
	str	xzr, [x19, #832]
.LBB5_8:
	ldr	x0, [x19, #840]
	cbz	x0, .LBB5_10
	bl	dma_buf_put
	str	xzr, [x19, #840]
.LBB5_10:
	adrp	x0, ebc_misc
	add	x0, x0, :lo12:ebc_misc
	bl	misc_deregister
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end5:
	.size	ebc_remove, .Lfunc_end5-ebc_remove

	.p2align	2
	.type	frame_done_callback,@function
frame_done_callback:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	stp	x20, x19, [sp, #16]
	adrp	x20, global_ebc
	mov	x29, sp
	ldr	x19, [x20, :lo12:global_ebc]
	ldr	w8, [x19, #464]
	cmp	w8, #1
	b.eq	.LBB6_8
	cmp	w8, #3
	b.eq	.LBB6_12
	cmp	w8, #4
	b.ne	.LBB6_16
	mov	w8, #1
	ldr	w9, [x19, #284]
	str	w8, [x19, #300]
	cbnz	w9, .LBB6_23
	ldr	w8, [x19, #288]
	cbnz	w8, .LBB6_23
	ldr	w8, [x19, #292]
	cbz	w8, .LBB6_23
	ldr	w9, [x19, #800]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_36
.LBB6_7:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #308]
	mov	w1, wzr
	ldr	w9, [x19, #304]
	ldr	x0, [x19, #384]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #308]
	ldr	w9, [x19, #304]
	ldr	x0, [x19, #392]
	b	.LBB6_32
.LBB6_8:
	ldr	w8, [x19, #296]
	ldr	w9, [x19, #316]
	cbz	w8, .LBB6_18
	cbz	w9, .LBB6_17
	ldr	w8, [x19, #780]
	cbz	w8, .LBB6_19
	ldr	x8, [x19, #440]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.ls	.LBB6_17
	b	.LBB6_19
.LBB6_12:
	ldr	w8, [x19, #316]
	cbz	w8, .LBB6_21
	ldr	w9, [x19, #800]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_34
.LBB6_14:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
.LBB6_15:
	adrp	x8, jiffies
	mov	w9, #335544320
	add	x0, x19, #712
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #276]
	b	.LBB6_27
.LBB6_16:
	ldr	w8, [x19, #296]
	cbz	w8, .LBB6_24
.LBB6_17:
	adrp	x8, ebc_auto_task
	mov	w9, #1
	ldr	x0, [x8, :lo12:ebc_auto_task]
	str	w9, [x19, #276]
	bl	wake_up_process
	b	.LBB6_28
.LBB6_18:
	mov	x8, x19
	cbz	w9, .LBB6_20
.LBB6_19:
	ldr	w9, [x19, #800]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_35
.LBB6_20:
	ldr	x0, [x8, #8]
	b	.LBB6_26
.LBB6_21:
	ldr	w8, [x19, #284]
	cbnz	w8, .LBB6_23
	ldr	w8, [x19, #288]
	cbz	w8, .LBB6_29
.LBB6_23:
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	b	.LBB6_28
.LBB6_24:
	ldr	w8, [x19, #864]
	cbz	w8, .LBB6_17
	ldr	x0, [x19, #8]
.LBB6_26:
	ldr	x8, [x0, #144]
	mov	w1, wzr
	mov	w2, wzr
	blr	x8
	ldr	w8, [x19, #800]
	str	wzr, [x19, #276]
	cmp	w8, #1
	b.ge	.LBB6_33
.LBB6_27:
	adrp	x0, ebc_thread_wq
	mov	w1, #1
	add	x0, x0, :lo12:ebc_thread_wq
	bl	__wake_up_sync
.LBB6_28:
	ldp	x20, x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.LBB6_29:
	ldr	w8, [x19, #292]
	cbz	w8, .LBB6_23
	ldr	w9, [x19, #800]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_37
.LBB6_31:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #308]
	ldr	w9, [x19, #304]
	ldr	x0, [x19, #384]
.LBB6_32:
	mul	w8, w9, w8
	sxtw	x2, w8
	mov	w1, wzr
	bl	memset
	b	.LBB6_15
.LBB6_33:
	adrp	x1, .L.str.30
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.30
	bl	_dev_info
	b	.LBB6_27
.LBB6_34:
	adrp	x1, .L.str.27
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.27
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_14
.LBB6_35:
	adrp	x1, .L.str.29
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.29
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_20
.LBB6_36:
	adrp	x1, .L.str.26
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.26
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_7
.LBB6_37:
	adrp	x1, .L.str.28
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.28
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_31
.Lfunc_end6:
	.size	frame_done_callback, .Lfunc_end6-frame_done_callback

	.p2align	2
	.type	ebc_panel_probe,@function
ebc_panel_probe:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	mov	x2, x0
	stp	x20, x19, [sp, #32]
	adrp	x1, .L.str.31
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.31
	mov	w3, #1
	ldr	x20, [x2], #76
	mov	x4, xzr
	str	x21, [sp, #16]
	mov	x29, sp
	ldr	x0, [x20, #656]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	add	x21, x20, #656
	adrp	x1, .L.str.32
	add	x2, x19, #80
	add	x1, x1, :lo12:.L.str.32
	mov	w3, #1
	mov	x4, xzr
	ldr	x0, [x21]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.33
	ldr	x0, [x21]
	add	x2, x19, #84
	add	x1, x1, :lo12:.L.str.33
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.34
	ldr	x0, [x21]
	add	x2, x19, #88
	add	x1, x1, :lo12:.L.str.34
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.35
	ldr	x0, [x21]
	add	x2, x19, #104
	add	x1, x1, :lo12:.L.str.35
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.36
	ldr	x0, [x21]
	add	x2, x19, #108
	add	x1, x1, :lo12:.L.str.36
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.37
	ldr	x0, [x21]
	add	x2, x19, #112
	add	x1, x1, :lo12:.L.str.37
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.38
	ldr	x0, [x21]
	add	x2, x19, #116
	add	x1, x1, :lo12:.L.str.38
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.39
	ldr	x0, [x21]
	add	x2, x19, #120
	add	x1, x1, :lo12:.L.str.39
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.40
	ldr	x0, [x21]
	add	x2, x19, #124
	add	x1, x1, :lo12:.L.str.40
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.41
	ldr	x0, [x21]
	add	x2, x19, #128
	add	x1, x1, :lo12:.L.str.41
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.42
	ldr	x0, [x21]
	add	x2, x19, #132
	add	x1, x1, :lo12:.L.str.42
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.43
	ldr	x0, [x21]
	add	x2, x19, #136
	add	x1, x1, :lo12:.L.str.43
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.44
	ldr	x0, [x21]
	add	x2, x19, #140
	add	x1, x1, :lo12:.L.str.44
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	adrp	x1, .L.str.45
	ldr	x0, [x21]
	add	x2, x19, #144
	add	x1, x1, :lo12:.L.str.45
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_37
	add	x20, x19, #148
	adrp	x1, .L.str.46
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.46
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_17
	str	wzr, [x20]
.LBB7_17:
	add	x20, x19, #152
	adrp	x1, .L.str.47
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.47
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_19
	str	wzr, [x20]
.LBB7_19:
	add	x20, x19, #156
	adrp	x1, .L.str.48
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.48
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_21
	str	wzr, [x20]
.LBB7_21:
	add	x20, x19, #92
	adrp	x1, .L.str.49
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.49
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_23
	str	wzr, [x20]
.LBB7_23:
	add	x20, x19, #96
	adrp	x1, .L.str.50
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.50
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_25
	str	wzr, [x20]
.LBB7_25:
	add	x20, x19, #160
	adrp	x1, .L.str.51
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.51
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_27
	str	wzr, [x20]
.LBB7_27:
	add	x20, x19, #164
	adrp	x1, .L.str.52
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.52
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_29
	str	wzr, [x20]
.LBB7_29:
	add	x20, x19, #176
	adrp	x1, .L.str.53
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.53
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_31
	str	wzr, [x20]
.LBB7_31:
	add	x20, x19, #180
	adrp	x1, .L.str.54
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.54
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_33
	str	wzr, [x20]
.LBB7_33:
	add	x20, x19, #168
	adrp	x1, .L.str.55
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.55
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_35
	str	wzr, [x20]
.LBB7_35:
	add	x19, x19, #172
	adrp	x1, .L.str.56
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.56
	mov	x2, x19
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
	mov	w0, wzr
	b	.LBB7_38
.LBB7_37:
	mov	w0, #-22
.LBB7_38:
	ldp	x20, x19, [sp, #32]
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB7_39:
	mov	w0, wzr
	str	wzr, [x19]
	b	.LBB7_38
.Lfunc_end7:
	.size	ebc_panel_probe, .Lfunc_end7-ebc_panel_probe

	.p2align	2
	.type	ebc_buffer_manage_init,@function
ebc_buffer_manage_init:
	sub	sp, sp, #208
	str	x30, [x18], #8
	stp	x29, x30, [sp, #160]
	add	x29, sp, #160
	str	x21, [sp, #176]
	stp	x20, x19, [sp, #192]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	stur	x8, [x29, #-8]
	ldr	w8, [x0, #252]
	stp	xzr, xzr, [sp, #56]
	ldr	x20, [x0]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	cmp	w8, #1280, lsl #12
	stp	xzr, xzr, [sp, #8]
	b.gt	.LBB8_23
	adrp	x1, .L.str.58
	mov	x19, x0
	ldr	x0, [x20, #656]
	add	x1, x1, :lo12:.L.str.58
	add	x5, sp, #72
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #136]
	stp	xzr, xzr, [sp, #120]
	stp	xzr, xzr, [sp, #104]
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	bl	__of_parse_phandle_with_args
	mov	w21, #-19
	cbnz	w0, .LBB8_26
	ldr	x0, [sp, #72]
	cbz	x0, .LBB8_26
	add	x2, sp, #8
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB8_24
	ldp	x1, x8, [sp, #8]
	mov	w9, #58720255
	str	x1, [x19, #224]
	sub	x8, x8, x1
	add	x8, x8, #1
	cmp	w8, w9
	str	w8, [x19, #248]
	b.le	.LBB8_25
	sxtw	x2, w8
	mov	x0, x20
	mov	w3, #1
	bl	devm_memremap
	str	x0, [x19, #232]
	cbz	x0, .LBB8_28
	mov	x1, x0
	ldr	x0, [x19, #224]
	ldr	w2, [x19, #248]
	mov	w3, #5242880
	mov	w4, #4
	bl	ebc_buf_init
	cbz	w0, .LBB8_8
.LBB8_7:
	mov	w21, #-12
	b	.LBB8_26
.LBB8_8:
	ldr	x0, [x19, #224]
	mov	w1, #5242880
	str	xzr, [x19, #840]
	str	xzr, [x19, #832]
	str	xzr, [x19, #824]
	str	xzr, [x19, #816]
	str	xzr, [x19, #808]
	bl	ebc_get_dma_buf
	cmn	x0, #4095
	b.hs	.LBB8_13
	ldr	x8, [x19, #224]
	str	x0, [x19, #808]
	mov	w1, #5242880
	add	x8, x8, #1280, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #224]
	str	x0, [x19, #816]
	mov	w1, #5242880
	add	x8, x8, #2560, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #224]
	str	x0, [x19, #824]
	mov	w1, #5242880
	add	x8, x8, #3840, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #224]
	mov	w9, #20971520
	str	x0, [x19, #832]
	mov	w1, #5242880
	add	x8, x8, x9
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.ls	.LBB8_29
.LBB8_13:
	ldr	x0, [x19, #808]
	cbz	x0, .LBB8_15
	bl	dma_buf_put
	str	xzr, [x19, #808]
.LBB8_15:
	ldr	x0, [x19, #816]
	cbz	x0, .LBB8_17
	bl	dma_buf_put
	str	xzr, [x19, #816]
.LBB8_17:
	ldr	x0, [x19, #824]
	cbz	x0, .LBB8_19
	bl	dma_buf_put
	str	xzr, [x19, #824]
.LBB8_19:
	ldr	x0, [x19, #832]
	cbz	x0, .LBB8_21
	bl	dma_buf_put
	str	xzr, [x19, #832]
.LBB8_21:
	ldr	x0, [x19, #840]
	cbz	x0, .LBB8_7
	bl	dma_buf_put
	mov	w21, #-12
	str	xzr, [x19, #840]
	b	.LBB8_26
.LBB8_23:
	adrp	x1, .L.str.57
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.57
	bl	_dev_err
	mov	w21, #-19
	b	.LBB8_26
.LBB8_24:
	adrp	x1, .L.str.59
	mov	w21, w0
	add	x1, x1, :lo12:.L.str.59
	mov	x0, x20
	bl	_dev_err
	b	.LBB8_26
.LBB8_25:
	adrp	x1, .L.str.60
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.60
	mov	w2, #58720256
	bl	_dev_err
	mov	w21, #-19
.LBB8_26:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB8_30
	ldp	x20, x19, [sp, #192]
	mov	w0, w21
	ldp	x29, x30, [sp, #160]
	ldr	x21, [sp, #176]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #208
	ret
.LBB8_28:
	adrp	x1, .L.str.61
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.61
	bl	_dev_err
	b	.LBB8_7
.LBB8_29:
	ldp	x10, x8, [x19, #224]
	mov	w9, #20971520
	mov	w11, #26214400
	mov	w14, #28311552
	mov	w13, #2097152
	str	x0, [x19, #840]
	mov	w1, wzr
	add	x9, x8, x9
	add	x12, x8, x11
	add	x11, x10, x11
	add	x10, x10, x14
	str	x9, [x19, #240]
	add	x9, x8, x14
	stp	x10, x13, [x19, #96]
	mov	w10, #35651584
	add	x10, x8, x10
	stp	x12, x11, [x19, #64]
	stp	x13, x9, [x19, #80]
	mov	w11, #40894464
	str	x9, [x19, #408]
	mov	w9, #30408704
	add	x9, x8, x9
	mov	w13, #46137344
	add	x11, x8, x11
	add	x13, x8, x13
	stp	x9, x10, [x19, #360]
	mov	w9, #51380224
	add	x0, x8, x9
	stp	x11, x13, [x19, #376]
	ldp	w10, w9, [x19, #116]
	mov	w11, #56623104
	mov	w13, #57671680
	add	x11, x8, x11
	add	x8, x8, x13
	stp	x0, x12, [x19, #392]
	mul	w2, w9, w10
	stp	x11, x8, [x19, #344]
	bl	memset
	ldp	w8, w9, [x19, #116]
	ldr	x0, [x19, #384]
	mov	w1, wzr
	mul	w2, w9, w8
	bl	memset
	ldr	x0, [x19, #376]
	mov	w1, #240
	ldrsw	x2, [x19, #252]
	bl	memset
	mov	w21, wzr
	b	.LBB8_26
.LBB8_30:
	bl	__stack_chk_fail
.Lfunc_end8:
	.size	ebc_buffer_manage_init, .Lfunc_end8-ebc_buffer_manage_init

	.p2align	2
	.type	ebc_lut_table_init,@function
ebc_lut_table_init:
	sub	sp, sp, #208
	str	x30, [x18], #8
	stp	x29, x30, [sp, #160]
	add	x29, sp, #160
	stp	x22, x21, [sp, #176]
	adrp	x1, .L.str.62
	stp	x20, x19, [sp, #192]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.62
	add	x5, sp, #72
	mov	x2, xzr
	mov	w3, wzr
	stur	x8, [x29, #-8]
	add	x8, sp, #72
	ldr	x20, [x0, #96]
	mov	w4, wzr
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	ldr	x22, [x20, #656]
	stp	xzr, xzr, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	str	wzr, [sp, #4]
	mov	x0, x22
	stp	xzr, xzr, [x8, #64]
	stp	xzr, xzr, [sp, #120]
	stp	xzr, xzr, [sp, #104]
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	bl	__of_parse_phandle_with_args
	mov	w8, w0
	mov	w0, #-19
	cbnz	w8, .LBB9_9
	ldr	x21, [sp, #72]
	cbz	x21, .LBB9_9
	adrp	x1, .L.str.63
	add	x2, sp, #4
	add	x1, x1, :lo12:.L.str.63
	mov	x0, x22
	bl	of_get_property
	ldr	w1, [sp, #4]
	cmp	w1, #1
	b.lt	.LBB9_5
	bl	pvi_wf_add_custom_mode_table
	cbz	w0, .LBB9_5
	mov	w0, #-19
	b	.LBB9_9
.LBB9_5:
	add	x2, sp, #8
	mov	x0, x21
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB9_9
	ldp	x1, x8, [sp, #8]
	mov	x0, x20
	mov	w3, #1
	str	x1, [x19, #40]
	sub	x8, x8, x1
	add	x21, x8, #1
	sxtw	x2, w21
	str	w21, [x19, #48]
	bl	devm_memremap
	str	x0, [x19, #200]
	cbz	x0, .LBB9_11
	bl	epd_lut_from_mem_init
	tbnz	w0, #31, .LBB9_12
.LBB9_8:
	mov	w0, wzr
.LBB9_9:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB9_14
	ldp	x20, x19, [sp, #192]
	ldp	x22, x21, [sp, #176]
	ldp	x29, x30, [sp, #160]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #208
	ret
.LBB9_11:
	adrp	x1, .L.str.64
	adrp	x2, .L__func__.ebc_lut_table_init
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.64
	add	x2, x2, :lo12:.L__func__.ebc_lut_table_init
	mov	w3, #3960
	bl	_dev_err
	mov	w0, #-12
	b	.LBB9_9
.LBB9_12:
	adrp	x1, .L.str.65
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.65
	bl	_dev_err
	ldr	x0, [x19, #96]
	mov	w2, w21
	ldr	x1, [x19, #200]
	bl	epd_lut_from_file_init
	tbz	w0, #31, .LBB9_8
	adrp	x1, .L.str.66
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.66
	bl	_dev_err
	mov	w0, #-1
	b	.LBB9_9
.LBB9_14:
	bl	__stack_chk_fail
.Lfunc_end9:
	.size	ebc_lut_table_init, .Lfunc_end9-ebc_lut_table_init

	.p2align	2
	.type	ebc_task_init,@function
ebc_task_init:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x3, .L.str.67
	str	x21, [sp, #32]
	mov	w9, #99
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	mov	x19, x0
	adrp	x0, ebc_auto_tast_function
	ldr	x8, [x8, #1584]
	add	x0, x0, :lo12:ebc_auto_tast_function
	add	x3, x3, :lo12:.L.str.67
	mov	x1, x19
	mov	w2, #-1
	add	x29, sp, #16
	str	x8, [sp, #8]
	str	w9, [sp]
	bl	kthread_create_on_node
	adrp	x20, ebc_auto_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_auto_task]
	b.hs	.LBB10_21
	mov	x2, sp
	mov	w1, #1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #568]
	cmp	w8, #8
	b.lt	.LBB10_3
	adrp	x1, cpu_bit_bitmap+56
	ldr	x0, [x20, :lo12:ebc_auto_task]
	add	x1, x1, :lo12:cpu_bit_bitmap+56
	bl	set_cpus_allowed_ptr
.LBB10_3:
	ldr	x8, [x20, :lo12:ebc_auto_task]
	add	x0, x8, #64
	//APP
.Ltmp2:
	b	.Ltmp1
.Ltmp3:
	.section	.altinstructions,"a",@progbits
.Ltmp4:
	.word	.Ltmp2-.Ltmp4
.Ltmp5:
	.word	alt_cb_patch_nops-.Ltmp5
	.hword	32794
	.byte	.Ltmp3-.Ltmp2
	.byte	.Ltmp6-.Ltmp7
	.text

.Ltmp7:
.Ltmp6:

	//NO_APP
	mov	w8, #1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_30
.LBB10_5:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_25
.LBB10_6:
	adrp	x0, ebc_auto_assist_tast_function
	adrp	x3, .L.str.69
	add	x0, x0, :lo12:ebc_auto_assist_tast_function
	add	x3, x3, :lo12:.L.str.69
	mov	x1, x19
	mov	w2, #-1
	bl	kthread_create_on_node
	adrp	x20, ebc_auto_assist_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_auto_assist_task]
	b.hs	.LBB10_22
	mov	x2, sp
	mov	w1, #1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #568]
	cmp	w8, #8
	b.lt	.LBB10_9
	adrp	x1, cpu_bit_bitmap+64
	ldr	x0, [x20, :lo12:ebc_auto_assist_task]
	add	x1, x1, :lo12:cpu_bit_bitmap+64
	bl	set_cpus_allowed_ptr
.LBB10_9:
	ldr	x8, [x20, :lo12:ebc_auto_assist_task]
	add	x0, x8, #64
	//APP
.Ltmp9:
	b	.Ltmp8
.Ltmp10:
	.section	.altinstructions,"a",@progbits
.Ltmp11:
	.word	.Ltmp9-.Ltmp11
.Ltmp12:
	.word	alt_cb_patch_nops-.Ltmp12
	.hword	32794
	.byte	.Ltmp10-.Ltmp9
	.byte	.Ltmp13-.Ltmp14
	.text

.Ltmp14:
.Ltmp13:

	//NO_APP
	mov	w8, #1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_33
.LBB10_11:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_26
.LBB10_12:
	adrp	x0, ebc_thread
	adrp	x3, .L.str.71
	mov	w8, #99
	add	x0, x0, :lo12:ebc_thread
	add	x3, x3, :lo12:.L.str.71
	mov	x1, x19
	mov	w2, #-1
	str	w8, [sp]
	bl	kthread_create_on_node
	mov	x20, x0
	cmn	x0, #4095
	b.hs	.LBB10_23
	mov	x0, x20
	bl	wake_up_process
	adrp	x21, ebc_task
	mov	x2, sp
	mov	x0, x20
	mov	w1, #1
	str	x20, [x21, :lo12:ebc_task]
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #568]
	cmp	w8, #8
	b.lt	.LBB10_15
	adrp	x1, cpu_bit_bitmap+48
	ldr	x0, [x21, :lo12:ebc_task]
	add	x1, x1, :lo12:cpu_bit_bitmap+48
	bl	set_cpus_allowed_ptr
.LBB10_15:
	ldr	x8, [x21, :lo12:ebc_task]
	add	x0, x8, #64
	//APP
.Ltmp16:
	b	.Ltmp15
.Ltmp17:
	.section	.altinstructions,"a",@progbits
.Ltmp18:
	.word	.Ltmp16-.Ltmp18
.Ltmp19:
	.word	alt_cb_patch_nops-.Ltmp19
	.hword	32794
	.byte	.Ltmp17-.Ltmp16
	.byte	.Ltmp20-.Ltmp21
	.text

.Ltmp21:
.Ltmp20:

	//NO_APP
	mov	w8, #1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_36
.LBB10_17:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_27
.LBB10_18:
	mov	w0, wzr
.LBB10_19:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB10_28
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x21, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB10_21:
	adrp	x1, .L.str.68
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.68
	b	.LBB10_24
.LBB10_22:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.70
	add	x1, x1, :lo12:.L.str.70
	b	.LBB10_24
.LBB10_23:
	adrp	x8, ebc_task
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.72
	add	x1, x1, :lo12:.L.str.72
	str	x20, [x8, :lo12:ebc_task]
.LBB10_24:
	bl	_dev_err
	mov	w0, #-1
	b	.LBB10_19
.LBB10_25:
	mov	w1, #1
	b	.LBB10_31
.LBB10_26:
	mov	w1, #1
	b	.LBB10_34
.LBB10_27:
	mov	w1, #1
	b	.LBB10_37
.LBB10_28:
	bl	__stack_chk_fail
.Ltmp1:
.LBB10_29:
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp22:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp22

	//NO_APP
	cbnz	w8, .LBB10_5
.LBB10_30:
	mov	w1, #2
.LBB10_31:
	bl	refcount_warn_saturate
	b	.LBB10_6
.Ltmp8:
.LBB10_32:
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp23:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp23

	//NO_APP
	cbnz	w8, .LBB10_11
.LBB10_33:
	mov	w1, #2
.LBB10_34:
	bl	refcount_warn_saturate
	b	.LBB10_12
.Ltmp15:
.LBB10_35:
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp24:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp24

	//NO_APP
	cbnz	w8, .LBB10_17
.LBB10_36:
	mov	w1, #2
.LBB10_37:
	bl	refcount_warn_saturate
	b	.LBB10_18
.Lfunc_end10:
	.size	ebc_task_init, .Lfunc_end10-ebc_task_init

	.p2align	2
	.type	ebc_other_init,@function
ebc_other_init:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	mov	x8, #4294967297
	add	x9, x0, #540
	stp	x20, x19, [sp, #32]
	mov	x19, x0
	str	wzr, [x0, #192]
	mov	x29, sp
	str	x8, [x9]
	ldr	w9, [x0, #652]
	mov	w8, #1
	str	xzr, [x0, #528]
	str	xzr, [x0, #88]
	cmp	w9, #3576
	str	wzr, [x0, #52]
	str	w8, [x0, #240]
	add	x8, x0, #548
	str	wzr, [x0, #68]
	cset	w9, eq
	str	wzr, [x0, #560]
	str	wzr, [x0, #576]
	adds	x0, x0, #248
	stp	x22, x21, [sp, #16]
	str	xzr, [x8]
	str	w9, [x19, #556]
	str	w9, [x19, #564]
	b.eq	.LBB11_2
	adrp	x8, .L.str.105
	stp	xzr, xzr, [x19, #424]
	add	x8, x8, :lo12:.L.str.105
	stp	xzr, xzr, [x19, #408]
	stp	xzr, xzr, [x19, #392]
	stp	xzr, xzr, [x19, #376]
	stp	xzr, xzr, [x19, #360]
	stp	xzr, xzr, [x19, #344]
	stp	xzr, xzr, [x19, #328]
	stp	xzr, xzr, [x19, #312]
	stp	xzr, xzr, [x19, #296]
	stp	xzr, xzr, [x19, #280]
	stp	xzr, xzr, [x19, #264]
	stp	x8, xzr, [x19, #248]
.LBB11_2:
	bl	wakeup_source_add
	add	x20, x19, #448
	adrp	x1, ebc_frame_control_timeout
	add	x1, x1, :lo12:ebc_frame_control_timeout
	mov	x0, x20
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	str	wzr, [x19, #440]
	bl	init_timer_key
	adrp	x21, jiffies
	mov	w22, #268435455
	mov	x0, x20
	ldr	x8, [x21, :lo12:jiffies]
	add	x1, x8, x22
	bl	mod_timer
	add	x19, x19, #488
	adrp	x1, ebc_frame_timeout
	add	x1, x1, :lo12:ebc_frame_timeout
	mov	x0, x19
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	bl	init_timer_key
	ldr	x8, [x21, :lo12:jiffies]
	mov	x0, x19
	add	x1, x8, x22
	bl	mod_timer
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end11:
	.size	ebc_other_init, .Lfunc_end11-ebc_other_init

	.p2align	2
	.type	ebc_logo_init,@function
ebc_logo_init:
	sub	sp, sp, #80
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x9, saved_command_line
	stp	x24, x23, [sp, #32]
	add	x29, sp, #16
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x1
	adrp	x1, .L.str.107
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.107
	str	x8, [sp, #8]
	ldr	x22, [x9, :lo12:saved_command_line]
	str	xzr, [sp]
	mov	x0, x22
	bl	strstr
	adrp	x1, .L.str.108
	mov	x21, x0
	add	x1, x1, :lo12:.L.str.108
	mov	x0, x22
	bl	strstr
	mov	x22, x0
	cbz	x21, .LBB12_3
	adrp	x1, .L.str.109
	add	x2, sp, #4
	add	x1, x1, :lo12:.L.str.109
	mov	x0, x21
	bl	sscanf
	ldr	w2, [sp, #4]
	ldr	x8, [x19, #224]
	cmp	x8, x2
	b.ls	.LBB12_26
	mov	x21, xzr
.LBB12_3:
	mov	w23, #1
	cbz	x22, .LBB12_28
.LBB12_4:
	adrp	x1, .L.str.112
	mov	x2, sp
	add	x1, x1, :lo12:.L.str.112
	mov	x0, x22
	bl	sscanf
	ldr	w2, [sp]
	ldr	x8, [x19, #224]
	cmp	x8, x2
	b.ls	.LBB12_31
	mov	x22, xzr
	mov	w24, #1
	cbnz	w23, .LBB12_29
.LBB12_6:
	adrp	x0, .L.str.116
	add	x0, x0, :lo12:.L.str.116
	bl	ebc_empty_buf_get
	cbz	x0, .LBB12_12
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB12_10
	lsr	w8, w8, #1
	ldr	x9, [x0, #16]
	mov	x10, x21
.LBB12_9:
	ldrb	w11, [x10], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w12, [x9]
	strb	w11, [x9, #1]
	add	x9, x9, #2
	b.ne	.LBB12_9
.LBB12_10:
	mov	w8, #7
	str	xzr, [x0, #48]
	mov	w9, #1
	str	w8, [x0, #40]
	ldr	w8, [x20, #76]
	str	w8, [x0, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #60]
.LBB12_11:
	bl	ebc_add_to_dsp_buf_list
.LBB12_12:
	tbnz	w24, #0, .LBB12_18
	adrp	x0, .L.str.116
	add	x0, x0, :lo12:.L.str.116
	bl	ebc_empty_buf_get
	cbz	x0, .LBB12_18
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB12_17
	lsr	w8, w8, #1
	ldr	x9, [x0, #16]
	mov	x10, x22
.LBB12_16:
	ldrb	w11, [x10], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w12, [x9]
	strb	w11, [x9, #1]
	add	x9, x9, #2
	b.ne	.LBB12_16
.LBB12_17:
	mov	w8, #7
	str	xzr, [x0, #48]
	mov	w9, #1
	str	w8, [x0, #40]
	ldr	w8, [x20, #76]
	str	w8, [x0, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #60]
	bl	ebc_add_to_dsp_buf_list
.LBB12_18:
	ldr	w8, [x19, #312]
	cbnz	w8, .LBB12_20
	adrp	x0, ebc_thread_wq
	mov	w8, #1
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1
	str	w8, [x19, #312]
	bl	__wake_up_sync
.LBB12_20:
	cbz	x21, .LBB12_22
	mov	x0, x21
	bl	kfree
.LBB12_22:
	cbz	x22, .LBB12_24
	mov	x0, x22
	bl	kfree
.LBB12_24:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB12_37
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #80
	ret
.LBB12_26:
	adrp	x1, .L.str.110
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.110
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc
	cbz	x0, .LBB12_35
	ldp	w9, w8, [x20, #76]
	ldp	x11, x12, [x19, #224]
	mov	x21, x0
	ldr	w10, [sp, #4]
	mul	w8, w8, w9
	sub	x9, x10, x11
	lsr	w2, w8, #1
	add	x1, x12, x9
	bl	memcpy
	mov	w23, wzr
	cbnz	x22, .LBB12_4
.LBB12_28:
	mov	w24, #1
	cbz	w23, .LBB12_6
.LBB12_29:
	adrp	x1, .L.str.115
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.115
	bl	_dev_info
	ldr	x0, [x19, #16]
	cbz	x0, .LBB12_33
	bl	ebc_pmic_verity_vcom
	b	.LBB12_34
.LBB12_31:
	adrp	x1, .L.str.113
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.113
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc
	cbz	x0, .LBB12_36
	ldp	w9, w8, [x20, #76]
	ldp	x11, x12, [x19, #224]
	mov	x22, x0
	ldr	w10, [sp]
	mul	w8, w8, w9
	sub	x9, x10, x11
	lsr	w2, w8, #1
	add	x1, x12, x9
	bl	memcpy
	mov	w24, wzr
	cbz	w23, .LBB12_6
	b	.LBB12_29
.LBB12_33:
	ldr	x0, [x19, #24]
	bl	ebc_regulator_verity_vcom
.LBB12_34:
	adrp	x0, .L.str.117
	add	x0, x0, :lo12:.L.str.117
	bl	ebc_empty_buf_get
	ldp	w8, w9, [x20, #76]
	mov	x23, x0
	ldr	x0, [x0, #16]
	mov	w1, #240
	mul	w2, w9, w8
	bl	memset
	mov	w8, #17
	str	xzr, [x23, #48]
	mov	w9, #1
	mov	x0, x23
	str	w8, [x23, #40]
	ldr	w8, [x20, #76]
	str	w8, [x23, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x23, #60]
	b	.LBB12_11
.LBB12_35:
	adrp	x1, .L.str.111
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.111
	bl	_dev_err
	b	.LBB12_24
.LBB12_36:
	adrp	x1, .L.str.114
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.114
	bl	_dev_err
	b	.LBB12_24
.LBB12_37:
	bl	__stack_chk_fail
.Lfunc_end12:
	.size	ebc_logo_init, .Lfunc_end12-ebc_logo_init

	.p2align	2
	.type	ebc_sysfs_init,@function
ebc_sysfs_init:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	mov	x19, x0
	adrp	x0, ebc_misc
	mov	x29, sp
	add	x0, x0, :lo12:ebc_misc
	bl	misc_register
	adrp	x0, waveform_misc
	add	x0, x0, :lo12:waveform_misc
	bl	misc_register
	adrp	x1, dev_attr_waveform_version
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_waveform_version
	bl	device_create_file
	adrp	x1, dev_attr_pmic_name
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_pmic_name
	bl	device_create_file
	adrp	x1, dev_attr_pmic_temp
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_pmic_temp
	bl	device_create_file
	adrp	x1, dev_attr_pmic_vcom
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_pmic_vcom
	bl	device_create_file
	adrp	x1, dev_attr_ebc_version
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ebc_version
	bl	device_create_file
	adrp	x1, dev_attr_ebc_state
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ebc_state
	bl	device_create_file
	adrp	x1, dev_attr_ebc_buf_state
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ebc_buf_state
	bl	device_create_file
	adrp	x1, dev_attr_auto_frame_state
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_auto_frame_state
	bl	device_create_file
	adrp	x1, dev_attr_ebc_debug_level
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ebc_debug_level
	bl	device_create_file
	adrp	x1, dev_attr_wf_data
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_wf_data
	bl	device_create_file
	adrp	x1, dev_attr_ori_wf_data
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ori_wf_data
	bl	device_create_file
	ldr	x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end13:
	.size	ebc_sysfs_init, .Lfunc_end13-ebc_sysfs_init

	.p2align	2
	.type	ebc_auto_tast_function,@function
ebc_auto_tast_function:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #48]
	stp	x20, x19, [sp, #80]
	adrp	x19, ebc_auto_thread_sem
	adrp	x23, ebc_assist_finished_flag_sem
	stp	x28, x27, [sp, #16]
	ldr	x24, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #32]
	stp	x22, x21, [sp, #64]
	add	x19, x19, :lo12:ebc_auto_thread_sem
	mov	w25, #2
	adrp	x26, ebc_auto_assist_task
	mov	w27, #255
	add	x20, x24, #40
	add	x21, x24, #224
	add	x22, x24, #712
	add	x23, x23, :lo12:ebc_assist_finished_flag_sem
	mov	x29, sp
	//APP
	mrs	x28, SP_EL0
	//NO_APP
	b	.LBB14_3
.LBB14_1:
	bl	get_auto_image2
.LBB14_2:
	mov	x0, x19
	bl	up
	bl	schedule
.LBB14_3:
	mov	x0, x19
	bl	down
	mov	x0, x23
	bl	down
	str	w25, [x28, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x24, #464]
	cmp	w8, #1
	b.eq	.LBB14_11
	cmp	w8, #3
	b.eq	.LBB14_14
	cmp	w8, #4
	b.ne	.LBB14_18
	ldr	w8, [x24, #300]
	cbz	w8, .LBB14_27
	ldr	w8, [x24, #284]
	str	wzr, [x24, #300]
	str	wzr, [x24, #292]
	cbnz	w8, .LBB14_9
	ldr	w8, [x24, #288]
	cbz	w8, .LBB14_42
.LBB14_9:
	mov	x0, x20
	mov	x1, x21
	bl	flip
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x24, #112]
	mov	x5, x21
	ldp	x1, x2, [x24, #360]
	mov	w6, #2
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldp	x3, x4, [x24, #384]
	ldr	x0, [x8, #400]
	cbz	w9, .LBB14_35
	bl	get_overlay_image2
	b	.LBB14_2
.LBB14_11:
	ldr	w8, [x24, #296]
	mov	x0, x20
	mov	x1, x21
	sub	w8, w8, #1
	str	w8, [x24, #296]
	bl	flip
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x24, #296]
	cbz	w8, .LBB14_2
	ldrsw	x8, [x24, #112]
	mov	x3, x21
	ldp	x11, x9, [x24, #432]
	mov	w4, #2
	add	x8, x24, x8, lsl #3
	ldr	w10, [x24, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #400]
	cbz	w10, .LBB14_34
	bl	direct_mode_data_change_part2
	b	.LBB14_2
.LBB14_14:
	ldr	w8, [x24, #284]
	str	wzr, [x24, #292]
	cbnz	w8, .LBB14_16
	ldr	w8, [x24, #288]
	cbz	w8, .LBB14_36
.LBB14_16:
	mov	x0, x20
	mov	x1, x21
	bl	flip
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x24, #112]
	mov	x4, x21
	ldp	x1, x2, [x24, #360]
	mov	w5, #2
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldr	x3, [x24, #384]
	ldr	x0, [x8, #400]
	cbnz	w9, .LBB14_1
	bl	get_auto_image
	b	.LBB14_2
.LBB14_18:
	ldr	x8, [x24, #440]
	ldr	w8, [x8, #40]
	cmp	w8, #21
	b.ne	.LBB14_24
	ldr	w8, [x24, #848]
	mov	x0, x20
	ldr	w9, [x24, #860]
	mov	x1, x21
	add	w8, w9, w8
	str	w8, [x24, #860]
	bl	flip
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x24, #308]
	ldr	w12, [x24, #852]
	ldr	w9, [x24, #304]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w10, w10, w8, lt
	add	w11, w8, #15
	asr	w10, w10, #3
	csel	w11, w11, w8, lt
	ldr	x0, [x24, #384]
	cmp	w12, #3
	b.ne	.LBB14_29
	cmp	w9, #0
	cinc	w12, w9, lt
	asr	w12, w12, #1
	mul	w12, w12, w10
	sbfiz	x12, x12, #3, #32
	ldrb	w13, [x0, x12]
	cmp	x13, #255
	b.eq	.LBB14_32
	ldrb	w12, [x24, #280]
	cmp	x13, x12
	b.lo	.LBB14_32
	mul	w10, w9, w10
	neg	w11, w11, asr #4
	sbfiz	x11, x11, #3, #32
	add	x10, x0, w10, sxtw #3
	ldrb	w10, [x10, x11]
	cmp	x10, x12
	b.lo	.LBB14_32
	cmp	x10, #255
	b.ne	.LBB14_31
	b	.LBB14_32
.LBB14_24:
	ldr	w8, [x24, #296]
	mov	x0, x20
	mov	x1, x21
	sub	w8, w8, #1
	str	w8, [x24, #296]
	bl	flip
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x24, #296]
	cbz	w8, .LBB14_2
	ldrsw	x8, [x24, #112]
	mov	x3, x21
	ldp	x11, x9, [x24, #432]
	mov	w4, #2
	add	x8, x24, x8, lsl #3
	ldr	w10, [x24, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #400]
	cbz	w10, .LBB14_40
	bl	direct_mode_data_change2
	b	.LBB14_2
.LBB14_27:
	mov	x0, x23
	bl	up
	ldrsw	x8, [x24, #112]
	mov	x5, x21
	ldp	x1, x2, [x24, #360]
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldp	x3, x4, [x24, #384]
	ldr	x0, [x8, #400]
	cbz	w9, .LBB14_39
	bl	get_overlay_image_area2
	b	.LBB14_2
.LBB14_29:
	mul	w10, w9, w10
	add	x10, x0, w10, sxtw #3
	ldurb	w10, [x10, #-8]
	cmp	x10, #255
	b.eq	.LBB14_32
	ldrb	w11, [x24, #280]
	cmp	x10, x11
	b.lo	.LBB14_32
.LBB14_31:
	mul	w8, w9, w8
	mov	w1, wzr
	sxtw	x2, w8
	bl	memset
	mov	w8, #1
	str	w8, [x24, #864]
	b	.LBB14_2
.LBB14_32:
	ldrsw	x8, [x24, #112]
	mov	x3, x21
	ldp	x11, x9, [x24, #432]
	mov	w4, #2
	add	x8, x24, x8, lsl #3
	ldr	w10, [x24, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #400]
	cbz	w10, .LBB14_41
	bl	direct_mode_data_change_full2
	b	.LBB14_2
.LBB14_34:
	bl	direct_mode_data_change_part
	b	.LBB14_2
.LBB14_35:
	bl	get_overlay_image
	b	.LBB14_2
.LBB14_36:
	mov	x0, x23
	bl	up
	ldr	w8, [x24, #772]
	cbz	w8, .LBB14_46
.LBB14_37:
	ldrsw	x8, [x24, #112]
	mov	x4, x21
	ldp	x1, x2, [x24, #360]
	mov	w5, #1
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldr	x3, [x24, #384]
	ldr	x0, [x8, #400]
	cbz	w9, .LBB14_54
	bl	get_auto_image2
	b	.LBB14_56
.LBB14_39:
	bl	get_overlay_image_area
	b	.LBB14_2
.LBB14_40:
	bl	direct_mode_data_change
	b	.LBB14_2
.LBB14_41:
	bl	direct_mode_data_change_full
	b	.LBB14_2
.LBB14_42:
	mov	x0, x23
	bl	up
	ldr	w8, [x24, #772]
	cbnz	w8, .LBB14_44
	ldr	x8, [x24, #440]
	mov	x5, x21
	ldp	x3, x4, [x24, #384]
	ldr	x0, [x24, #360]
	ldr	x1, [x24, #240]
	ldr	x2, [x8, #16]
	bl	refresh_new_image
.LBB14_44:
	ldrsw	x8, [x24, #112]
	mov	x5, x21
	ldp	x1, x2, [x24, #360]
	mov	w6, #1
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldp	x3, x4, [x24, #384]
	ldr	x0, [x8, #400]
	cbz	w9, .LBB14_55
	bl	get_overlay_image2
	b	.LBB14_56
.LBB14_46:
	ldr	w8, [x24, #308]
	ldr	w9, [x24, #304]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w13, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB14_37
	ldr	x12, [x24, #440]
	mov	w10, wzr
	ldr	x11, [x24, #384]
	asr	w13, w13, #3
	ldr	x14, [x24, #360]
	ldr	x12, [x12, #16]
	b	.LBB14_49
.LBB14_48:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB14_37
.LBB14_49:
	cmp	w8, #8
	b.lt	.LBB14_48
	mov	w15, w13
	b	.LBB14_52
.LBB14_51:
	add	x14, x14, #8
	subs	w15, w15, #1
	b.eq	.LBB14_48
.LBB14_52:
	ldr	x16, [x12], #8
	ldr	x17, [x14]
	ldr	x0, [x11], #8
	cmp	x16, x17
	b.eq	.LBB14_51
	tst	x0, #0xff
	csel	x1, x27, xzr, eq
	tst	x0, #0xff00
	orr	x2, x1, #0xff00
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000
	orr	x2, x1, #0xff0000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000
	orr	x2, x1, #0xff000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff00000000
	orr	x2, x1, #0xff00000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000000000
	orr	x2, x1, #0xff0000000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000000000
	orr	x2, x1, #0xff000000000000
	lsr	x0, x0, #56
	csel	x1, x2, x1, eq
	cmp	x0, #0
	orr	x2, x1, #0xff00000000000000
	csel	x0, x2, x1, eq
	bic	x17, x17, x0
	and	x16, x0, x16
	orr	x16, x17, x16
	str	x16, [x14]
	b	.LBB14_51
.LBB14_54:
	bl	get_auto_image
	b	.LBB14_56
.LBB14_55:
	bl	get_overlay_image
.LBB14_56:
	mov	w8, #1
	mov	x0, x22
	str	w8, [x24, #292]
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, #1
	bl	mod_timer
	b	.LBB14_2
.Lfunc_end14:
	.size	ebc_auto_tast_function, .Lfunc_end14-ebc_auto_tast_function

	.p2align	2
	.type	ebc_auto_assist_tast_function,@function
ebc_auto_assist_tast_function:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	adrp	x19, ebc_auto_assist_thread_sem
	adrp	x21, ebc_assist_finished_flag_sem
	stp	x24, x23, [sp, #16]
	ldr	x22, [x8, :lo12:global_ebc]
	add	x19, x19, :lo12:ebc_auto_assist_thread_sem
	mov	w23, #2
	add	x21, x21, :lo12:ebc_assist_finished_flag_sem
	mov	x29, sp
	//APP
	mrs	x24, SP_EL0
	//NO_APP
	add	x20, x22, #224
	b	.LBB15_4
.LBB15_1:
	ldrsw	x8, [x22, #112]
	mov	x4, x20
	ldp	x1, x2, [x22, #360]
	mov	w5, #3
	add	x8, x22, x8, lsl #3
	ldr	w9, [x22, #204]
	ldr	x3, [x22, #384]
	ldr	x0, [x8, #400]
	cbz	w9, .LBB15_21
	bl	get_auto_image2
.LBB15_3:
	mov	x0, x21
	bl	up
	mov	x0, x19
	bl	up
	bl	schedule
.LBB15_4:
	mov	x0, x19
	bl	down
	str	w23, [x24, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x22, #464]
	cmp	w8, #1
	b.eq	.LBB15_9
	cmp	w8, #3
	b.eq	.LBB15_1
	cmp	w8, #4
	b.ne	.LBB15_12
	ldrsw	x8, [x22, #112]
	mov	x5, x20
	ldp	x1, x2, [x22, #360]
	mov	w6, #3
	add	x8, x22, x8, lsl #3
	ldr	w9, [x22, #204]
	ldp	x3, x4, [x22, #384]
	ldr	x0, [x8, #400]
	cbz	w9, .LBB15_22
	bl	get_overlay_image2
	b	.LBB15_3
.LBB15_9:
	ldr	w8, [x22, #296]
	cbz	w8, .LBB15_3
	ldrsw	x8, [x22, #112]
	mov	x3, x20
	ldp	x11, x9, [x22, #432]
	mov	w4, #3
	add	x8, x22, x8, lsl #3
	ldr	w10, [x22, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #400]
	cbz	w10, .LBB15_28
	bl	direct_mode_data_change_part2
	b	.LBB15_3
.LBB15_12:
	ldr	x8, [x22, #440]
	ldr	w9, [x8, #40]
	cmp	w9, #21
	b.ne	.LBB15_18
	ldr	w9, [x22, #308]
	ldr	w13, [x22, #852]
	ldr	w10, [x22, #304]
	add	w11, w9, #7
	cmp	w9, #0
	csel	w11, w11, w9, lt
	add	w12, w9, #15
	asr	w11, w11, #3
	csel	w12, w12, w9, lt
	ldr	x0, [x22, #384]
	cmp	w13, #3
	b.ne	.LBB15_23
	cmp	w10, #0
	cinc	w13, w10, lt
	asr	w13, w13, #1
	mul	w13, w13, w11
	sbfiz	x13, x13, #3, #32
	ldrb	w14, [x0, x13]
	cmp	x14, #255
	b.eq	.LBB15_26
	ldrb	w13, [x22, #280]
	cmp	x14, x13
	b.lo	.LBB15_26
	mul	w11, w10, w11
	neg	w12, w12, asr #4
	sbfiz	x12, x12, #3, #32
	add	x11, x0, w11, sxtw #3
	ldrb	w11, [x11, x12]
	cmp	x11, x13
	b.lo	.LBB15_26
	cmp	x11, #255
	b.ne	.LBB15_25
	b	.LBB15_26
.LBB15_18:
	ldr	w9, [x22, #296]
	cbz	w9, .LBB15_3
	ldrsw	x9, [x22, #112]
	mov	x3, x20
	ldr	x11, [x22, #432]
	mov	w4, #3
	ldr	w10, [x22, #204]
	add	x9, x22, x9, lsl #3
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	ldr	x0, [x9, #400]
	cbz	w10, .LBB15_29
	bl	direct_mode_data_change2
	b	.LBB15_3
.LBB15_21:
	bl	get_auto_image
	b	.LBB15_3
.LBB15_22:
	bl	get_overlay_image
	b	.LBB15_3
.LBB15_23:
	mul	w11, w10, w11
	add	x11, x0, w11, sxtw #3
	ldurb	w11, [x11, #-8]
	cmp	x11, #255
	b.eq	.LBB15_26
	ldrb	w12, [x22, #280]
	cmp	x11, x12
	b.lo	.LBB15_26
.LBB15_25:
	mul	w8, w10, w9
	mov	w1, wzr
	sxtw	x2, w8
	bl	memset
	b	.LBB15_3
.LBB15_26:
	ldrsw	x9, [x22, #112]
	mov	x3, x20
	ldr	x11, [x22, #432]
	mov	w4, #3
	ldr	w10, [x22, #204]
	add	x9, x22, x9, lsl #3
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	ldr	x0, [x9, #400]
	cbz	w10, .LBB15_30
	bl	direct_mode_data_change_full2
	b	.LBB15_3
.LBB15_28:
	bl	direct_mode_data_change_part
	b	.LBB15_3
.LBB15_29:
	bl	direct_mode_data_change
	b	.LBB15_3
.LBB15_30:
	bl	direct_mode_data_change_full
	b	.LBB15_3
.Lfunc_end15:
	.size	ebc_auto_assist_tast_function, .Lfunc_end15-ebc_auto_assist_tast_function

	.p2align	2
	.type	ebc_thread,@function
ebc_thread:
	sub	sp, sp, #240
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #224]
	stp	x29, x30, [sp, #144]
	add	x29, sp, #144
	stp	x28, x27, [sp, #160]
	mov	x28, #1030792151040
	ldr	x20, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #176]
	stp	x24, x23, [sp, #192]
	mov	w25, #-268435456
	stp	x22, x21, [sp, #208]
	mov	x24, #263882790666240
	add	x8, x20, #224
	add	x9, x20, #40
	mov	x22, #67553994410557440
	str	x8, [sp, #48]
	add	x8, x20, #800
	stur	x8, [x29, #-56]
	add	x8, x20, #320
	str	x8, [sp, #40]
	add	x8, x20, #276
	stur	x8, [x29, #-48]
	add	x8, x20, #672
	stp	x8, x9, [sp, #16]
	add	x8, x20, #712
	str	x8, [sp, #72]
	b	.LBB16_3
.LBB16_1:
	str	w3, [x20, #668]
.LBB16_2:
	ldr	x8, [x20, #440]
	str	x8, [x20, #432]
.LBB16_3:
	bl	ebc_osd_buf_get
	cbz	x0, .LBB16_8
	mov	x19, x0
	ldr	w8, [x20, #752]
	cbnz	w8, .LBB16_6
	ldr	w8, [x20, #756]
	cbz	w8, .LBB16_24
.LBB16_6:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_61
.LBB16_7:
	mov	x0, x19
	bl	ebc_buf_release
	b	.LBB16_3
.LBB16_8:
	ldr	w8, [x20, #768]
	str	wzr, [x20, #316]
	cbz	w8, .LBB16_11
	ldr	w8, [x20, #764]
	cbnz	w8, .LBB16_11
	ldr	w8, [x20, #772]
	cbz	w8, .LBB16_19
.LBB16_11:
	bl	ebc_dsp_buf_get
	cbz	x0, .LBB16_19
	ldr	w2, [x0, #40]
	mov	x19, x0
	mov	w3, #1
	cmp	w2, #21
	b.ne	.LBB16_21
.LBB16_13:
	ldr	w8, [x20, #668]
	cbnz	w8, .LBB16_15
	str	x19, [x20, #432]
	ldr	w2, [x19, #40]
.LBB16_15:
	cmp	w2, #23
	b.hi	.LBB16_391
	lsl	w8, w3, w2
	tst	w8, #0x1ff80
	b.ne	.LBB16_27
	mov	w9, #124
	movk	w9, #34, lsl #16
	tst	w8, w9
	b.eq	.LBB16_80
	mov	w8, #2
	b	.LBB16_28
.LBB16_19:
	ldr	w8, [x20, #312]
	cbz	w8, .LBB16_34
.LBB16_20:
	str	wzr, [x20, #312]
	b	.LBB16_3
.LBB16_21:
	ldr	w9, [x20, #760]
	ldr	w8, [x20, #464]
	cbz	w9, .LBB16_59
	cmp	w8, #1
	b.eq	.LBB16_69
	cmp	w8, #2
	b.eq	.LBB16_72
	b	.LBB16_73
.LBB16_24:
	ldr	w8, [x20, #464]
	cmp	w8, #1
	b.eq	.LBB16_62
	cmp	w8, #2
	b.ne	.LBB16_293
.LBB16_26:
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #368]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x20, #440]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_293
.LBB16_27:
	mov	w8, #1
.LBB16_28:
	stur	w8, [x29, #-64]
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_44
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_270
.LBB16_30:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_31:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_42
	cbnz	x0, .LBB16_43
	bl	schedule
	b	.LBB16_31
.LBB16_34:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x20, #312]
	cbz	w8, .LBB16_65
.LBB16_35:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	ldr	w8, [x20, #312]
	cbnz	w8, .LBB16_3
.LBB16_36:
	ldur	x19, [x29, #-48]
	ldr	w8, [x19]
	cmp	w8, #1
	b.ne	.LBB16_98
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_38:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x19]
	cbz	w8, .LBB16_106
	ldr	w8, [x20, #312]
	cbnz	w8, .LBB16_106
	cbnz	x0, .LBB16_107
	bl	schedule
	b	.LBB16_38
.LBB16_42:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_43:
	ldur	x8, [x29, #-56]
	mov	w3, #1
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_271
.LBB16_44:
	ldr	w8, [x20, #464]
	sub	w8, w8, #3
	cmp	w8, #1
	b.hi	.LBB16_46
	ldr	x8, [x20, #432]
	str	wzr, [x20, #776]
	str	wzr, [x20, #784]
	ldr	x1, [x20, #368]
	ldrsw	x2, [x20, #252]
	ldr	x0, [x8, #16]
	bl	memcpy
	mov	w3, #1
.LBB16_46:
	ldr	w8, [x19, #40]
	cmp	w8, #11
	b.hi	.LBB16_136
	lsl	w9, w3, w8
	mov	w10, #2124
	tst	w9, w10
	b.eq	.LBB16_52
	ldr	w9, [x20, #252]
	add	w10, w9, #7
	cmp	w9, #0
	csel	w10, w10, w9, lt
	cmp	w9, #8
	b.lt	.LBB16_104
	ldr	x9, [x20, #432]
	asr	w10, w10, #3
	ldr	x11, [x19, #16]
	ldr	x9, [x9, #16]
.LBB16_50:
	ldr	x12, [x11]
	ldr	x13, [x9]
	cmp	x12, x13
	b.ne	.LBB16_136
	add	x9, x9, #8
	add	x11, x11, #8
	subs	w10, w10, #1
	b.ne	.LBB16_50
	b	.LBB16_104
.LBB16_52:
	tst	w9, #0x180
	b.eq	.LBB16_136
	ldr	w9, [x20, #788]
	ldr	w10, [x20, #252]
	cbz	w9, .LBB16_100
	add	w9, w10, #7
	cmp	w10, #0
	csel	w12, w9, w10, lt
	cmp	w10, #8
	b.lt	.LBB16_104
	mov	w11, #50
	mov	w13, #34079
	movk	w13, #20971, lsl #16
	mov	w9, wzr
	mul	w10, w10, w11
	ldr	x11, [x20, #432]
	asr	w12, w12, #3
	smull	x10, w10, w13
	lsr	x13, x10, #63
	asr	x14, x10, #40
	ldr	x10, [x11, #16]
	add	w11, w14, w13
	ldr	x13, [x19, #16]
.LBB16_56:
	ldr	x14, [x13]
	ldr	x15, [x10]
	cmp	x14, x15
	cinc	w9, w9, ne
	cmp	w9, w11
	b.gt	.LBB16_134
	add	x10, x10, #8
	add	x13, x13, #8
	subs	w12, w12, #1
	b.ne	.LBB16_56
	cbnz	w9, .LBB16_136
	b	.LBB16_104
.LBB16_59:
	cmp	w8, #4
	b.ne	.LBB16_13
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_73
	b	.LBB16_13
.LBB16_61:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.73
	add	x1, x1, :lo12:.L.str.73
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_7
.LBB16_62:
	ldr	w2, [x20, #296]
	cbz	w2, .LBB16_117
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_379
.LBB16_64:
	str	wzr, [x20, #296]
	b	.LBB16_293
.LBB16_65:
	mov	w8, #13
.LBB16_66:
	cbnz	x0, .LBB16_36
	mov	x0, x8
	bl	schedule_timeout
	mov	x19, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x20, #312]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB16_35
	cbnz	x8, .LBB16_66
	b	.LBB16_35
.LBB16_69:
	ldr	w2, [x20, #296]
	cbz	w2, .LBB16_72
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_382
.LBB16_71:
	str	wzr, [x20, #296]
	b	.LBB16_73
.LBB16_72:
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #368]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x20, #440]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_73:
	ldr	x8, [x20, #440]
	ldr	w9, [x19, #40]
	ldr	w8, [x8, #40]
	cmp	w9, w8
	b.eq	.LBB16_94
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_94
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_376
.LBB16_76:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_77:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_92
	cbnz	x0, .LBB16_93
	bl	schedule
	b	.LBB16_77
.LBB16_80:
	mov	w9, #1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.eq	.LBB16_391
	ldr	w8, [x20, #464]
	str	x19, [x20, #440]
	cmp	w8, #4
	b.eq	.LBB16_249
	cmp	w8, #2
	b.eq	.LBB16_125
	cmp	w8, #1
	b.ne	.LBB16_255
	ldr	w8, [x20, #780]
	cbz	w8, .LBB16_125
	ldr	w8, [x20, #776]
	cbnz	w8, .LBB16_87
	ldr	w8, [x20, #784]
	cbz	w8, .LBB16_125
.LBB16_87:
	ldur	x8, [x29, #-56]
	mov	x9, x19
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_411
.LBB16_88:
	ldr	w8, [x20, #252]
	ldr	x1, [x20, #376]
	cmp	w8, #1
	b.lt	.LBB16_380
	ldr	x9, [x9, #16]
.LBB16_90:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #8
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_90
	ldr	x1, [x20, #376]
	ldr	w8, [x20, #252]
	b	.LBB16_381
.LBB16_92:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_93:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_377
.LBB16_94:
	mov	w8, #4
	str	x19, [x20, #440]
	ldp	x3, x4, [x20, #384]
	str	w8, [x20, #464]
	ldr	x0, [x20, #360]
	ldr	x1, [x20, #240]
	ldr	x2, [x19, #16]
	ldr	x5, [sp, #48]
	bl	refresh_new_image
	ldr	w8, [x20, #276]
	mov	w3, #1
	cbnz	w8, .LBB16_129
	str	w3, [x20, #276]
	mov	x0, x20
	ldr	w1, [x19, #40]
	mov	w2, wzr
	bl	ebc_lut_update
	ldr	w9, [x20, #800]
	ldr	w8, [x20, #328]
	cmp	w9, #1
	strh	w8, [x20, #280]
	b.ge	.LBB16_375
.LBB16_96:
	ldr	x19, [sp, #48]
	mov	w6, #1
	ldp	x4, x0, [x20, #392]
	ldp	x1, x2, [x20, #360]
	mov	x5, x19
	ldr	w8, [x20, #204]
	ldr	x3, [x20, #384]
	cbz	w8, .LBB16_111
	bl	get_overlay_image2
	b	.LBB16_112
.LBB16_98:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_3
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_3
	b	.LBB16_286
.LBB16_100:
	add	w9, w10, #7
	cmp	w10, #0
	csel	w11, w9, w10, lt
	cmp	w10, #8
	b.lt	.LBB16_104
	ldr	x9, [x20, #432]
	asr	w10, w11, #3
	ldr	x11, [x19, #16]
	ldr	x9, [x9, #16]
.LBB16_102:
	ldr	x12, [x11]
	ldr	x13, [x9]
	cmp	x12, x13
	b.ne	.LBB16_136
	add	x9, x9, #8
	add	x11, x11, #8
	subs	w10, w10, #1
	b.ne	.LBB16_102
.LBB16_104:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_272
.LBB16_105:
	str	x19, [x20, #440]
	b	.LBB16_407
.LBB16_106:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_107:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_3
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_3
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_286
	ldr	w8, [x20, #312]
	cbnz	w8, .LBB16_20
	b	.LBB16_287
.LBB16_111:
	bl	get_overlay_image
.LBB16_112:
	ldr	w8, [x20, #284]
	mov	w3, #1
	cbz	w8, .LBB16_115
	ldp	x1, x2, [x20, #360]
	mov	x5, x19
	mov	w6, #1
	ldp	x3, x4, [x20, #384]
	ldr	w8, [x20, #204]
	ldr	x0, [x20, #408]
	cbz	w8, .LBB16_126
	bl	get_overlay_image2
	b	.LBB16_127
.LBB16_115:
	ldr	w8, [x20, #800]
	str	wzr, [x20, #276]
	str	w3, [x20, #764]
	cmp	w8, #1
	b.lt	.LBB16_129
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.102
	adrp	x2, .L__func__.ebc_overlay_bg_frame_start
	add	x1, x1, :lo12:.L.str.102
	add	x2, x2, :lo12:.L__func__.ebc_overlay_bg_frame_start
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_128
.LBB16_117:
	ldr	w8, [x20, #780]
	cbz	w8, .LBB16_26
	ldr	w8, [x20, #776]
	cbnz	w8, .LBB16_120
	ldr	w8, [x20, #784]
	cbz	w8, .LBB16_26
.LBB16_120:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_400
.LBB16_121:
	ldr	w8, [x20, #252]
	ldr	x1, [x20, #376]
	cmp	w8, #1
	b.lt	.LBB16_291
	ldr	x9, [x20, #440]
	ldr	x9, [x9, #16]
.LBB16_123:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #8
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_123
	ldr	x1, [x20, #376]
	ldr	w8, [x20, #252]
	b	.LBB16_292
.LBB16_125:
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #368]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_276
.LBB16_126:
	bl	get_overlay_image
.LBB16_127:
	ldr	x0, [sp, #24]
	mov	x1, x19
	str	wzr, [x20, #112]
	bl	flip
.LBB16_128:
	mov	w3, #1
.LBB16_129:
	ldr	x8, [x20, #440]
	ldr	w8, [x8, #40]
	cmp	w8, #23
	b.hi	.LBB16_131
	mov	w9, #1
	lsl	w8, w3, w8
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.ne	.LBB16_407
.LBB16_131:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_407
	ldr	w8, [x20, #800]
	str	wzr, [x20, #764]
	cmp	w8, #1
	b.ge	.LBB16_387
.LBB16_133:
	adrp	x8, jiffies
	ldr	x19, [x8, :lo12:jiffies]
	ldrb	w8, [x20, #280]
	add	w8, w8, w8, lsl #1
	lsl	w0, w8, #2
	bl	__msecs_to_jiffies
	add	x1, x0, x19
	ldr	x0, [sp, #16]
	b	.LBB16_405
.LBB16_134:
	ldur	x9, [x29, #-56]
	ldr	w9, [x9]
	cmp	w9, #1
	b.ge	.LBB16_409
.LBB16_135:
	mov	w9, #2
	stur	w9, [x29, #-64]
.LBB16_136:
	ldr	w9, [x20, #780]
	cbz	w9, .LBB16_140
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_140
	ldr	w8, [x20, #776]
	cbz	w8, .LBB16_145
	ldr	x8, [x20, #432]
	ldr	x1, [x20, #368]
	ldrsw	x2, [x20, #252]
	ldr	x0, [x8, #16]
	b	.LBB16_148
.LBB16_140:
	cbz	w9, .LBB16_144
	ldr	w8, [x20, #784]
	cbz	w8, .LBB16_144
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_389
.LBB16_143:
	mov	w8, #21
	str	w8, [x19, #40]
	mov	w8, #2
	stur	w8, [x29, #-64]
.LBB16_144:
	str	wzr, [x20, #784]
	str	wzr, [x20, #776]
	b	.LBB16_149
.LBB16_145:
	ldr	w8, [x20, #784]
	cbz	w8, .LBB16_280
	ldr	x8, [x20, #432]
	ldr	x1, [x8, #16]
	ldr	w8, [x20, #252]
.LBB16_147:
	ldr	x0, [x20, #368]
	sxtw	x2, w8
.LBB16_148:
	bl	memcpy
.LBB16_149:
	str	x19, [x20, #440]
	ldr	w1, [x19, #40]
	cmp	w1, #12
	b.eq	.LBB16_154
	cmp	w1, #14
	b.eq	.LBB16_156
	cmp	w1, #13
	b.ne	.LBB16_160
	ldr	w8, [x20, #780]
	cbz	w8, .LBB16_160
	ldur	w8, [x29, #-64]
	mov	x0, x20
	mov	w1, #14
	cmp	w8, #2
	cset	w2, eq
	bl	ebc_lut_update
	ldrb	w8, [x20, #328]
	mov	w10, #21846
	sub	w9, w8, #6
	lsr	w8, w8, #1
	mul	w9, w9, w10
	lsr	w10, w9, #16
	add	w9, w10, w9, lsr #31
	mov	w10, #2
	b	.LBB16_158
.LBB16_154:
	ldr	w8, [x20, #780]
	cbz	w8, .LBB16_160
	ldur	w8, [x29, #-64]
	mov	x0, x20
	mov	w1, #14
	cmp	w8, #2
	cset	w2, eq
	bl	ebc_lut_update
	ldrb	w8, [x20, #328]
	mov	w11, #171
	sub	w9, w8, #6
	mul	w8, w8, w11
	and	w10, w9, #0xc000
	lsr	w8, w8, #9
	add	w9, w9, w10, lsr #14
	mov	w10, #3
	lsr	w9, w9, #2
	strb	w10, [x20, #280]
	b	.LBB16_159
.LBB16_156:
	ldr	w8, [x20, #780]
	cbz	w8, .LBB16_160
	ldur	w8, [x29, #-64]
	mov	x0, x20
	mov	w1, #14
	cmp	w8, #2
	cset	w2, eq
	bl	ebc_lut_update
	ldrb	w8, [x20, #328]
	mov	w10, #26215
	sub	w9, w8, #6
	lsr	w8, w8, #2
	mul	w9, w9, w10
	lsr	w10, w9, #17
	add	w9, w10, w9, lsr #31
	mov	w10, #4
.LBB16_158:
	strb	w10, [x20, #280]
.LBB16_159:
	strb	w9, [x20, #872]
	strb	w8, [x20, #873]
	b	.LBB16_161
.LBB16_160:
	ldur	w8, [x29, #-64]
	mov	x0, x20
	cmp	w8, #2
	cset	w2, eq
	bl	ebc_lut_update
	ldr	w8, [x20, #328]
	strb	w8, [x20, #280]
.LBB16_161:
	ldr	w8, [x20, #780]
	mov	w9, #1
	cbz	w8, .LBB16_167
	ldr	w8, [x19, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_167
	ldr	w8, [x20, #784]
	cbnz	w8, .LBB16_165
	ldr	x0, [x20, #376]
	mov	w1, wzr
	ldrsw	x2, [x20, #252]
	bl	memset
	ldr	x0, [x20, #360]
	mov	w1, wzr
	ldrsw	x2, [x20, #252]
	bl	memset
	mov	w9, #1
.LBB16_165:
	str	w9, [x20, #784]
	b	.LBB16_167
.LBB16_166:
	ldr	x8, [x20, #432]
	ldr	x1, [x20, #368]
	ldrsw	x2, [x20, #252]
	ldr	x0, [x8, #16]
	bl	memcpy
	mov	w9, #1
.LBB16_167:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_211
.LBB16_168:
	ldur	w8, [x29, #-64]
	mov	x0, x20
	str	w9, [x20, #276]
	str	w8, [x20, #464]
	bl	ebc_frame_start
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #72]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x20, #780]
	cbz	w8, .LBB16_189
	ldr	w9, [x19, #40]
	sub	w9, w9, #12
	cmp	w9, #2
	b.hi	.LBB16_189
	ldr	w9, [x20, #784]
	cbz	w9, .LBB16_189
	ldur	x9, [x29, #-56]
	ldr	w9, [x9]
	cmp	w9, #1
	b.ge	.LBB16_214
.LBB16_172:
	ldr	w9, [x20, #304]
	cmp	w9, #1
	b.lt	.LBB16_187
	ldr	x14, [x20, #440]
	mov	w11, wzr
	ldrsb	w0, [x20, #872]
	mov	w12, wzr
	ldrsb	w15, [x20, #873]
	mov	w10, wzr
	ldp	x1, x16, [x20, #368]
	and	w17, w0, #0xff
	neg	w0, w0
	ldr	w13, [x20, #308]
	neg	w2, w15
	ldr	x14, [x14, #16]
	mov	w30, #1
	ldr	x3, [x20, #360]
	b	.LBB16_175
.LBB16_174:
	add	w12, w12, #1
	add	w11, w11, w13
	cmp	w12, w9
	b.eq	.LBB16_188
.LBB16_175:
	cmp	w13, #1
	b.lt	.LBB16_174
	mov	w5, w11
	mov	x4, x13
	b	.LBB16_181
.LBB16_177:
	cmp	w8, #1
	orr	w23, w23, #0x1
	cset	w6, gt
	cmp	w7, w15
	cset	w26, lt
	orr	w6, w6, w26
	cmp	w6, #0
	mov	w6, #-16
.LBB16_178:
	csel	w6, w23, w6, ne
	csinc	w10, w10, wzr, eq
.LBB16_179:
	strb	w6, [x1, x5]
	strb	w7, [x3, x5]
	strb	w21, [x16, x5]
.LBB16_180:
	subs	x4, x4, #1
	add	w5, w5, #1
	b.eq	.LBB16_174
.LBB16_181:
	sxtw	x5, w5
	ldrb	w6, [x14, x5]
	ldrb	w23, [x1, x5]
	cmp	w23, w6
	b.eq	.LBB16_180
	ldrsb	w21, [x16, x5]
	cmp	w6, #240
	ldrb	w7, [x3, x5]
	b.ne	.LBB16_185
	add	w6, w7, #1
	cmp	w21, #0
	sxtb	w7, w6
	csinc	w21, w30, w21, lt
	cmp	w17, w21, uxtb
	b.ne	.LBB16_177
	mov	w6, #240
	mov	w21, w17
	b	.LBB16_179
.LBB16_185:
	sub	w26, w21, #1
	cmp	w21, #0
	csinv	w21, w26, wzr, le
	sub	w7, w7, #1
	cmp	w0, w21, sxtb
	b.eq	.LBB16_179
	cmp	w8, #1
	orr	w23, w23, #0x1
	cset	w26, gt
	cmp	w2, w7, sxtb
	cset	w27, lt
	orr	w26, w26, w27
	cmp	w26, #0
	b	.LBB16_178
.LBB16_187:
	mov	w10, wzr
.LBB16_188:
	str	w10, [x20, #776]
.LBB16_189:
	ldur	x8, [x29, #-48]
	ldr	w9, [x8]
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cbz	w9, .LBB16_196
	cmp	w8, #1
	b.ge	.LBB16_212
.LBB16_191:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_192:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_195
	cbnz	x0, .LBB16_197
	bl	schedule
	b	.LBB16_192
.LBB16_195:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB16_197
.LBB16_196:
	tbz	w8, #31, .LBB16_213
.LBB16_197:
	ldr	w8, [x20, #296]
	cbnz	w8, .LBB16_215
	ldr	w8, [x20, #780]
	cbz	w8, .LBB16_404
	ldr	w8, [x19, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_404
	ldr	w8, [x20, #776]
	cbz	w8, .LBB16_221
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_404
	sub	x0, x29, #40
	mov	w1, wzr
	str	wzr, [x20, #312]
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x20, #312]
	cbz	w8, .LBB16_207
.LBB16_203:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_204:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_404
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_166
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.91
	add	x1, x1, :lo12:.L.str.91
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_166
.LBB16_207:
	mov	w8, #3
.LBB16_208:
	cbnz	x0, .LBB16_204
	mov	x0, x8
	bl	schedule_timeout
	mov	x27, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x20, #312]
	cmp	x27, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x27, xzr, eq
	cbnz	w9, .LBB16_203
	cbnz	x8, .LBB16_208
	b	.LBB16_203
.LBB16_211:
	ldr	x8, [x20, #440]
	adrp	x1, .L.str.86
	ldr	x0, [x20, #320]
	add	x1, x1, :lo12:.L.str.86
	ldrb	w3, [x20, #280]
	ldr	w2, [x8, #40]
	ldrb	w4, [x20, #328]
	bl	_dev_info
	mov	w9, #1
	b	.LBB16_168
.LBB16_212:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_191
	b	.LBB16_197
.LBB16_213:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.89
	add	x1, x1, :lo12:.L.str.89
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_197
.LBB16_214:
	adrp	x1, .L.str.87
	ldr	x0, [x20, #320]
	add	x1, x1, :lo12:.L.str.87
	bl	_dev_info
	ldr	w8, [x20, #780]
	b	.LBB16_172
.LBB16_215:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_388
.LBB16_216:
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #368]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x20, #440]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x0, [x20, #384]
	mov	w1, wzr
	ldrsw	x2, [x20, #252]
	bl	memset
	ldr	w8, [x20, #252]
	cmp	w8, #1
	b.lt	.LBB16_404
	ldrb	w11, [x20, #280]
	ldrb	w12, [x20, #296]
	ldr	x9, [x20, #384]
	sub	w11, w11, w12
	ldp	x12, x10, [x20, #360]
	b	.LBB16_219
.LBB16_218:
	add	x9, x9, #1
	add	x10, x10, #1
	add	x12, x12, #1
	subs	w8, w8, #1
	b.eq	.LBB16_404
.LBB16_219:
	ldrb	w13, [x10]
	ldrb	w14, [x12]
	cmp	w13, w14
	b.eq	.LBB16_218
	strb	w11, [x9]
	b	.LBB16_218
.LBB16_221:
	ldr	w8, [x20, #784]
	cbz	w8, .LBB16_404
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_404
	sub	x0, x29, #40
	mov	w1, wzr
	str	wzr, [x20, #312]
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x20, #312]
	cbz	w8, .LBB16_383
.LBB16_224:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_225:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_404
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_413
.LBB16_227:
	ldr	w8, [x20, #304]
	ldr	x23, [x20, #368]
	sub	w8, w8, #1
	cmp	w8, #1
	str	w8, [sp, #12]
	b.le	.LBB16_393
	ldr	x8, [x20, #440]
	ldr	w9, [x20, #308]
	ldr	x21, [x20, #376]
	ldr	x8, [x8, #16]
	str	w9, [sp, #56]
	stur	x8, [x29, #-64]
	sub	w8, w9, #1
	str	x8, [sp, #64]
	mov	w8, #1
	str	w8, [sp, #36]
	b	.LBB16_230
.LBB16_229:
	ldr	w9, [sp, #36]
	ldr	w8, [sp, #12]
	add	w9, w9, #1
	cmp	w9, w8
	str	w9, [sp, #36]
	b.eq	.LBB16_392
.LBB16_230:
	ldr	x8, [sp, #64]
	cmp	w8, #2
	b.lt	.LBB16_229
	ldr	w8, [sp, #56]
	mov	w26, #1
	ldr	w9, [sp, #36]
	mul	w8, w9, w8
	str	w8, [sp, #60]
	b	.LBB16_233
.LBB16_232:
	ldr	x8, [sp, #64]
	add	x26, x26, #1
	cmp	x26, x8
	b.eq	.LBB16_229
.LBB16_233:
	ldr	w8, [sp, #60]
	add	w8, w8, w26
	sxtw	x19, w8
	ldrb	w8, [x21, x19]
	cbz	w8, .LBB16_232
	ldur	x8, [x29, #-64]
	ldrb	w27, [x8, x19]
.LBB16_235:
	bl	get_random_u8
	and	w8, w0, #0xff
	add	w8, w8, w0, uxtb #1
	tst	w8, #0xff
	b.eq	.LBB16_235
	lsr	w8, w8, #4
	cmp	w27, #240
	and	w8, w8, #0x30
	sub	w9, w8, #88
	strb	w9, [x23, x19]
	b.ne	.LBB16_232
	ldr	w9, [sp, #56]
	sub	w9, w19, w9
	sxtw	x9, w9
	ldrb	w10, [x21, x9]
	cbnz	w10, .LBB16_240
	ldur	x10, [x29, #-64]
	ldrb	w10, [x10, x9]
	cmp	w10, #240
	b.ne	.LBB16_240
	sub	w10, w8, #40
	strb	w10, [x23, x9]
.LBB16_240:
	ldr	w9, [sp, #56]
	add	w9, w19, w9
	sxtw	x9, w9
	ldrb	w10, [x21, x9]
	cbnz	w10, .LBB16_243
	ldur	x10, [x29, #-64]
	ldrb	w10, [x10, x9]
	cmp	w10, #240
	b.ne	.LBB16_243
	sub	w10, w8, #40
	strb	w10, [x23, x9]
.LBB16_243:
	sub	w9, w19, #1
	sxtw	x9, w9
	ldrb	w10, [x21, x9]
	cbnz	w10, .LBB16_246
	ldur	x10, [x29, #-64]
	ldrb	w10, [x10, x9]
	cmp	w10, #240
	b.ne	.LBB16_246
	sub	w10, w8, #40
	strb	w10, [x23, x9]
.LBB16_246:
	add	w9, w19, #1
	sxtw	x9, w9
	ldrb	w10, [x21, x9]
	cbnz	w10, .LBB16_232
	ldur	x10, [x29, #-64]
	ldrb	w10, [x10, x9]
	cmp	w10, #240
	b.ne	.LBB16_232
	sub	w8, w8, #40
	strb	w8, [x23, x9]
	b	.LBB16_232
.LBB16_249:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_255
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_410
.LBB16_251:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_252:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_274
	cbnz	x0, .LBB16_275
	bl	schedule
	b	.LBB16_252
.LBB16_255:
	ldr	x8, [x20, #432]
	ldr	w9, [x19, #40]
	ldr	w8, [x8, #40]
	cmp	w9, w8
	b.eq	.LBB16_262
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_262
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_412
.LBB16_258:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_259:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_274
	cbnz	x0, .LBB16_275
	bl	schedule
	b	.LBB16_259
.LBB16_262:
	ldr	w8, [x20, #308]
	ldr	w9, [x20, #304]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w13, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB16_277
	mov	w10, wzr
	ldr	x11, [x20, #384]
	ldr	x12, [x19, #16]
	asr	w13, w13, #3
	ldr	x14, [x20, #360]
	b	.LBB16_265
.LBB16_264:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB16_277
.LBB16_265:
	cmp	w8, #8
	b.lt	.LBB16_264
	mov	w15, w13
	b	.LBB16_268
.LBB16_267:
	add	x14, x14, #8
	subs	w15, w15, #1
	b.eq	.LBB16_264
.LBB16_268:
	ldr	x16, [x12], #8
	ldr	x17, [x14]
	ldr	x0, [x11], #8
	cmp	x16, x17
	b.eq	.LBB16_267
	tst	x0, #0xff
	mov	w1, #255
	csel	x1, x1, xzr, eq
	tst	x0, #0xff00
	orr	x2, x1, #0xff00
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000
	orr	x2, x1, #0xff0000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000
	orr	x2, x1, #0xff000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff00000000
	orr	x2, x1, #0xff00000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000000000
	orr	x2, x1, #0xff0000000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000000000
	orr	x2, x1, #0xff000000000000
	lsr	x0, x0, #56
	csel	x1, x2, x1, eq
	cmp	x0, #0
	orr	x2, x1, #0xff00000000000000
	csel	x0, x2, x1, eq
	bic	x17, x17, x0
	and	x16, x0, x16
	orr	x16, x17, x16
	str	x16, [x14]
	b	.LBB16_267
.LBB16_270:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_30
	b	.LBB16_43
.LBB16_271:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
	mov	w3, #1
	b	.LBB16_44
.LBB16_272:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.82
	add	x1, x1, :lo12:.L.str.82
.LBB16_273:
	ldr	x0, [x8]
	bl	_dev_info
	mov	w3, #1
	b	.LBB16_105
.LBB16_274:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_275:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_401
.LBB16_276:
	ldr	x8, [x20, #440]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	mov	w3, #1
.LBB16_277:
	ldr	w8, [x20, #276]
	mov	w9, #3
	str	w9, [x20, #464]
	cbnz	w8, .LBB16_407
	str	w3, [x20, #276]
	mov	x0, x20
	ldr	w1, [x19, #40]
	mov	w2, wzr
	bl	ebc_lut_update
	ldr	w9, [x20, #800]
	ldr	w8, [x20, #328]
	cmp	w9, #1
	strh	w8, [x20, #280]
	b.ge	.LBB16_390
.LBB16_279:
	mov	x0, x20
	bl	ebc_frame_start
	b	.LBB16_406
.LBB16_280:
	ldr	w8, [x20, #252]
	add	w9, w8, #7
	cmp	w8, #0
	csel	w9, w9, w8, lt
	cmp	w8, #8
	b.lt	.LBB16_284
	ldr	x10, [x20, #432]
	asr	w9, w9, #3
	ldr	x1, [x10, #16]
	ldr	x10, [x19, #16]
	mov	x11, x1
.LBB16_282:
	ldr	x12, [x10]
	ldr	x13, [x11]
	cmp	x12, x13
	b.ne	.LBB16_147
	add	x11, x11, #8
	add	x10, x10, #8
	subs	w9, w9, #1
	b.ne	.LBB16_282
.LBB16_284:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_105
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	b	.LBB16_273
.LBB16_286:
	mov	x0, x20
	mov	w1, wzr
	bl	ebc_power_set
	ldr	w8, [x20, #312]
	cbnz	w8, .LBB16_20
.LBB16_287:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_288:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x20, #312]
	cbnz	w8, .LBB16_378
	cbnz	x0, .LBB16_20
	bl	schedule
	b	.LBB16_288
.LBB16_291:
.LBB16_292:
	ldr	x0, [x20, #368]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x20, #440]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x20, #784]
	str	wzr, [x20, #776]
.LBB16_293:
	mov	w8, #4
	str	x19, [x20, #456]
	ldr	w9, [x20, #308]
	mov	w26, #1
	str	w8, [x20, #464]
	ldp	w10, w8, [x19, #48]
	ldp	w12, w14, [x19, #56]
	add	w11, w10, #7
	cmp	w10, #0
	add	w13, w12, #7
	csel	w11, w11, w10, lt
	cmp	w12, #0
	add	w10, w9, #7
	csel	w12, w13, w12, lt
	cmp	w9, #0
	asr	w15, w12, #3
	csel	w12, w10, w9, lt
	ldr	w10, [x20, #304]
	add	w9, w15, #1
	asr	w13, w12, #3
	sub	w16, w13, #1
	cmp	w9, w13
	csinc	w9, w16, w15, ge
	sub	w15, w10, #1
	cmp	w14, w10
	csel	w10, w14, w15, lt
	cmp	w8, w10
	b.le	.LBB16_298
.LBB16_294:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_372
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	ldr	x0, [x20, #448]
	cbz	x0, .LBB16_297
.LBB16_296:
	bl	ebc_buf_release
.LBB16_297:
	ldr	x8, [x20, #456]
	str	x8, [x20, #448]
	b	.LBB16_3
.LBB16_298:
	ldr	x14, [x20, #440]
	mul	w13, w13, w8
	ldp	x16, x15, [x20, #384]
	sxtw	x13, w13
	asr	w11, w11, #3
	ldr	x14, [x14, #16]
	lsl	x0, x13, #3
	ldr	x17, [x19, #16]
	sbfx	x2, x12, #3, #29
	ldr	x1, [x20, #360]
	add	x13, x16, x0
	add	x12, x15, x0
	add	x14, x14, x0
	add	x15, x17, x0
	sxtw	x17, w11
	add	x16, x1, x0
	add	w0, w9, #1
	sxtw	x0, w0
	lsl	x1, x2, #3
	b	.LBB16_300
.LBB16_299:
	add	w8, w8, #1
	add	x12, x12, x1
	add	x13, x13, x1
	add	x14, x14, x1
	add	x15, x15, x1
	add	x16, x16, x1
	cmp	w8, w10
	b.gt	.LBB16_294
.LBB16_300:
	cmp	w11, w9
	b.gt	.LBB16_299
	mov	x2, x17
	b	.LBB16_304
.LBB16_302:
	lsr	x19, x5, #56
	orr	x21, x4, #0x100000000000000
	cmp	x19, #240
	orr	x7, x7, #0xff00000000000000
	csel	x4, x21, x4, eq
.LBB16_303:
	bic	x6, x6, x7
	and	x5, x7, x5
	add	x2, x2, #1
	orr	x5, x6, x5
	cmp	x0, x2
	str	x4, [x12, x3]
	str	x5, [x16, x3]
	b.eq	.LBB16_299
.LBB16_304:
	lsl	x3, x2, #3
	ldr	x27, [x13, x3]
	ldr	x6, [x16, x3]
	ldr	x19, [x15, x3]
	ldr	x5, [x14, x3]
	ldr	x4, [x12, x3]
	tst	x27, #0xff
	b.eq	.LBB16_306
	mov	x7, xzr
	b	.LBB16_308
.LBB16_306:
	and	x4, x4, #0xffffffffffffff00
	and	x21, x19, #0xf0
	cmp	w21, #240
	b.ne	.LBB16_331
	and	x7, x5, #0xff
	cmp	x7, #240
	cset	w7, eq
	orr	x4, x4, x7
	mov	w7, #255
.LBB16_308:
	tst	x27, #0xff00
	b.eq	.LBB16_315
	tst	x27, #0xff0000
	b.eq	.LBB16_317
.LBB16_310:
	tst	x27, #0xff000000
	b.eq	.LBB16_319
.LBB16_311:
	tst	x27, #0xff00000000
	b.eq	.LBB16_321
.LBB16_312:
	tst	x27, #0xff0000000000
	b.eq	.LBB16_323
.LBB16_313:
	tst	x27, #0xff000000000000
	b.eq	.LBB16_325
.LBB16_314:
	lsr	x21, x27, #56
	cbnz	x21, .LBB16_303
	b	.LBB16_327
.LBB16_315:
	and	x4, x4, #0xffffffffffff00ff
	and	x21, x19, #0xf000
	cmp	w21, #15, lsl #12
	b.ne	.LBB16_333
	and	x21, x5, #0xff00
	orr	x23, x4, #0x100
	cmp	x21, #15, lsl #12
	orr	x7, x7, #0xff00
	csel	x4, x23, x4, eq
	tst	x27, #0xff0000
	b.ne	.LBB16_310
.LBB16_317:
	and	x4, x4, #0xffffffffff00ffff
	and	x21, x19, #0xf00000
	cmp	x21, #3840, lsl #12
	b.ne	.LBB16_337
	and	x21, x5, #0xff0000
	orr	x23, x4, #0x10000
	cmp	x21, #3840, lsl #12
	orr	x7, x7, #0xff0000
	csel	x4, x23, x4, eq
	tst	x27, #0xff000000
	b.ne	.LBB16_311
.LBB16_319:
	and	x4, x4, #0xffffffff00ffffff
	and	x21, x19, #0xf0000000
	cmp	w21, w25
	b.ne	.LBB16_341
	and	x21, x5, #0xff000000
	orr	x23, x4, #0x1000000
	cmp	x21, x25
	orr	x7, x7, #0xff000000
	csel	x4, x23, x4, eq
	tst	x27, #0xff00000000
	b.ne	.LBB16_312
.LBB16_321:
	and	x4, x4, #0xffffff00ffffffff
	and	x21, x19, #0xf000000000
	cmp	x21, x28
	b.ne	.LBB16_343
	and	x21, x5, #0xff00000000
	orr	x23, x4, #0x100000000
	cmp	x21, x28
	orr	x7, x7, #0xff00000000
	csel	x4, x23, x4, eq
	tst	x27, #0xff0000000000
	b.ne	.LBB16_313
.LBB16_323:
	and	x4, x4, #0xffff00ffffffffff
	and	x21, x19, #0xf00000000000
	cmp	x21, x24
	b.ne	.LBB16_345
	and	x21, x5, #0xff0000000000
	orr	x23, x4, #0x10000000000
	cmp	x21, x24
	orr	x7, x7, #0xff0000000000
	csel	x4, x23, x4, eq
	tst	x27, #0xff000000000000
	b.ne	.LBB16_314
.LBB16_325:
	and	x4, x4, #0xff00ffffffffffff
	and	x21, x19, #0xf0000000000000
	cmp	x21, x22
	b.ne	.LBB16_347
	and	x21, x5, #0xff000000000000
	orr	x23, x4, #0x1000000000000
	cmp	x21, x22
	orr	x7, x7, #0xff000000000000
	csel	x4, x23, x4, eq
	lsr	x21, x27, #56
	cbnz	x21, .LBB16_303
.LBB16_327:
	and	x4, x4, #0xffffffffffffff
	lsr	x21, x19, #60
	cmp	x21, #15
	b.hs	.LBB16_302
	and	x19, x19, #0xf000000000000000
	mov	x21, #-2305843009213693952
	cmp	x19, x21
	b.eq	.LBB16_363
	and	x6, x6, #0xffffffffffffff
	cbnz	x19, .LBB16_364
	orr	x4, x4, #0x100000000000000
	b	.LBB16_303
.LBB16_331:
	cbnz	w21, .LBB16_349
	mov	x7, xzr
	and	x6, x6, #0xffffffffffffff00
	orr	x4, x4, #0x1
	b	.LBB16_308
.LBB16_333:
	and	x6, x6, #0xffffffffffff00ff
	cbz	w21, .LBB16_336
	cmp	w21, #14, lsl #12
	b.ne	.LBB16_365
	orr	x6, x6, #0xf000
.LBB16_336:
	orr	x4, x4, #0x100
	tst	x27, #0xff0000
	b.ne	.LBB16_310
	b	.LBB16_317
.LBB16_337:
	and	x6, x6, #0xffffffffff00ffff
	cbz	x21, .LBB16_340
	cmp	x21, #3584, lsl #12
	b.ne	.LBB16_366
	orr	x6, x6, #0xf00000
.LBB16_340:
	orr	x4, x4, #0x10000
	tst	x27, #0xff000000
	b.ne	.LBB16_311
	b	.LBB16_319
.LBB16_341:
	cbnz	w21, .LBB16_351
	and	x6, x6, #0xffffffff00ffffff
	b	.LBB16_353
.LBB16_343:
	cbnz	x21, .LBB16_354
	and	x6, x6, #0xffffff00ffffffff
	b	.LBB16_356
.LBB16_345:
	cbnz	x21, .LBB16_357
	and	x6, x6, #0xffff00ffffffffff
	b	.LBB16_359
.LBB16_347:
	cbnz	x21, .LBB16_360
	and	x6, x6, #0xff00ffffffffffff
	b	.LBB16_362
.LBB16_349:
	cmp	w21, #224
	b.ne	.LBB16_367
	and	x6, x6, #0xffffffffffffff00
	mov	x7, xzr
	orr	x6, x6, #0xf0
	orr	x4, x4, #0x1
	b	.LBB16_308
.LBB16_351:
	and	x6, x6, #0xffffffff00ffffff
	mov	w23, #-536870912
	cmp	w21, w23
	b.ne	.LBB16_368
	orr	x6, x6, #0xf0000000
.LBB16_353:
	orr	x4, x4, #0x1000000
	tst	x27, #0xff00000000
	b.ne	.LBB16_312
	b	.LBB16_321
.LBB16_354:
	and	x6, x6, #0xffffff00ffffffff
	mov	x23, #962072674304
	cmp	x21, x23
	b.ne	.LBB16_369
	orr	x6, x6, #0xf000000000
.LBB16_356:
	orr	x4, x4, #0x100000000
	tst	x27, #0xff0000000000
	b.ne	.LBB16_313
	b	.LBB16_323
.LBB16_357:
	and	x6, x6, #0xffff00ffffffffff
	mov	x23, #246290604621824
	cmp	x21, x23
	b.ne	.LBB16_370
	orr	x6, x6, #0xf00000000000
.LBB16_359:
	orr	x4, x4, #0x10000000000
	tst	x27, #0xff000000000000
	b.ne	.LBB16_314
	b	.LBB16_325
.LBB16_360:
	and	x6, x6, #0xff00ffffffffffff
	mov	x23, #63050394783186944
	cmp	x21, x23
	b.ne	.LBB16_371
	orr	x6, x6, #0xf0000000000000
.LBB16_362:
	orr	x4, x4, #0x1000000000000
	lsr	x21, x27, #56
	cbnz	x21, .LBB16_303
	b	.LBB16_327
.LBB16_363:
	mov	x19, #-1152921504606846976
	orr	x4, x4, #0x100000000000000
	bfxil	x19, x6, #0, #56
	mov	x6, x19
	b	.LBB16_303
.LBB16_364:
	orr	x6, x6, x19
	b	.LBB16_303
.LBB16_365:
	orr	x6, x6, x21
	tst	x27, #0xff0000
	b.ne	.LBB16_310
	b	.LBB16_317
.LBB16_366:
	orr	x6, x6, x21
	tst	x27, #0xff000000
	b.ne	.LBB16_311
	b	.LBB16_319
.LBB16_367:
	and	x6, x6, #0xffffffffffffff00
	mov	x7, xzr
	orr	x6, x21, x6
	b	.LBB16_308
.LBB16_368:
	orr	x6, x6, x21
	tst	x27, #0xff00000000
	b.ne	.LBB16_312
	b	.LBB16_321
.LBB16_369:
	orr	x6, x6, x21
	tst	x27, #0xff0000000000
	b.ne	.LBB16_313
	b	.LBB16_323
.LBB16_370:
	orr	x6, x6, x21
	tst	x27, #0xff000000000000
	b.ne	.LBB16_314
	b	.LBB16_325
.LBB16_371:
	orr	x6, x6, x21
	lsr	x21, x27, #56
	cbnz	x21, .LBB16_303
	b	.LBB16_327
.LBB16_372:
	mov	x0, x20
	mov	w1, #1
	mov	w2, wzr
	str	w26, [x20, #276]
	bl	ebc_lut_update
	ldr	w9, [x20, #800]
	ldr	w8, [x20, #328]
	cmp	w9, #1
	strh	w8, [x20, #280]
	b.ge	.LBB16_374
.LBB16_373:
	mov	x0, x20
	bl	ebc_frame_start
	ldr	x0, [x20, #448]
	cbnz	x0, .LBB16_296
	b	.LBB16_297
.LBB16_374:
	ldr	x9, [sp, #40]
	adrp	x1, .L.str.76
	and	w2, w8, #0xff
	ubfx	w3, w8, #8, #8
	add	x1, x1, :lo12:.L.str.76
	ldr	x0, [x9]
	bl	_dev_info
	b	.LBB16_373
.LBB16_375:
	ldr	x9, [x20, #440]
	adrp	x1, .L.str.79
	ldr	x0, [x20, #320]
	and	w3, w8, #0xff
	add	x1, x1, :lo12:.L.str.79
	ldr	w2, [x9, #40]
	bl	_dev_info
	b	.LBB16_96
.LBB16_376:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_76
	b	.LBB16_93
.LBB16_377:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_94
.LBB16_378:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB16_20
.LBB16_379:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.74
	add	x1, x1, :lo12:.L.str.74
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_64
.LBB16_380:
.LBB16_381:
	ldr	x0, [x20, #368]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x20, #440]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #252]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x20, #784]
	mov	w3, #1
	str	wzr, [x20, #776]
	b	.LBB16_277
.LBB16_382:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.74
	add	x1, x1, :lo12:.L.str.74
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_71
.LBB16_383:
	mov	w8, #3
.LBB16_384:
	cbnz	x0, .LBB16_225
	mov	x0, x8
	bl	schedule_timeout
	mov	x19, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x20, #312]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB16_224
	cbnz	x8, .LBB16_384
	b	.LBB16_224
.LBB16_387:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_133
.LBB16_388:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.90
	add	x1, x1, :lo12:.L.str.90
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_216
.LBB16_389:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_143
.LBB16_390:
	ldr	x9, [sp, #40]
	adrp	x1, .L.str.81
	and	w2, w8, #0xff
	add	x1, x1, :lo12:.L.str.81
	ldr	x0, [x9]
	bl	_dev_info
	b	.LBB16_279
.LBB16_391:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	ldr	x0, [x8]
	bl	_dev_err
	b	.LBB16_7
.LBB16_392:
	ldr	x23, [x20, #368]
.LBB16_393:
	ldr	x8, [x20, #432]
	mov	x1, x23
	ldrsw	x2, [x20, #252]
	ldr	x0, [x8, #16]
	bl	memcpy
	ldr	w8, [x20, #800]
	mov	w9, #13
	ldur	x19, [x29, #-48]
	cmp	w8, #1
	mov	w8, #1
	strb	w9, [x20, #280]
	str	w8, [x20, #276]
	b.ge	.LBB16_414
.LBB16_394:
	mov	x0, x20
	bl	ebc_frame_start
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #72]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x20, #800]
	cmp	w8, #1
	b.ge	.LBB16_415
	ldr	w8, [x19]
	cbz	w8, .LBB16_403
.LBB16_396:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_397:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x19]
	cbz	w8, .LBB16_402
	cbnz	x0, .LBB16_403
	bl	schedule
	b	.LBB16_397
.LBB16_400:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_121
.LBB16_401:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_276
.LBB16_402:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_403:
	str	wzr, [x20, #784]
.LBB16_404:
	adrp	x8, jiffies
	mov	w9, #335544320
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #72]
	add	x1, x8, x9
.LBB16_405:
	bl	mod_timer
.LBB16_406:
	mov	w3, #1
.LBB16_407:
	ldr	w8, [x20, #668]
	cbz	w8, .LBB16_1
	ldr	x0, [x20, #432]
	bl	ebc_buf_release
	b	.LBB16_2
.LBB16_409:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.83
	add	x1, x1, :lo12:.L.str.83
	ldr	x0, [x8]
	bl	_dev_info
	ldr	w8, [x19, #40]
	mov	w3, #1
	b	.LBB16_135
.LBB16_410:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_251
	b	.LBB16_275
.LBB16_411:
	adrp	x1, .L.str.75
	ldr	x0, [x20, #320]
	add	x1, x1, :lo12:.L.str.75
	bl	_dev_info
	ldr	x9, [x20, #440]
	b	.LBB16_88
.LBB16_412:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_258
	b	.LBB16_275
.LBB16_413:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.92
	add	x1, x1, :lo12:.L.str.92
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_227
.LBB16_414:
	ldr	x8, [x20, #440]
	adrp	x1, .L.str.93
	ldr	x0, [x20, #320]
	add	x1, x1, :lo12:.L.str.93
	mov	w3, #13
	ldr	w2, [x8, #40]
	bl	_dev_info
	b	.LBB16_394
.LBB16_415:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	ldr	x0, [x8]
	bl	_dev_info
	ldr	w8, [x19]
	cbnz	w8, .LBB16_396
	b	.LBB16_403
.Lfunc_end16:
	.size	ebc_thread, .Lfunc_end16-ebc_thread

	.p2align	2
	.type	flip,@function
flip:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	stp	x24, x23, [sp, #48]
	ldr	w8, [x0, #172]
	ldp	w23, w24, [x0, #132]
	stp	x26, x25, [sp, #32]
	ldr	w25, [x0, #140]
	stp	x22, x21, [sp, #64]
	ldrsw	x22, [x0, #72]
	stp	x20, x19, [sp, #80]
	mov	x20, x1
	mov	x19, x0
	str	x27, [sp, #16]
	mov	x29, sp
	cbz	w8, .LBB17_2
	ldp	w11, w9, [x19, #76]
	mov	w12, #24
	ldr	w10, [x19, #168]
	madd	x26, x22, x12, x19
	sub	w9, w9, w10
	mul	w12, w11, w8
	add	w8, w10, w8
	mul	w10, w10, w11
	mul	w9, w9, w11
	lsr	w21, w12, #2
	mul	w8, w8, w11
	ldr	x11, [x26, #24]
	lsr	w27, w10, #2
	lsr	w2, w9, #2
	lsr	w8, w8, #2
	add	x0, x11, x8
	add	x1, x11, x27
	bl	memmove
	ldr	x8, [x26, #24]
	mov	w1, wzr
	mov	x2, x21
	add	x0, x8, x27
	bl	memset
.LBB17_2:
	mov	w8, #24
	ldr	x0, [x19]
	ldrsw	x2, [x20, #32]
	mov	w3, #1
	madd	x22, x22, x8, x19
	add	w8, w24, w23
	add	w21, w8, w25
	mov	w20, #1
	ldr	x1, [x22, #32]
	bl	dma_sync_single_for_device
	ldr	x0, [x19, #8]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x19, #8]
	mov	w2, wzr
	ldr	w1, [x22, #32]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x19, #8]
	mov	w1, w21
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x19, #8]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x19, #72]
	ldp	x22, x21, [sp, #64]
	sub	w8, w20, w8
	ldr	x27, [sp, #16]
	ldp	x24, x23, [sp, #48]
	str	w8, [x19, #72]
	ldp	x20, x19, [sp, #80]
	ldp	x26, x25, [sp, #32]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end17:
	.size	flip, .Lfunc_end17-flip

	.p2align	2
	.type	get_overlay_image2,@function
get_overlay_image2:
	sub	sp, sp, #128
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #64]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x24, x23, [sp, #80]
	mov	x23, x2
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #96]
	stp	x20, x19, [sp, #112]
	mov	x19, x5
	mov	x22, x4
	mov	x21, x3
	ldp	w25, w10, [x8, #116]
	mov	x24, x1
	cmp	w6, #3
	stp	x28, x27, [sp, #48]
	stur	x0, [x29, #-8]
	lsr	w20, w25, #3
	b.eq	.LBB18_3
	add	x8, x19, #60
	cmp	w6, #2
	str	x8, [sp, #8]
	b.ne	.LBB18_4
	cmp	w10, #0
	mov	w27, wzr
	cinc	w8, w10, lt
	asr	w10, w8, #1
	b	.LBB18_5
.LBB18_3:
	cmp	w10, #0
	cinc	w8, w10, lt
	asr	w27, w8, #1
	mul	w8, w27, w20
	mul	w9, w27, w25
	sbfiz	x8, x8, #3, #32
	add	x21, x21, x9
	add	x24, x24, x8
	add	x23, x23, x8
	add	x22, x22, x9
	add	x8, x19, #64
	str	x8, [sp, #8]
	b	.LBB18_5
.LBB18_4:
	mov	w27, wzr
.LBB18_5:
	lsr	w26, w25, #2
	subs	w8, w10, w27
	ldur	x9, [x29, #-8]
	mov	w1, wzr
	mul	w28, w27, w26
	stur	w10, [x29, #-12]
	mul	w8, w8, w26
	add	x0, x9, w28, sxtw
	sxtw	x2, w8
	bl	memset
	ldur	w11, [x29, #-12]
	mov	w2, wzr
	cmp	w11, w27
	b.le	.LBB18_59
	cmp	w20, #1
	mov	w2, wzr
	csinc	w9, w20, wzr, hi
	lsl	w8, w26, #1
	lsl	x9, x9, #3
	mov	w10, #56
	b	.LBB18_10
.LBB18_7:
	add	x12, x24, x11
	add	x13, x23, x11
	add	x24, x12, x17
	add	x12, x22, x11
	add	x11, x21, x11
	add	x23, x13, x17
	add	x22, x12, x17
	add	x21, x11, x17
.LBB18_8:
	ldur	w11, [x29, #-12]
.LBB18_9:
	add	w27, w27, #2
	add	w28, w28, w8
	cmp	w27, w11
	b.ge	.LBB18_59
.LBB18_10:
	cmp	w25, #8
	b.lo	.LBB18_9
	ldur	x12, [x29, #-8]
	mov	x11, xzr
	add	x12, x12, w28, sxtw
	mov	x13, x12
	b	.LBB18_15
.LBB18_12:
	str	x14, [x23, x11]
.LBB18_13:
	mov	w2, #1
	str	w16, [x13]
.LBB18_14:
	add	x13, x13, #4
	add	x11, x11, #8
	cmp	x9, x11
	b.eq	.LBB18_34
.LBB18_15:
	ldr	x15, [x24, x11]
	ldr	x14, [x23, x11]
	cmp	x15, x14
	b.eq	.LBB18_14
	eor	x0, x14, x15
	tst	x0, #0xff
	b.eq	.LBB18_18
	ldrb	w16, [x22, x11]
	lsl	w2, w14, #2
	ldrb	w1, [x21, x11]
	and	x2, x2, #0x3e0
	bfxil	x2, x15, #3, #5
	mov	x3, x14
	bfxil	x3, x15, #0, #8
	add	x17, x19, x16, lsl #3
	cmp	w16, #0
	cinc	x16, x10, ne
	add	w4, w1, #1
	ldr	x17, [x17, #120]
	ldrb	w16, [x19, x16]
	add	x17, x17, x1, lsl #10
	cmp	w16, w4, uxtb
	ldrb	w16, [x17, x2]
	cset	w17, eq
	csel	x14, x3, x14, eq
	csinc	w1, wzr, w1, eq
	strb	w1, [x21, x11]
	b	.LBB18_19
.LBB18_18:
	mov	w16, wzr
	mov	w17, wzr
.LBB18_19:
	add	x1, x21, x11
	tst	x0, #0xff00
	b.eq	.LBB18_21
	add	x2, x22, x11
	ldrb	w4, [x1, #1]
	lsr	x5, x14, #6
	lsr	x6, x15, #8
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #1]
	bfxil	x5, x15, #11, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #8, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w16, w16, w3, lsl #4
	csel	x14, x2, x14, eq
	strb	w4, [x1, #1]
.LBB18_21:
	tst	x0, #0xff0000
	b.eq	.LBB18_23
	add	x2, x22, x11
	ldrb	w4, [x1, #2]
	lsr	x5, x14, #14
	lsr	x6, x15, #16
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #2]
	bfxil	x5, x15, #19, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #16, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w16, w16, w3, lsl #8
	csel	x14, x2, x14, eq
	strb	w4, [x1, #2]
.LBB18_23:
	add	x1, x21, x11
	tst	x0, #0xff000000
	b.eq	.LBB18_25
	add	x2, x22, x11
	ldrb	w4, [x1, #3]
	lsr	x5, x14, #22
	lsr	x6, x15, #24
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #3]
	bfxil	x5, x15, #27, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #24, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w16, w16, w3, lsl #12
	csel	x14, x2, x14, eq
	strb	w4, [x1, #3]
.LBB18_25:
	tst	x0, #0xff00000000
	b.eq	.LBB18_27
	add	x2, x22, x11
	ldrb	w4, [x1, #4]
	lsr	x5, x14, #30
	lsr	x6, x15, #32
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #4]
	bfxil	x5, x15, #35, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #32, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w16, w16, w3, lsl #16
	csel	x14, x2, x14, eq
	strb	w4, [x1, #4]
.LBB18_27:
	add	x1, x21, x11
	tst	x0, #0xff0000000000
	b.eq	.LBB18_29
	add	x2, x22, x11
	ldrb	w4, [x1, #5]
	lsr	x5, x14, #38
	lsr	x6, x15, #40
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #5]
	bfxil	x5, x15, #43, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #40, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w16, w16, w3, lsl #20
	csel	x14, x2, x14, eq
	strb	w4, [x1, #5]
.LBB18_29:
	tst	x0, #0xff000000000000
	b.eq	.LBB18_31
	add	x2, x22, x11
	ldrb	w4, [x1, #6]
	lsr	x5, x14, #46
	lsr	x6, x15, #48
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #6]
	bfxil	x5, x15, #51, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #48, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w16, w16, w3, lsl #24
	csel	x14, x2, x14, eq
	strb	w4, [x1, #6]
.LBB18_31:
	lsr	x0, x0, #56
	cbnz	x0, .LBB18_33
	cbnz	w17, .LBB18_12
	b	.LBB18_13
.LBB18_33:
	add	x0, x22, x11
	add	x1, x21, x11
	lsr	x4, x14, #54
	and	x4, x4, #0x3e0
	ldrb	w0, [x0, #7]
	bfxil	x4, x15, #59, #5
	bfxil	x15, x14, #0, #56
	add	x2, x19, x0, lsl #3
	cmp	w0, #0
	ldrb	w0, [x1, #7]
	cinc	x3, x10, ne
	ldr	x2, [x2, #120]
	ldrb	w3, [x19, x3]
	add	x2, x2, x0, lsl #10
	ldrb	w2, [x2, x4]
	add	w4, w0, #1
	cmp	w3, w4, uxtb
	cset	w3, eq
	csinc	w0, wzr, w0, eq
	orr	w17, w3, w17
	csel	x14, x15, x14, eq
	orr	w16, w16, w2, lsl #28
	strb	w0, [x1, #7]
	tbnz	w17, #0, .LBB18_12
	b	.LBB18_13
.LBB18_34:
	add	x13, x24, x11
	add	x14, x23, x11
	add	x15, x22, x11
	add	x16, x21, x11
	cmp	w25, #8
	b.hs	.LBB18_36
	mov	x22, x15
	mov	x21, x16
	mov	x23, x14
	mov	x24, x13
	b	.LBB18_8
.LBB18_36:
	mov	x17, xzr
	b	.LBB18_40
.LBB18_37:
	str	x0, [x14, x17]
.LBB18_38:
	ldr	w0, [x12]
	orr	w0, w0, w2
	mov	w2, #1
	str	w0, [x12]
.LBB18_39:
	add	x12, x12, #4
	add	x17, x17, #8
	cmp	x9, x17
	b.eq	.LBB18_7
.LBB18_40:
	ldr	x1, [x13, x17]
	ldr	x0, [x14, x17]
	cmp	x1, x0
	b.eq	.LBB18_39
	eor	x4, x0, x1
	tst	x4, #0xff
	b.eq	.LBB18_43
	ldrb	w2, [x15, x17]
	lsl	w6, w0, #2
	ldrb	w5, [x16, x17]
	mov	x7, x0
	bfxil	x7, x1, #0, #8
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	ldr	x2, [x3, #120]
	and	x3, x6, #0x3e0
	cinc	x6, x10, ne
	bfxil	x3, x1, #3, #5
	add	x2, x2, x5, lsl #10
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x3]
	add	w3, w5, #1
	cmp	w6, w3, uxtb
	cset	w3, eq
	lsl	w2, w2, #2
	csel	x0, x7, x0, eq
	csinc	w5, wzr, w5, eq
	strb	w5, [x16, x17]
	b	.LBB18_44
.LBB18_43:
	mov	w3, wzr
	mov	w2, wzr
.LBB18_44:
	add	x5, x16, x17
	tst	x4, #0xff00
	b.eq	.LBB18_46
	add	x6, x15, x17
	ldrb	w20, [x5, #1]
	lsr	x26, x0, #6
	lsr	x30, x1, #8
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #1]
	bfxil	x26, x1, #11, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #8, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #6
	orr	w3, w26, w3
	strb	w20, [x5, #1]
.LBB18_46:
	tst	x4, #0xff0000
	b.eq	.LBB18_48
	add	x6, x15, x17
	ldrb	w20, [x5, #2]
	lsr	x26, x0, #14
	lsr	x30, x1, #16
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #2]
	bfxil	x26, x1, #19, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #16, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #10
	orr	w3, w26, w3
	strb	w20, [x5, #2]
.LBB18_48:
	add	x5, x16, x17
	tst	x4, #0xff000000
	b.eq	.LBB18_50
	add	x6, x15, x17
	ldrb	w20, [x5, #3]
	lsr	x26, x0, #22
	lsr	x30, x1, #24
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #3]
	bfxil	x26, x1, #27, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #24, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #14
	orr	w3, w26, w3
	strb	w20, [x5, #3]
.LBB18_50:
	tst	x4, #0xff00000000
	b.eq	.LBB18_52
	add	x6, x15, x17
	ldrb	w20, [x5, #4]
	lsr	x26, x0, #30
	lsr	x30, x1, #32
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #4]
	bfxil	x26, x1, #35, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #32, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #18
	orr	w3, w26, w3
	strb	w20, [x5, #4]
.LBB18_52:
	add	x5, x16, x17
	tst	x4, #0xff0000000000
	b.eq	.LBB18_54
	add	x6, x15, x17
	ldrb	w20, [x5, #5]
	lsr	x26, x0, #38
	lsr	x30, x1, #40
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #5]
	bfxil	x26, x1, #43, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #40, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #22
	orr	w3, w26, w3
	strb	w20, [x5, #5]
.LBB18_54:
	tst	x4, #0xff000000000000
	b.eq	.LBB18_56
	add	x6, x15, x17
	ldrb	w20, [x5, #6]
	lsr	x26, x0, #46
	lsr	x30, x1, #48
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #6]
	bfxil	x26, x1, #51, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #48, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #26
	orr	w3, w26, w3
	strb	w20, [x5, #6]
.LBB18_56:
	lsr	x4, x4, #56
	cbnz	x4, .LBB18_58
	cbnz	w3, .LBB18_37
	b	.LBB18_38
.LBB18_58:
	add	x4, x15, x17
	add	x5, x16, x17
	lsr	x20, x0, #54
	and	x20, x20, #0x3e0
	ldrb	w4, [x4, #7]
	bfxil	x20, x1, #59, #5
	bfxil	x1, x0, #0, #56
	add	x6, x19, x4, lsl #3
	cmp	w4, #0
	ldrb	w4, [x5, #7]
	cinc	x7, x10, ne
	ldr	x6, [x6, #120]
	ldrb	w7, [x19, x7]
	add	x6, x6, x4, lsl #10
	ldrb	w6, [x6, x20]
	add	w20, w4, #1
	cmp	w7, w20, uxtb
	cset	w7, eq
	csinc	w4, wzr, w4, eq
	orr	w3, w7, w3
	csel	x0, x1, x0, eq
	orr	w2, w2, w6, lsl #30
	strb	w4, [x5, #7]
	tbnz	w3, #0, .LBB18_37
	b	.LBB18_38
.LBB18_59:
	ldr	x8, [sp, #8]
	ldp	x20, x19, [sp, #112]
	ldp	x22, x21, [sp, #96]
	str	w2, [x8]
	ldp	x24, x23, [sp, #80]
	ldp	x26, x25, [sp, #64]
	ldp	x28, x27, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #128
	ret
.Lfunc_end18:
	.size	get_overlay_image2, .Lfunc_end18-get_overlay_image2

	.p2align	2
	.type	get_overlay_image,@function
get_overlay_image:
	sub	sp, sp, #112
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x28, x27, [sp, #32]
	stp	x24, x23, [sp, #64]
	mov	x23, x1
	stp	x22, x21, [sp, #80]
	mov	x21, x3
	ldr	x27, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #96]
	mov	x19, x5
	mov	x20, x4
	mov	x22, x2
	mov	x24, x0
	ldp	w11, w8, [x27, #116]
	cmp	w6, #3
	stp	x29, x30, [sp, #16]
	stp	x26, x25, [sp, #48]
	add	x29, sp, #16
	lsr	w12, w11, #3
	b.eq	.LBB19_3
	add	x9, x19, #60
	cmp	w6, #2
	str	x9, [sp, #8]
	b.ne	.LBB19_4
	cmp	w8, #0
	mov	w26, wzr
	cinc	w9, w8, lt
	asr	w28, w9, #1
	b	.LBB19_6
.LBB19_3:
	cmp	w8, #0
	cinc	w9, w8, lt
	asr	w26, w9, #1
	mul	w9, w26, w12
	mul	w10, w26, w11
	sbfiz	x9, x9, #3, #32
	add	x21, x21, x10
	add	x20, x20, x10
	add	x23, x23, x9
	add	x22, x22, x9
	add	x9, x19, #64
	str	x9, [sp, #8]
	b	.LBB19_5
.LBB19_4:
	mov	w26, wzr
.LBB19_5:
	mov	w28, w8
.LBB19_6:
	ldr	w9, [x27, #196]
	lsr	w25, w11, #2
	stp	w12, w11, [sp]
	cbz	w9, .LBB19_36
	sub	w8, w8, w28
	sub	w9, w28, w26
	mov	w1, wzr
	mul	w8, w8, w25
	mul	w9, w9, w25
	add	x0, x24, x8
	sxtw	x2, w9
	bl	memset
	ldr	w8, [x27, #120]
	mvn	w9, w26
	add	w8, w8, w9
	mul	w8, w8, w25
	neg	w25, w25
	add	x24, x24, x8
	cmp	w28, w26
	b.le	.LBB19_37
.LBB19_8:
	ldp	w9, w7, [sp]
	mov	w16, wzr
	sxtw	x8, w25
	mov	w11, #56
	cmp	w9, #1
	csinc	w10, w9, wzr, hi
	add	x9, x24, #1
	lsl	x10, x10, #3
	b	.LBB19_11
.LBB19_9:
	add	x20, x20, x12
	add	x23, x23, x12
	add	x22, x22, x12
	add	x21, x21, x12
.LBB19_10:
	add	w26, w26, #1
	add	x9, x9, x8
	cmp	w26, w28
	b.eq	.LBB19_38
.LBB19_11:
	cmp	w7, #8
	b.lo	.LBB19_10
	mov	x12, xzr
	mov	x13, x9
	b	.LBB19_16
.LBB19_13:
	str	x14, [x22, x12]
.LBB19_14:
	mov	w16, #1
	strb	w0, [x13]
.LBB19_15:
	add	x12, x12, #8
	add	x13, x13, #2
	cmp	x10, x12
	b.eq	.LBB19_9
.LBB19_16:
	ldr	x15, [x23, x12]
	ldr	x14, [x22, x12]
	cmp	x15, x14
	b.eq	.LBB19_15
	eor	x16, x14, x15
	tst	x16, #0xff
	b.eq	.LBB19_19
	ldrb	w17, [x20, x12]
	lsl	w2, w14, #2
	ldrb	w1, [x21, x12]
	and	x2, x2, #0x3e0
	bfxil	x2, x15, #3, #5
	mov	x3, x14
	bfxil	x3, x15, #0, #8
	add	x0, x19, x17, lsl #3
	cmp	w17, #0
	cinc	x17, x11, ne
	add	w4, w1, #1
	ldr	x0, [x0, #120]
	ldrb	w17, [x19, x17]
	add	x0, x0, x1, lsl #10
	cmp	w17, w4, uxtb
	ldrb	w0, [x0, x2]
	cset	w17, eq
	csel	x14, x3, x14, eq
	csinc	w1, wzr, w1, eq
	strb	w1, [x21, x12]
	b	.LBB19_20
.LBB19_19:
	mov	w0, wzr
	mov	w17, wzr
.LBB19_20:
	add	x1, x21, x12
	tst	x16, #0xff00
	b.eq	.LBB19_22
	add	x2, x20, x12
	ldrb	w4, [x1, #1]
	lsr	x5, x14, #6
	lsr	x6, x15, #8
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #1]
	bfxil	x5, x15, #11, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #8, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #2
	csel	x14, x2, x14, eq
	strb	w4, [x1, #1]
.LBB19_22:
	tst	x16, #0xff0000
	b.eq	.LBB19_24
	add	x2, x20, x12
	ldrb	w4, [x1, #2]
	lsr	x5, x14, #14
	lsr	x6, x15, #16
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #2]
	bfxil	x5, x15, #19, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #16, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #4
	csel	x14, x2, x14, eq
	strb	w4, [x1, #2]
.LBB19_24:
	add	x1, x21, x12
	tst	x16, #0xff000000
	b.eq	.LBB19_26
	add	x2, x20, x12
	ldrb	w4, [x1, #3]
	lsr	x5, x14, #22
	lsr	x6, x15, #24
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #3]
	bfxil	x5, x15, #27, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #24, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #6
	csel	x14, x2, x14, eq
	strb	w4, [x1, #3]
.LBB19_26:
	tst	x16, #0xff00000000
	sturb	w0, [x13, #-1]
	b.eq	.LBB19_28
	add	x0, x20, x12
	ldrb	w3, [x1, #4]
	lsr	x4, x14, #30
	lsr	x5, x15, #32
	and	x4, x4, #0x3e0
	ldrb	w0, [x0, #4]
	bfxil	x4, x15, #35, #5
	add	w6, w3, #1
	cmp	w0, #0
	add	x2, x19, x0, lsl #3
	cinc	x0, x11, ne
	ldr	x2, [x2, #120]
	ldrb	w0, [x19, x0]
	add	x2, x2, x3, lsl #10
	cmp	w0, w6, uxtb
	mov	x6, x14
	ldrb	w0, [x2, x4]
	cset	w2, eq
	bfi	x6, x5, #32, #8
	csinc	w3, wzr, w3, eq
	orr	w17, w2, w17
	csel	x14, x6, x14, eq
	strb	w3, [x1, #4]
	b	.LBB19_29
.LBB19_28:
	mov	w0, wzr
.LBB19_29:
	add	x1, x21, x12
	tst	x16, #0xff0000000000
	b.eq	.LBB19_31
	add	x2, x20, x12
	ldrb	w4, [x1, #5]
	lsr	x5, x14, #38
	lsr	x6, x15, #40
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #5]
	bfxil	x5, x15, #43, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #40, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #2
	csel	x14, x2, x14, eq
	strb	w4, [x1, #5]
.LBB19_31:
	tst	x16, #0xff000000000000
	b.eq	.LBB19_33
	add	x2, x20, x12
	ldrb	w4, [x1, #6]
	lsr	x5, x14, #46
	lsr	x6, x15, #48
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #6]
	bfxil	x5, x15, #51, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #48, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #4
	csel	x14, x2, x14, eq
	strb	w4, [x1, #6]
.LBB19_33:
	lsr	x16, x16, #56
	cbnz	x16, .LBB19_35
	cbnz	w17, .LBB19_13
	b	.LBB19_14
.LBB19_35:
	add	x16, x20, x12
	add	x1, x21, x12
	lsr	x4, x14, #54
	and	x4, x4, #0x3e0
	ldrb	w16, [x16, #7]
	bfxil	x4, x15, #59, #5
	bfxil	x15, x14, #0, #56
	add	x2, x19, x16, lsl #3
	cmp	w16, #0
	ldrb	w16, [x1, #7]
	cinc	x3, x11, ne
	ldr	x2, [x2, #120]
	ldrb	w3, [x19, x3]
	add	x2, x2, x16, lsl #10
	ldrb	w2, [x2, x4]
	add	w4, w16, #1
	cmp	w3, w4, uxtb
	cset	w3, eq
	csinc	w16, wzr, w16, eq
	orr	w17, w3, w17
	csel	x14, x15, x14, eq
	orr	w0, w0, w2, lsl #6
	strb	w16, [x1, #7]
	tbnz	w17, #0, .LBB19_13
	b	.LBB19_14
.LBB19_36:
	sub	w8, w28, w26
	mul	w9, w26, w25
	mov	w1, wzr
	mul	w8, w8, w25
	add	x24, x24, w9, sxtw
	sxtw	x2, w8
	mov	x0, x24
	bl	memset
	cmp	w28, w26
	b.gt	.LBB19_8
.LBB19_37:
	mov	w16, wzr
.LBB19_38:
	ldr	x8, [sp, #8]
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	str	w16, [x8]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldp	x28, x27, [sp, #32]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #112
	ret
.Lfunc_end19:
	.size	get_overlay_image, .Lfunc_end19-get_overlay_image

	.p2align	2
	.type	get_overlay_image_area2,@function
get_overlay_image_area2:
	sub	sp, sp, #160
	str	x30, [x18], #8
	ldr	x9, [x5, #232]
	stp	x29, x30, [sp, #64]
	ldp	w11, w10, [x5, #80]
	stp	x28, x27, [sp, #80]
	ldp	w12, w8, [x9, #48]
	ldp	w13, w14, [x9, #56]
	add	w15, w10, #7
	stp	x26, x25, [sp, #96]
	stp	x24, x23, [sp, #112]
	add	w9, w12, #7
	cmp	w12, #0
	csel	w12, w9, w12, lt
	add	w9, w13, #7
	cmp	w13, #0
	stp	x22, x21, [sp, #128]
	csel	w9, w9, w13, lt
	cmp	w10, #0
	asr	w13, w9, #3
	csel	w9, w15, w10, lt
	add	w10, w13, #1
	asr	w9, w9, #3
	sub	w15, w9, #1
	cmp	w10, w9
	csinc	w10, w15, w13, ge
	sub	w13, w11, #1
	cmp	w14, w11
	stp	x20, x19, [sp, #144]
	csel	w11, w14, w13, lt
	stp	x3, x0, [sp, #48]
	cmp	w8, w11
	b.le	.LBB20_2
.LBB20_1:
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB20_2:
	adrp	x13, global_ebc
	add	w15, w10, #1
	sxtw	x17, w15
	mov	w6, #1
	ldr	x14, [x13, :lo12:global_ebc]
	asr	w13, w12, #3
	sbfiz	x15, x13, #3, #32
	sxtw	x16, w13
	add	x0, x1, x15
	add	x15, x2, x15
	ldr	w12, [x14, #116]
	str	x14, [sp, #40]
	mul	w14, w8, w9
	sbfiz	x3, x13, #2, #32
	str	x15, [sp, #16]
	lsl	w15, w13, #3
	mul	w12, w12, w8
	stp	x0, x3, [sp, #24]
	str	w15, [sp, #12]
	ldr	x15, [sp, #56]
	lsr	w12, w12, #2
	add	x4, x15, x12
	sub	x12, x17, x16
	str	x12, [sp]
	b	.LBB20_4
.LBB20_3:
	add	w8, w8, #1
	add	w14, w14, w9
	cmp	w8, w11
	b.gt	.LBB20_1
.LBB20_4:
	tbnz	w8, #0, .LBB20_6
	ldr	x12, [sp, #40]
	ldr	x15, [sp, #56]
	ldr	w12, [x12, #116]
	mul	w12, w12, w8
	lsr	w12, w12, #2
	add	x4, x15, x12
.LBB20_6:
	cmp	w13, w10
	b.gt	.LBB20_3
	ldr	x15, [sp, #24]
	sbfiz	x12, x14, #3, #32
	ldr	w16, [x5, #84]
	mov	w21, #4
	mov	w22, #8
	mov	w23, #12
	add	x7, x15, x12
	ldr	x15, [sp, #16]
	mov	w25, #16
	mov	w26, #20
	mov	w27, #24
	mov	w28, #28
	add	x19, x15, x12
	and	w12, w8, #0x1
	lsl	w20, w12, #1
	mul	w16, w16, w8
	ldr	x15, [sp, #48]
	bfi	w21, w12, #1, #1
	bfi	w22, w12, #1, #1
	bfi	w23, w12, #1, #1
	bfi	w25, w12, #1, #1
	bfi	w26, w12, #1, #1
	bfi	w27, w12, #1, #1
	bfi	w28, w12, #1, #1
	ldr	x12, [sp, #32]
	add	x24, x15, w16, sxtw
	ldr	x30, [sp]
	ldr	w1, [sp, #12]
	add	x29, x4, x12
	b	.LBB20_10
.LBB20_8:
	ldr	w12, [x29]
	orr	w12, w12, w17
	str	w12, [x29]
.LBB20_9:
	add	x7, x7, #8
	add	x19, x19, #8
	add	x29, x29, #4
	add	w1, w1, #8
	subs	x30, x30, #1
	b.eq	.LBB20_3
.LBB20_10:
	ldr	x3, [x7]
	ldr	x16, [x19]
	cmp	x3, x16
	b.eq	.LBB20_9
	add	x0, x24, w1, sxtw
	str	w6, [x5, #60]
	eor	x12, x16, x3
	and	x15, x12, #0xff
	ldrb	w17, [x0]
	cmp	x15, #0
	ccmp	w17, #0, #0, ne
	b.eq	.LBB20_13
	mov	w17, wzr
	tst	x12, #0xff00
	b.ne	.LBB20_14
	b	.LBB20_16
.LBB20_13:
	lsl	w15, w16, #2
	ldr	x17, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #3, #5
	ldrb	w15, [x17, x15]
	strb	w6, [x0]
	lsl	w17, w15, w20
	tst	x12, #0xff00
	b.eq	.LBB20_16
.LBB20_14:
	ldrb	w15, [x0, #1]
	cbnz	w15, .LBB20_16
	lsr	x15, x16, #6
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #11, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #1]
	lsl	w15, w15, w21
	orr	w17, w15, w17
.LBB20_16:
	tst	x12, #0xff0000
	b.eq	.LBB20_19
	ldrb	w15, [x0, #2]
	cbnz	w15, .LBB20_19
	lsr	x15, x16, #14
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #19, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #2]
	lsl	w15, w15, w22
	orr	w17, w15, w17
.LBB20_19:
	tst	x12, #0xff000000
	b.eq	.LBB20_22
	ldrb	w15, [x0, #3]
	cbnz	w15, .LBB20_22
	lsr	x15, x16, #22
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #27, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #3]
	lsl	w15, w15, w23
	orr	w17, w15, w17
.LBB20_22:
	tst	x12, #0xff00000000
	b.eq	.LBB20_25
	ldrb	w15, [x0, #4]
	cbnz	w15, .LBB20_25
	lsr	x15, x16, #30
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #35, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #4]
	lsl	w15, w15, w25
	orr	w17, w15, w17
.LBB20_25:
	tst	x12, #0xff0000000000
	b.eq	.LBB20_28
	ldrb	w15, [x0, #5]
	cbnz	w15, .LBB20_28
	lsr	x15, x16, #38
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #43, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #5]
	lsl	w15, w15, w26
	orr	w17, w15, w17
.LBB20_28:
	tst	x12, #0xff000000000000
	b.eq	.LBB20_31
	ldrb	w15, [x0, #6]
	cbnz	w15, .LBB20_31
	lsr	x15, x16, #46
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #51, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #6]
	lsl	w15, w15, w27
	orr	w17, w15, w17
.LBB20_31:
	lsr	x12, x12, #56
	cbz	x12, .LBB20_8
	ldrb	w12, [x0, #7]
	cbnz	w12, .LBB20_8
	lsr	x12, x16, #54
	ldr	x15, [x5, #120]
	and	x12, x12, #0x3e0
	bfxil	x12, x3, #59, #5
	ldrb	w12, [x15, x12]
	strb	w6, [x0, #7]
	lsl	w12, w12, w28
	orr	w17, w12, w17
	b	.LBB20_8
.Lfunc_end20:
	.size	get_overlay_image_area2, .Lfunc_end20-get_overlay_image_area2

	.p2align	2
	.type	get_overlay_image_area,@function
get_overlay_image_area:
	sub	sp, sp, #144
	str	x30, [x18], #8
	ldr	x9, [x5, #232]
	stp	x29, x30, [sp, #48]
	ldp	w11, w10, [x5, #80]
	stp	x28, x27, [sp, #64]
	ldp	w12, w8, [x9, #48]
	ldp	w13, w14, [x9, #56]
	add	w15, w10, #7
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	add	w9, w12, #7
	cmp	w12, #0
	csel	w12, w9, w12, lt
	add	w9, w13, #7
	cmp	w13, #0
	stp	x22, x21, [sp, #112]
	csel	w9, w9, w13, lt
	cmp	w10, #0
	asr	w13, w9, #3
	csel	w9, w15, w10, lt
	add	w10, w13, #1
	asr	w9, w9, #3
	sub	w15, w9, #1
	cmp	w10, w9
	csinc	w10, w15, w13, ge
	sub	w13, w11, #1
	cmp	w14, w11
	stp	x20, x19, [sp, #128]
	csel	w11, w14, w13, lt
	stp	x3, x4, [sp, #32]
	cmp	w8, w11
	str	x0, [sp, #24]
	b.le	.LBB21_2
.LBB21_1:
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.LBB21_2:
	adrp	x14, global_ebc
	asr	w12, w12, #3
	lsl	w16, w12, #3
	add	w15, w10, #1
	mul	w13, w8, w9
	sxtw	x0, w12
	ldr	x14, [x14, :lo12:global_ebc]
	sxtw	x15, w15
	sbfiz	x3, x12, #3, #32
	str	w16, [sp, #20]
	lsl	w16, w12, #1
	add	x17, x1, x3
	add	x1, x2, x3
	ldr	w2, [x14, #196]
	sub	x6, x15, x0
	mov	w7, #1
	str	x17, [sp, #8]
	b	.LBB21_4
.LBB21_3:
	add	w8, w8, #1
	add	w13, w13, w9
	cmp	w8, w11
	b.gt	.LBB21_1
.LBB21_4:
	cbz	w2, .LBB21_6
	ldp	w0, w15, [x14, #116]
	mvn	w3, w8
	add	w15, w15, w3
	cmp	w12, w10
	b.gt	.LBB21_3
	b	.LBB21_7
.LBB21_6:
	ldr	w15, [x14, #116]
	mov	w0, w8
	cmp	w12, w10
	b.gt	.LBB21_3
.LBB21_7:
	ldr	x17, [sp, #8]
	sbfiz	x4, x13, #3, #32
	ldr	w3, [x5, #84]
	mul	w15, w15, w0
	mov	x19, x6
	add	x21, x1, x4
	add	x20, x17, x4
	ldr	x17, [sp, #24]
	mul	w0, w3, w8
	mov	w25, w16
	ldr	w26, [sp, #20]
	add	x22, x17, x15, lsr #2
	ldr	x17, [sp, #32]
	sxtw	x15, w0
	add	x23, x17, x15
	ldr	x17, [sp, #40]
	add	x24, x17, x15
	b	.LBB21_10
.LBB21_8:
	strb	w0, [x27, #1]
.LBB21_9:
	add	w26, w26, #8
	add	w25, w25, #2
	add	x20, x20, #8
	add	x21, x21, #8
	subs	x19, x19, #1
	b.eq	.LBB21_3
.LBB21_10:
	ldr	x28, [x20]
	ldr	x29, [x21]
	cmp	x28, x29
	b.eq	.LBB21_9
	add	x27, x22, w25, sxtw
	sxtw	x15, w26
	add	x30, x23, x15
	add	x15, x24, x15
	eor	x4, x29, x28
	ldrb	w3, [x27]
	tst	x4, #0xff
	str	w7, [x5, #60]
	b.eq	.LBB21_14
	ldrb	w0, [x30]
	cbnz	w0, .LBB21_14
	ldrb	w0, [x15]
	lsl	w17, w29, #2
	and	x17, x17, #0x3e0
	bfxil	x17, x28, #3, #5
	add	x0, x5, x0, lsl #3
	ldr	x0, [x0, #120]
	ldrb	w17, [x0, x17]
	strb	w7, [x30]
	orr	w3, w17, w3
.LBB21_14:
	tst	x4, #0xff00
	b.eq	.LBB21_17
	ldrb	w17, [x30, #1]
	cbnz	w17, .LBB21_17
	ldrb	w17, [x15, #1]
	lsr	x0, x29, #6
	and	x0, x0, #0x3e0
	bfxil	x0, x28, #11, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x0]
	strb	w7, [x30, #1]
	orr	w3, w3, w17, lsl #2
.LBB21_17:
	tst	x4, #0xff0000
	b.eq	.LBB21_20
	ldrb	w17, [x30, #2]
	cbnz	w17, .LBB21_20
	ldrb	w17, [x15, #2]
	lsr	x0, x29, #14
	and	x0, x0, #0x3e0
	bfxil	x0, x28, #19, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x0]
	strb	w7, [x30, #2]
	orr	w3, w3, w17, lsl #4
.LBB21_20:
	tst	x4, #0xff000000
	b.eq	.LBB21_23
	ldrb	w17, [x30, #3]
	cbnz	w17, .LBB21_23
	ldrb	w17, [x15, #3]
	lsr	x0, x29, #22
	and	x0, x0, #0x3e0
	bfxil	x0, x28, #27, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x0]
	strb	w7, [x30, #3]
	orr	w3, w3, w17, lsl #6
.LBB21_23:
	ldrb	w0, [x27, #1]
	tst	x4, #0xff00000000
	strb	w3, [x27]
	b.eq	.LBB21_26
	ldrb	w17, [x30, #4]
	cbnz	w17, .LBB21_26
	ldrb	w17, [x15, #4]
	lsr	x3, x29, #30
	and	x3, x3, #0x3e0
	bfxil	x3, x28, #35, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x3]
	strb	w7, [x30, #4]
	orr	w0, w17, w0
.LBB21_26:
	tst	x4, #0xff0000000000
	b.eq	.LBB21_29
	ldrb	w17, [x30, #5]
	cbnz	w17, .LBB21_29
	ldrb	w17, [x15, #5]
	lsr	x3, x29, #38
	and	x3, x3, #0x3e0
	bfxil	x3, x28, #43, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x3]
	strb	w7, [x30, #5]
	orr	w0, w0, w17, lsl #2
.LBB21_29:
	tst	x4, #0xff000000000000
	b.eq	.LBB21_32
	ldrb	w17, [x30, #6]
	cbnz	w17, .LBB21_32
	ldrb	w17, [x15, #6]
	lsr	x3, x29, #46
	and	x3, x3, #0x3e0
	bfxil	x3, x28, #51, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x3]
	strb	w7, [x30, #6]
	orr	w0, w0, w17, lsl #4
.LBB21_32:
	lsr	x17, x4, #56
	cbz	x17, .LBB21_8
	ldrb	w17, [x30, #7]
	cbnz	w17, .LBB21_8
	ldrb	w15, [x15, #7]
	lsr	x17, x29, #54
	and	x17, x17, #0x3e0
	bfxil	x17, x28, #59, #5
	add	x15, x5, x15, lsl #3
	ldr	x15, [x15, #120]
	ldrb	w15, [x15, x17]
	strb	w7, [x30, #7]
	orr	w0, w0, w15, lsl #6
	b	.LBB21_8
.Lfunc_end21:
	.size	get_overlay_image_area, .Lfunc_end21-get_overlay_image_area

	.p2align	2
	.type	get_auto_image2,@function
get_auto_image2:
	sub	sp, sp, #144
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	cmp	w5, #3
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #112]
	stp	x20, x19, [sp, #128]
	mov	x19, x4
	mov	x20, x3
	mov	x21, x2
	ldp	w23, w25, [x8, #116]
	mov	x22, x1
	stp	x28, x27, [sp, #64]
	stur	x0, [x29, #-8]
	str	x8, [sp, #24]
	lsr	w24, w23, #3
	b.eq	.LBB22_3
	add	x8, x19, #60
	cmp	w5, #2
	str	x8, [sp, #8]
	b.ne	.LBB22_4
	cmp	w25, #0
	mov	w27, wzr
	cinc	w8, w25, lt
	asr	w25, w8, #1
	b	.LBB22_5
.LBB22_3:
	cmp	w25, #0
	cinc	w8, w25, lt
	asr	w27, w8, #1
	mul	w8, w27, w24
	mul	w9, w27, w23
	sbfiz	x8, x8, #3, #32
	add	x22, x22, x8
	add	x21, x21, x8
	add	x20, x20, x9
	add	x8, x19, #64
	str	x8, [sp, #8]
	b	.LBB22_5
.LBB22_4:
	mov	w27, wzr
.LBB22_5:
	subs	w8, w25, w27
	mul	w9, w27, w23
	ldur	x10, [x29, #-8]
	mov	w1, wzr
	mul	w8, w8, w23
	lsr	w9, w9, #2
	add	x0, x10, x9
	lsr	w2, w8, #2
	bl	memset
	mov	w8, wzr
	cmp	w25, w27
	b.le	.LBB22_19
	cmp	w24, #1
	mov	w8, wzr
	csinc	w9, w24, wzr, hi
	stur	w23, [x29, #-12]
	lsl	x24, x9, #3
	str	x9, [sp, #16]
	b	.LBB22_9
.LBB22_7:
	add	x22, x22, x23
	add	x21, x21, x23
	add	x20, x20, x23
	ldur	w23, [x29, #-12]
.LBB22_8:
	add	w27, w27, #2
	cmp	w27, w25
	b.ge	.LBB22_19
.LBB22_9:
	cmp	w23, #8
	b.lo	.LBB22_8
	ldp	x26, x9, [sp, #16]
	ldr	w9, [x9, #116]
	mul	w28, w9, w27
	ldur	x9, [x29, #-8]
	add	x23, x9, x28, lsr #2
	b	.LBB22_12
.LBB22_11:
	add	x21, x21, #8
	add	x22, x22, #8
	add	x20, x20, #8
	add	x23, x23, #4
	subs	x26, x26, #1
	b.eq	.LBB22_14
.LBB22_12:
	ldr	x9, [x22]
	ldr	x10, [x21]
	cmp	x9, x10
	b.eq	.LBB22_11
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	mov	x3, x19
	mov	w4, wzr
	bl	get_one_auto_image2
	mov	w8, #1
	str	w0, [x23]
	b	.LBB22_11
.LBB22_14:
	ldur	w23, [x29, #-12]
	cmp	w23, #8
	b.lo	.LBB22_8
	ldur	x9, [x29, #-8]
	mov	x23, xzr
	add	x26, x9, x28, lsr #2
	b	.LBB22_17
.LBB22_16:
	add	x26, x26, #4
	add	x23, x23, #8
	cmp	x24, x23
	b.eq	.LBB22_7
.LBB22_17:
	add	x0, x22, x23
	add	x1, x21, x23
	ldr	x9, [x0]
	ldr	x10, [x1]
	cmp	x9, x10
	b.eq	.LBB22_16
	add	x2, x20, x23
	mov	x3, x19
	mov	w4, #2
	bl	get_one_auto_image2
	ldr	w8, [x26]
	orr	w9, w8, w0
	mov	w8, #1
	str	w9, [x26]
	b	.LBB22_16
.LBB22_19:
	ldr	x9, [sp, #8]
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	str	w8, [x9]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.Lfunc_end22:
	.size	get_auto_image2, .Lfunc_end22-get_auto_image2

	.p2align	2
	.type	get_auto_image,@function
get_auto_image:
	stp	x26, x25, [sp, #-64]!
	adrp	x8, global_ebc
	cmp	w5, #3
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #48]
	ldp	w9, w10, [x8, #116]
	lsr	w15, w9, #3
	b.eq	.LBB23_3
	add	x11, x4, #60
	cmp	w5, #2
	b.ne	.LBB23_6
	cmp	w10, #0
	mov	w12, wzr
	cinc	w10, w10, lt
	asr	w10, w10, #1
	cmp	w12, w10
	b.ge	.LBB23_4
	b	.LBB23_7
.LBB23_3:
	cmp	w10, #0
	cinc	w11, w10, lt
	asr	w12, w11, #1
	mul	w11, w12, w15
	mul	w13, w12, w9
	sbfiz	x11, x11, #3, #32
	add	x1, x1, x11
	add	x2, x2, x11
	add	x3, x3, x13
	add	x11, x4, #64
	cmp	w12, w10
	b.lt	.LBB23_7
.LBB23_4:
	mov	w19, wzr
.LBB23_5:
	str	w19, [x11]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x26, x25, [sp], #64
	ret
.LBB23_6:
	mov	w12, wzr
	cmp	w12, w10
	b.ge	.LBB23_4
.LBB23_7:
	cmp	w15, #1
	mov	w19, wzr
	ldrb	w13, [x4, #56]
	csinc	w15, w15, wzr, hi
	ldr	w14, [x8, #196]
	add	x16, x0, #1
	b	.LBB23_10
.LBB23_8:
	add	x3, x3, x17
	add	x1, x1, x17
	add	x2, x2, x17
.LBB23_9:
	add	w12, w12, #1
	cmp	w12, w10
	b.eq	.LBB23_5
.LBB23_10:
	cbz	w14, .LBB23_12
	ldp	w5, w17, [x8, #116]
	mvn	w0, w12
	add	w0, w17, w0
	cmp	w9, #8
	b.lo	.LBB23_9
	b	.LBB23_13
.LBB23_12:
	ldr	w0, [x8, #116]
	mov	w5, w12
	cmp	w9, #8
	b.lo	.LBB23_9
.LBB23_13:
	mul	w0, w0, w5
	mov	x17, xzr
	mov	w5, w15
	lsr	w0, w0, #2
	add	x0, x16, x0
	b	.LBB23_16
.LBB23_14:
	sturh	wzr, [x0, #-1]
.LBB23_15:
	add	x17, x17, #8
	add	x0, x0, #2
	subs	w5, w5, #1
	b.eq	.LBB23_8
.LBB23_16:
	ldr	x7, [x1, x17]
	ldr	x6, [x2, x17]
	cmp	x7, x6
	b.eq	.LBB23_14
	eor	x19, x6, x7
	tst	x19, #0xff
	b.eq	.LBB23_19
	ldrb	w21, [x3, x17]
	lsl	w22, w6, #2
	ldr	x20, [x4, #120]
	and	x22, x22, #0x3e0
	bfxil	x22, x7, #3, #5
	mov	x23, x6
	bfxil	x23, x7, #0, #8
	add	x20, x20, x21, lsl #10
	add	w24, w21, #1
	cmp	w13, w24, uxtb
	ldrb	w20, [x20, x22]
	csel	x6, x23, x6, eq
	csinc	w21, wzr, w21, eq
	strb	w21, [x3, x17]
	b	.LBB23_20
.LBB23_19:
	mov	w20, wzr
.LBB23_20:
	add	x21, x3, x17
	tst	x19, #0xff00
	b.eq	.LBB23_22
	ldrb	w22, [x21, #1]
	lsr	x23, x6, #6
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #11, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #8
	strb	w22, [x21, #1]
	bfi	x25, x24, #8, #8
	orr	w20, w20, w23, lsl #2
	csel	x6, x25, x6, eq
.LBB23_22:
	tst	x19, #0xff0000
	b.eq	.LBB23_24
	ldrb	w22, [x21, #2]
	lsr	x23, x6, #14
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #19, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #16
	strb	w22, [x21, #2]
	bfi	x25, x24, #16, #8
	orr	w20, w20, w23, lsl #4
	csel	x6, x25, x6, eq
.LBB23_24:
	add	x21, x3, x17
	tst	x19, #0xff000000
	b.eq	.LBB23_26
	ldrb	w22, [x21, #3]
	lsr	x23, x6, #22
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #27, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #24
	strb	w22, [x21, #3]
	bfi	x25, x24, #24, #8
	orr	w20, w20, w23, lsl #6
	csel	x6, x25, x6, eq
.LBB23_26:
	tst	x19, #0xff00000000
	sturb	w20, [x0, #-1]
	b.eq	.LBB23_28
	ldrb	w22, [x21, #4]
	lsr	x20, x6, #30
	ldr	x23, [x4, #120]
	and	x20, x20, #0x3e0
	bfxil	x20, x7, #35, #5
	lsr	x24, x7, #32
	mov	x25, x6
	add	w26, w22, #1
	add	x23, x23, x22, lsl #10
	cmp	w13, w26, uxtb
	bfi	x25, x24, #32, #8
	csinc	w22, wzr, w22, eq
	ldrb	w20, [x23, x20]
	csel	x6, x25, x6, eq
	strb	w22, [x21, #4]
	b	.LBB23_29
.LBB23_28:
	mov	w20, wzr
.LBB23_29:
	add	x21, x3, x17
	tst	x19, #0xff0000000000
	b.eq	.LBB23_31
	ldrb	w22, [x21, #5]
	lsr	x23, x6, #38
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #43, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #40
	strb	w22, [x21, #5]
	bfi	x25, x24, #40, #8
	orr	w20, w20, w23, lsl #2
	csel	x6, x25, x6, eq
.LBB23_31:
	tst	x19, #0xff000000000000
	b.eq	.LBB23_33
	ldrb	w22, [x21, #6]
	lsr	x23, x6, #46
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #51, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #48
	strb	w22, [x21, #6]
	bfi	x25, x24, #48, #8
	orr	w20, w20, w23, lsl #4
	csel	x6, x25, x6, eq
.LBB23_33:
	lsr	x19, x19, #56
	cbz	x19, .LBB23_35
	add	x19, x3, x17
	ldr	x22, [x4, #120]
	lsr	x23, x6, #54
	and	x23, x23, #0x3e0
	ldrb	w21, [x19, #7]
	bfxil	x23, x7, #59, #5
	bfxil	x7, x6, #0, #56
	add	x22, x22, x21, lsl #10
	ldrb	w22, [x22, x23]
	add	w23, w21, #1
	cmp	w13, w23, uxtb
	csinc	w21, wzr, w21, eq
	csel	x6, x7, x6, eq
	orr	w20, w20, w22, lsl #6
	strb	w21, [x19, #7]
.LBB23_35:
	mov	w19, #1
	str	x6, [x2, x17]
	strb	w20, [x0]
	b	.LBB23_15
.Lfunc_end23:
	.size	get_auto_image, .Lfunc_end23-get_auto_image

	.p2align	2
	.type	direct_mode_data_change_part2,@function
direct_mode_data_change_part2:
	sub	sp, sp, #112
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #64]
	stp	x22, x21, [sp, #80]
	cmp	w4, #3
	stp	x20, x19, [sp, #96]
	mov	x19, x2
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x20, x1
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	stp	x28, x27, [sp, #32]
	ldp	w22, w23, [x8, #116]
	stp	x26, x25, [sp, #48]
	str	x0, [sp, #8]
	lsr	w9, w22, #3
	str	w9, [sp, #4]
	b.eq	.LBB24_3
	cmp	w4, #2
	b.ne	.LBB24_4
	cmp	w23, #0
	mov	w24, wzr
	cinc	w8, w23, lt
	asr	w23, w8, #1
	b	.LBB24_5
.LBB24_3:
	cmp	w23, #0
	cinc	w8, w23, lt
	asr	w24, w8, #1
	mul	w8, w24, w9
	sbfiz	x8, x8, #3, #32
	add	x20, x20, x8
	add	x19, x19, x8
	b	.LBB24_5
.LBB24_4:
	mov	w24, wzr
.LBB24_5:
	lsr	w27, w22, #2
	subs	w8, w23, w24
	ldr	x9, [sp, #8]
	mov	w1, wzr
	mul	w25, w24, w27
	ldrb	w26, [x3, #56]
	mul	w8, w8, w27
	ldr	w21, [x3, #72]
	ldr	x28, [x3, #120]
	add	x0, x9, w25, sxtw
	sxtw	x2, w8
	bl	memset
	cmp	w23, w24
	b.le	.LBB24_25
	ldr	w9, [sp, #4]
	sub	w8, w26, w21
	lsl	w11, w8, #10
	lsl	w8, w27, #1
	mov	w12, #12
	mov	w13, #3
	cmp	w9, #1
	add	x11, x28, w11, sxtw
	csinc	w9, w9, wzr, hi
	lsl	x10, x9, #3
	b	.LBB24_9
.LBB24_7:
	add	x20, x20, x15
	add	x19, x19, x15
.LBB24_8:
	add	w24, w24, #2
	add	w25, w25, w8
	cmp	w24, w23
	b.ge	.LBB24_25
.LBB24_9:
	cmp	w22, #8
	b.lo	.LBB24_8
	ldr	x14, [sp, #8]
	mov	x15, x9
	add	x14, x14, w25, sxtw
	mov	x16, x14
	b	.LBB24_14
.LBB24_11:
	tst	x0, #0xff
	lsr	x7, x1, #22
	csel	w3, wzr, w13, eq
	tst	x0, #0xff00
	orr	w4, w3, #0x30
	and	x7, x7, #0x3e0
	csel	w3, w3, w4, eq
	tst	x0, #0xff0000
	orr	w4, w3, #0x300
	lsl	w2, w1, #2
	csel	w3, w3, w4, eq
	tst	x0, #0xff000000
	orr	w4, w3, #0x3000
	lsr	x5, x1, #6
	csel	w3, w3, w4, eq
	tst	x0, #0xff00000000
	orr	w4, w3, #0x30000
	bfxil	x7, x17, #27, #5
	csel	w3, w3, w4, eq
	tst	x0, #0xff0000000000
	orr	w4, w3, #0x300000
	and	x2, x2, #0x3e0
	and	x5, x5, #0x3e0
	lsr	x6, x1, #14
	csel	w3, w3, w4, eq
	bfxil	x2, x17, #3, #5
	bfxil	x5, x17, #11, #5
	and	x4, x6, #0x3e0
	orr	w6, w3, #0x3000000
	tst	x0, #0xff000000000000
	bfxil	x4, x17, #19, #5
	csel	w3, w3, w6, eq
	ldrb	w6, [x11, x7]
	lsr	x7, x1, #30
	and	x7, x7, #0x3e0
	lsr	x21, x1, #38
	ldrb	w2, [x11, x2]
	bfxil	x7, x17, #35, #5
	ldrb	w5, [x11, x5]
	and	x21, x21, #0x3e0
	lsr	x26, x1, #46
	ldrb	w4, [x11, x4]
	bfxil	x21, x17, #43, #5
	and	x26, x26, #0x3e0
	lsr	x1, x1, #54
	bfxil	x26, x17, #51, #5
	and	x1, x1, #0x3e0
	orr	w2, w2, w5, lsl #4
	bfxil	x1, x17, #59, #5
	ldrb	w17, [x11, x7]
	ldrb	w5, [x11, x21]
	orr	w2, w2, w4, lsl #8
	ldrb	w4, [x11, x26]
	orr	w2, w2, w6, lsl #12
	ldrb	w1, [x11, x1]
	lsr	x0, x0, #56
	orr	w17, w2, w17, lsl #16
	cmp	x0, #0
	orr	w17, w17, w5, lsl #20
	orr	w0, w3, #0x30000000
	orr	w17, w17, w4, lsl #24
	csel	w0, w3, w0, eq
	orr	w17, w17, w1, lsl #28
	and	w17, w17, w0
.LBB24_12:
	str	w17, [x16]
.LBB24_13:
	add	x16, x16, #4
	subs	x15, x15, #1
	b.eq	.LBB24_17
.LBB24_14:
	ldr	x17, [x20], #8
	ldr	x1, [x19], #8
	cmp	x17, x1
	b.eq	.LBB24_13
	eor	x0, x1, x17
	cbnz	x0, .LBB24_11
	mov	w17, wzr
	b	.LBB24_12
.LBB24_17:
	cmp	w22, #8
	b.lo	.LBB24_8
	mov	x15, xzr
	b	.LBB24_22
.LBB24_19:
	tst	x17, #0xff
	lsr	x2, x0, #6
	csel	w3, wzr, w12, eq
	tst	x17, #0xff00
	orr	w4, w3, #0xc0
	lsl	w1, w0, #2
	csel	w3, w3, w4, eq
	tst	x17, #0xff0000
	orr	w4, w3, #0xc00
	and	x2, x2, #0x3e0
	csel	w3, w3, w4, eq
	tst	x17, #0xff000000
	orr	w4, w3, #0xc000
	lsr	x5, x0, #14
	csel	w3, w3, w4, eq
	tst	x17, #0xff00000000
	orr	w4, w3, #0xc0000
	and	x1, x1, #0x3e0
	csel	w3, w3, w4, eq
	tst	x17, #0xff0000000000
	orr	w4, w3, #0xc00000
	bfxil	x2, x16, #11, #5
	csel	w3, w3, w4, eq
	tst	x17, #0xff000000000000
	orr	w4, w3, #0xc000000
	and	x5, x5, #0x3e0
	bfxil	x1, x16, #3, #5
	csel	w3, w3, w4, eq
	lsr	x4, x0, #22
	bfxil	x5, x16, #19, #5
	and	x4, x4, #0x3e0
	lsr	x6, x0, #30
	ldrb	w2, [x11, x2]
	bfxil	x4, x16, #27, #5
	and	x6, x6, #0x3e0
	lsr	x7, x0, #38
	ldrb	w1, [x11, x1]
	bfxil	x6, x16, #35, #5
	and	x7, x7, #0x3e0
	lsr	x21, x0, #46
	lsr	x0, x0, #54
	ldrb	w5, [x11, x5]
	bfxil	x7, x16, #43, #5
	and	x21, x21, #0x3e0
	and	x0, x0, #0x3e0
	bfxil	x21, x16, #51, #5
	bfxil	x0, x16, #59, #5
	ldrb	w16, [x11, x4]
	lsl	w2, w2, #6
	ldrb	w4, [x11, x6]
	orr	w1, w2, w1, lsl #2
	ldrb	w2, [x11, x7]
	orr	w1, w1, w5, lsl #10
	ldrb	w5, [x11, x21]
	orr	w16, w1, w16, lsl #14
	ldrb	w0, [x11, x0]
	orr	w16, w16, w4, lsl #18
	lsr	x17, x17, #56
	orr	w16, w16, w2, lsl #22
	cmp	x17, #0
	orr	w17, w3, #0xc0000000
	orr	w16, w16, w5, lsl #26
	csel	w17, w3, w17, eq
	orr	w16, w16, w0, lsl #30
	and	w16, w16, w17
.LBB24_20:
	ldr	w17, [x14]
	orr	w16, w17, w16
	str	w16, [x14]
.LBB24_21:
	add	x14, x14, #4
	add	x15, x15, #8
	cmp	x10, x15
	b.eq	.LBB24_7
.LBB24_22:
	ldr	x16, [x20, x15]
	ldr	x0, [x19, x15]
	cmp	x16, x0
	b.eq	.LBB24_21
	eor	x17, x0, x16
	cbnz	x17, .LBB24_19
	mov	w16, wzr
	b	.LBB24_20
.LBB24_25:
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldp	x28, x27, [sp, #32]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #112
	ret
.Lfunc_end24:
	.size	direct_mode_data_change_part2, .Lfunc_end24-direct_mode_data_change_part2

	.p2align	2
	.type	direct_mode_data_change_part,@function
direct_mode_data_change_part:
	sub	sp, sp, #112
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #48]
	stp	x22, x21, [sp, #80]
	mov	x21, x0
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	ldr	x26, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #96]
	mov	x19, x2
	mov	x20, x1
	cmp	w4, #3
	stp	x28, x27, [sp, #32]
	ldp	w22, w8, [x26, #116]
	stp	x24, x23, [sp, #64]
	lsr	w10, w22, #3
	stur	w10, [x29, #-4]
	b.eq	.LBB25_3
	cmp	w4, #2
	b.ne	.LBB25_4
	cmp	w8, #0
	mov	w23, wzr
	cinc	w9, w8, lt
	asr	w24, w9, #1
	b	.LBB25_6
.LBB25_3:
	cmp	w8, #0
	cinc	w9, w8, lt
	asr	w23, w9, #1
	mul	w9, w23, w10
	sbfiz	x9, x9, #3, #32
	add	x20, x20, x9
	add	x19, x19, x9
	b	.LBB25_5
.LBB25_4:
	mov	w23, wzr
.LBB25_5:
	mov	w24, w8
.LBB25_6:
	ldrb	w28, [x3, #56]
	lsr	w25, w22, #2
	ldr	w27, [x3, #72]
	ldr	w9, [x26, #196]
	ldr	x10, [x3, #120]
	str	x10, [sp]
	cbz	w9, .LBB25_8
	sub	w8, w8, w24
	sub	w9, w24, w23
	mov	w1, wzr
	mul	w8, w8, w25
	mul	w9, w9, w25
	add	x0, x21, x8
	sxtw	x2, w9
	bl	memset
	ldr	w8, [x26, #120]
	mvn	w9, w23
	add	w8, w8, w9
	mul	w8, w8, w25
	neg	w25, w25
	add	x21, x21, x8
	cmp	w24, w23
	b.gt	.LBB25_9
	b	.LBB25_19
.LBB25_8:
	sub	w8, w24, w23
	mul	w9, w23, w25
	mov	w1, wzr
	mul	w8, w8, w25
	add	x21, x21, w9, sxtw
	sxtw	x2, w8
	mov	x0, x21
	bl	memset
	cmp	w24, w23
	b.le	.LBB25_19
.LBB25_9:
	ldur	w10, [x29, #-4]
	sub	w8, w28, w27
	ldr	x11, [sp]
	lsl	w9, w8, #10
	sxtw	x8, w25
	cmp	w10, #1
	csinc	w10, w10, wzr, hi
	add	x9, x11, w9, sxtw
	lsl	x10, x10, #1
	mov	w11, #3
	b	.LBB25_11
.LBB25_10:
	add	w23, w23, #1
	add	x21, x21, x8
	cmp	w23, w24
	b.eq	.LBB25_19
.LBB25_11:
	cmp	w22, #8
	b.lo	.LBB25_10
	mov	x12, xzr
	b	.LBB25_16
.LBB25_13:
	tst	x14, #0xff
	lsr	x3, x15, #22
	csel	w17, wzr, w11, eq
	tst	x14, #0xff00
	orr	w0, w17, #0xc
	and	x3, x3, #0x3e0
	csel	w17, w17, w0, eq
	tst	x14, #0xff0000
	orr	w0, w17, #0x30
	lsl	w16, w15, #2
	csel	w17, w17, w0, eq
	tst	x14, #0xff000000
	orr	w0, w17, #0xc0
	lsr	x1, x15, #6
	csel	w17, w17, w0, eq
	tst	x14, #0xff00000000
	orr	w0, w17, #0x300
	bfxil	x3, x13, #27, #5
	csel	w17, w17, w0, eq
	tst	x14, #0xff0000000000
	orr	w0, w17, #0xc00
	and	x16, x16, #0x3e0
	and	x1, x1, #0x3e0
	lsr	x2, x15, #14
	csel	w17, w17, w0, eq
	bfxil	x16, x13, #3, #5
	bfxil	x1, x13, #11, #5
	and	x0, x2, #0x3e0
	orr	w2, w17, #0x3000
	tst	x14, #0xff000000000000
	bfxil	x0, x13, #19, #5
	csel	w17, w17, w2, eq
	ldrb	w2, [x9, x3]
	lsr	x3, x15, #30
	and	x3, x3, #0x3e0
	lsr	x4, x15, #38
	ldrb	w16, [x9, x16]
	bfxil	x3, x13, #35, #5
	ldrb	w1, [x9, x1]
	and	x4, x4, #0x3e0
	lsr	x5, x15, #46
	ldrb	w0, [x9, x0]
	bfxil	x4, x13, #43, #5
	and	x5, x5, #0x3e0
	lsr	x15, x15, #54
	bfxil	x5, x13, #51, #5
	and	x15, x15, #0x3e0
	orr	w16, w16, w1, lsl #2
	bfxil	x15, x13, #59, #5
	ldrb	w13, [x9, x3]
	ldrb	w1, [x9, x4]
	orr	w16, w16, w0, lsl #4
	ldrb	w0, [x9, x5]
	orr	w16, w16, w2, lsl #6
	ldrb	w15, [x9, x15]
	lsr	x14, x14, #56
	orr	w13, w16, w13, lsl #8
	cmp	x14, #0
	orr	w13, w13, w1, lsl #10
	orr	w14, w17, #0xffffc000
	orr	w13, w13, w0, lsl #12
	csel	w14, w17, w14, eq
	orr	w13, w13, w15, lsl #14
	and	w13, w13, w14
.LBB25_14:
	strh	w13, [x21, x12]
.LBB25_15:
	add	x12, x12, #2
	cmp	x10, x12
	b.eq	.LBB25_10
.LBB25_16:
	ldr	x13, [x20], #8
	ldr	x15, [x19], #8
	cmp	x13, x15
	b.eq	.LBB25_15
	eor	x14, x15, x13
	cbnz	x14, .LBB25_13
	mov	w13, wzr
	b	.LBB25_14
.LBB25_19:
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldp	x28, x27, [sp, #32]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #112
	ret
.Lfunc_end25:
	.size	direct_mode_data_change_part, .Lfunc_end25-direct_mode_data_change_part

	.p2align	2
	.type	direct_mode_data_change_full2,@function
direct_mode_data_change_full2:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	adrp	x8, global_ebc
	ldr	x14, [x3, #160]
	stp	x28, x27, [sp, #16]
	stp	x26, x25, [sp, #32]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #48]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	ldp	w8, w10, [x8, #116]
	cmp	w10, #0
	lsr	w12, w8, #3
	cinc	w9, w10, lt
	cmp	w10, #0
	asr	w9, w9, #1
	cinc	w11, w10, lt
	cmp	w4, #2
	asr	w11, w11, #1
	mul	w13, w9, w12
	csel	w15, wzr, wzr, ne
	csel	w16, w10, w11, ne
	cmp	w4, #3
	sbfiz	x11, x13, #3, #32
	csel	w9, w9, w15, eq
	add	x13, x1, x11
	add	x15, x2, x11
	add	x17, x14, x11
	csel	x11, x15, x2, eq
	csel	x13, x13, x1, eq
	csel	w10, w10, w16, eq
	csel	x17, x17, x14, eq
	cmp	w9, w10
	b.ge	.LBB26_39
	lsr	w14, w8, #2
	cmp	w12, #1
	csinc	w15, w12, wzr, hi
	adrp	x16, .LJTI26_1
	mul	w12, w9, w14
	adrp	x1, .LJTI26_0
	lsl	w14, w14, #1
	lsl	x15, x15, #3
	add	x16, x16, :lo12:.LJTI26_1
	add	x1, x1, :lo12:.LJTI26_0
	b	.LBB26_4
.LBB26_2:
	add	x17, x17, x2
	add	x13, x13, x2
	add	x11, x11, x2
	add	x17, x17, x19
	add	x13, x13, x19
	add	x11, x11, x19
.LBB26_3:
	add	w9, w9, #2
	add	w12, w12, w14
	cmp	w9, w10
	b.ge	.LBB26_39
.LBB26_4:
	cmp	w8, #8
	b.lo	.LBB26_3
	add	x4, x0, w12, sxtw
	mov	x2, xzr
	mov	x5, x4
	b	.LBB26_8
.LBB26_6:
	ldr	x20, [x3, #120]
	lsl	w21, w7, #2
	lsr	x22, x7, #6
	and	x21, x21, #0x3e0
	and	x22, x22, #0x3e0
	bfxil	x21, x6, #3, #5
	add	x19, x20, x19, lsl #10
	lsr	x20, x7, #14
	bfxil	x22, x6, #11, #5
	and	x20, x20, #0x3e0
	lsr	x23, x7, #22
	bfxil	x20, x6, #19, #5
	and	x23, x23, #0x3e0
	lsr	x24, x7, #30
	bfxil	x23, x6, #27, #5
	and	x24, x24, #0x3e0
	lsr	x25, x7, #38
	ldrb	w21, [x19, x21]
	ldrb	w22, [x19, x22]
	bfxil	x24, x6, #35, #5
	and	x25, x25, #0x3e0
	lsr	x26, x7, #46
	ldrb	w20, [x19, x20]
	bfxil	x25, x6, #43, #5
	and	x26, x26, #0x3e0
	lsr	x7, x7, #54
	ldrb	w23, [x19, x23]
	bfxil	x26, x6, #51, #5
	and	x7, x7, #0x3e0
	orr	w21, w21, w22, lsl #4
	bfxil	x7, x6, #59, #5
	ldrb	w6, [x19, x24]
	ldrb	w22, [x19, x25]
	orr	w20, w21, w20, lsl #8
	ldrb	w21, [x19, x26]
	orr	w20, w20, w23, lsl #12
	ldrb	w7, [x19, x7]
	orr	w6, w20, w6, lsl #16
	orr	w6, w6, w22, lsl #20
	orr	w6, w6, w21, lsl #24
	orr	w6, w6, w7, lsl #28
.LBB26_7:
	add	x2, x2, #8
	cmp	x15, x2
	str	w6, [x5], #4
	b.eq	.LBB26_21
.LBB26_8:
	ldp	w19, w20, [x3, #80]
	ldr	w25, [x3, #628]
	ldr	x6, [x13, x2]
	ldr	x7, [x11, x2]
	cmp	w19, #0
	sub	w25, w25, #1
	cinc	w21, w19, lt
	cmp	w20, #0
	cinc	w22, w20, lt
	neg	w23, w22, asr #1
	sub	w22, w9, w21, asr #1
	cmp	w22, #0
	add	x24, x2, x23
	cneg	w23, w22, mi
	cmp	w24, #0
	cneg	w21, w24, mi
	cmp	w25, #3
	b.hi	.LBB26_11
	adr	x26, .LBB26_10
	ldrb	w27, [x1, x25]
	add	x26, x26, x27, lsl #2
	br	x26
.LBB26_10:
	ldr	w19, [x3, #636]
	mul	w20, w22, w22
	madd	w20, w24, w24, w20
	mul	w19, w19, w19
	cmp	w20, w19
	b.le	.LBB26_17
	b	.LBB26_19
.LBB26_11:
	ldr	w19, [x3, #636]
	cmp	w19, w2
	b.gt	.LBB26_17
	b	.LBB26_19
.LBB26_12:
	ldr	w22, [x3, #636]
	mul	w19, w22, w19
	sdiv	w19, w19, w20
	add	w20, w21, w23
	cmp	w20, w19
	ccmp	w20, w22, #0, le
	b.le	.LBB26_17
	b	.LBB26_19
.LBB26_13:
	ldr	w22, [x3, #636]
	mul	w19, w22, w19
	sdiv	w19, w19, w20
	cmp	w23, w19
	b.gt	.LBB26_19
	cmp	w21, w22
	b.le	.LBB26_17
	b	.LBB26_19
.LBB26_15:
	ldr	w19, [x3, #636]
	cmp	w23, w19
	b.le	.LBB26_17
	cmp	w21, w19
	b.gt	.LBB26_19
.LBB26_17:
	ldr	w19, [x17, x2]
	mvn	w19, w19
	tst	x19, #0xff
	b.ne	.LBB26_19
	str	xzr, [x17, x2]
.LBB26_19:
	ldrb	w19, [x17, x2]
	ldrb	w20, [x3, #56]
	cmp	w19, w20
	b.lo	.LBB26_6
	mov	w6, wzr
	b	.LBB26_7
.LBB26_21:
	add	x5, x17, x2
	add	x6, x13, x2
	add	x7, x11, x2
	cmp	w8, #8
	b.hs	.LBB26_23
	mov	x11, x7
	mov	x13, x6
	mov	x17, x5
	b	.LBB26_3
.LBB26_23:
	mov	x19, xzr
	b	.LBB26_26
.LBB26_24:
	ldr	x23, [x3, #120]
	lsr	x25, x21, #6
	lsl	w24, w21, #2
	and	x25, x25, #0x3e0
	lsr	x26, x21, #14
	and	x24, x24, #0x3e0
	bfxil	x25, x20, #11, #5
	bfxil	x24, x20, #3, #5
	add	x22, x23, x22, lsl #10
	and	x23, x26, #0x3e0
	lsr	x26, x21, #22
	bfxil	x23, x20, #19, #5
	and	x26, x26, #0x3e0
	lsr	x27, x21, #30
	ldrb	w25, [x22, x25]
	bfxil	x26, x20, #27, #5
	and	x27, x27, #0x3e0
	lsr	x28, x21, #38
	ldrb	w24, [x22, x24]
	bfxil	x27, x20, #35, #5
	and	x28, x28, #0x3e0
	lsr	x29, x21, #46
	lsr	x21, x21, #54
	ldrb	w23, [x22, x23]
	bfxil	x28, x20, #43, #5
	and	x29, x29, #0x3e0
	and	x21, x21, #0x3e0
	bfxil	x29, x20, #51, #5
	bfxil	x21, x20, #59, #5
	ldrb	w20, [x22, x26]
	lsl	w25, w25, #6
	ldrb	w26, [x22, x27]
	orr	w24, w25, w24, lsl #2
	ldrb	w25, [x22, x28]
	orr	w23, w24, w23, lsl #10
	ldrb	w24, [x22, x29]
	orr	w20, w23, w20, lsl #14
	ldrb	w21, [x22, x21]
	orr	w20, w20, w26, lsl #18
	ldr	w22, [x4]
	orr	w20, w20, w25, lsl #22
	orr	w20, w20, w24, lsl #26
	orr	w20, w20, w22
	orr	w20, w20, w21, lsl #30
	str	w20, [x4]
.LBB26_25:
	add	x19, x19, #8
	add	x4, x4, #4
	cmp	x15, x19
	b.eq	.LBB26_2
.LBB26_26:
	ldp	w22, w23, [x3, #80]
	ldr	w28, [x3, #628]
	ldr	x20, [x6, x19]
	ldr	x21, [x7, x19]
	cmp	w22, #0
	sub	w28, w28, #1
	cinc	w24, w22, lt
	cmp	w23, #0
	cinc	w25, w23, lt
	neg	w26, w25, asr #1
	sub	w25, w9, w24, asr #1
	cmp	w25, #0
	add	x27, x19, x26
	cneg	w26, w25, mi
	cmp	w27, #0
	cneg	w24, w27, mi
	cmp	w28, #3
	b.hi	.LBB26_29
	adr	x29, .LBB26_28
	ldrb	w30, [x16, x28]
	add	x29, x29, x30, lsl #2
	br	x29
.LBB26_28:
	ldr	w22, [x3, #636]
	mul	w23, w25, w25
	madd	w23, w27, w27, w23
	mul	w22, w22, w22
	cmp	w23, w22
	b.le	.LBB26_35
	b	.LBB26_37
.LBB26_29:
	ldr	w22, [x3, #636]
	cmp	w22, w19
	b.gt	.LBB26_35
	b	.LBB26_37
.LBB26_30:
	ldr	w25, [x3, #636]
	mul	w22, w25, w22
	sdiv	w22, w22, w23
	add	w23, w24, w26
	cmp	w23, w22
	ccmp	w23, w25, #0, le
	b.le	.LBB26_35
	b	.LBB26_37
.LBB26_31:
	ldr	w25, [x3, #636]
	mul	w22, w25, w22
	sdiv	w22, w22, w23
	cmp	w26, w22
	b.gt	.LBB26_37
	cmp	w24, w25
	b.le	.LBB26_35
	b	.LBB26_37
.LBB26_33:
	ldr	w22, [x3, #636]
	cmp	w26, w22
	b.le	.LBB26_35
	cmp	w24, w22
	b.gt	.LBB26_37
.LBB26_35:
	ldr	w22, [x5, x19]
	mvn	w22, w22
	tst	x22, #0xff
	b.ne	.LBB26_37
	str	xzr, [x5, x19]
.LBB26_37:
	ldrb	w22, [x5, x19]
	ldrb	w23, [x3, #56]
	cmp	w22, w23
	b.lo	.LBB26_24
	str	wzr, [x4]
	b	.LBB26_25
.LBB26_39:
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end26:
	.size	direct_mode_data_change_full2, .Lfunc_end26-direct_mode_data_change_full2
	.section	.rodata,"a",@progbits
.LJTI26_0:
	.byte	(.LBB26_10-.LBB26_10)>>2
	.byte	(.LBB26_12-.LBB26_10)>>2
	.byte	(.LBB26_13-.LBB26_10)>>2
	.byte	(.LBB26_15-.LBB26_10)>>2
.LJTI26_1:
	.byte	(.LBB26_28-.LBB26_28)>>2
	.byte	(.LBB26_30-.LBB26_28)>>2
	.byte	(.LBB26_31-.LBB26_28)>>2
	.byte	(.LBB26_33-.LBB26_28)>>2

	.text
	.p2align	2
	.type	direct_mode_data_change_full,@function
direct_mode_data_change_full:
	stp	x24, x23, [sp, #-48]!
	adrp	x8, global_ebc
	ldr	x13, [x3, #160]
	stp	x22, x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	ldr	x9, [x8, :lo12:global_ebc]
	ldp	w8, w12, [x9, #116]
	ldr	w14, [x9, #196]
	cmp	w12, #0
	lsr	w15, w8, #3
	cinc	w9, w12, lt
	cmp	w12, #0
	asr	w9, w9, #1
	cinc	w10, w12, lt
	cmp	w4, #2
	asr	w10, w10, #1
	csel	w11, wzr, wzr, ne
	mul	w16, w9, w15
	csel	w17, w12, w10, ne
	cmp	w4, #3
	csel	w9, w9, w11, eq
	lsr	w4, w8, #2
	sbfiz	x10, x16, #3, #32
	mvn	w11, w9
	add	x16, x1, x10
	add	w7, w12, w11
	csel	x11, x16, x1, eq
	mul	w16, w9, w4
	add	x5, x2, x10
	add	x6, x13, x10
	csel	w12, w12, w17, eq
	mul	w17, w7, w4
	csel	x10, x5, x2, eq
	csel	x13, x6, x13, eq
	sxtw	x16, w16
	cmp	w14, #0
	csel	x16, x16, x17, eq
	cneg	w14, w4, ne
	cmp	w9, w12
	b.ge	.LBB27_21
	cmp	w15, #1
	sxtw	x14, w14
	csinc	w17, w15, wzr, hi
	add	x15, x0, x16
	lsl	x16, x17, #3
	adrp	x17, .LJTI27_0
	add	x17, x17, :lo12:.LJTI27_0
	b	.LBB27_4
.LBB27_2:
	add	x13, x13, x0
	add	x11, x11, x0
	add	x10, x10, x0
.LBB27_3:
	add	w9, w9, #1
	add	x15, x15, x14
	cmp	w9, w12
	b.eq	.LBB27_21
.LBB27_4:
	cmp	w8, #8
	b.lo	.LBB27_3
	mov	x0, xzr
	mov	x1, x15
	b	.LBB27_8
.LBB27_6:
	ldr	x6, [x3, #120]
	lsl	w7, w4, #2
	lsr	x19, x4, #6
	and	x7, x7, #0x3e0
	and	x19, x19, #0x3e0
	bfxil	x7, x2, #3, #5
	add	x5, x6, x5, lsl #10
	lsr	x6, x4, #14
	bfxil	x19, x2, #11, #5
	and	x6, x6, #0x3e0
	lsr	x20, x4, #22
	bfxil	x6, x2, #19, #5
	and	x20, x20, #0x3e0
	lsr	x21, x4, #30
	bfxil	x20, x2, #27, #5
	and	x21, x21, #0x3e0
	lsr	x22, x4, #38
	ldrb	w7, [x5, x7]
	ldrb	w19, [x5, x19]
	bfxil	x21, x2, #35, #5
	and	x22, x22, #0x3e0
	lsr	x23, x4, #46
	ldrb	w6, [x5, x6]
	bfxil	x22, x2, #43, #5
	and	x23, x23, #0x3e0
	lsr	x4, x4, #54
	ldrb	w20, [x5, x20]
	bfxil	x23, x2, #51, #5
	and	x4, x4, #0x3e0
	orr	w7, w7, w19, lsl #2
	bfxil	x4, x2, #59, #5
	ldrb	w2, [x5, x21]
	ldrb	w19, [x5, x22]
	orr	w6, w7, w6, lsl #4
	ldrb	w7, [x5, x23]
	orr	w6, w6, w20, lsl #6
	ldrb	w4, [x5, x4]
	orr	w2, w6, w2, lsl #8
	orr	w2, w2, w19, lsl #10
	orr	w2, w2, w7, lsl #12
	orr	w2, w2, w4, lsl #14
	strh	w2, [x1]
	ldr	x2, [x13, x0]
	add	x2, x2, #1
	str	x2, [x13, x0]
.LBB27_7:
	add	x0, x0, #8
	add	x1, x1, #2
	cmp	x16, x0
	b.eq	.LBB27_2
.LBB27_8:
	ldp	w5, w6, [x3, #80]
	ldr	w22, [x3, #628]
	ldr	x2, [x11, x0]
	ldr	x4, [x10, x0]
	cmp	w5, #0
	sub	w22, w22, #1
	cinc	w7, w5, lt
	cmp	w6, #0
	cinc	w19, w6, lt
	neg	w20, w19, asr #1
	sub	w19, w9, w7, asr #1
	cmp	w19, #0
	add	x21, x0, x20
	cneg	w20, w19, mi
	cmp	w21, #0
	cneg	w7, w21, mi
	cmp	w22, #3
	b.hi	.LBB27_11
	adr	x23, .LBB27_10
	ldrb	w24, [x17, x22]
	add	x23, x23, x24, lsl #2
	br	x23
.LBB27_10:
	ldr	w5, [x3, #636]
	mul	w6, w19, w19
	madd	w6, w21, w21, w6
	mul	w5, w5, w5
	cmp	w6, w5
	b.le	.LBB27_17
	b	.LBB27_19
.LBB27_11:
	ldr	w5, [x3, #636]
	cmp	w5, w0
	b.gt	.LBB27_17
	b	.LBB27_19
.LBB27_12:
	ldr	w19, [x3, #636]
	mul	w5, w19, w5
	sdiv	w5, w5, w6
	add	w6, w7, w20
	cmp	w6, w5
	ccmp	w6, w19, #0, le
	b.le	.LBB27_17
	b	.LBB27_19
.LBB27_13:
	ldr	w19, [x3, #636]
	mul	w5, w19, w5
	sdiv	w5, w5, w6
	cmp	w20, w5
	b.gt	.LBB27_19
	cmp	w7, w19
	b.le	.LBB27_17
	b	.LBB27_19
.LBB27_15:
	ldr	w5, [x3, #636]
	cmp	w20, w5
	b.le	.LBB27_17
	cmp	w7, w5
	b.gt	.LBB27_19
.LBB27_17:
	ldr	w5, [x13, x0]
	mvn	w5, w5
	tst	x5, #0xff
	b.ne	.LBB27_19
	str	xzr, [x13, x0]
.LBB27_19:
	ldrb	w5, [x13, x0]
	ldrb	w6, [x3, #56]
	cmp	w5, w6
	b.lo	.LBB27_6
	strh	wzr, [x1]
	b	.LBB27_7
.LBB27_21:
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldp	x24, x23, [sp], #48
	ret
.Lfunc_end27:
	.size	direct_mode_data_change_full, .Lfunc_end27-direct_mode_data_change_full
	.section	.rodata,"a",@progbits
.LJTI27_0:
	.byte	(.LBB27_10-.LBB27_10)>>2
	.byte	(.LBB27_12-.LBB27_10)>>2
	.byte	(.LBB27_13-.LBB27_10)>>2
	.byte	(.LBB27_15-.LBB27_10)>>2

	.text
	.p2align	2
	.type	direct_mode_data_change2,@function
direct_mode_data_change2:
	str	x23, [sp, #-48]!
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	ldr	x8, [x8, :lo12:global_ebc]
	ldp	w8, w11, [x8, #116]
	cmp	w11, #0
	lsr	w13, w8, #3
	cinc	w9, w11, lt
	cmp	w11, #0
	asr	w9, w9, #1
	cinc	w10, w11, lt
	cmp	w4, #2
	asr	w10, w10, #1
	mul	w12, w9, w13
	csel	w14, wzr, wzr, ne
	csel	w15, w11, w10, ne
	cmp	w4, #3
	sbfiz	x10, x12, #3, #32
	csel	w9, w9, w14, eq
	add	x12, x2, x10
	add	x14, x1, x10
	csel	x10, x12, x2, eq
	csel	w11, w11, w15, eq
	csel	x12, x14, x1, eq
	cmp	w9, w11
	b.ge	.LBB28_10
	ldrb	w14, [x3, #56]
	lsr	w17, w8, #2
	ldr	w15, [x3, #72]
	cmp	w13, #1
	ldr	x16, [x3, #120]
	csinc	w13, w13, wzr, hi
	sub	w14, w14, w15
	lsl	w15, w14, #10
	mul	w14, w9, w17
	add	x15, x16, w15, sxtw
	lsl	w16, w17, #1
	lsl	x17, x13, #3
	b	.LBB28_3
.LBB28_2:
	add	w9, w9, #2
	add	w14, w14, w16
	cmp	w9, w11
	b.ge	.LBB28_10
.LBB28_3:
	cmp	w8, #8
	b.lo	.LBB28_2
	add	x1, x0, w14, sxtw
	mov	x2, x13
	mov	x3, x1
.LBB28_5:
	ldr	x4, [x10], #8
	ldr	x5, [x12], #8
	subs	x2, x2, #1
	lsl	w6, w4, #2
	lsr	x7, x4, #6
	lsr	x19, x4, #14
	and	x6, x6, #0x3e0
	and	x7, x7, #0x3e0
	lsr	x20, x4, #22
	bfxil	x6, x5, #3, #5
	and	x19, x19, #0x3e0
	bfxil	x7, x5, #11, #5
	and	x20, x20, #0x3e0
	bfxil	x19, x5, #19, #5
	lsr	x21, x4, #30
	bfxil	x20, x5, #27, #5
	and	x21, x21, #0x3e0
	lsr	x22, x4, #38
	ldrb	w6, [x15, x6]
	ldrb	w7, [x15, x7]
	bfxil	x21, x5, #35, #5
	and	x22, x22, #0x3e0
	lsr	x23, x4, #46
	ldrb	w19, [x15, x19]
	bfxil	x22, x5, #43, #5
	and	x23, x23, #0x3e0
	lsr	x4, x4, #54
	ldrb	w20, [x15, x20]
	bfxil	x23, x5, #51, #5
	and	x4, x4, #0x3e0
	orr	w6, w6, w7, lsl #4
	bfxil	x4, x5, #59, #5
	ldrb	w5, [x15, x21]
	ldrb	w7, [x15, x22]
	orr	w6, w6, w19, lsl #8
	ldrb	w19, [x15, x23]
	orr	w6, w6, w20, lsl #12
	ldrb	w4, [x15, x4]
	orr	w5, w6, w5, lsl #16
	orr	w5, w5, w7, lsl #20
	orr	w5, w5, w19, lsl #24
	orr	w4, w5, w4, lsl #28
	str	w4, [x3], #4
	b.ne	.LBB28_5
	cmp	w8, #8
	b.lo	.LBB28_2
	mov	x2, xzr
.LBB28_8:
	ldr	x3, [x10, x2]
	ldr	x4, [x12, x2]
	add	x2, x2, #8
	cmp	x17, x2
	lsr	x6, x3, #6
	lsl	w5, w3, #2
	and	x6, x6, #0x3e0
	lsr	x7, x3, #14
	and	x5, x5, #0x3e0
	bfxil	x6, x4, #11, #5
	lsr	x19, x3, #22
	bfxil	x5, x4, #3, #5
	and	x7, x7, #0x3e0
	lsr	x20, x3, #30
	bfxil	x7, x4, #19, #5
	and	x19, x19, #0x3e0
	lsr	x21, x3, #38
	and	x20, x20, #0x3e0
	ldrb	w6, [x15, x6]
	bfxil	x19, x4, #27, #5
	ldrb	w5, [x15, x5]
	bfxil	x20, x4, #35, #5
	and	x21, x21, #0x3e0
	lsr	x22, x3, #46
	lsr	x3, x3, #54
	ldrb	w7, [x15, x7]
	bfxil	x21, x4, #43, #5
	and	x22, x22, #0x3e0
	and	x3, x3, #0x3e0
	bfxil	x22, x4, #51, #5
	bfxil	x3, x4, #59, #5
	ldrb	w4, [x15, x19]
	lsl	w6, w6, #6
	ldrb	w19, [x15, x20]
	orr	w5, w6, w5, lsl #2
	ldrb	w6, [x15, x21]
	orr	w5, w5, w7, lsl #10
	ldrb	w7, [x15, x22]
	orr	w4, w5, w4, lsl #14
	ldrb	w3, [x15, x3]
	orr	w4, w4, w19, lsl #18
	ldr	w5, [x1]
	orr	w4, w4, w6, lsl #22
	orr	w4, w4, w7, lsl #26
	orr	w4, w4, w5
	orr	w3, w4, w3, lsl #30
	str	w3, [x1], #4
	b.ne	.LBB28_8
	add	x12, x12, x2
	add	x10, x10, x2
	b	.LBB28_2
.LBB28_10:
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldr	x23, [sp], #48
	ret
.Lfunc_end28:
	.size	direct_mode_data_change2, .Lfunc_end28-direct_mode_data_change2

	.p2align	2
	.type	direct_mode_data_change,@function
direct_mode_data_change:
	str	x19, [sp, #-16]!
	adrp	x8, global_ebc
	ldr	x9, [x8, :lo12:global_ebc]
	ldp	w8, w11, [x9, #116]
	ldr	w13, [x9, #196]
	cmp	w11, #0
	lsr	w14, w8, #3
	cinc	w9, w11, lt
	cmp	w11, #0
	asr	w9, w9, #1
	cinc	w10, w11, lt
	cmp	w4, #2
	asr	w10, w10, #1
	mul	w15, w9, w14
	csel	w12, wzr, wzr, ne
	csel	w10, w11, w10, ne
	cmp	w4, #3
	csel	w9, w9, w12, eq
	sbfiz	x12, x15, #3, #32
	mvn	w15, w9
	add	x17, x1, x12
	add	x12, x2, x12
	lsr	w16, w8, #2
	csel	w10, w11, w10, eq
	add	w15, w11, w15
	csel	x11, x12, x2, eq
	csel	x12, x17, x1, eq
	neg	w17, w8, lsr #2
	cmp	w13, #0
	csel	w15, w9, w15, eq
	csel	w13, w16, w17, eq
	cmp	w9, w10
	b.ge	.LBB29_6
	ldrb	w16, [x3, #56]
	mul	w15, w15, w8
	ldr	w17, [x3, #72]
	cmp	w14, #1
	ldr	x1, [x3, #120]
	lsr	w15, w15, #2
	sxtw	x13, w13
	add	x15, x0, x15
	sub	w16, w16, w17
	csinc	w17, w14, wzr, hi
	lsl	w16, w16, #10
	add	x14, x1, w16, sxtw
	lsl	x16, x17, #1
	b	.LBB29_3
.LBB29_2:
	add	w9, w9, #1
	add	x15, x15, x13
	cmp	w9, w10
	b.eq	.LBB29_6
.LBB29_3:
	cmp	w8, #8
	b.lo	.LBB29_2
	mov	x17, xzr
.LBB29_5:
	ldr	x0, [x11], #8
	ldr	x1, [x12], #8
	lsl	w2, w0, #2
	lsr	x3, x0, #6
	lsr	x4, x0, #14
	and	x2, x2, #0x3e0
	and	x3, x3, #0x3e0
	lsr	x5, x0, #22
	bfxil	x2, x1, #3, #5
	and	x4, x4, #0x3e0
	bfxil	x3, x1, #11, #5
	and	x5, x5, #0x3e0
	bfxil	x4, x1, #19, #5
	lsr	x6, x0, #30
	bfxil	x5, x1, #27, #5
	and	x6, x6, #0x3e0
	lsr	x7, x0, #38
	ldrb	w2, [x14, x2]
	ldrb	w3, [x14, x3]
	bfxil	x6, x1, #35, #5
	and	x7, x7, #0x3e0
	lsr	x19, x0, #46
	ldrb	w4, [x14, x4]
	bfxil	x7, x1, #43, #5
	and	x19, x19, #0x3e0
	lsr	x0, x0, #54
	ldrb	w5, [x14, x5]
	bfxil	x19, x1, #51, #5
	and	x0, x0, #0x3e0
	orr	w2, w2, w3, lsl #2
	bfxil	x0, x1, #59, #5
	ldrb	w1, [x14, x6]
	ldrb	w3, [x14, x7]
	orr	w2, w2, w4, lsl #4
	ldrb	w4, [x14, x19]
	orr	w2, w2, w5, lsl #6
	ldrb	w0, [x14, x0]
	orr	w1, w2, w1, lsl #8
	orr	w1, w1, w3, lsl #10
	orr	w1, w1, w4, lsl #12
	orr	w0, w1, w0, lsl #14
	strh	w0, [x15, x17]
	add	x17, x17, #2
	cmp	x16, x17
	b.ne	.LBB29_5
	b	.LBB29_2
.LBB29_6:
	ldr	x19, [sp], #16
	ret
.Lfunc_end29:
	.size	direct_mode_data_change, .Lfunc_end29-direct_mode_data_change

	.p2align	2
	.type	get_one_auto_image2,@function
get_one_auto_image2:
	ldr	x9, [x0]
	ldr	x8, [x1]
	ldrb	w10, [x3, #56]
	eor	x11, x8, x9
	tst	x11, #0xff
	b.eq	.LBB30_16
	ldrb	w12, [x2]
	lsl	w13, w8, #2
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #3, #5
	mov	x15, x8
	bfxil	x15, x9, #0, #8
	add	x14, x14, x12, lsl #10
	ldrb	w13, [x14, x13]
	add	w14, w12, #1
	cmp	w10, w14, uxtb
	csinc	w12, wzr, w12, eq
	csel	x8, x15, x8, eq
	lsl	w0, w13, w4
	strb	w12, [x2]
	tst	x11, #0xff00
	b.eq	.LBB30_3
.LBB30_2:
	ldrb	w12, [x2, #1]
	lsr	x13, x8, #6
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #11, #5
	lsr	x15, x9, #8
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #4
	strb	w12, [x2, #1]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #8, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_3:
	tst	x11, #0xff0000
	b.eq	.LBB30_5
	ldrb	w12, [x2, #2]
	lsr	x13, x8, #14
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #19, #5
	lsr	x15, x9, #16
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #8
	strb	w12, [x2, #2]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #16, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_5:
	tst	x11, #0xff000000
	b.eq	.LBB30_7
	ldrb	w12, [x2, #3]
	lsr	x13, x8, #22
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #27, #5
	lsr	x15, x9, #24
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #12
	strb	w12, [x2, #3]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #24, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_7:
	tst	x11, #0xff00000000
	b.eq	.LBB30_9
	ldrb	w12, [x2, #4]
	lsr	x13, x8, #30
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #35, #5
	lsr	x15, x9, #32
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #16
	strb	w12, [x2, #4]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #32, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_9:
	tst	x11, #0xff0000000000
	b.eq	.LBB30_11
	ldrb	w12, [x2, #5]
	lsr	x13, x8, #38
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #43, #5
	lsr	x15, x9, #40
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #20
	strb	w12, [x2, #5]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #40, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_11:
	tst	x11, #0xff000000000000
	b.eq	.LBB30_13
	ldrb	w12, [x2, #6]
	lsr	x13, x8, #46
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #51, #5
	lsr	x15, x9, #48
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #24
	strb	w12, [x2, #6]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #48, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_13:
	lsr	x11, x11, #56
	cbz	x11, .LBB30_15
	ldrb	w11, [x2, #7]
	lsr	x12, x8, #54
	ldr	x13, [x3, #120]
	and	x12, x12, #0x3e0
	bfxil	x12, x9, #59, #5
	bfxil	x9, x8, #0, #56
	add	w14, w11, #1
	add	x13, x13, x11, lsl #10
	cmp	w10, w14, uxtb
	csinc	w11, wzr, w11, eq
	csel	x8, x9, x8, eq
	ldrb	w12, [x13, x12]
	add	w13, w4, #28
	strb	w11, [x2, #7]
	lsl	w10, w12, w13
	orr	w0, w10, w0
.LBB30_15:
	str	x8, [x1]
	ret
.LBB30_16:
	mov	w0, wzr
	tst	x11, #0xff00
	b.ne	.LBB30_2
	b	.LBB30_3
.Lfunc_end30:
	.size	get_one_auto_image2, .Lfunc_end30-get_one_auto_image2

	.p2align	2
	.type	ebc_lut_update,@function
ebc_lut_update:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	mov	w9, #25
	str	x21, [sp, #32]
	mov	w21, w1
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	w1, #1
	add	x29, sp, #16
	mov	w20, w2
	mov	x19, x0
	str	x8, [sp, #8]
	str	w9, [sp, #4]
	bl	ebc_power_set
	ldr	x0, [x19, #16]
	cbz	x0, .LBB31_7
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	blr	x8
	mov	w2, w0
	cbz	w2, .LBB31_8
.LBB31_2:
	mov	w8, #25
	ldr	w9, [x19, #800]
	str	w8, [sp, #4]
	tbz	w9, #31, .LBB31_31
.LBB31_3:
	ldr	w8, [x19, #800]
	cmp	w8, #1
	b.ge	.LBB31_18
	cmp	w21, #23
	b.hi	.LBB31_6
.LBB31_5:
	adrp	x9, .LJTI31_0
	mov	w8, w21
	add	x9, x9, :lo12:.LJTI31_0
	mov	w1, wzr
	adr	x10, .LBB31_6
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB31_6:
	mov	w1, #3
	b	.LBB31_27
.LBB31_7:
	ldr	x0, [x19, #32]
	add	x1, sp, #4
	bl	thermal_zone_get_temp
	ldrsw	x8, [sp, #4]
	mov	w9, #19923
	movk	w9, #4194, lsl #16
	mov	w2, w0
	mul	x8, x8, x9
	lsr	x9, x8, #32
	lsr	x8, x8, #63
	add	w8, w8, w9, asr #6
	str	w8, [sp, #4]
	cbnz	w2, .LBB31_2
.LBB31_8:
	ldr	w2, [sp, #4]
	tbnz	w2, #31, .LBB31_12
	cmp	w2, #51
	b.lo	.LBB31_3
	ldr	w8, [x19, #800]
	tbz	w8, #31, .LBB31_33
.LBB31_11:
	mov	w8, #50
	str	w8, [sp, #4]
	b	.LBB31_3
.LBB31_12:
	ldr	w8, [x19, #800]
	tbz	w8, #31, .LBB31_32
.LBB31_13:
	mov	w8, #25
	str	w8, [sp, #4]
	b	.LBB31_3
.LBB31_14:
	mov	w1, #1
	b	.LBB31_27
.LBB31_15:
	mov	w1, #8
	b	.LBB31_27
.LBB31_16:
	mov	w1, #7
	b	.LBB31_27
.LBB31_17:
	mov	w1, #2
	b	.LBB31_27
.LBB31_18:
	adrp	x1, .L.str.98
	ldr	x0, [x19, #320]
	ldr	w2, [sp, #4]
	add	x1, x1, :lo12:.L.str.98
	bl	_dev_info
	cmp	w21, #23
	b.ls	.LBB31_5
	b	.LBB31_6
.LBB31_19:
	mov	w1, #10
	b	.LBB31_27
.LBB31_20:
	mov	w1, #4
	b	.LBB31_27
.LBB31_21:
	mov	w1, #5
	b	.LBB31_27
.LBB31_22:
	mov	w1, #6
	b	.LBB31_27
.LBB31_23:
	ldr	w8, [x19, #788]
	mov	w9, #3
	cmp	w8, #0
	mov	w8, #14
	csel	w1, w9, w8, eq
	b	.LBB31_27
.LBB31_24:
	ldr	w8, [x19, #788]
	mov	w9, #4
	cmp	w8, #0
	mov	w8, #13
	csel	w1, w9, w8, eq
	b	.LBB31_27
.LBB31_25:
	ldr	w20, [x19, #192]
	mov	w1, #11
	b	.LBB31_27
.LBB31_26:
	ldr	w20, [x19, #192]
	mov	w1, #12
.LBB31_27:
	add	x0, x19, #328
	ldr	w2, [sp, #4]
	mov	w3, #32
	mov	w4, w20
	bl	epd_lut_get
	cbnz	w0, .LBB31_30
.LBB31_28:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB31_34
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x21, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB31_30:
	adrp	x1, .L.str.99
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.99
	bl	_dev_err
	b	.LBB31_28
.LBB31_31:
	adrp	x1, .L.str.97
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.97
	bl	_dev_info
	b	.LBB31_3
.LBB31_32:
	adrp	x1, .L.str.95
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.95
	bl	_dev_info
	b	.LBB31_13
.LBB31_33:
	adrp	x1, .L.str.96
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.96
	bl	_dev_info
	b	.LBB31_11
.LBB31_34:
	bl	__stack_chk_fail
.Lfunc_end31:
	.size	ebc_lut_update, .Lfunc_end31-ebc_lut_update
	.section	.rodata,"a",@progbits
.LJTI31_0:
	.byte	(.LBB31_6-.LBB31_6)>>2
	.byte	(.LBB31_19-.LBB31_6)>>2
	.byte	(.LBB31_6-.LBB31_6)>>2
	.byte	(.LBB31_20-.LBB31_6)>>2
	.byte	(.LBB31_21-.LBB31_6)>>2
	.byte	(.LBB31_22-.LBB31_6)>>2
	.byte	(.LBB31_15-.LBB31_6)>>2
	.byte	(.LBB31_23-.LBB31_6)>>2
	.byte	(.LBB31_24-.LBB31_6)>>2
	.byte	(.LBB31_25-.LBB31_6)>>2
	.byte	(.LBB31_26-.LBB31_6)>>2
	.byte	(.LBB31_15-.LBB31_6)>>2
	.byte	(.LBB31_16-.LBB31_6)>>2
	.byte	(.LBB31_16-.LBB31_6)>>2
	.byte	(.LBB31_14-.LBB31_6)>>2
	.byte	(.LBB31_17-.LBB31_6)>>2
	.byte	(.LBB31_14-.LBB31_6)>>2
	.byte	(.LBB31_27-.LBB31_6)>>2
	.byte	(.LBB31_6-.LBB31_6)>>2
	.byte	(.LBB31_6-.LBB31_6)>>2
	.byte	(.LBB31_6-.LBB31_6)>>2
	.byte	(.LBB31_6-.LBB31_6)>>2
	.byte	(.LBB31_14-.LBB31_6)>>2
	.byte	(.LBB31_17-.LBB31_6)>>2

	.text
	.p2align	2
	.type	ebc_frame_start,@function
ebc_frame_start:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	ldr	w8, [x0, #464]
	str	x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	mov	x19, x0
	add	x21, x0, #40
	add	x20, x0, #224
	cmp	w8, #1
	mov	x29, sp
	b.eq	.LBB32_7
	cmp	w8, #3
	b.eq	.LBB32_9
	cmp	w8, #4
	b.ne	.LBB32_13
	ldr	x0, [x19, #400]
	mov	w1, wzr
	ldrsw	x2, [x19, #256]
	bl	memset
	ldp	x4, x0, [x19, #392]
	mov	x5, x20
	ldp	x1, x2, [x19, #360]
	ldr	w8, [x19, #204]
	ldr	x3, [x19, #384]
	cbz	w8, .LBB32_18
	bl	get_overlay_image_area2
	ldr	w8, [x19, #284]
	cbz	w8, .LBB32_19
.LBB32_5:
	mov	x0, x21
	mov	x1, x20
	str	wzr, [x19, #112]
	bl	flip
	ldr	x0, [x19, #408]
	mov	w1, wzr
	ldrsw	x2, [x19, #256]
	bl	memset
	ldp	x1, x2, [x19, #360]
	mov	x5, x20
	ldp	x3, x4, [x19, #384]
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #408]
	cbz	w8, .LBB32_28
	bl	get_overlay_image_area2
	b	.LBB32_39
.LBB32_7:
	ldp	x11, x10, [x19, #432]
	mov	x3, x20
	mov	w4, #1
	ldrb	w8, [x19, #280]
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #400]
	str	w8, [x19, #296]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB32_21
	bl	direct_mode_data_change_part2
	b	.LBB32_22
.LBB32_9:
	ldp	x1, x2, [x19, #360]
	mov	x4, x20
	mov	w5, #1
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #400]
	ldr	x3, [x19, #384]
	cbz	w8, .LBB32_24
	bl	get_auto_image2
	ldr	w8, [x19, #284]
	cbz	w8, .LBB32_25
.LBB32_11:
	ldp	x1, x2, [x19, #360]
	mov	x4, x20
	mov	w5, #1
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #408]
	ldr	x3, [x19, #384]
	cbz	w8, .LBB32_29
	bl	get_auto_image2
	b	.LBB32_38
.LBB32_13:
	ldr	x8, [x19, #440]
	ldr	w9, [x8, #40]
	cmp	w9, #21
	b.ne	.LBB32_16
	ldr	w8, [x19, #308]
	mov	w1, #255
	ldr	w9, [x19, #304]
	ldr	x0, [x19, #384]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #868]
	str	wzr, [x19, #864]
	ldr	w9, [x19, #856]
	mov	x3, x20
	ldr	w10, [x19, #308]
	mov	w4, #1
	cmp	w8, #4
	ldr	x0, [x19, #400]
	csel	w8, wzr, w8, hi
	cmp	w9, w10
	ccmp	w9, #1, #8, le
	str	w8, [x19, #852]
	ldp	x11, x8, [x19, #432]
	csel	w9, w10, w9, lt
	ldr	w10, [x19, #204]
	str	w9, [x19, #848]
	str	w9, [x19, #860]
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	cbz	w10, .LBB32_30
	bl	direct_mode_data_change_full2
	b	.LBB32_31
.LBB32_16:
	ldrb	w9, [x19, #280]
	mov	x3, x20
	ldr	x11, [x19, #432]
	mov	w4, #1
	ldr	w10, [x19, #204]
	str	w9, [x19, #296]
	ldr	x0, [x19, #400]
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	cbz	w10, .LBB32_33
	bl	direct_mode_data_change2
	b	.LBB32_34
.LBB32_18:
	bl	get_overlay_image_area
	ldr	w8, [x19, #284]
	cbnz	w8, .LBB32_5
.LBB32_19:
	ldr	w8, [x19, #800]
	cmp	w8, #1
	b.lt	.LBB32_26
	adrp	x1, .L.str.100
	adrp	x2, .L__func__.ebc_frame_start
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.100
	b	.LBB32_41
.LBB32_21:
	bl	direct_mode_data_change_part
.LBB32_22:
	ldr	w8, [x19, #296]
	mov	x3, x20
	ldp	x11, x10, [x19, #432]
	mov	w4, #1
	sub	w8, w8, #1
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #408]
	str	w8, [x19, #296]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB32_27
	bl	direct_mode_data_change_part2
	b	.LBB32_38
.LBB32_24:
	bl	get_auto_image
	ldr	w8, [x19, #284]
	cbnz	w8, .LBB32_11
.LBB32_25:
	ldr	w8, [x19, #800]
	cmp	w8, #1
	b.ge	.LBB32_40
.LBB32_26:
	str	wzr, [x19, #276]
	b	.LBB32_39
.LBB32_27:
	bl	direct_mode_data_change_part
	b	.LBB32_38
.LBB32_28:
	bl	get_overlay_image_area
	b	.LBB32_39
.LBB32_29:
	bl	get_auto_image
	b	.LBB32_38
.LBB32_30:
	bl	direct_mode_data_change_full
.LBB32_31:
	ldr	w8, [x19, #848]
	mov	x3, x20
	ldr	w9, [x19, #860]
	mov	w4, #1
	ldr	w10, [x19, #204]
	ldr	x0, [x19, #408]
	add	w8, w9, w8
	ldp	x11, x9, [x19, #432]
	str	w8, [x19, #860]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	cbz	w10, .LBB32_36
	bl	direct_mode_data_change_full2
	b	.LBB32_38
.LBB32_33:
	bl	direct_mode_data_change
.LBB32_34:
	ldr	w8, [x19, #296]
	mov	x3, x20
	ldp	x11, x10, [x19, #432]
	mov	w4, #1
	sub	w8, w8, #1
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #408]
	str	w8, [x19, #296]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB32_37
	bl	direct_mode_data_change2
	b	.LBB32_38
.LBB32_36:
	bl	direct_mode_data_change_full
	b	.LBB32_38
.LBB32_37:
	bl	direct_mode_data_change
.LBB32_38:
	mov	x0, x21
	mov	x1, x20
	str	wzr, [x19, #112]
	bl	flip
.LBB32_39:
	ldp	x20, x19, [sp, #32]
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB32_40:
	adrp	x1, .L.str.101
	adrp	x2, .L__func__.ebc_frame_start
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.101
.LBB32_41:
	add	x2, x2, :lo12:.L__func__.ebc_frame_start
	bl	_dev_info
	b	.LBB32_26
.Lfunc_end32:
	.size	ebc_frame_start, .Lfunc_end32-ebc_frame_start

	.p2align	2
	.type	ebc_power_set,@function
ebc_power_set:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	ldr	w8, [x0, #416]
	stp	x20, x19, [sp, #16]
	mov	x29, sp
	cmp	w8, w1
	b.eq	.LBB33_17
	mov	x19, x0
	ldr	w8, [x0, #796]
	cmp	w1, #1
	b.ne	.LBB33_8
	cbz	w8, .LBB33_4
	mov	w0, #1
	bl	ebc_notify
.LBB33_4:
	ldr	w8, [x19, #664]
	cbnz	w8, .LBB33_6
	mov	w8, #1
	add	x0, x19, #472
	str	w8, [x19, #664]
	bl	__pm_stay_awake
.LBB33_6:
	mov	w8, #1
	ldr	x0, [x19, #16]
	str	w8, [x19, #416]
	cbz	x0, .LBB33_15
	ldr	x8, [x0, #32]
	mov	w1, #1
	blr	x8
	mov	w20, wzr
	b	.LBB33_16
.LBB33_8:
	cbz	w8, .LBB33_10
	mov	x0, xzr
	bl	ebc_notify
.LBB33_10:
	ldr	x0, [x19, #8]
	str	wzr, [x19, #416]
	ldr	x8, [x0, #80]
	blr	x8
	ldr	x0, [x19, #16]
	cbz	x0, .LBB33_18
	ldr	x8, [x0, #32]
	mov	w1, wzr
	blr	x8
	mov	w20, wzr
	ldr	w8, [x19, #664]
	cbz	w8, .LBB33_13
.LBB33_12:
	add	x0, x19, #472
	str	wzr, [x19, #664]
	bl	__pm_relax
.LBB33_13:
	ldr	w8, [x19, #800]
	cmp	w8, #1
	b.lt	.LBB33_17
	adrp	x1, .L.str.104
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.104
	b	.LBB33_20
.LBB33_15:
	ldr	x0, [x19, #24]
	bl	regulator_enable
	mov	w20, w0
.LBB33_16:
	ldr	x0, [x19, #8]
	add	x1, x19, #40
	ldr	x8, [x0, #72]
	blr	x8
	ldr	w8, [x19, #800]
	cmp	w8, #1
	b.ge	.LBB33_19
.LBB33_17:
	ldp	x20, x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.LBB33_18:
	ldr	x0, [x19, #24]
	bl	regulator_disable
	mov	w20, w0
	ldr	w8, [x19, #664]
	cbnz	w8, .LBB33_12
	b	.LBB33_13
.LBB33_19:
	ldr	x0, [x19, #320]
	adrp	x1, .L.str.103
	add	x1, x1, :lo12:.L.str.103
.LBB33_20:
	mov	w2, w20
	bl	_dev_info
	b	.LBB33_17
.Lfunc_end33:
	.size	ebc_power_set, .Lfunc_end33-ebc_power_set

	.p2align	2
	.type	ebc_frame_control_timeout,@function
ebc_frame_control_timeout:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	mov	w10, #1
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #800]
	str	w10, [x8, #764]
	cmp	w9, #1
	b.ge	.LBB34_2
.LBB34_1:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.LBB34_2:
	adrp	x1, .L.str.106
	ldr	x0, [x8, #320]
	add	x1, x1, :lo12:.L.str.106
	bl	_dev_info
	b	.LBB34_1
.Lfunc_end34:
	.size	ebc_frame_control_timeout, .Lfunc_end34-ebc_frame_control_timeout

	.p2align	2
	.type	ebc_frame_timeout,@function
ebc_frame_timeout:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	bl	frame_done_callback
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end35:
	.size	ebc_frame_timeout, .Lfunc_end35-ebc_frame_timeout

	.p2align	2
	.type	ebc_io_ctl,@function
ebc_io_ctl:
	sub	sp, sp, #160
	str	x30, [x18], #8
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	str	x23, [sp, #112]
	stp	x22, x21, [sp, #128]
	stp	x20, x19, [sp, #144]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	stur	x8, [x29, #-8]
	adrp	x8, global_ebc
	ldr	x22, [x0, #200]
	str	wzr, [sp, #80]
	stp	xzr, xzr, [sp, #64]
	ldr	x21, [x8, :lo12:global_ebc]
	sub	w8, w1, #7, lsl #12
	cmp	w8, #25
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	stp	xzr, xzr, [sp, #16]
	b.hi	.LBB36_55
	adrp	x9, .LJTI36_0
	mov	x0, xzr
	add	x9, x9, :lo12:.LJTI36_0
	adr	x10, .LBB36_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB36_2:
	mov	x19, x2
	cbz	x2, .LBB36_24
	cmp	w8, #25
	b.hi	.LBB36_55
	adrp	x9, .LJTI36_1
	mov	x0, xzr
	add	x9, x9, :lo12:.LJTI36_1
	adr	x10, .LBB36_5
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB36_5:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	add	x20, sp, #16
	bl	_copy_from_user
	cbnz	w0, .LBB36_51
	add	x0, x20, #48
	bl	ebc_empty_buf_get
	cbz	x0, .LBB36_52
	ldr	x23, [x0, #8]
	mov	x20, x0
	bl	ebc_phy_buf_base_get
	mov	w10, #26215
	sub	x8, x23, x0
	ldp	w11, w9, [x21, #116]
	movk	w10, #26214, lsl #16
	str	wzr, [sp, #60]
	str	w8, [sp, #16]
	add	x1, sp, #16
	smull	x10, w8, w10
	ldr	w8, [x21, #192]
	stp	w9, w11, [sp, #24]
	mov	x0, x19
	lsr	x9, x10, #63
	asr	x10, x10, #53
	add	w9, w10, w9
	str	w8, [sp, #32]
	mov	w2, #68
	ldr	w8, [x22, w9, sxtw #2]
	str	w8, [sp, #80]
	bl	_copy_to_user
	cbz	w0, .LBB36_56
	mov	x0, x20
	bl	ebc_buf_release
	mov	x0, #-14
	b	.LBB36_58
.LBB36_9:
	mov	w8, #1
	ldr	w9, [x21, #800]
	str	w8, [x21, #760]
	tbnz	w9, #31, .LBB36_56
	adrp	x1, .L.str.122
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.122
	bl	_dev_info
	b	.LBB36_56
.LBB36_11:
	ldr	w8, [x21, #800]
	str	wzr, [x21, #760]
	tbnz	w8, #31, .LBB36_56
	adrp	x1, .L.str.123
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.123
	bl	_dev_info
	b	.LBB36_56
.LBB36_13:
	mov	w8, #1
	ldr	w9, [x21, #800]
	str	w8, [x21, #768]
	tbnz	w9, #31, .LBB36_56
	adrp	x1, .L.str.120
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.120
	bl	_dev_info
	b	.LBB36_56
.LBB36_15:
	ldr	w8, [x21, #800]
	str	wzr, [x21, #768]
	tbnz	w8, #31, .LBB36_56
	adrp	x1, .L.str.121
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB36_56
.LBB36_17:
	bl	ebc_drop_one_dsp_buf
	cbnz	w0, .LBB36_51
	b	.LBB36_56
.LBB36_18:
	ldr	w8, [x21, #800]
	tbz	w8, #31, .LBB36_60
.LBB36_19:
	mov	w0, #2
	bl	ebc_notify
	mov	w8, #1
	mov	x0, xzr
	str	w8, [x21, #752]
	str	w8, [x21, #772]
	b	.LBB36_57
.LBB36_20:
	ldr	w8, [x21, #800]
	tbz	w8, #31, .LBB36_61
	ldr	w8, [x21, #752]
	cbz	w8, .LBB36_23
.LBB36_22:
	mov	w0, #3
	bl	ebc_notify
.LBB36_23:
	mov	x0, xzr
	str	wzr, [x21, #752]
	str	wzr, [x21, #772]
	b	.LBB36_57
.LBB36_24:
	adrp	x1, .L.str.119
	adrp	x2, .L__func__.ebc_io_ctl
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.119
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	mov	x0, #-14
	b	.LBB36_58
.LBB36_25:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	x0, .LBB36_51
	bl	ebc_phy_buf_base_get
	ldrsw	x8, [sp, #16]
	add	x0, x0, x8
	bl	ebc_find_buf_by_phy_addr
	cbz	x0, .LBB36_57
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	ldr	x10, [sp, #40]
	str	w8, [x0, #40]
	ldr	w8, [sp, #60]
	str	w9, [x0, #48]
	ldr	w9, [sp, #48]
	stur	x10, [x0, #52]
	stp	w9, w8, [x0, #60]
	bl	ebc_add_to_dsp_buf_list
	b	.LBB36_36
.LBB36_28:
	ldp	w8, w9, [x21, #116]
	ldr	w10, [x21, #192]
	add	x1, sp, #16
	mov	x0, x19
	mov	w2, #68
	str	wzr, [sp, #60]
	stp	w9, w8, [sp, #24]
	ldp	w11, w8, [x21, #132]
	str	w10, [sp, #32]
	stp	w11, w8, [sp, #52]
	bl	_copy_to_user
	cbz	x0, .LBB36_57
	adrp	x1, .L.str.124
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.124
	bl	_dev_err
	mov	x0, #-14
	b	.LBB36_58
.LBB36_30:
	bl	ebc_empty_osd_buf_get
	cbz	x0, .LBB36_52
	ldr	x20, [x0, #8]
	bl	ebc_phy_buf_base_get
	mov	w10, #26215
	sub	x8, x20, x0
	ldp	w11, w9, [x21, #116]
	movk	w10, #26214, lsl #16
	str	wzr, [sp, #60]
	str	w8, [sp, #16]
	add	x1, sp, #16
	smull	x10, w8, w10
	ldr	w8, [x21, #192]
	stp	w9, w11, [sp, #24]
	mov	x0, x19
	lsr	x9, x10, #63
	asr	x10, x10, #53
	add	w9, w10, w9
	str	w8, [sp, #32]
	mov	w2, #68
	ldr	w8, [x22, w9, sxtw #2]
	str	w8, [sp, #80]
	bl	_copy_to_user
	b	.LBB36_57
.LBB36_32:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	x0, .LBB36_51
	bl	ebc_osd_buf_clone
	cbz	x0, .LBB36_57
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	ldr	x10, [sp, #40]
	ldr	w11, [sp, #48]
	str	w8, [x0, #40]
	str	w9, [x0, #48]
	stur	x10, [x0, #52]
	str	w11, [x0, #60]
	bl	ebc_add_to_osd_buf_list
	ldr	w8, [x21, #316]
	cbnz	w8, .LBB36_36
	mov	w8, #1
	str	w8, [x21, #316]
.LBB36_36:
	ldr	w8, [x21, #312]
	cbnz	w8, .LBB36_56
	adrp	x0, ebc_thread_wq
	mov	w8, #1
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1
	str	w8, [x21, #312]
	bl	__wake_up_sync
	b	.LBB36_56
.LBB36_38:
	add	x1, x21, #760
	b	.LBB36_46
.LBB36_39:
	mov	w8, #1
	add	x1, sp, #12
	str	w8, [sp, #12]
	b	.LBB36_46
.LBB36_40:
	add	x1, x21, #664
	b	.LBB36_46
.LBB36_41:
	ldr	w8, [x21, #876]
	str	wzr, [sp, #12]
	cmp	w8, #3576
	b.ne	.LBB36_56
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB36_51
	ldr	w8, [x21, #800]
	tbz	w8, #31, .LBB36_62
.LBB36_44:
	ldr	w8, [sp, #12]
	str	w8, [x21, #780]
	b	.LBB36_56
.LBB36_45:
	add	x1, x21, #788
.LBB36_46:
	mov	x0, x19
	mov	w2, #4
	bl	_copy_to_user
	b	.LBB36_57
.LBB36_47:
	add	x0, x21, #856
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB36_51
	ldr	w8, [x21, #800]
	tbnz	w8, #31, .LBB36_56
	adrp	x1, .L.str.128
	ldr	x0, [x21, #320]
	ldr	w2, [x21, #856]
	add	x1, x1, :lo12:.L.str.128
	bl	_dev_info
	b	.LBB36_56
.LBB36_50:
	add	x0, x21, #868
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbz	w0, .LBB36_53
.LBB36_51:
	mov	x0, #-14
	b	.LBB36_58
.LBB36_52:
	mov	x0, #-1
	b	.LBB36_58
.LBB36_53:
	ldr	w8, [x21, #800]
	tbnz	w8, #31, .LBB36_56
	adrp	x1, .L.str.129
	ldr	x0, [x21, #320]
	ldr	w2, [x21, #868]
	add	x1, x1, :lo12:.L.str.129
	bl	_dev_info
	b	.LBB36_56
.LBB36_55:
	adrp	x1, .L.str.130
	adrp	x2, .L__func__.ebc_io_ctl
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.130
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
.LBB36_56:
	mov	x0, xzr
.LBB36_57:
	sxtw	x0, w0
.LBB36_58:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB36_63
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x29, x30, [sp, #96]
	ldr	x23, [sp, #112]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB36_60:
	adrp	x1, .L.str.125
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.125
	bl	_dev_info
	b	.LBB36_19
.LBB36_61:
	adrp	x1, .L.str.126
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.126
	bl	_dev_info
	ldr	w8, [x21, #752]
	cbnz	w8, .LBB36_22
	b	.LBB36_23
.LBB36_62:
	adrp	x1, .L.str.127
	ldr	x0, [x21, #320]
	ldr	w2, [sp, #12]
	add	x1, x1, :lo12:.L.str.127
	bl	_dev_info
	b	.LBB36_44
.LBB36_63:
	bl	__stack_chk_fail
.Lfunc_end36:
	.size	ebc_io_ctl, .Lfunc_end36-ebc_io_ctl
	.section	.rodata,"a",@progbits
	.p2align	1
.LJTI36_0:
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_9-.LBB36_2)>>2
	.hword	(.LBB36_11-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_57-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_13-.LBB36_2)>>2
	.hword	(.LBB36_15-.LBB36_2)>>2
	.hword	(.LBB36_57-.LBB36_2)>>2
	.hword	(.LBB36_57-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_17-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_18-.LBB36_2)>>2
	.hword	(.LBB36_20-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_55-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.hword	(.LBB36_2-.LBB36_2)>>2
	.p2align	1
.LJTI36_1:
	.hword	(.LBB36_5-.LBB36_5)>>2
	.hword	(.LBB36_25-.LBB36_5)>>2
	.hword	(.LBB36_28-.LBB36_5)>>2
	.hword	(.LBB36_57-.LBB36_5)>>2
	.hword	(.LBB36_9-.LBB36_5)>>2
	.hword	(.LBB36_11-.LBB36_5)>>2
	.hword	(.LBB36_30-.LBB36_5)>>2
	.hword	(.LBB36_32-.LBB36_5)>>2
	.hword	(.LBB36_57-.LBB36_5)>>2
	.hword	(.LBB36_57-.LBB36_5)>>2
	.hword	(.LBB36_57-.LBB36_5)>>2
	.hword	(.LBB36_38-.LBB36_5)>>2
	.hword	(.LBB36_13-.LBB36_5)>>2
	.hword	(.LBB36_15-.LBB36_5)>>2
	.hword	(.LBB36_57-.LBB36_5)>>2
	.hword	(.LBB36_57-.LBB36_5)>>2
	.hword	(.LBB36_39-.LBB36_5)>>2
	.hword	(.LBB36_17-.LBB36_5)>>2
	.hword	(.LBB36_40-.LBB36_5)>>2
	.hword	(.LBB36_18-.LBB36_5)>>2
	.hword	(.LBB36_20-.LBB36_5)>>2
	.hword	(.LBB36_41-.LBB36_5)>>2
	.hword	(.LBB36_55-.LBB36_5)>>2
	.hword	(.LBB36_45-.LBB36_5)>>2
	.hword	(.LBB36_47-.LBB36_5)>>2
	.hword	(.LBB36_50-.LBB36_5)>>2

	.text
	.p2align	2
	.type	ebc_mmap,@function
ebc_mmap:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	str	x21, [sp, #16]
	mov	x29, sp
	stp	x20, x19, [sp, #32]
	mov	x19, x1
	bl	ebc_phy_buf_base_get
	ldr	x8, [x19, #16]
	mov	x20, x0
	ldr	w21, [x8, #152]
	ldr	w8, [x19, #40]
	cmp	w8, w21
	b.eq	.LBB37_2
	ldr	x0, [x19, #48]
	bl	down_write
	str	w21, [x19, #40]
	ldr	x0, [x19, #48]
	bl	up_write
.LBB37_2:
	ldp	x4, x8, [x19, #24]
	mov	w10, #16384
	lsr	x2, x20, #12
	ldp	x1, x9, [x19]
	movk	w10, #1028, lsl #16
	mov	x0, x19
	orr	x8, x8, x10
	sub	x3, x9, x1
	str	x8, [x19, #32]
	bl	remap_pfn_range
	ldp	x20, x19, [sp, #32]
	mov	w8, #-11
	cmp	w0, #0
	ldr	x21, [sp, #16]
	csel	w0, wzr, w8, eq
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end37:
	.size	ebc_mmap, .Lfunc_end37-ebc_mmap

	.p2align	2
	.type	ebc_open,@function
ebc_open:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!
	adrp	x9, kmalloc_caches+48
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #48]
	mov	x19, x1
	mov	w1, #3520
	mov	w2, #20
	ldr	x0, [x9, :lo12:kmalloc_caches+48]
	stp	x22, x21, [sp, #32]
	ldr	x22, [x8, :lo12:global_ebc]
	str	x23, [sp, #16]
	mov	x29, sp
	bl	kmalloc_trace
	cbz	x0, .LBB38_7
	mov	x20, x0
	mov	x21, xzr
	add	x22, x22, #808
	mov	w23, #1
.LBB38_2:
	ldr	x0, [x22, x21, lsl #3]
	ldr	x8, [x0, #8]
	//APP
.Ltmp26:
	b	.Ltmp25
.Ltmp27:
	.section	.altinstructions,"a",@progbits
.Ltmp28:
	.word	.Ltmp26-.Ltmp28
.Ltmp29:
	.word	alt_cb_patch_nops-.Ltmp29
	.hword	32794
	.byte	.Ltmp27-.Ltmp26
	.byte	.Ltmp30-.Ltmp31
	.text

.Ltmp31:
.Ltmp30:

	//NO_APP
	add	x8, x8, #56
	//APP
	stadd	x23, [x8]

	//NO_APP
.LBB38_4:
	mov	w1, #524288
	bl	dma_buf_fd
	str	w0, [x20, x21, lsl #2]
	add	x21, x21, #1
	cmp	x21, #5
	b.ne	.LBB38_2
	b	.LBB38_6
.Ltmp25:
.LBB38_5:
	add	x8, x8, #56
	//APP
	// atomic64_add
	prfm	pstl1strm, [x8]
.Ltmp32:
	ldxr	x9, [x8]
	add	x9, x9, #1
	stxr	w10, x9, [x8]
	cbnz	w10, .Ltmp32
	//NO_APP
	b	.LBB38_4
.LBB38_6:
	mov	w0, wzr
	str	x20, [x19, #200]
	str	xzr, [x19, #104]
	b	.LBB38_8
.LBB38_7:
	mov	w0, #-12
.LBB38_8:
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldr	x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end38:
	.size	ebc_open, .Lfunc_end38-ebc_open

	.p2align	2
	.type	ebc_release,@function
ebc_release:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	ldr	x0, [x1, #200]
	mov	x29, sp
	bl	kfree
	mov	w0, wzr
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end39:
	.size	ebc_release, .Lfunc_end39-ebc_release

	.p2align	2
	.type	_copy_to_user,@function
_copy_to_user:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	mov	x29, sp
	tbnz	w9, #5, .LBB40_2
	ldr	x10, [x8]
	mov	x9, x0
	tbz	w10, #26, .LBB40_3
.LBB40_2:
	lsl	x9, x0, #8
	and	x9, x0, x9, asr #8
.LBB40_3:
	mov	x10, #549755813888
	sub	x10, x10, x2
	cmp	x10, x9
	b.lo	.LBB40_18
	//APP
.Ltmp34:
	b	.Ltmp33
.Ltmp35:
	.section	.altinstructions,"a",@progbits
.Ltmp36:
	.word	.Ltmp34-.Ltmp36
.Ltmp37:
	.word	alt_cb_patch_nops-.Ltmp37
	.hword	32769
	.byte	.Ltmp35-.Ltmp34
	.byte	.Ltmp38-.Ltmp39
	.text

.Ltmp39:
.Ltmp38:

	//NO_APP
	//APP
.Ltmp41:
	nop
.Ltmp42:
	.section	.altinstructions,"a",@progbits
.Ltmp43:
	.word	.Ltmp41-.Ltmp43
.Ltmp45:
	.word	.Ltmp44-.Ltmp45
	.hword	29
	.byte	.Ltmp42-.Ltmp41
	.byte	.Ltmp46-.Ltmp44
	.text

	.text	1
.Ltmp44:
	b	.Ltmp40
.Ltmp46:
.Ltmp47:
.org (.Ltmp47-(.Ltmp46-.Ltmp44))+(.Ltmp42-.Ltmp41), 0
.Ltmp48:
.org (.Ltmp48-(.Ltmp42-.Ltmp41))+(.Ltmp46-.Ltmp44), 0
	.text


	//NO_APP
.LBB40_6:
	//APP
.Ltmp49:
	mrs	x9, DAIF
.Ltmp50:
	.section	.altinstructions,"a",@progbits
.Ltmp51:
	.word	.Ltmp49-.Ltmp51
.Ltmp53:
	.word	.Ltmp52-.Ltmp53
	.hword	24
	.byte	.Ltmp50-.Ltmp49
	.byte	.Ltmp54-.Ltmp52
	.text

	.text	1
.Ltmp52:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384609


.Ltmp54:
.Ltmp55:
.org (.Ltmp55-(.Ltmp54-.Ltmp52))+(.Ltmp50-.Ltmp49), 0
.Ltmp56:
.org (.Ltmp56-(.Ltmp50-.Ltmp49))+(.Ltmp54-.Ltmp52), 0
	.text


	//NO_APP
	//APP
.Ltmp57:
	and	w10, w9, #0x80
.Ltmp58:
	.section	.altinstructions,"a",@progbits
.Ltmp59:
	.word	.Ltmp57-.Ltmp59
.Ltmp61:
	.word	.Ltmp60-.Ltmp61
	.hword	24
	.byte	.Ltmp58-.Ltmp57
	.byte	.Ltmp62-.Ltmp60
	.text

	.text	1
.Ltmp60:
	eor	w10, w9, #0xe0
.Ltmp62:
.Ltmp63:
.org (.Ltmp63-(.Ltmp62-.Ltmp60))+(.Ltmp58-.Ltmp57), 0
.Ltmp64:
.org (.Ltmp64-(.Ltmp58-.Ltmp57))+(.Ltmp62-.Ltmp60), 0
	.text


	//NO_APP
	cbnz	w10, .LBB40_10
	//APP
.Ltmp66:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp67:
	.word	.Ltmp66-.Ltmp67
.Ltmp68:
	.word	.Ltmp65-.Ltmp68
.Ltmp69:
	.xword	gic_nonsecure_priorities-.Ltmp69
	.text


	//NO_APP
	mov	w10, #96
.LBB40_9:
	//APP
.Ltmp70:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp71:
	.section	.altinstructions,"a",@progbits
.Ltmp72:
	.word	.Ltmp70-.Ltmp72
.Ltmp74:
	.word	.Ltmp73-.Ltmp74
	.hword	24
	.byte	.Ltmp71-.Ltmp70
	.byte	.Ltmp75-.Ltmp73
	.text

	.text	1
.Ltmp73:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd518460a


.Ltmp75:
.Ltmp76:
.org (.Ltmp76-(.Ltmp75-.Ltmp73))+(.Ltmp71-.Ltmp70), 0
.Ltmp77:
.org (.Ltmp77-(.Ltmp71-.Ltmp70))+(.Ltmp75-.Ltmp73), 0
	.text


	//NO_APP
.LBB40_10:
	ldr	x8, [x8, #8]
	//APP
	mrs	x10, TTBR1_EL1
	//NO_APP
	mov	x11, x8
	bfxil	x11, x10, #0, #48
	//APP
	msr	TTBR1_EL1, x11
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
	msr	TTBR0_EL1, x8
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp78:
	msr	DAIF, x9
.Ltmp79:
	.section	.altinstructions,"a",@progbits
.Ltmp80:
	.word	.Ltmp78-.Ltmp80
.Ltmp82:
	.word	.Ltmp81-.Ltmp82
	.hword	24
	.byte	.Ltmp79-.Ltmp78
	.byte	.Ltmp83-.Ltmp81
	.text

	.text	1
.Ltmp81:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609


.Ltmp83:
.Ltmp84:
.org (.Ltmp84-(.Ltmp83-.Ltmp81))+(.Ltmp79-.Ltmp78), 0
.Ltmp85:
.org (.Ltmp85-(.Ltmp79-.Ltmp78))+(.Ltmp83-.Ltmp81), 0
	.text


	//NO_APP
	//APP
.Ltmp87:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp88:
	.word	.Ltmp87-.Ltmp88
.Ltmp89:
	.word	.Ltmp86-.Ltmp89
.Ltmp90:
	.xword	gic_pmr_sync-.Ltmp90
	.text


	//NO_APP
.Ltmp40:
.LBB40_11:
	//APP
	and	x0, x0, #0xff7fffffffffffff

	//NO_APP
	bl	__arch_copy_to_user
	mov	x2, x0
	//APP
.Ltmp92:
	b	.Ltmp91
.Ltmp93:
	.section	.altinstructions,"a",@progbits
.Ltmp94:
	.word	.Ltmp92-.Ltmp94
.Ltmp95:
	.word	alt_cb_patch_nops-.Ltmp95
	.hword	32769
	.byte	.Ltmp93-.Ltmp92
	.byte	.Ltmp96-.Ltmp97
	.text

.Ltmp97:
.Ltmp96:

	//NO_APP
	//APP
.Ltmp99:
	nop
.Ltmp100:
	.section	.altinstructions,"a",@progbits
.Ltmp101:
	.word	.Ltmp99-.Ltmp101
.Ltmp103:
	.word	.Ltmp102-.Ltmp103
	.hword	29
	.byte	.Ltmp100-.Ltmp99
	.byte	.Ltmp104-.Ltmp102
	.text

	.text	1
.Ltmp102:
	b	.Ltmp98
.Ltmp104:
.Ltmp105:
.org (.Ltmp105-(.Ltmp104-.Ltmp102))+(.Ltmp100-.Ltmp99), 0
.Ltmp106:
.org (.Ltmp106-(.Ltmp100-.Ltmp99))+(.Ltmp104-.Ltmp102), 0
	.text


	//NO_APP
.LBB40_13:
	//APP
.Ltmp107:
	mrs	x8, DAIF
.Ltmp108:
	.section	.altinstructions,"a",@progbits
.Ltmp109:
	.word	.Ltmp107-.Ltmp109
.Ltmp111:
	.word	.Ltmp110-.Ltmp111
	.hword	24
	.byte	.Ltmp108-.Ltmp107
	.byte	.Ltmp112-.Ltmp110
	.text

	.text	1
.Ltmp110:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384608


.Ltmp112:
.Ltmp113:
.org (.Ltmp113-(.Ltmp112-.Ltmp110))+(.Ltmp108-.Ltmp107), 0
.Ltmp114:
.org (.Ltmp114-(.Ltmp108-.Ltmp107))+(.Ltmp112-.Ltmp110), 0
	.text


	//NO_APP
	//APP
.Ltmp115:
	and	w9, w8, #0x80
.Ltmp116:
	.section	.altinstructions,"a",@progbits
.Ltmp117:
	.word	.Ltmp115-.Ltmp117
.Ltmp119:
	.word	.Ltmp118-.Ltmp119
	.hword	24
	.byte	.Ltmp116-.Ltmp115
	.byte	.Ltmp120-.Ltmp118
	.text

	.text	1
.Ltmp118:
	eor	w9, w8, #0xe0
.Ltmp120:
.Ltmp121:
.org (.Ltmp121-(.Ltmp120-.Ltmp118))+(.Ltmp116-.Ltmp115), 0
.Ltmp122:
.org (.Ltmp122-(.Ltmp116-.Ltmp115))+(.Ltmp120-.Ltmp118), 0
	.text


	//NO_APP
	cbnz	w9, .LBB40_17
	//APP
.Ltmp124:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp125:
	.word	.Ltmp124-.Ltmp125
.Ltmp126:
	.word	.Ltmp123-.Ltmp126
.Ltmp127:
	.xword	gic_nonsecure_priorities-.Ltmp127
	.text


	//NO_APP
	mov	w9, #96
.LBB40_16:
	//APP
.Ltmp128:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp129:
	.section	.altinstructions,"a",@progbits
.Ltmp130:
	.word	.Ltmp128-.Ltmp130
.Ltmp132:
	.word	.Ltmp131-.Ltmp132
	.hword	24
	.byte	.Ltmp129-.Ltmp128
	.byte	.Ltmp133-.Ltmp131
	.text

	.text	1
.Ltmp131:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609


.Ltmp133:
.Ltmp134:
.org (.Ltmp134-(.Ltmp133-.Ltmp131))+(.Ltmp129-.Ltmp128), 0
.Ltmp135:
.org (.Ltmp135-(.Ltmp129-.Ltmp128))+(.Ltmp133-.Ltmp131), 0
	.text


	//NO_APP
.LBB40_17:
	//APP
	mrs	x9, TTBR1_EL1
	//NO_APP
	and	x9, x9, #0xffffffffffff
	sub	x10, x9, #1, lsl #12
	//APP
	msr	TTBR0_EL1, x10
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
	msr	TTBR1_EL1, x9
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp136:
	msr	DAIF, x8
.Ltmp137:
	.section	.altinstructions,"a",@progbits
.Ltmp138:
	.word	.Ltmp136-.Ltmp138
.Ltmp140:
	.word	.Ltmp139-.Ltmp140
	.hword	24
	.byte	.Ltmp137-.Ltmp136
	.byte	.Ltmp141-.Ltmp139
	.text

	.text	1
.Ltmp139:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608


.Ltmp141:
.Ltmp142:
.org (.Ltmp142-(.Ltmp141-.Ltmp139))+(.Ltmp137-.Ltmp136), 0
.Ltmp143:
.org (.Ltmp143-(.Ltmp137-.Ltmp136))+(.Ltmp141-.Ltmp139), 0
	.text


	//NO_APP
	//APP
.Ltmp145:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp146:
	.word	.Ltmp145-.Ltmp146
.Ltmp147:
	.word	.Ltmp144-.Ltmp147
.Ltmp148:
	.xword	gic_pmr_sync-.Ltmp148
	.text


	//NO_APP
.Ltmp98:
.LBB40_18:
	mov	x0, x2
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Ltmp33:
.LBB40_19:
	adrp	x9, cpu_hwcaps
	ldr	x9, [x9, :lo12:cpu_hwcaps]
	tbnz	w9, #29, .LBB40_11
	b	.LBB40_6
.Ltmp86:
.LBB40_20:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB40_11
.Ltmp91:
.LBB40_21:
	adrp	x8, cpu_hwcaps
	ldr	x8, [x8, :lo12:cpu_hwcaps]
	tbnz	w8, #29, .LBB40_18
	b	.LBB40_13
.Ltmp144:
.LBB40_22:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB40_18
.Ltmp65:
.LBB40_23:
	mov	w10, #160
	b	.LBB40_9
.Ltmp123:
.LBB40_24:
	mov	w9, #160
	b	.LBB40_16
.Lfunc_end40:
	.size	_copy_to_user, .Lfunc_end40-_copy_to_user

	.p2align	2
	.type	_copy_from_user,@function
_copy_from_user:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	stp	x20, x19, [sp, #32]
	mov	x19, x2
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	mov	x20, x0
	str	x21, [sp, #16]
	mov	x29, sp
	tbnz	w9, #5, .LBB41_2
	ldr	x10, [x8]
	mov	x9, x1
	tbz	w10, #26, .LBB41_3
.LBB41_2:
	lsl	x9, x1, #8
	and	x9, x1, x9, asr #8
.LBB41_3:
	mov	x10, #549755813888
	mov	x21, x19
	sub	x10, x10, x19
	cmp	x10, x9
	b.lo	.LBB41_18
	//APP
.Ltmp150:
	b	.Ltmp149
.Ltmp151:
	.section	.altinstructions,"a",@progbits
.Ltmp152:
	.word	.Ltmp150-.Ltmp152
.Ltmp153:
	.word	alt_cb_patch_nops-.Ltmp153
	.hword	32769
	.byte	.Ltmp151-.Ltmp150
	.byte	.Ltmp154-.Ltmp155
	.text

.Ltmp155:
.Ltmp154:

	//NO_APP
	//APP
.Ltmp157:
	nop
.Ltmp158:
	.section	.altinstructions,"a",@progbits
.Ltmp159:
	.word	.Ltmp157-.Ltmp159
.Ltmp161:
	.word	.Ltmp160-.Ltmp161
	.hword	29
	.byte	.Ltmp158-.Ltmp157
	.byte	.Ltmp162-.Ltmp160
	.text

	.text	1
.Ltmp160:
	b	.Ltmp156
.Ltmp162:
.Ltmp163:
.org (.Ltmp163-(.Ltmp162-.Ltmp160))+(.Ltmp158-.Ltmp157), 0
.Ltmp164:
.org (.Ltmp164-(.Ltmp158-.Ltmp157))+(.Ltmp162-.Ltmp160), 0
	.text


	//NO_APP
.LBB41_6:
	//APP
.Ltmp165:
	mrs	x9, DAIF
.Ltmp166:
	.section	.altinstructions,"a",@progbits
.Ltmp167:
	.word	.Ltmp165-.Ltmp167
.Ltmp169:
	.word	.Ltmp168-.Ltmp169
	.hword	24
	.byte	.Ltmp166-.Ltmp165
	.byte	.Ltmp170-.Ltmp168
	.text

	.text	1
.Ltmp168:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384609


.Ltmp170:
.Ltmp171:
.org (.Ltmp171-(.Ltmp170-.Ltmp168))+(.Ltmp166-.Ltmp165), 0
.Ltmp172:
.org (.Ltmp172-(.Ltmp166-.Ltmp165))+(.Ltmp170-.Ltmp168), 0
	.text


	//NO_APP
	//APP
.Ltmp173:
	and	w10, w9, #0x80
.Ltmp174:
	.section	.altinstructions,"a",@progbits
.Ltmp175:
	.word	.Ltmp173-.Ltmp175
.Ltmp177:
	.word	.Ltmp176-.Ltmp177
	.hword	24
	.byte	.Ltmp174-.Ltmp173
	.byte	.Ltmp178-.Ltmp176
	.text

	.text	1
.Ltmp176:
	eor	w10, w9, #0xe0
.Ltmp178:
.Ltmp179:
.org (.Ltmp179-(.Ltmp178-.Ltmp176))+(.Ltmp174-.Ltmp173), 0
.Ltmp180:
.org (.Ltmp180-(.Ltmp174-.Ltmp173))+(.Ltmp178-.Ltmp176), 0
	.text


	//NO_APP
	cbnz	w10, .LBB41_10
	//APP
.Ltmp182:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp183:
	.word	.Ltmp182-.Ltmp183
.Ltmp184:
	.word	.Ltmp181-.Ltmp184
.Ltmp185:
	.xword	gic_nonsecure_priorities-.Ltmp185
	.text


	//NO_APP
	mov	w10, #96
.LBB41_9:
	//APP
.Ltmp186:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp187:
	.section	.altinstructions,"a",@progbits
.Ltmp188:
	.word	.Ltmp186-.Ltmp188
.Ltmp190:
	.word	.Ltmp189-.Ltmp190
	.hword	24
	.byte	.Ltmp187-.Ltmp186
	.byte	.Ltmp191-.Ltmp189
	.text

	.text	1
.Ltmp189:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd518460a


.Ltmp191:
.Ltmp192:
.org (.Ltmp192-(.Ltmp191-.Ltmp189))+(.Ltmp187-.Ltmp186), 0
.Ltmp193:
.org (.Ltmp193-(.Ltmp187-.Ltmp186))+(.Ltmp191-.Ltmp189), 0
	.text


	//NO_APP
.LBB41_10:
	ldr	x8, [x8, #8]
	//APP
	mrs	x10, TTBR1_EL1
	//NO_APP
	mov	x11, x8
	bfxil	x11, x10, #0, #48
	//APP
	msr	TTBR1_EL1, x11
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
	msr	TTBR0_EL1, x8
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp194:
	msr	DAIF, x9
.Ltmp195:
	.section	.altinstructions,"a",@progbits
.Ltmp196:
	.word	.Ltmp194-.Ltmp196
.Ltmp198:
	.word	.Ltmp197-.Ltmp198
	.hword	24
	.byte	.Ltmp195-.Ltmp194
	.byte	.Ltmp199-.Ltmp197
	.text

	.text	1
.Ltmp197:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609


.Ltmp199:
.Ltmp200:
.org (.Ltmp200-(.Ltmp199-.Ltmp197))+(.Ltmp195-.Ltmp194), 0
.Ltmp201:
.org (.Ltmp201-(.Ltmp195-.Ltmp194))+(.Ltmp199-.Ltmp197), 0
	.text


	//NO_APP
	//APP
.Ltmp203:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp204:
	.word	.Ltmp203-.Ltmp204
.Ltmp205:
	.word	.Ltmp202-.Ltmp205
.Ltmp206:
	.xword	gic_pmr_sync-.Ltmp206
	.text


	//NO_APP
.Ltmp156:
.LBB41_11:
	//APP
	and	x1, x1, #0xff7fffffffffffff

	//NO_APP
	mov	x0, x20
	mov	x2, x19
	bl	__arch_copy_from_user
	mov	x21, x0
	//APP
.Ltmp208:
	b	.Ltmp207
.Ltmp209:
	.section	.altinstructions,"a",@progbits
.Ltmp210:
	.word	.Ltmp208-.Ltmp210
.Ltmp211:
	.word	alt_cb_patch_nops-.Ltmp211
	.hword	32769
	.byte	.Ltmp209-.Ltmp208
	.byte	.Ltmp212-.Ltmp213
	.text

.Ltmp213:
.Ltmp212:

	//NO_APP
	//APP
.Ltmp215:
	nop
.Ltmp216:
	.section	.altinstructions,"a",@progbits
.Ltmp217:
	.word	.Ltmp215-.Ltmp217
.Ltmp219:
	.word	.Ltmp218-.Ltmp219
	.hword	29
	.byte	.Ltmp216-.Ltmp215
	.byte	.Ltmp220-.Ltmp218
	.text

	.text	1
.Ltmp218:
	b	.Ltmp214
.Ltmp220:
.Ltmp221:
.org (.Ltmp221-(.Ltmp220-.Ltmp218))+(.Ltmp216-.Ltmp215), 0
.Ltmp222:
.org (.Ltmp222-(.Ltmp216-.Ltmp215))+(.Ltmp220-.Ltmp218), 0
	.text


	//NO_APP
.LBB41_13:
	//APP
.Ltmp223:
	mrs	x8, DAIF
.Ltmp224:
	.section	.altinstructions,"a",@progbits
.Ltmp225:
	.word	.Ltmp223-.Ltmp225
.Ltmp227:
	.word	.Ltmp226-.Ltmp227
	.hword	24
	.byte	.Ltmp224-.Ltmp223
	.byte	.Ltmp228-.Ltmp226
	.text

	.text	1
.Ltmp226:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384608


.Ltmp228:
.Ltmp229:
.org (.Ltmp229-(.Ltmp228-.Ltmp226))+(.Ltmp224-.Ltmp223), 0
.Ltmp230:
.org (.Ltmp230-(.Ltmp224-.Ltmp223))+(.Ltmp228-.Ltmp226), 0
	.text


	//NO_APP
	//APP
.Ltmp231:
	and	w9, w8, #0x80
.Ltmp232:
	.section	.altinstructions,"a",@progbits
.Ltmp233:
	.word	.Ltmp231-.Ltmp233
.Ltmp235:
	.word	.Ltmp234-.Ltmp235
	.hword	24
	.byte	.Ltmp232-.Ltmp231
	.byte	.Ltmp236-.Ltmp234
	.text

	.text	1
.Ltmp234:
	eor	w9, w8, #0xe0
.Ltmp236:
.Ltmp237:
.org (.Ltmp237-(.Ltmp236-.Ltmp234))+(.Ltmp232-.Ltmp231), 0
.Ltmp238:
.org (.Ltmp238-(.Ltmp232-.Ltmp231))+(.Ltmp236-.Ltmp234), 0
	.text


	//NO_APP
	cbnz	w9, .LBB41_17
	//APP
.Ltmp240:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp241:
	.word	.Ltmp240-.Ltmp241
.Ltmp242:
	.word	.Ltmp239-.Ltmp242
.Ltmp243:
	.xword	gic_nonsecure_priorities-.Ltmp243
	.text


	//NO_APP
	mov	w9, #96
.LBB41_16:
	//APP
.Ltmp244:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp245:
	.section	.altinstructions,"a",@progbits
.Ltmp246:
	.word	.Ltmp244-.Ltmp246
.Ltmp248:
	.word	.Ltmp247-.Ltmp248
	.hword	24
	.byte	.Ltmp245-.Ltmp244
	.byte	.Ltmp249-.Ltmp247
	.text

	.text	1
.Ltmp247:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609


.Ltmp249:
.Ltmp250:
.org (.Ltmp250-(.Ltmp249-.Ltmp247))+(.Ltmp245-.Ltmp244), 0
.Ltmp251:
.org (.Ltmp251-(.Ltmp245-.Ltmp244))+(.Ltmp249-.Ltmp247), 0
	.text


	//NO_APP
.LBB41_17:
	//APP
	mrs	x9, TTBR1_EL1
	//NO_APP
	and	x9, x9, #0xffffffffffff
	sub	x10, x9, #1, lsl #12
	//APP
	msr	TTBR0_EL1, x10
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
	msr	TTBR1_EL1, x9
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp252:
	msr	DAIF, x8
.Ltmp253:
	.section	.altinstructions,"a",@progbits
.Ltmp254:
	.word	.Ltmp252-.Ltmp254
.Ltmp256:
	.word	.Ltmp255-.Ltmp256
	.hword	24
	.byte	.Ltmp253-.Ltmp252
	.byte	.Ltmp257-.Ltmp255
	.text

	.text	1
.Ltmp255:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608


.Ltmp257:
.Ltmp258:
.org (.Ltmp258-(.Ltmp257-.Ltmp255))+(.Ltmp253-.Ltmp252), 0
.Ltmp259:
.org (.Ltmp259-(.Ltmp253-.Ltmp252))+(.Ltmp257-.Ltmp255), 0
	.text


	//NO_APP
	//APP
.Ltmp261:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp262:
	.word	.Ltmp261-.Ltmp262
.Ltmp263:
	.word	.Ltmp260-.Ltmp263
.Ltmp264:
	.xword	gic_pmr_sync-.Ltmp264
	.text


	//NO_APP
.Ltmp214:
.LBB41_18:
	cbnz	x21, .LBB41_20
.LBB41_19:
	ldp	x20, x19, [sp, #32]
	mov	x0, x21
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB41_20:
	sub	x8, x19, x21
	mov	w1, wzr
	add	x0, x20, x8
	mov	x2, x21
	bl	memset
	b	.LBB41_19
.Ltmp149:
.LBB41_21:
	adrp	x9, cpu_hwcaps
	ldr	x9, [x9, :lo12:cpu_hwcaps]
	tbnz	w9, #29, .LBB41_11
	b	.LBB41_6
.Ltmp202:
.LBB41_22:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB41_11
.Ltmp207:
.LBB41_23:
	adrp	x8, cpu_hwcaps
	ldr	x8, [x8, :lo12:cpu_hwcaps]
	tbnz	w8, #29, .LBB41_18
	b	.LBB41_13
.Ltmp260:
.LBB41_24:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB41_18
.Ltmp181:
.LBB41_25:
	mov	w10, #160
	b	.LBB41_9
.Ltmp239:
.LBB41_26:
	mov	w9, #160
	b	.LBB41_16
.Lfunc_end41:
	.size	_copy_from_user, .Lfunc_end41-_copy_from_user

	.p2align	2
	.type	waveform_mmap,@function
waveform_mmap:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	adrp	x8, global_ebc
	ldr	x9, [x1, #16]
	str	x21, [sp, #16]
	mov	x29, sp
	stp	x20, x19, [sp, #32]
	mov	x19, x1
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w21, [x9, #152]
	ldr	w9, [x1, #40]
	ldr	x20, [x8, #264]
	cmp	w9, w21
	b.eq	.LBB42_2
	ldr	x0, [x19, #48]
	bl	down_write
	str	w21, [x19, #40]
	ldr	x0, [x19, #48]
	bl	up_write
.LBB42_2:
	ldp	x4, x8, [x19, #24]
	mov	w10, #16384
	lsr	x2, x20, #12
	ldp	x1, x9, [x19]
	movk	w10, #1028, lsl #16
	mov	x0, x19
	orr	x8, x8, x10
	sub	x3, x9, x1
	str	x8, [x19, #32]
	bl	remap_pfn_range
	ldp	x20, x19, [sp, #32]
	mov	w8, #-11
	cmp	w0, #0
	ldr	x21, [sp, #16]
	csel	w0, wzr, w8, eq
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end42:
	.size	waveform_mmap, .Lfunc_end42-waveform_mmap

	.p2align	2
	.type	waveform_open,@function
waveform_open:
	mov	w0, wzr
	str	xzr, [x1, #104]
	ret
.Lfunc_end43:
	.size	waveform_open, .Lfunc_end43-waveform_open

	.p2align	2
	.type	waveform_version_read,@function
waveform_version_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	mov	x29, sp
	mov	x19, x2
	bl	epd_lut_get_wf_version
	adrp	x1, .L.str.134
	mov	x2, x0
	add	x1, x1, :lo12:.L.str.134
	mov	x0, x19
	bl	sprintf
	ldr	x19, [sp, #16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end44:
	.size	waveform_version_read, .Lfunc_end44-waveform_version_read

	.p2align	2
	.type	pmic_name_read,@function
pmic_name_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.134
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.134
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x8, [x8, #16]
	add	x2, x8, #8
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end45:
	.size	pmic_name_read, .Lfunc_end45-pmic_name_read

	.p2align	2
	.type	pmic_temp_read,@function
pmic_temp_read:
	sub	sp, sp, #48
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x9, global_ebc
	str	x19, [sp, #32]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x2
	add	x29, sp, #16
	str	x8, [sp, #8]
	ldr	x8, [x9, :lo12:global_ebc]
	str	wzr, [sp, #4]
	ldr	x0, [x8, #16]
	cbz	x0, .LBB46_2
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	blr	x8
	b	.LBB46_3
.LBB46_2:
	ldr	x0, [x8, #32]
	add	x1, sp, #4
	bl	thermal_zone_get_temp
.LBB46_3:
	adrp	x1, .L.str.137
	ldr	w2, [sp, #4]
	add	x1, x1, :lo12:.L.str.137
	mov	x0, x19
	bl	sprintf
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB46_5
	ldp	x29, x30, [sp, #16]
	sxtw	x0, w0
	ldr	x19, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #48
	ret
.LBB46_5:
	bl	__stack_chk_fail
.Lfunc_end46:
	.size	pmic_temp_read, .Lfunc_end46-pmic_temp_read

	.p2align	2
	.type	pmic_vcom_read,@function
pmic_vcom_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	adrp	x8, global_ebc
	str	x19, [sp, #16]
	mov	x19, x2
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x0, [x8, #16]
	cbz	x0, .LBB47_2
	ldr	x8, [x0, #64]
	blr	x8
	mov	w2, w0
	b	.LBB47_3
.LBB47_2:
	ldr	x0, [x8, #24]
	bl	regulator_get_voltage
	mov	w8, #19923
	movk	w8, #4194, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w2, w8, w9
.LBB47_3:
	adrp	x1, .L.str.137
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.137
	bl	sprintf
	ldr	x19, [sp, #16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end47:
	.size	pmic_vcom_read, .Lfunc_end47-pmic_vcom_read

	.p2align	2
	.type	pmic_vcom_write,@function
pmic_vcom_write:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x9, global_ebc
	str	x21, [sp, #32]
	mov	w1, wzr
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x2
	add	x2, sp, #4
	mov	x0, x20
	add	x29, sp, #16
	mov	x19, x3
	str	x8, [sp, #8]
	ldr	x21, [x9, :lo12:global_ebc]
	str	wzr, [sp, #4]
	bl	kstrtouint
	cbnz	w0, .LBB48_5
	ldr	x0, [x21, #16]
	cbz	x0, .LBB48_3
	ldr	w1, [sp, #4]
	bl	ebc_pmic_set_vcom
	cbz	w0, .LBB48_7
	b	.LBB48_4
.LBB48_3:
	ldr	x0, [x21, #24]
	ldr	w1, [sp, #4]
	bl	ebc_regulator_set_vcom
	cbz	w0, .LBB48_7
.LBB48_4:
	adrp	x1, .L.str.140
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.140
	bl	_dev_err
	b	.LBB48_6
.LBB48_5:
	adrp	x1, .L.str.139
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.139
	mov	x2, x20
	bl	_dev_err
.LBB48_6:
	mov	x19, #-1
.LBB48_7:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB48_9
	mov	x0, x19
	ldr	x21, [sp, #32]
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB48_9:
	bl	__stack_chk_fail
.Lfunc_end48:
	.size	pmic_vcom_write, .Lfunc_end48-pmic_vcom_write

	.p2align	2
	.type	ebc_version_read,@function
ebc_version_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	mov	x0, x2
	adrp	x1, .L.str.134
	adrp	x2, .L.str.2
	add	x1, x1, :lo12:.L.str.134
	add	x2, x2, :lo12:.L.str.2
	mov	x29, sp
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end49:
	.size	ebc_version_read, .Lfunc_end49-ebc_version_read

	.p2align	2
	.type	ebc_state_read,@function
ebc_state_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.137
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.137
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w2, [x8, #664]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end50:
	.size	ebc_state_read, .Lfunc_end50-ebc_state_read

	.p2align	2
	.type	ebc_buf_state_read,@function
ebc_buf_state_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	mov	x0, x2
	mov	x29, sp
	bl	ebc_buf_state_show
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end51:
	.size	ebc_buf_state_read, .Lfunc_end51-ebc_buf_state_read

	.p2align	2
	.type	auto_frame_state_read,@function
auto_frame_state_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldp	w10, w9, [x8, #116]
	mul	w9, w10, w9
	cbz	w9, .LBB52_4
	ldr	x11, [x8, #384]
	mov	w10, wzr
.LBB52_2:
	ldrb	w8, [x11, w10, sxtw]
	cbnz	w8, .LBB52_5
	add	w10, w10, #1
	cmp	w9, w10
	b.ne	.LBB52_2
.LBB52_4:
	mov	w8, #2608
	mov	w0, #2
	strb	wzr, [x2, #2]
	strh	w8, [x2]
	b	.LBB52_6
.LBB52_5:
	adrp	x1, .L.str.137
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.137
	mov	w2, w8
	bl	sprintf
	sxtw	x0, w0
.LBB52_6:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end52:
	.size	auto_frame_state_read, .Lfunc_end52-auto_frame_state_read

	.p2align	2
	.type	ebc_debug_level_read,@function
ebc_debug_level_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.137
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.137
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w2, [x8, #800]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end53:
	.size	ebc_debug_level_read, .Lfunc_end53-ebc_debug_level_read

	.p2align	2
	.type	ebc_debug_level_write,@function
ebc_debug_level_write:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x9, global_ebc
	str	x21, [sp, #32]
	mov	w1, wzr
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x2
	add	x2, sp, #4
	mov	x0, x20
	add	x29, sp, #16
	mov	x19, x3
	str	x8, [sp, #8]
	ldr	x21, [x9, :lo12:global_ebc]
	str	wzr, [sp, #4]
	bl	kstrtouint
	cbnz	w0, .LBB54_4
	ldr	w8, [sp, #4]
	str	w8, [x21, #800]
.LBB54_2:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB54_5
	mov	x0, x19
	ldr	x21, [sp, #32]
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB54_4:
	adrp	x1, .L.str.139
	ldr	x0, [x21, #320]
	add	x1, x1, :lo12:.L.str.139
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1
	b	.LBB54_2
.LBB54_5:
	bl	__stack_chk_fail
.Lfunc_end54:
	.size	ebc_debug_level_write, .Lfunc_end54-ebc_debug_level_write

	.p2align	2
	.type	wf_data_write,@function
wf_data_write:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.148
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.148
	stp	x26, x25, [sp, #32]
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #80]
	stp	x28, x27, [sp, #16]
	mov	x19, x3
	stp	x24, x23, [sp, #48]
	ldr	x25, [x8, #344]
	stp	x22, x21, [sp, #64]
	ldrb	w20, [x8, #328]
	bl	strstr
	cbnz	x0, .LBB55_2
.LBB55_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.LBB55_2:
	adrp	x0, .L.str.149
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.149
	bl	_printk
	adrp	x22, .L.str.150
	adrp	x23, .L.str.151
	mov	x21, xzr
	add	x22, x22, :lo12:.L.str.150
	add	x23, x23, :lo12:.L.str.151
.LBB55_3:
	mov	x24, xzr
	mov	x26, x25
.LBB55_4:
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB55_7
	mov	x27, x20
	mov	x28, x26
.LBB55_6:
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	add	x28, x28, #1024
	subs	x27, x27, #1
	b.ne	.LBB55_6
.LBB55_7:
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB55_4
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB55_3
	b	.LBB55_1
.Lfunc_end55:
	.size	wf_data_write, .Lfunc_end55-wf_data_write

	.p2align	2
	.type	ori_wf_data_write,@function
ori_wf_data_write:
	sub	sp, sp, #160
	str	x30, [x18], #8
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	stp	x28, x27, [sp, #80]
	mov	w9, #-1
	stp	x26, x25, [sp, #96]
	mov	w0, #262144
	stp	x24, x23, [sp, #112]
	mov	w1, #3520
	stp	x22, x21, [sp, #128]
	mov	x21, x2
	stp	x20, x19, [sp, #144]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x3
	stur	x8, [x29, #-8]
	stp	w9, w9, [sp, #16]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	bl	kmalloc_large
	cbnz	x0, .LBB56_2
	adrp	x0, .L.str.153
	add	x0, x0, :lo12:.L.str.153
	bl	_printk
	b	.LBB56_17
.LBB56_2:
	adrp	x1, .L.str.148
	mov	x19, x0
	str	x0, [sp, #40]
	add	x1, x1, :lo12:.L.str.148
	mov	x0, x21
	bl	strstr
	cbnz	x0, .LBB56_4
	adrp	x0, .L.str.156
	add	x0, x0, :lo12:.L.str.156
	b	.LBB56_16
.LBB56_4:
	adrp	x1, .L.str.154
	add	x2, sp, #20
	add	x1, x1, :lo12:.L.str.154
	add	x3, sp, #16
	mov	x0, x21
	bl	sscanf
	ldp	w3, w2, [sp, #16]
	adrp	x0, .L.str.155
	adrp	x1, .L__func__.ori_wf_data_write
	add	x0, x0, :lo12:.L.str.155
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
	ldr	w1, [sp, #20]
	cmp	w1, #8
	b.hi	.LBB56_15
	ldr	w2, [sp, #16]
	tbnz	w2, #31, .LBB56_15
	cmp	w2, #50
	b.gt	.LBB56_15
	add	x0, sp, #24
	mov	w3, #32
	str	x20, [sp, #8]
	bl	epd_lut_get_original
	ldrb	w21, [sp, #24]
	adrp	x0, .L.str.149
	add	x0, x0, :lo12:.L.str.149
	mov	w1, w21
	bl	_printk
	adrp	x23, .L.str.150
	adrp	x24, .L.str.151
	mov	x22, xzr
	mov	x20, x19
	add	x23, x23, :lo12:.L.str.150
	add	x24, x24, :lo12:.L.str.151
.LBB56_8:
	mov	x25, xzr
	mov	x26, x20
.LBB56_9:
	mov	x0, x23
	mov	w1, w25
	mov	w2, w22
	bl	_printk
	cbz	w21, .LBB56_12
	mov	x28, x21
	mov	x27, x26
.LBB56_11:
	ldrb	w1, [x27]
	mov	x0, x24
	bl	_printk
	add	x27, x27, #1024
	subs	x28, x28, #1
	b.ne	.LBB56_11
.LBB56_12:
	add	x25, x25, #1
	add	x26, x26, #32
	cmp	x25, #32
	b.ne	.LBB56_9
	add	x22, x22, #1
	add	x20, x20, #1
	cmp	x22, #32
	b.ne	.LBB56_8
	mov	x0, x19
	bl	kfree
	ldr	x20, [sp, #8]
	b	.LBB56_17
.LBB56_15:
	adrp	x0, .L.str.157
	add	x0, x0, :lo12:.L.str.157
.LBB56_16:
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
.LBB56_17:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB56_19
	mov	x0, x20
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB56_19:
	bl	__stack_chk_fail
.Lfunc_end56:
	.size	ori_wf_data_write, .Lfunc_end56-ori_wf_data_write

	.p2align	2
	.type	ebc_suspend,@function
ebc_suspend:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	ldr	x19, [x0, #120]
	mov	w1, wzr
	mov	x29, sp
	mov	x0, x19
	bl	ebc_power_set
	mov	w8, #1
	ldr	x0, [x19, #16]
	str	w8, [x19, #756]
	cbz	x0, .LBB57_2
	ldr	x8, [x0, #40]
	blr	x8
.LBB57_2:
	adrp	x1, .L.str.158
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.158
	bl	_dev_info
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end57:
	.size	ebc_suspend, .Lfunc_end57-ebc_suspend

	.p2align	2
	.type	ebc_resume,@function
ebc_resume:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	ldr	x19, [x0, #120]
	mov	x29, sp
	ldr	x0, [x19, #16]
	cbz	x0, .LBB58_2
	ldr	x8, [x0, #48]
	blr	x8
.LBB58_2:
	adrp	x1, .L.str.159
	ldr	x0, [x19, #320]
	add	x1, x1, :lo12:.L.str.159
	str	wzr, [x19, #756]
	bl	_dev_info
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end58:
	.size	ebc_resume, .Lfunc_end58-ebc_resume

	.type	ebc_driver,@object
	.data
	.p2align	3
ebc_driver:
	.xword	ebc_probe
	.xword	ebc_remove
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	.L.str
	.xword	0
	.xword	0
	.xword	0
	.byte	0
	.zero	3
	.word	0
	.xword	ebc_match
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	ebc_pm
	.xword	0
	.xword	0
	.xword	0
	.byte	0
	.byte	0
	.zero	6
	.size	ebc_driver, 208

	.type	__UNIQUE_ID___addressable_ebc_init466,@object
	.section	.discard.addressable,"aw",@progbits
	.p2align	3
__UNIQUE_ID___addressable_ebc_init466:
	.xword	ebc_init
	.size	__UNIQUE_ID___addressable_ebc_init466, 8

	.type	__exitcall_ebc_exit,@object
	.section	.exitcall.exit,"aw",@progbits
	.p2align	3
__exitcall_ebc_exit:
	.xword	ebc_exit
	.size	__exitcall_ebc_exit, 8

	.type	__UNIQUE_ID_author467,@object
	.section	.modinfo,"a",@progbits
__UNIQUE_ID_author467:
	.asciz	"rkebc.author=Zorro Liu <zorro.liu@rock-chips.com>"
	.size	__UNIQUE_ID_author467, 50

	.type	__UNIQUE_ID_description468,@object
__UNIQUE_ID_description468:
	.asciz	"rkebc.description=ROCKCHIP EBC Driver"
	.size	__UNIQUE_ID_description468, 38

	.type	__UNIQUE_ID_file469,@object
__UNIQUE_ID_file469:
	.asciz	"rkebc.file=$EBC_DEV_PATH/rkebc"
	.size	__UNIQUE_ID_file469, 31

	.type	__UNIQUE_ID_license470,@object
__UNIQUE_ID_license470:
	.asciz	"rkebc.license=GPL v2"
	.size	__UNIQUE_ID_license470, 21

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ebc-dev"
	.size	.L.str, 8

	.type	ebc_match,@object
	.section	.rodata,"a",@progbits
	.p2align	3
ebc_match:
	.zero	32
	.zero	32
	.asciz	"rockchip,ebc-dev\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.xword	0
	.zero	200
	.size	ebc_match, 400

	.type	ebc_pm,@object
	.p2align	3
ebc_pm:
	.xword	0
	.xword	0
	.xword	ebc_suspend
	.xword	ebc_resume
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	ebc_pm, 184

	.type	.L.str.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"rockchip ebc driver %s probe\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"7.11_y8"
	.size	.L.str.2, 8

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"cpu-code"
	.size	.L.str.3, 9

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"no chip info\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"read chip info failed\n"
	.size	.L.str.5, 23

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"chip err\n"
	.size	.L.str.6, 10

	.type	global_ebc,@object
	.local	global_ebc
	.comm	global_ebc,8,8
	.type	.L.str.7,@object
.L.str.7:
	.asciz	"ebc_tcon"
	.size	.L.str.7, 9

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"not find ebc tcon\n"
	.size	.L.str.8, 19

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"pmic"
	.size	.L.str.9, 5

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"wrong pmics number\n"
	.size	.L.str.10, 20

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"not find pmic node\n"
	.size	.L.str.11, 20

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"not find pmic i2c client\n"
	.size	.L.str.12, 26

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"use pmic%d\n"
	.size	.L.str.13, 12

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"vcom"
	.size	.L.str.14, 5

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"Failed to get vcom regulator\n"
	.size	.L.str.15, 30

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"thermal-zone"
	.size	.L.str.16, 13

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"Failed to get thermal zone name\n"
	.size	.L.str.17, 33

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"Failed to get thermal device\n"
	.size	.L.str.18, 30

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"Get PMIC device failed\n"
	.size	.L.str.19, 24

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"ebc-dmc-notify-enable"
	.size	.L.str.20, 22

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"failed to probe panel: %d\n"
	.size	.L.str.21, 27

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"buffer manage init failed\n"
	.size	.L.str.22, 27

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"lut table init failed\n"
	.size	.L.str.23, 23

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"task init failed\n"
	.size	.L.str.24, 18

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"rockchip ebc driver %s probe success\n"
	.size	.L.str.25, 38

	.type	ebc_auto_task,@object
	.local	ebc_auto_task
	.comm	ebc_auto_task,8,8
	.type	.L.str.26,@object
.L.str.26:
	.asciz	"overlay frame done\n"
	.size	.L.str.26, 20

	.type	ebc_thread_wq,@object
	.data
	.p2align	3
ebc_thread_wq:
	.zero	4
	.zero	4
	.xword	ebc_thread_wq+8
	.xword	ebc_thread_wq+8
	.size	ebc_thread_wq, 24

	.type	.L.str.27,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"auto task break\n"
	.size	.L.str.27, 17

	.type	.L.str.28,@object
.L.str.28:
	.asciz	"auto frame done\n"
	.size	.L.str.28, 17

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"part task break\n"
	.size	.L.str.29, 17

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"frame done\n"
	.size	.L.str.30, 12

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"panel,width"
	.size	.L.str.31, 12

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"panel,height"
	.size	.L.str.32, 13

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"panel,vir_width"
	.size	.L.str.33, 16

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"panel,vir_height"
	.size	.L.str.34, 17

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"panel,sdck"
	.size	.L.str.35, 11

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"panel,lsl"
	.size	.L.str.36, 10

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"panel,lbl"
	.size	.L.str.37, 10

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"panel,ldl"
	.size	.L.str.38, 10

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"panel,lel"
	.size	.L.str.39, 10

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"panel,gdck-sta"
	.size	.L.str.40, 15

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"panel,lgonl"
	.size	.L.str.41, 12

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"panel,fsl"
	.size	.L.str.42, 10

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"panel,fbl"
	.size	.L.str.43, 10

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"panel,fdl"
	.size	.L.str.44, 10

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"panel,fel"
	.size	.L.str.45, 10

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"panel,panel_16bit"
	.size	.L.str.46, 18

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"panel,panel_color"
	.size	.L.str.47, 18

	.type	.L.str.48,@object
.L.str.48:
	.asciz	"panel,mirror"
	.size	.L.str.48, 13

	.type	.L.str.49,@object
.L.str.49:
	.asciz	"panel,width-mm"
	.size	.L.str.49, 15

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"panel,height-mm"
	.size	.L.str.50, 16

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"panel,disable_logo"
	.size	.L.str.51, 19

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"panel,rearrange"
	.size	.L.str.52, 16

	.type	.L.str.53,@object
.L.str.53:
	.asciz	"panel,sdoe_mode"
	.size	.L.str.53, 16

	.type	.L.str.54,@object
.L.str.54:
	.asciz	"panel,sdce_width"
	.size	.L.str.54, 17

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"panel,gds"
	.size	.L.str.55, 10

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"panel,gdl"
	.size	.L.str.56, 10

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"too large resolution, not support\n"
	.size	.L.str.57, 35

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"memory-region"
	.size	.L.str.58, 14

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"Couldn't address to resource for reserved memory\n"
	.size	.L.str.59, 50

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"reserved memory not enough, need 0x%x\n"
	.size	.L.str.60, 39

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"Couldn't remap for reserved memory\n"
	.size	.L.str.61, 36

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"waveform-region"
	.size	.L.str.62, 16

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"wf,mode_table"
	.size	.L.str.63, 14

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"%s:%d: failed to get mem from reserved\n"
	.size	.L.str.64, 40

	.type	.L__func__.ebc_lut_table_init,@object
.L__func__.ebc_lut_table_init:
	.asciz	"ebc_lut_table_init"
	.size	.L__func__.ebc_lut_table_init, 19

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.size	.L.str.65, 81

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"Failed to read waveform file from kernel, no waveform!!!\n"
	.size	.L.str.66, 58

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"ebc_task"
	.size	.L.str.67, 9

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"failed to create ebc_task thread\n"
	.size	.L.str.68, 34

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"ebc_taskup"
	.size	.L.str.69, 11

	.type	ebc_auto_assist_task,@object
	.local	ebc_auto_assist_task
	.comm	ebc_auto_assist_task,8,8
	.type	.L.str.70,@object
.L.str.70:
	.asciz	"failed to create ebc_taskup thread\n"
	.size	.L.str.70, 36

	.type	.L.str.71,@object
.L.str.71:
	.asciz	"ebc_thread"
	.size	.L.str.71, 11

	.type	ebc_task,@object
	.local	ebc_task
	.comm	ebc_task,8,8
	.type	.L.str.72,@object
.L.str.72:
	.asciz	"failed to run ebc thread\n"
	.size	.L.str.72, 26

	.type	ebc_auto_thread_sem,@object
	.data
	.p2align	3
ebc_auto_thread_sem:
	.zero	4
	.word	1
	.xword	ebc_auto_thread_sem+8
	.xword	ebc_auto_thread_sem+8
	.size	ebc_auto_thread_sem, 24

	.type	ebc_assist_finished_flag_sem,@object
	.p2align	3
ebc_assist_finished_flag_sem:
	.zero	4
	.word	1
	.xword	ebc_assist_finished_flag_sem+8
	.xword	ebc_assist_finished_flag_sem+8
	.size	ebc_assist_finished_flag_sem, 24

	.type	ebc_auto_assist_thread_sem,@object
	.p2align	3
ebc_auto_assist_thread_sem:
	.zero	4
	.word	1
	.xword	ebc_auto_assist_thread_sem+8
	.xword	ebc_auto_assist_thread_sem+8
	.size	ebc_auto_assist_thread_sem, 24

	.type	.L.str.73,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"ebc suspend, drop osd buf\n"
	.size	.L.str.73, 27

	.type	.L.str.74,@object
.L.str.74:
	.asciz	"break from part work, frame left = %d\n"
	.size	.L.str.74, 39

	.type	.L.str.75,@object
.L.str.75:
	.asciz	"break from fast mode, process it\n"
	.size	.L.str.75, 34

	.type	.L.str.76,@object
.L.str.76:
	.asciz	"overlay mode start, frame_total=%d, bw_frame = %d\n"
	.size	.L.str.76, 51

	.type	.L.str.77,@object
.L.str.77:
	.asciz	"ebc is busy now, waiting prev mode end...\n"
	.size	.L.str.77, 43

	.type	.L.str.78,@object
.L.str.78:
	.asciz	"prev refresh mode end\n"
	.size	.L.str.78, 23

	.type	.L.str.79,@object
.L.str.79:
	.asciz	"frame start under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.79, 55

	.type	.L.str.80,@object
.L.str.80:
	.asciz	"control bg update under overlay mode, overlay_bg_update=0\n"
	.size	.L.str.80, 59

	.type	.L.str.81,@object
.L.str.81:
	.asciz	"auto mode start, frame_total=%d\n"
	.size	.L.str.81, 33

	.type	.L.str.82,@object
.L.str.82:
	.asciz	"check_part_mode==0, no need refresh\n"
	.size	.L.str.82, 37

	.type	.L.str.83,@object
.L.str.83:
	.asciz	"check_diff_percent==2, full refresh\n"
	.size	.L.str.83, 37

	.type	.L.str.84,@object
.L.str.84:
	.asciz	"fast check_part_mode==0, no need refresh\n"
	.size	.L.str.84, 42

	.type	.L.str.85,@object
.L.str.85:
	.asciz	"change from fast mode and not complete, force full\n"
	.size	.L.str.85, 52

	.type	.L.str.86,@object
.L.str.86:
	.asciz	"frame start, mode = %d, framecount = %d vs %d\n"
	.size	.L.str.86, 47

	.type	.L.str.87,@object
.L.str.87:
	.asciz	"update repair buf\n"
	.size	.L.str.87, 19

	.type	.L.str.88,@object
.L.str.88:
	.asciz	"waiting frame done\n"
	.size	.L.str.88, 20

	.type	.L.str.89,@object
.L.str.89:
	.asciz	"----update repair buf timeout----\n"
	.size	.L.str.89, 35

	.type	.L.str.90,@object
.L.str.90:
	.asciz	"break from part work, do something before turn to overlay work\n"
	.size	.L.str.90, 64

	.type	.L.str.91,@object
.L.str.91:
	.asciz	"no buffer, do repair..........\n"
	.size	.L.str.91, 32

	.type	.L.str.92,@object
.L.str.92:
	.asciz	"no buffer, do last ghost remove..........\n"
	.size	.L.str.92, 43

	.type	.L.str.93,@object
.L.str.93:
	.asciz	"frame start, mode = %d, framecount = %d\n"
	.size	.L.str.93, 41

	.type	.L.str.94,@object
.L.str.94:
	.asciz	"ebc buffer mode %d error!!!\n"
	.size	.L.str.94, 29

	.type	.L.str.95,@object
.L.str.95:
	.asciz	"temperature = %d, out of range0~50 ,use 25 \n"
	.size	.L.str.95, 45

	.type	.L.str.96,@object
.L.str.96:
	.asciz	"temperature = %d, out of range0~50 ,use 50 \n"
	.size	.L.str.96, 45

	.type	.L.str.97,@object
.L.str.97:
	.asciz	"ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.size	.L.str.97, 46

	.type	.L.str.98,@object
.L.str.98:
	.asciz	"lut update use temperature = %d\n"
	.size	.L.str.98, 33

	.type	.L.str.99,@object
.L.str.99:
	.asciz	"get lut data failed\n"
	.size	.L.str.99, 21

	.type	.L.str.100,@object
.L.str.100:
	.asciz	"%s: overlay no need to update\n"
	.size	.L.str.100, 31

	.type	.L__func__.ebc_frame_start,@object
.L__func__.ebc_frame_start:
	.asciz	"ebc_frame_start"
	.size	.L__func__.ebc_frame_start, 16

	.type	.L.str.101,@object
.L.str.101:
	.asciz	"%s: auto no need to update\n"
	.size	.L.str.101, 28

	.type	.L.str.102,@object
.L.str.102:
	.asciz	"%s: overlay bg no need to update, overlay_bg_update=1\n"
	.size	.L.str.102, 55

	.type	.L__func__.ebc_overlay_bg_frame_start,@object
.L__func__.ebc_overlay_bg_frame_start:
	.asciz	"ebc_overlay_bg_frame_start"
	.size	.L__func__.ebc_overlay_bg_frame_start, 27

	.type	.L.str.103,@object
.L.str.103:
	.asciz	"ebc hw power on res:%d\n"
	.size	.L.str.103, 24

	.type	.L.str.104,@object
.L.str.104:
	.asciz	"ebc hw power off res:%d\n"
	.size	.L.str.104, 25

	.type	.L.str.105,@object
.L.str.105:
	.asciz	"ebc"
	.size	.L.str.105, 4

	.type	.L.str.106,@object
.L.str.106:
	.asciz	"ebc_frame_control_timeout, overlay_bg_update=1\n"
	.size	.L.str.106, 48

	.type	.L.str.107,@object
.L.str.107:
	.asciz	"ulogo_addr="
	.size	.L.str.107, 12

	.type	.L.str.108,@object
.L.str.108:
	.asciz	"klogo_addr="
	.size	.L.str.108, 12

	.type	.L.str.109,@object
.L.str.109:
	.asciz	"ulogo_addr=0x%x"
	.size	.L.str.109, 16

	.type	.L.str.110,@object
.L.str.110:
	.asciz	"have ulogo display, ulogo addr = 0x%x\n"
	.size	.L.str.110, 39

	.type	.L.str.111,@object
.L.str.111:
	.asciz	"malloc ulogo buffer failed\n"
	.size	.L.str.111, 28

	.type	.L.str.112,@object
.L.str.112:
	.asciz	"klogo_addr=0x%x"
	.size	.L.str.112, 16

	.type	.L.str.113,@object
.L.str.113:
	.asciz	"need show klogo, klogo addr = 0x%x\n"
	.size	.L.str.113, 36

	.type	.L.str.114,@object
.L.str.114:
	.asciz	"malloc klogo buffer failed\n"
	.size	.L.str.114, 28

	.type	.L.str.115,@object
.L.str.115:
	.asciz	"no uboot logo, panel init\n"
	.size	.L.str.115, 27

	.type	.L.str.116,@object
.L.str.116:
	.asciz	"ebc_dev_logo"
	.size	.L.str.116, 13

	.type	.L.str.117,@object
.L.str.117:
	.asciz	"ebc_dev_reset"
	.size	.L.str.117, 14

	.type	ebc_misc,@object
	.data
	.p2align	3
ebc_misc:
	.word	243
	.zero	4
	.xword	.L.str.105
	.xword	ebc_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0
	.zero	6
	.size	ebc_misc, 80

	.type	waveform_misc,@object
	.p2align	3
waveform_misc:
	.word	244
	.zero	4
	.xword	.L.str.131
	.xword	waveform_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0
	.zero	6
	.size	waveform_misc, 80

	.type	dev_attr_waveform_version,@object
	.p2align	3
dev_attr_waveform_version:
	.xword	.L.str.133
	.hword	292
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.size	dev_attr_waveform_version, 32

	.type	dev_attr_pmic_name,@object
	.p2align	3
dev_attr_pmic_name:
	.xword	.L.str.135
	.hword	292
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.size	dev_attr_pmic_name, 32

	.type	dev_attr_pmic_temp,@object
	.p2align	3
dev_attr_pmic_temp:
	.xword	.L.str.136
	.hword	292
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.size	dev_attr_pmic_temp, 32

	.type	dev_attr_pmic_vcom,@object
	.p2align	3
dev_attr_pmic_vcom:
	.xword	.L.str.138
	.hword	420
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.size	dev_attr_pmic_vcom, 32

	.type	dev_attr_ebc_version,@object
	.p2align	3
dev_attr_ebc_version:
	.xword	.L.str.141
	.hword	292
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.size	dev_attr_ebc_version, 32

	.type	dev_attr_ebc_state,@object
	.p2align	3
dev_attr_ebc_state:
	.xword	.L.str.142
	.hword	292
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.size	dev_attr_ebc_state, 32

	.type	dev_attr_ebc_buf_state,@object
	.p2align	3
dev_attr_ebc_buf_state:
	.xword	.L.str.143
	.hword	292
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.size	dev_attr_ebc_buf_state, 32

	.type	dev_attr_auto_frame_state,@object
	.p2align	3
dev_attr_auto_frame_state:
	.xword	.L.str.144
	.hword	292
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.size	dev_attr_auto_frame_state, 32

	.type	dev_attr_ebc_debug_level,@object
	.p2align	3
dev_attr_ebc_debug_level:
	.xword	.L.str.146
	.hword	420
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.size	dev_attr_ebc_debug_level, 32

	.type	dev_attr_wf_data,@object
	.p2align	3
dev_attr_wf_data:
	.xword	.L.str.147
	.hword	128
	.zero	6
	.xword	0
	.xword	wf_data_write
	.size	dev_attr_wf_data, 32

	.type	dev_attr_ori_wf_data,@object
	.p2align	3
dev_attr_ori_wf_data:
	.xword	.L.str.152
	.hword	128
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.size	dev_attr_ori_wf_data, 32

	.type	ebc_ops,@object
	.section	.rodata,"a",@progbits
	.p2align	3
ebc_ops:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	ebc_io_ctl
	.xword	ebc_io_ctl
	.xword	ebc_mmap
	.xword	0
	.xword	ebc_open
	.xword	0
	.xword	ebc_release
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	ebc_ops, 272

	.type	.L.str.119,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.119:
	.asciz	"%s: argp NULL\n"
	.size	.L.str.119, 15

	.type	.L__func__.ebc_io_ctl,@object
.L__func__.ebc_io_ctl:
	.asciz	"ebc_io_ctl"
	.size	.L__func__.ebc_io_ctl, 11

	.type	.L.str.120,@object
.L.str.120:
	.asciz	"enable bg control\n"
	.size	.L.str.120, 19

	.type	.L.str.121,@object
.L.str.121:
	.asciz	"disable bg control\n"
	.size	.L.str.121, 20

	.type	.L.str.122,@object
.L.str.122:
	.asciz	"enable ebc overlay, you can use osd buf to show something over the system display\n"
	.size	.L.str.122, 83

	.type	.L.str.123,@object
.L.str.123:
	.asciz	"disable ebc overlay\n"
	.size	.L.str.123, 21

	.type	.L.str.124,@object
.L.str.124:
	.asciz	"EBC_GET_BUFFER_INFO failed\n"
	.size	.L.str.124, 28

	.type	.L.str.125,@object
.L.str.125:
	.asciz	"EBC_FB_BLANK\n"
	.size	.L.str.125, 14

	.type	.L.str.126,@object
.L.str.126:
	.asciz	"EBC_FB_UNBLANK\n"
	.size	.L.str.126, 16

	.type	.L.str.127,@object
.L.str.127:
	.asciz	"EBC_ENABLE_REPAIR = %d\n"
	.size	.L.str.127, 24

	.type	.L.str.128,@object
.L.str.128:
	.asciz	"EBC_SET_FULL_REFRESH_WIDTH = %d\n"
	.size	.L.str.128, 33

	.type	.L.str.129,@object
.L.str.129:
	.asciz	"EBC_SET_FULL_REFRESH_TYPE = %d\n"
	.size	.L.str.129, 32

	.type	.L.str.130,@object
.L.str.130:
	.asciz	"%s: unknown cmd\n"
	.size	.L.str.130, 17

	.type	.L.str.131,@object
.L.str.131:
	.asciz	"waveform"
	.size	.L.str.131, 9

	.type	waveform_ops,@object
	.section	.rodata,"a",@progbits
	.p2align	3
waveform_ops:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	waveform_mmap
	.xword	0
	.xword	waveform_open
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	waveform_ops, 272

	.type	.L.str.133,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.133:
	.asciz	"waveform_version"
	.size	.L.str.133, 17

	.type	.L.str.134,@object
.L.str.134:
	.asciz	"%s\n"
	.size	.L.str.134, 4

	.type	.L.str.135,@object
.L.str.135:
	.asciz	"pmic_name"
	.size	.L.str.135, 10

	.type	.L.str.136,@object
.L.str.136:
	.asciz	"pmic_temp"
	.size	.L.str.136, 10

	.type	.L.str.137,@object
.L.str.137:
	.asciz	"%d\n"
	.size	.L.str.137, 4

	.type	.L.str.138,@object
.L.str.138:
	.asciz	"pmic_vcom"
	.size	.L.str.138, 10

	.type	.L.str.139,@object
.L.str.139:
	.asciz	"invalid value = %s\n"
	.size	.L.str.139, 20

	.type	.L.str.140,@object
.L.str.140:
	.asciz	"set vcom value failed\n"
	.size	.L.str.140, 23

	.type	.L.str.141,@object
.L.str.141:
	.asciz	"ebc_version"
	.size	.L.str.141, 12

	.type	.L.str.142,@object
.L.str.142:
	.asciz	"ebc_state"
	.size	.L.str.142, 10

	.type	.L.str.143,@object
.L.str.143:
	.asciz	"ebc_buf_state"
	.size	.L.str.143, 14

	.type	.L.str.144,@object
.L.str.144:
	.asciz	"auto_frame_state"
	.size	.L.str.144, 17

	.type	.L.str.145,@object
.L.str.145:
	.asciz	"0\n"
	.size	.L.str.145, 3

	.type	.L.str.146,@object
.L.str.146:
	.asciz	"ebc_debug_level"
	.size	.L.str.146, 16

	.type	.L.str.147,@object
.L.str.147:
	.asciz	"wf_data"
	.size	.L.str.147, 8

	.type	.L.str.148,@object
.L.str.148:
	.asciz	"603893"
	.size	.L.str.148, 7

	.type	.L.str.149,@object
.L.str.149:
	.asciz	"lutdata: %d frames\n"
	.size	.L.str.149, 20

	.type	.L.str.150,@object
.L.str.150:
	.asciz	"[%d-->%d]: \n"
	.size	.L.str.150, 13

	.type	.L.str.151,@object
.L.str.151:
	.asciz	"\001c\0017%d, "
	.size	.L.str.151, 9

	.type	.L.str.152,@object
.L.str.152:
	.asciz	"ori_wf_data"
	.size	.L.str.152, 12

	.type	.L.str.153,@object
.L.str.153:
	.asciz	"malloc wf_table buffer failed\n"
	.size	.L.str.153, 31

	.type	.L.str.154,@object
.L.str.154:
	.asciz	"603893 %d %d"
	.size	.L.str.154, 13

	.type	.L.str.155,@object
.L.str.155:
	.asciz	"%s: wf mode %d on temp %d\n"
	.size	.L.str.155, 27

	.type	.L__func__.ori_wf_data_write,@object
.L__func__.ori_wf_data_write:
	.asciz	"ori_wf_data_write"
	.size	.L__func__.ori_wf_data_write, 18

	.type	.L.str.156,@object
.L.str.156:
	.asciz	"%s: err code\n"
	.size	.L.str.156, 14

	.type	.L.str.157,@object
.L.str.157:
	.asciz	"%s: err lut_type or temp\n"
	.size	.L.str.157, 26

	.type	.L.str.158,@object
.L.str.158:
	.asciz	"device suspend\n"
	.size	.L.str.158, 16

	.type	.L.str.159,@object
.L.str.159:
	.asciz	"device resume\n"
	.size	.L.str.159, 15

	.ident	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ebc_exit
	.addrsig_sym ebc_init
	.addrsig_sym ebc_probe
	.addrsig_sym ebc_remove
	.addrsig_sym frame_done_callback
	.addrsig_sym ebc_auto_tast_function
	.addrsig_sym ebc_auto_assist_tast_function
	.addrsig_sym ebc_thread
	.addrsig_sym ebc_frame_control_timeout
	.addrsig_sym ebc_frame_timeout
	.addrsig_sym ebc_io_ctl
	.addrsig_sym ebc_mmap
	.addrsig_sym ebc_open
	.addrsig_sym ebc_release
	.addrsig_sym waveform_mmap
	.addrsig_sym waveform_open
	.addrsig_sym waveform_version_read
	.addrsig_sym pmic_name_read
	.addrsig_sym pmic_temp_read
	.addrsig_sym pmic_vcom_read
	.addrsig_sym pmic_vcom_write
	.addrsig_sym ebc_version_read
	.addrsig_sym ebc_state_read
	.addrsig_sym ebc_buf_state_read
	.addrsig_sym auto_frame_state_read
	.addrsig_sym ebc_debug_level_read
	.addrsig_sym ebc_debug_level_write
	.addrsig_sym wf_data_write
	.addrsig_sym ori_wf_data_write
	.addrsig_sym ebc_suspend
	.addrsig_sym ebc_resume
	.addrsig_sym ebc_driver
	.addrsig_sym __UNIQUE_ID___addressable_ebc_init466
	.addrsig_sym __exitcall_ebc_exit
	.addrsig_sym __UNIQUE_ID_author467
	.addrsig_sym __UNIQUE_ID_description468
	.addrsig_sym __UNIQUE_ID_file469
	.addrsig_sym __UNIQUE_ID_license470
	.addrsig_sym ebc_match
	.addrsig_sym ebc_pm
	.addrsig_sym __cpu_possible_mask
	.addrsig_sym jiffies
	.addrsig_sym ebc_thread_wq
	.addrsig_sym ebc_auto_thread_sem
	.addrsig_sym ebc_assist_finished_flag_sem
	.addrsig_sym cpu_bit_bitmap
	.addrsig_sym ebc_auto_assist_thread_sem
	.addrsig_sym ebc_misc
	.addrsig_sym waveform_misc
	.addrsig_sym dev_attr_waveform_version
	.addrsig_sym dev_attr_pmic_name
	.addrsig_sym dev_attr_pmic_temp
	.addrsig_sym dev_attr_pmic_vcom
	.addrsig_sym dev_attr_ebc_version
	.addrsig_sym dev_attr_ebc_state
	.addrsig_sym dev_attr_ebc_buf_state
	.addrsig_sym dev_attr_auto_frame_state
	.addrsig_sym dev_attr_ebc_debug_level
	.addrsig_sym dev_attr_wf_data
	.addrsig_sym dev_attr_ori_wf_data
	.addrsig_sym ebc_ops
	.addrsig_sym cpu_hwcaps
	.addrsig_sym gic_nonsecure_priorities
	.addrsig_sym gic_pmr_sync
	.addrsig_sym waveform_ops
