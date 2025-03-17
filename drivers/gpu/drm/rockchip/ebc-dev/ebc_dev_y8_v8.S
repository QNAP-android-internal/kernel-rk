// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"ebc_dev_y8.c"

	.section	.initcall6s.init,"a",@progbits
__initcall__kmod_rkebc__465_4547_ebc_init6s:
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
	mov	w1, #872
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
	str	x19, [x23, #272]
	str	w25, [x23, #828]
	stp	x8, x9, [x23, #8]
	bl	device_property_present
	tbz	w0, #0, .LBB4_46
	mov	w8, #1
	str	w8, [x21, #788]
.LBB4_46:
	mov	x0, x23
	bl	ebc_panel_probe
	cbnz	w0, .LBB4_52
	ldp	w9, w8, [x21, #116]
	mov	w11, #1
	mov	x0, x21
	mul	w10, w9, w8
	str	w8, [x21, #296]
	str	w9, [x21, #300]
	lsr	w8, w10, #2
	str	w9, [x21, #848]
	str	w11, [x21, #856]
	stp	w10, w8, [x21, #244]
	bl	ebc_buffer_manage_init
	cbnz	w0, .LBB4_53
	add	x24, x23, #176
	mov	x0, x24
	bl	ebc_lut_table_init
	cbnz	w0, .LBB4_54
	adrp	x8, nr_cpu_ids
	adrp	x0, __cpu_possible_mask
	add	x0, x0, :lo12:__cpu_possible_mask
	ldr	w1, [x8, :lo12:nr_cpu_ids]
	bl	__bitmap_weight
	str	w0, [x21, #784]
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
	ldr	x0, [x21, #312]
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
	ldr	x0, [x19, #800]
	cbz	x0, .LBB5_2
	bl	dma_buf_put
	str	xzr, [x19, #800]
.LBB5_2:
	ldr	x0, [x19, #808]
	cbz	x0, .LBB5_4
	bl	dma_buf_put
	str	xzr, [x19, #808]
.LBB5_4:
	ldr	x0, [x19, #816]
	cbz	x0, .LBB5_6
	bl	dma_buf_put
	str	xzr, [x19, #816]
.LBB5_6:
	ldr	x0, [x19, #824]
	cbz	x0, .LBB5_8
	bl	dma_buf_put
	str	xzr, [x19, #824]
.LBB5_8:
	ldr	x0, [x19, #832]
	cbz	x0, .LBB5_10
	bl	dma_buf_put
	str	xzr, [x19, #832]
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
	ldr	w8, [x19, #456]
	cmp	w8, #1
	b.eq	.LBB6_8
	cmp	w8, #3
	b.eq	.LBB6_12
	cmp	w8, #4
	b.ne	.LBB6_16
	mov	w8, #1
	ldr	w9, [x19, #276]
	str	w8, [x19, #292]
	cbnz	w9, .LBB6_23
	ldr	w8, [x19, #280]
	cbnz	w8, .LBB6_23
	ldr	w8, [x19, #284]
	cbz	w8, .LBB6_23
	ldr	w9, [x19, #792]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_36
.LBB6_7:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #300]
	mov	w1, wzr
	ldr	w9, [x19, #296]
	ldr	x0, [x19, #376]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #300]
	ldr	w9, [x19, #296]
	ldr	x0, [x19, #384]
	b	.LBB6_32
.LBB6_8:
	ldr	w8, [x19, #288]
	ldr	w9, [x19, #308]
	cbz	w8, .LBB6_18
	cbz	w9, .LBB6_17
	ldr	w8, [x19, #772]
	cbz	w8, .LBB6_19
	ldr	x8, [x19, #432]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.ls	.LBB6_17
	b	.LBB6_19
.LBB6_12:
	ldr	w8, [x19, #308]
	cbz	w8, .LBB6_21
	ldr	w9, [x19, #792]
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
	add	x0, x19, #704
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #268]
	b	.LBB6_27
.LBB6_16:
	ldr	w8, [x19, #288]
	cbz	w8, .LBB6_24
.LBB6_17:
	adrp	x8, ebc_auto_task
	mov	w9, #1
	ldr	x0, [x8, :lo12:ebc_auto_task]
	str	w9, [x19, #268]
	bl	wake_up_process
	b	.LBB6_28
.LBB6_18:
	mov	x8, x19
	cbz	w9, .LBB6_20
.LBB6_19:
	ldr	w9, [x19, #792]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_35
.LBB6_20:
	ldr	x0, [x8, #8]
	b	.LBB6_26
.LBB6_21:
	ldr	w8, [x19, #276]
	cbnz	w8, .LBB6_23
	ldr	w8, [x19, #280]
	cbz	w8, .LBB6_29
.LBB6_23:
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	b	.LBB6_28
.LBB6_24:
	ldr	w8, [x19, #856]
	cbz	w8, .LBB6_17
	ldr	x0, [x19, #8]
.LBB6_26:
	ldr	x8, [x0, #144]
	mov	w1, wzr
	mov	w2, wzr
	blr	x8
	ldr	w8, [x19, #792]
	str	wzr, [x19, #268]
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
	ldr	w8, [x19, #284]
	cbz	w8, .LBB6_23
	ldr	w9, [x19, #792]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_37
.LBB6_31:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #300]
	ldr	w9, [x19, #296]
	ldr	x0, [x19, #376]
.LBB6_32:
	mul	w8, w9, w8
	sxtw	x2, w8
	mov	w1, wzr
	bl	memset
	b	.LBB6_15
.LBB6_33:
	adrp	x1, .L.str.30
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.30
	bl	_dev_info
	b	.LBB6_27
.LBB6_34:
	adrp	x1, .L.str.27
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.27
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_14
.LBB6_35:
	adrp	x1, .L.str.29
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.29
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_20
.LBB6_36:
	adrp	x1, .L.str.26
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.26
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_7
.LBB6_37:
	adrp	x1, .L.str.28
	ldr	x0, [x19, #312]
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
	tbnz	w0, #31, .LBB7_33
	add	x21, x20, #656
	adrp	x1, .L.str.32
	add	x2, x19, #80
	add	x1, x1, :lo12:.L.str.32
	mov	w3, #1
	mov	x4, xzr
	ldr	x0, [x21]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.33
	ldr	x0, [x21]
	add	x2, x19, #84
	add	x1, x1, :lo12:.L.str.33
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.34
	ldr	x0, [x21]
	add	x2, x19, #88
	add	x1, x1, :lo12:.L.str.34
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.35
	ldr	x0, [x21]
	add	x2, x19, #104
	add	x1, x1, :lo12:.L.str.35
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.36
	ldr	x0, [x21]
	add	x2, x19, #108
	add	x1, x1, :lo12:.L.str.36
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.37
	ldr	x0, [x21]
	add	x2, x19, #112
	add	x1, x1, :lo12:.L.str.37
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.38
	ldr	x0, [x21]
	add	x2, x19, #116
	add	x1, x1, :lo12:.L.str.38
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.39
	ldr	x0, [x21]
	add	x2, x19, #120
	add	x1, x1, :lo12:.L.str.39
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.40
	ldr	x0, [x21]
	add	x2, x19, #124
	add	x1, x1, :lo12:.L.str.40
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.41
	ldr	x0, [x21]
	add	x2, x19, #128
	add	x1, x1, :lo12:.L.str.41
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.42
	ldr	x0, [x21]
	add	x2, x19, #132
	add	x1, x1, :lo12:.L.str.42
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.43
	ldr	x0, [x21]
	add	x2, x19, #136
	add	x1, x1, :lo12:.L.str.43
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.44
	ldr	x0, [x21]
	add	x2, x19, #140
	add	x1, x1, :lo12:.L.str.44
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
	adrp	x1, .L.str.45
	ldr	x0, [x21]
	add	x2, x19, #144
	add	x1, x1, :lo12:.L.str.45
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_33
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
	add	x20, x19, #168
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
	add	x19, x19, #172
	adrp	x1, .L.str.54
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.54
	mov	x2, x19
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_35
	mov	w0, wzr
	b	.LBB7_34
.LBB7_33:
	mov	w0, #-22
.LBB7_34:
	ldp	x20, x19, [sp, #32]
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB7_35:
	mov	w0, wzr
	str	wzr, [x19]
	b	.LBB7_34
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
	ldr	w8, [x0, #244]
	stp	xzr, xzr, [sp, #56]
	ldr	x20, [x0]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	cmp	w8, #1280, lsl #12
	stp	xzr, xzr, [sp, #8]
	b.gt	.LBB8_23
	adrp	x1, .L.str.56
	mov	x19, x0
	ldr	x0, [x20, #656]
	add	x1, x1, :lo12:.L.str.56
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
	str	x1, [x19, #216]
	sub	x8, x8, x1
	add	x8, x8, #1
	cmp	w8, w9
	str	w8, [x19, #240]
	b.le	.LBB8_25
	sxtw	x2, w8
	mov	x0, x20
	mov	w3, #1
	bl	devm_memremap
	str	x0, [x19, #224]
	cbz	x0, .LBB8_28
	mov	x1, x0
	ldr	x0, [x19, #216]
	ldr	w2, [x19, #240]
	mov	w3, #5242880
	mov	w4, #4
	bl	ebc_buf_init
	cbz	w0, .LBB8_8
.LBB8_7:
	mov	w21, #-12
	b	.LBB8_26
.LBB8_8:
	ldr	x0, [x19, #216]
	mov	w1, #5242880
	str	xzr, [x19, #832]
	str	xzr, [x19, #824]
	str	xzr, [x19, #816]
	str	xzr, [x19, #808]
	str	xzr, [x19, #800]
	bl	ebc_get_dma_buf
	cmn	x0, #4095
	b.hs	.LBB8_13
	ldr	x8, [x19, #216]
	str	x0, [x19, #800]
	mov	w1, #5242880
	add	x8, x8, #1280, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #216]
	str	x0, [x19, #808]
	mov	w1, #5242880
	add	x8, x8, #2560, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #216]
	str	x0, [x19, #816]
	mov	w1, #5242880
	add	x8, x8, #3840, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #216]
	mov	w9, #20971520
	str	x0, [x19, #824]
	mov	w1, #5242880
	add	x8, x8, x9
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.ls	.LBB8_29
.LBB8_13:
	ldr	x0, [x19, #800]
	cbz	x0, .LBB8_15
	bl	dma_buf_put
	str	xzr, [x19, #800]
.LBB8_15:
	ldr	x0, [x19, #808]
	cbz	x0, .LBB8_17
	bl	dma_buf_put
	str	xzr, [x19, #808]
.LBB8_17:
	ldr	x0, [x19, #816]
	cbz	x0, .LBB8_19
	bl	dma_buf_put
	str	xzr, [x19, #816]
.LBB8_19:
	ldr	x0, [x19, #824]
	cbz	x0, .LBB8_21
	bl	dma_buf_put
	str	xzr, [x19, #824]
.LBB8_21:
	ldr	x0, [x19, #832]
	cbz	x0, .LBB8_7
	bl	dma_buf_put
	mov	w21, #-12
	str	xzr, [x19, #832]
	b	.LBB8_26
.LBB8_23:
	adrp	x1, .L.str.55
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.55
	bl	_dev_err
	mov	w21, #-19
	b	.LBB8_26
.LBB8_24:
	adrp	x1, .L.str.57
	mov	w21, w0
	add	x1, x1, :lo12:.L.str.57
	mov	x0, x20
	bl	_dev_err
	b	.LBB8_26
.LBB8_25:
	adrp	x1, .L.str.58
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.58
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
	adrp	x1, .L.str.59
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.59
	bl	_dev_err
	b	.LBB8_7
.LBB8_29:
	ldp	x10, x8, [x19, #216]
	mov	w9, #20971520
	mov	w11, #26214400
	mov	w14, #28311552
	mov	w13, #2097152
	str	x0, [x19, #832]
	mov	w1, wzr
	add	x9, x8, x9
	add	x12, x8, x11
	add	x11, x10, x11
	add	x10, x10, x14
	str	x9, [x19, #232]
	add	x9, x8, x14
	stp	x10, x13, [x19, #96]
	mov	w10, #35651584
	add	x10, x8, x10
	stp	x12, x11, [x19, #64]
	stp	x13, x9, [x19, #80]
	mov	w11, #40894464
	str	x9, [x19, #400]
	mov	w9, #30408704
	add	x9, x8, x9
	mov	w13, #46137344
	add	x11, x8, x11
	add	x13, x8, x13
	stp	x9, x10, [x19, #352]
	mov	w9, #51380224
	add	x0, x8, x9
	stp	x11, x13, [x19, #368]
	ldp	w10, w9, [x19, #116]
	mov	w11, #56623104
	mov	w13, #57671680
	add	x11, x8, x11
	add	x8, x8, x13
	stp	x0, x12, [x19, #384]
	mul	w2, w9, w10
	stp	x11, x8, [x19, #336]
	bl	memset
	ldp	w8, w9, [x19, #116]
	ldr	x0, [x19, #376]
	mov	w1, wzr
	mul	w2, w9, w8
	bl	memset
	ldr	x0, [x19, #368]
	mov	w1, #240
	ldrsw	x2, [x19, #244]
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
	adrp	x1, .L.str.60
	stp	x20, x19, [sp, #192]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.60
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
	adrp	x1, .L.str.61
	add	x2, sp, #4
	add	x1, x1, :lo12:.L.str.61
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
	adrp	x1, .L.str.62
	adrp	x2, .L__func__.ebc_lut_table_init
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.62
	add	x2, x2, :lo12:.L__func__.ebc_lut_table_init
	mov	w3, #3989
	bl	_dev_err
	mov	w0, #-12
	b	.LBB9_9
.LBB9_12:
	adrp	x1, .L.str.63
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.63
	bl	_dev_err
	ldr	x0, [x19, #96]
	mov	w2, w21
	ldr	x1, [x19, #200]
	bl	epd_lut_from_file_init
	tbz	w0, #31, .LBB9_8
	adrp	x1, .L.str.64
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.64
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
	adrp	x3, .L.str.65
	str	x21, [sp, #32]
	mov	w9, #99
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	mov	x19, x0
	adrp	x0, ebc_auto_tast_function
	ldr	x8, [x8, #1584]
	add	x0, x0, :lo12:ebc_auto_tast_function
	add	x3, x3, :lo12:.L.str.65
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
	adrp	x3, .L.str.67
	add	x0, x0, :lo12:ebc_auto_assist_tast_function
	add	x3, x3, :lo12:.L.str.67
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
	adrp	x3, .L.str.69
	mov	w8, #99
	add	x0, x0, :lo12:ebc_thread
	add	x3, x3, :lo12:.L.str.69
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
	adrp	x1, .L.str.66
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.66
	b	.LBB10_24
.LBB10_22:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.68
	add	x1, x1, :lo12:.L.str.68
	b	.LBB10_24
.LBB10_23:
	adrp	x8, ebc_task
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.70
	add	x1, x1, :lo12:.L.str.70
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
	adrp	x8, .L.str.102
	stp	xzr, xzr, [x19, #424]
	add	x8, x8, :lo12:.L.str.102
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
	adrp	x1, .L.str.104
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.104
	str	x8, [sp, #8]
	ldr	x22, [x9, :lo12:saved_command_line]
	str	xzr, [sp]
	mov	x0, x22
	bl	strstr
	adrp	x1, .L.str.105
	mov	x21, x0
	add	x1, x1, :lo12:.L.str.105
	mov	x0, x22
	bl	strstr
	mov	x22, x0
	cbz	x21, .LBB12_3
	adrp	x1, .L.str.106
	add	x2, sp, #4
	add	x1, x1, :lo12:.L.str.106
	mov	x0, x21
	bl	sscanf
	ldr	w2, [sp, #4]
	ldr	x8, [x19, #216]
	cmp	x8, x2
	b.ls	.LBB12_26
	mov	x21, xzr
.LBB12_3:
	mov	w23, #1
	cbz	x22, .LBB12_28
.LBB12_4:
	adrp	x1, .L.str.109
	mov	x2, sp
	add	x1, x1, :lo12:.L.str.109
	mov	x0, x22
	bl	sscanf
	ldr	w2, [sp]
	ldr	x8, [x19, #216]
	cmp	x8, x2
	b.ls	.LBB12_31
	mov	x22, xzr
	mov	w24, #1
	cbnz	w23, .LBB12_29
.LBB12_6:
	adrp	x0, .L.str.113
	add	x0, x0, :lo12:.L.str.113
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
	adrp	x0, .L.str.113
	add	x0, x0, :lo12:.L.str.113
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
	ldr	w8, [x19, #304]
	cbnz	w8, .LBB12_20
	adrp	x0, ebc_thread_wq
	mov	w8, #1
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1
	str	w8, [x19, #304]
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
	adrp	x1, .L.str.107
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.107
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc
	cbz	x0, .LBB12_35
	ldp	w9, w8, [x20, #76]
	ldp	x11, x12, [x19, #216]
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
	adrp	x1, .L.str.112
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.112
	bl	_dev_info
	ldr	x0, [x19, #16]
	cbz	x0, .LBB12_33
	bl	ebc_pmic_verity_vcom
	b	.LBB12_34
.LBB12_31:
	adrp	x1, .L.str.110
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.110
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc
	cbz	x0, .LBB12_36
	ldp	w9, w8, [x20, #76]
	ldp	x11, x12, [x19, #216]
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
	adrp	x0, .L.str.114
	add	x0, x0, :lo12:.L.str.114
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
	adrp	x1, .L.str.108
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.108
	bl	_dev_err
	b	.LBB12_24
.LBB12_36:
	adrp	x1, .L.str.111
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.111
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
	sub	sp, sp, #112
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x28, x27, [sp, #32]
	stp	x22, x21, [sp, #80]
	adrp	x22, ebc_assist_finished_flag_sem
	stp	x20, x19, [sp, #96]
	adrp	x19, ebc_auto_thread_sem
	ldr	x28, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #48]
	add	x19, x19, :lo12:ebc_auto_thread_sem
	mov	w25, #2
	mov	w21, #255
	add	x22, x22, :lo12:ebc_assist_finished_flag_sem
	add	x20, x28, #216
	add	x8, x28, #704
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	stp	x24, x23, [sp, #64]
	//APP
	mrs	x26, SP_EL0
	//NO_APP
	str	x8, [sp, #8]
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
	mov	x0, x22
	bl	down
	str	w25, [x26, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x28, #456]
	cmp	w8, #1
	b.eq	.LBB14_11
	cmp	w8, #3
	b.eq	.LBB14_14
	cmp	w8, #4
	b.ne	.LBB14_18
	ldr	w8, [x28, #292]
	cbz	w8, .LBB14_27
	ldr	w8, [x28, #276]
	str	wzr, [x28, #292]
	str	wzr, [x28, #284]
	cbnz	w8, .LBB14_9
	ldr	w8, [x28, #280]
	cbz	w8, .LBB14_42
.LBB14_9:
	mov	x8, x28
	ldrsw	x9, [x28, #112]
	mov	w10, #24
	ldrsw	x2, [x28, #248]
	mov	w3, #1
	ldr	x0, [x8, #40]!
	madd	x24, x9, x10, x8
	ldr	w10, [x28, #180]
	ldp	w8, w9, [x28, #172]
	ldr	x1, [x24, #32]
	add	w8, w9, w8
	add	w23, w8, w10
	bl	dma_sync_single_for_device
	ldr	x0, [x28, #48]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x28, #48]
	mov	w2, wzr
	ldr	w1, [x24, #32]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x28, #48]
	mov	w1, w23
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x28, #48]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x28, #112]
	mov	w9, #1
	sub	w8, w9, w8
	adrp	x9, ebc_auto_assist_task
	ldr	x0, [x9, :lo12:ebc_auto_assist_task]
	str	w8, [x28, #112]
	bl	wake_up_process
	ldrsw	x8, [x28, #112]
	mov	x5, x20
	ldp	x1, x2, [x28, #352]
	mov	w6, #2
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #376]
	ldr	x0, [x8, #392]
	cbz	w9, .LBB14_35
	bl	get_overlay_image2
	b	.LBB14_2
.LBB14_11:
	mov	x24, x28
	mov	w10, #24
	mov	w3, #1
	ldr	x0, [x24, #40]!
	ldr	w8, [x24, #248]
	ldrsw	x9, [x24, #72]
	ldr	w11, [x24, #140]
	sub	w8, w8, #1
	ldrsw	x2, [x24, #208]
	madd	x27, x9, x10, x24
	ldp	w9, w10, [x24, #132]
	str	w8, [x24, #248]
	ldr	x1, [x27, #32]
	add	w8, w10, w9
	add	w23, w8, w11
	bl	dma_sync_single_for_device
	ldr	x0, [x24, #8]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w2, wzr
	ldr	w1, [x27, #32]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w1, w23
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x24, #72]
	mov	w9, #1
	sub	w8, w9, w8
	adrp	x9, ebc_auto_assist_task
	ldr	x0, [x9, :lo12:ebc_auto_assist_task]
	str	w8, [x24, #72]
	bl	wake_up_process
	ldr	w8, [x24, #248]
	cbz	w8, .LBB14_2
	ldrsw	x8, [x28, #112]
	mov	x3, x20
	ldp	x11, x9, [x28, #424]
	mov	w4, #2
	add	x8, x28, x8, lsl #3
	ldr	w10, [x28, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #392]
	cbz	w10, .LBB14_34
	bl	direct_mode_data_change_part2
	b	.LBB14_2
.LBB14_14:
	ldr	w8, [x28, #276]
	str	wzr, [x28, #284]
	cbnz	w8, .LBB14_16
	ldr	w8, [x28, #280]
	cbz	w8, .LBB14_36
.LBB14_16:
	mov	x8, x28
	ldrsw	x9, [x28, #112]
	mov	w10, #24
	ldrsw	x2, [x28, #248]
	mov	w3, #1
	ldr	x0, [x8, #40]!
	madd	x24, x9, x10, x8
	ldr	w10, [x28, #180]
	ldp	w8, w9, [x28, #172]
	ldr	x1, [x24, #32]
	add	w8, w9, w8
	add	w23, w8, w10
	bl	dma_sync_single_for_device
	ldr	x0, [x28, #48]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x28, #48]
	mov	w2, wzr
	ldr	w1, [x24, #32]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x28, #48]
	mov	w1, w23
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x28, #48]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x28, #112]
	mov	w9, #1
	sub	w8, w9, w8
	adrp	x9, ebc_auto_assist_task
	ldr	x0, [x9, :lo12:ebc_auto_assist_task]
	str	w8, [x28, #112]
	bl	wake_up_process
	ldrsw	x8, [x28, #112]
	mov	x4, x20
	ldp	x1, x2, [x28, #352]
	mov	w5, #2
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldr	x3, [x28, #376]
	ldr	x0, [x8, #392]
	cbnz	w9, .LBB14_1
	bl	get_auto_image
	b	.LBB14_2
.LBB14_18:
	ldr	x8, [x28, #432]
	mov	x24, x28
	ldr	w8, [x8, #40]
	cmp	w8, #21
	b.ne	.LBB14_24
	ldr	x0, [x24, #40]!
	ldr	w8, [x24, #800]
	mov	w3, #1
	ldr	w9, [x24, #812]
	ldrsw	x10, [x24, #72]
	ldr	w11, [x24, #140]
	add	w8, w9, w8
	mov	w9, #24
	ldrsw	x2, [x24, #208]
	madd	x27, x10, x9, x24
	ldp	w9, w10, [x24, #132]
	str	w8, [x24, #812]
	ldr	x1, [x27, #32]
	add	w8, w10, w9
	add	w23, w8, w11
	bl	dma_sync_single_for_device
	ldr	x0, [x24, #8]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w2, wzr
	ldr	w1, [x27, #32]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w1, w23
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x24, #72]
	mov	w9, #1
	sub	w8, w9, w8
	adrp	x9, ebc_auto_assist_task
	ldr	x0, [x9, :lo12:ebc_auto_assist_task]
	str	w8, [x24, #72]
	bl	wake_up_process
	ldr	w8, [x24, #260]
	ldr	w12, [x24, #804]
	ldr	w9, [x24, #256]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w10, w10, w8, lt
	add	w11, w8, #15
	asr	w10, w10, #3
	csel	w11, w11, w8, lt
	ldr	x0, [x24, #336]
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
	ldrb	w12, [x28, #272]
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
	ldr	x0, [x24, #40]!
	ldr	w8, [x24, #248]
	mov	w10, #24
	ldrsw	x9, [x24, #72]
	mov	w3, #1
	ldr	w11, [x24, #140]
	sub	w8, w8, #1
	ldrsw	x2, [x24, #208]
	madd	x27, x9, x10, x24
	ldp	w9, w10, [x24, #132]
	str	w8, [x24, #248]
	ldr	x1, [x27, #32]
	add	w8, w10, w9
	add	w23, w8, w11
	bl	dma_sync_single_for_device
	ldr	x0, [x24, #8]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w2, wzr
	ldr	w1, [x27, #32]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w1, w23
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x24, #8]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x24, #72]
	mov	w9, #1
	sub	w8, w9, w8
	adrp	x9, ebc_auto_assist_task
	ldr	x0, [x9, :lo12:ebc_auto_assist_task]
	str	w8, [x24, #72]
	bl	wake_up_process
	ldr	w8, [x24, #248]
	cbz	w8, .LBB14_2
	ldrsw	x8, [x28, #112]
	mov	x3, x20
	ldp	x11, x9, [x28, #424]
	mov	w4, #2
	add	x8, x28, x8, lsl #3
	ldr	w10, [x28, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #392]
	cbz	w10, .LBB14_40
	bl	direct_mode_data_change2
	b	.LBB14_2
.LBB14_27:
	mov	x0, x22
	bl	up
	ldrsw	x8, [x28, #112]
	mov	x5, x20
	ldp	x1, x2, [x28, #352]
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #376]
	ldr	x0, [x8, #392]
	cbz	w9, .LBB14_39
	bl	get_overlay_image_area2
	b	.LBB14_2
.LBB14_29:
	mul	w10, w9, w10
	add	x10, x0, w10, sxtw #3
	ldurb	w10, [x10, #-8]
	cmp	x10, #255
	b.eq	.LBB14_32
	ldrb	w11, [x28, #272]
	cmp	x10, x11
	b.lo	.LBB14_32
.LBB14_31:
	mul	w8, w9, w8
	mov	w1, wzr
	sxtw	x2, w8
	bl	memset
	mov	w8, #1
	str	w8, [x28, #856]
	b	.LBB14_2
.LBB14_32:
	ldrsw	x8, [x28, #112]
	mov	x3, x20
	ldp	x11, x9, [x28, #424]
	mov	w4, #2
	add	x8, x28, x8, lsl #3
	ldr	w10, [x28, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #392]
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
	mov	x0, x22
	bl	up
	ldr	w8, [x28, #764]
	cbz	w8, .LBB14_46
.LBB14_37:
	ldrsw	x8, [x28, #112]
	mov	x4, x20
	ldp	x1, x2, [x28, #352]
	mov	w5, #1
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldr	x3, [x28, #376]
	ldr	x0, [x8, #392]
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
	mov	x0, x22
	bl	up
	ldr	w8, [x28, #764]
	cbnz	w8, .LBB14_44
	ldr	x8, [x28, #432]
	mov	x5, x20
	ldp	x3, x4, [x28, #376]
	ldr	x0, [x28, #352]
	ldr	x1, [x28, #232]
	ldr	x2, [x8, #16]
	bl	refresh_new_image
.LBB14_44:
	ldrsw	x8, [x28, #112]
	mov	x5, x20
	ldp	x1, x2, [x28, #352]
	mov	w6, #1
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #376]
	ldr	x0, [x8, #392]
	cbz	w9, .LBB14_55
	bl	get_overlay_image2
	b	.LBB14_56
.LBB14_46:
	ldr	w8, [x28, #300]
	ldr	w9, [x28, #296]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w13, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB14_37
	ldr	x12, [x28, #432]
	mov	w10, wzr
	ldr	x11, [x28, #376]
	asr	w13, w13, #3
	ldr	x14, [x28, #352]
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
	csel	x1, x21, xzr, eq
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
	str	w8, [x28, #284]
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #8]
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
	add	x20, x22, #216
	b	.LBB15_4
.LBB15_1:
	ldrsw	x8, [x22, #112]
	mov	x4, x20
	ldp	x1, x2, [x22, #352]
	mov	w5, #3
	add	x8, x22, x8, lsl #3
	ldr	w9, [x22, #204]
	ldr	x3, [x22, #376]
	ldr	x0, [x8, #392]
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
	ldr	w8, [x22, #456]
	cmp	w8, #1
	b.eq	.LBB15_9
	cmp	w8, #3
	b.eq	.LBB15_1
	cmp	w8, #4
	b.ne	.LBB15_12
	ldrsw	x8, [x22, #112]
	mov	x5, x20
	ldp	x1, x2, [x22, #352]
	mov	w6, #3
	add	x8, x22, x8, lsl #3
	ldr	w9, [x22, #204]
	ldp	x3, x4, [x22, #376]
	ldr	x0, [x8, #392]
	cbz	w9, .LBB15_22
	bl	get_overlay_image2
	b	.LBB15_3
.LBB15_9:
	ldr	w8, [x22, #288]
	cbz	w8, .LBB15_3
	ldrsw	x8, [x22, #112]
	mov	x3, x20
	ldp	x11, x9, [x22, #424]
	mov	w4, #3
	add	x8, x22, x8, lsl #3
	ldr	w10, [x22, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #392]
	cbz	w10, .LBB15_28
	bl	direct_mode_data_change_part2
	b	.LBB15_3
.LBB15_12:
	ldr	x8, [x22, #432]
	ldr	w9, [x8, #40]
	cmp	w9, #21
	b.ne	.LBB15_18
	ldr	w9, [x22, #300]
	ldr	w13, [x22, #844]
	ldr	w10, [x22, #296]
	add	w11, w9, #7
	cmp	w9, #0
	csel	w11, w11, w9, lt
	add	w12, w9, #15
	asr	w11, w11, #3
	csel	w12, w12, w9, lt
	ldr	x0, [x22, #376]
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
	ldrb	w13, [x22, #272]
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
	ldr	w9, [x22, #288]
	cbz	w9, .LBB15_3
	ldrsw	x9, [x22, #112]
	mov	x3, x20
	ldr	x11, [x22, #424]
	mov	w4, #3
	ldr	w10, [x22, #204]
	add	x9, x22, x9, lsl #3
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	ldr	x0, [x9, #392]
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
	ldrb	w12, [x22, #272]
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
	ldr	x11, [x22, #424]
	mov	w4, #3
	ldr	w10, [x22, #204]
	add	x9, x22, x9, lsl #3
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	ldr	x0, [x9, #392]
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
	sub	sp, sp, #192
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #176]
	stp	x28, x27, [sp, #112]
	mov	w19, #40
	stp	x26, x25, [sp, #128]
	mov	w27, #-268435456
	ldr	x20, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #144]
	stp	x22, x21, [sp, #160]
	mov	w22, #136
	mov	w24, #24
	mov	x25, #1030792151040
	add	x9, x20, #216
	add	x8, x20, #312
	add	x10, x20, #792
	add	x28, x20, #268
	mov	x23, #263882790666240
	mov	x21, #67553994410557440
	stp	x8, x9, [sp, #8]
	add	x8, x20, #664
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	stp	x10, x28, [sp, #40]
	str	x8, [sp]
	add	x8, x20, #704
	str	x8, [sp, #24]
	b	.LBB16_3
.LBB16_1:
	ldr	x0, [x20, #424]
	bl	ebc_buf_release
.LBB16_2:
	ldr	x8, [x20, #432]
	str	x8, [x20, #424]
.LBB16_3:
	bl	ebc_osd_buf_get
	cbz	x0, .LBB16_8
	mov	x26, x0
	ldr	w8, [x20, #744]
	cbnz	w8, .LBB16_6
	ldr	w8, [x20, #748]
	cbz	w8, .LBB16_24
.LBB16_6:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_61
.LBB16_7:
	mov	x0, x26
	bl	ebc_buf_release
	b	.LBB16_3
.LBB16_8:
	ldr	w8, [x20, #760]
	str	wzr, [x20, #308]
	cbz	w8, .LBB16_11
	ldr	w8, [x20, #756]
	cbnz	w8, .LBB16_11
	ldr	w8, [x20, #764]
	cbz	w8, .LBB16_19
.LBB16_11:
	bl	ebc_dsp_buf_get
	cbz	x0, .LBB16_19
	ldr	w2, [x0, #40]
	mov	x26, x0
	cmp	w2, #21
	b.ne	.LBB16_21
.LBB16_13:
	ldr	w8, [x20, #660]
	cbnz	w8, .LBB16_15
	str	x26, [x20, #424]
	ldr	w2, [x26, #40]
.LBB16_15:
	cmp	w2, #23
	b.hi	.LBB16_406
	mov	w8, #1
	lsl	w8, w8, w2
	tst	w8, #0x1ff80
	b.ne	.LBB16_27
	mov	w9, #124
	movk	w9, #34, lsl #16
	tst	w8, w9
	b.eq	.LBB16_80
	mov	w28, #1
	b	.LBB16_28
.LBB16_19:
	ldr	w8, [x20, #304]
	cbz	w8, .LBB16_34
.LBB16_20:
	str	wzr, [x20, #304]
	b	.LBB16_3
.LBB16_21:
	ldr	w9, [x20, #752]
	ldr	w8, [x20, #456]
	cbz	w9, .LBB16_59
	cmp	w8, #1
	b.eq	.LBB16_69
	cmp	w8, #2
	b.eq	.LBB16_72
	b	.LBB16_73
.LBB16_24:
	ldr	w8, [x20, #456]
	cmp	w8, #1
	b.eq	.LBB16_62
	cmp	w8, #2
	b.ne	.LBB16_310
.LBB16_26:
	ldr	x8, [x20, #424]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #352]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_310
.LBB16_27:
	mov	w28, wzr
.LBB16_28:
	ldr	x8, [sp, #48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_44
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_294
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
	ldr	x8, [sp, #48]
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
	ldr	w8, [x20, #304]
	cbz	w8, .LBB16_65
.LBB16_35:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	ldr	w8, [x20, #304]
	cbnz	w8, .LBB16_3
.LBB16_36:
	ldr	w8, [x28]
	cmp	w8, #1
	b.ne	.LBB16_100
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
	ldr	w8, [x28]
	cbz	w8, .LBB16_108
	ldr	w8, [x20, #304]
	cbnz	w8, .LBB16_108
	cbnz	x0, .LBB16_109
	bl	schedule
	b	.LBB16_38
.LBB16_42:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_43:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_295
.LBB16_44:
	ldr	w8, [x20, #456]
	sub	w8, w8, #3
	cmp	w8, #1
	b.hi	.LBB16_46
	ldr	x8, [x20, #424]
	str	wzr, [x20, #768]
	str	wzr, [x20, #776]
	ldr	x1, [x20, #360]
	ldrsw	x2, [x20, #244]
	ldr	x0, [x8, #16]
	bl	memcpy
.LBB16_46:
	ldr	w8, [x26, #40]
	cmp	w8, #11
	b.hi	.LBB16_134
	mov	w9, #1
	lsl	w8, w9, w8
	mov	w9, #2124
	tst	w8, w9
	b.eq	.LBB16_52
	ldr	w8, [x20, #244]
	add	w9, w8, #7
	cmp	w8, #0
	csel	w9, w9, w8, lt
	cmp	w8, #8
	b.lt	.LBB16_106
	ldr	x8, [x20, #424]
	asr	w9, w9, #3
	ldr	x10, [x26, #16]
	ldr	x8, [x8, #16]
.LBB16_50:
	ldr	x11, [x10]
	ldr	x12, [x8]
	cmp	x11, x12
	b.ne	.LBB16_134
	add	x8, x8, #8
	add	x10, x10, #8
	subs	w9, w9, #1
	b.ne	.LBB16_50
	b	.LBB16_106
.LBB16_52:
	tst	w8, #0x180
	b.eq	.LBB16_134
	ldr	w8, [x20, #780]
	ldr	w9, [x20, #244]
	cbz	w8, .LBB16_102
	add	w8, w9, #7
	cmp	w9, #0
	csel	w11, w8, w9, lt
	cmp	w9, #8
	b.lt	.LBB16_106
	mov	w10, #50
	mov	w12, #34079
	movk	w12, #20971, lsl #16
	mov	w8, wzr
	mul	w9, w9, w10
	ldr	x10, [x20, #424]
	asr	w11, w11, #3
	smull	x9, w9, w12
	lsr	x12, x9, #63
	asr	x13, x9, #40
	ldr	x9, [x10, #16]
	add	w10, w13, w12
	ldr	x12, [x26, #16]
.LBB16_56:
	ldr	x13, [x12]
	ldr	x14, [x9]
	cmp	x13, x14
	cinc	w8, w8, ne
	cmp	w8, w10
	b.gt	.LBB16_132
	add	x9, x9, #8
	add	x12, x12, #8
	subs	w11, w11, #1
	b.ne	.LBB16_56
	cbnz	w8, .LBB16_134
	b	.LBB16_106
.LBB16_59:
	cmp	w8, #4
	b.ne	.LBB16_13
	ldr	w8, [x28]
	cbnz	w8, .LBB16_73
	b	.LBB16_13
.LBB16_61:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.71
	add	x1, x1, :lo12:.L.str.71
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_7
.LBB16_62:
	ldr	w2, [x20, #288]
	cbz	w2, .LBB16_116
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_394
.LBB16_64:
	str	wzr, [x20, #288]
	b	.LBB16_310
.LBB16_65:
	mov	w8, #13
.LBB16_66:
	cbnz	x0, .LBB16_36
	mov	x0, x8
	bl	schedule_timeout
	mov	x26, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x20, #304]
	cmp	x26, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x26, xzr, eq
	cbnz	w9, .LBB16_35
	cbnz	x8, .LBB16_66
	b	.LBB16_35
.LBB16_69:
	ldr	w2, [x20, #288]
	cbz	w2, .LBB16_72
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_397
.LBB16_71:
	str	wzr, [x20, #288]
	b	.LBB16_73
.LBB16_72:
	ldr	x8, [x20, #424]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #352]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_73:
	ldr	x8, [x20, #432]
	ldr	w9, [x26, #40]
	ldr	w8, [x8, #40]
	cmp	w9, w8
	b.eq	.LBB16_94
	ldr	w8, [x28]
	cbz	w8, .LBB16_94
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_391
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
	ldr	w8, [x28]
	cbz	w8, .LBB16_92
	cbnz	x0, .LBB16_93
	bl	schedule
	b	.LBB16_77
.LBB16_80:
	mov	w9, #1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.eq	.LBB16_406
	ldr	w8, [x20, #456]
	str	x26, [x20, #432]
	cmp	w8, #4
	b.eq	.LBB16_273
	cmp	w8, #2
	b.eq	.LBB16_124
	cmp	w8, #1
	b.ne	.LBB16_279
	ldr	w8, [x20, #772]
	cbz	w8, .LBB16_124
	ldr	w8, [x20, #768]
	cbnz	w8, .LBB16_87
	ldr	w8, [x20, #776]
	cbz	w8, .LBB16_124
.LBB16_87:
	ldr	x8, [sp, #40]
	mov	x9, x26
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_425
.LBB16_88:
	ldr	w8, [x20, #244]
	ldr	x1, [x20, #368]
	cmp	w8, #1
	b.lt	.LBB16_395
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
	ldr	x1, [x20, #368]
	ldr	w8, [x20, #244]
	b	.LBB16_396
.LBB16_92:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_93:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_392
.LBB16_94:
	mov	w8, #4
	str	x26, [x20, #432]
	ldp	x3, x4, [x20, #376]
	str	w8, [x20, #456]
	ldr	x0, [x20, #352]
	ldr	x1, [x20, #232]
	ldr	x2, [x26, #16]
	ldr	x5, [sp, #16]
	bl	refresh_new_image
	ldr	w8, [x20, #268]
	cbnz	w8, .LBB16_127
	mov	w8, #1
	mov	x0, x20
	mov	w2, wzr
	str	w8, [x20, #268]
	ldr	w1, [x26, #40]
	bl	ebc_lut_update
	ldr	w9, [x20, #792]
	ldr	w8, [x20, #320]
	cmp	w9, #1
	strh	w8, [x20, #272]
	b.ge	.LBB16_390
.LBB16_96:
	ldp	x4, x0, [x20, #384]
	ldp	x1, x2, [x20, #352]
	ldr	w8, [x20, #204]
	ldr	x3, [x20, #376]
	cbz	w8, .LBB16_113
	ldr	x5, [sp, #16]
	mov	w6, #1
	bl	get_overlay_image2
	ldr	w8, [x20, #276]
	cbz	w8, .LBB16_114
.LBB16_98:
	ldp	x1, x2, [x20, #352]
	ldp	x3, x4, [x20, #376]
	ldr	w8, [x20, #204]
	ldr	x0, [x20, #400]
	cbz	w8, .LBB16_125
	ldr	x5, [sp, #16]
	mov	w6, #1
	bl	get_overlay_image2
	b	.LBB16_126
.LBB16_100:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_3
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_3
	b	.LBB16_303
.LBB16_102:
	add	w8, w9, #7
	cmp	w9, #0
	csel	w10, w8, w9, lt
	cmp	w9, #8
	b.lt	.LBB16_106
	ldr	x8, [x20, #424]
	asr	w9, w10, #3
	ldr	x10, [x26, #16]
	ldr	x8, [x8, #16]
.LBB16_104:
	ldr	x11, [x10]
	ldr	x12, [x8]
	cmp	x11, x12
	b.ne	.LBB16_134
	add	x8, x8, #8
	add	x10, x10, #8
	subs	w9, w9, #1
	b.ne	.LBB16_104
.LBB16_106:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_296
.LBB16_107:
	ldr	x28, [sp, #48]
	str	x26, [x20, #432]
	b	.LBB16_420
.LBB16_108:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_109:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_3
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_3
	ldr	w8, [x28]
	cbz	w8, .LBB16_303
	ldr	w8, [x20, #304]
	cbnz	w8, .LBB16_20
	b	.LBB16_304
.LBB16_113:
	ldr	x5, [sp, #16]
	mov	w6, #1
	bl	get_overlay_image
	ldr	w8, [x20, #276]
	cbnz	w8, .LBB16_98
.LBB16_114:
	ldr	w8, [x20, #792]
	str	wzr, [x20, #268]
	cmp	w8, #1
	mov	w8, #1
	str	w8, [x20, #756]
	b.lt	.LBB16_127
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.99
	adrp	x2, .L__func__.ebc_overlay_bg_frame_start
	add	x1, x1, :lo12:.L.str.99
	add	x2, x2, :lo12:.L__func__.ebc_overlay_bg_frame_start
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_127
.LBB16_116:
	ldr	w8, [x20, #772]
	cbz	w8, .LBB16_26
	ldr	w8, [x20, #768]
	cbnz	w8, .LBB16_119
	ldr	w8, [x20, #776]
	cbz	w8, .LBB16_26
.LBB16_119:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_415
.LBB16_120:
	ldr	w8, [x20, #244]
	ldr	x1, [x20, #368]
	cmp	w8, #1
	b.lt	.LBB16_308
	ldr	x9, [x20, #432]
	ldr	x9, [x9, #16]
.LBB16_122:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #8
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_122
	ldr	x1, [x20, #368]
	ldr	w8, [x20, #244]
	b	.LBB16_309
.LBB16_124:
	ldr	x8, [x20, #424]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_299
.LBB16_125:
	ldr	x5, [sp, #16]
	mov	w6, #1
	bl	get_overlay_image
.LBB16_126:
	ldp	w8, w9, [x20, #172]
	ldr	w10, [x20, #180]
	mov	w3, #1
	ldr	x0, [x20, #40]
	str	wzr, [x20, #112]
	ldr	x1, [x20, #72]
	ldrsw	x2, [x20, #248]
	add	w8, w9, w8
	add	w26, w8, w10
	bl	dma_sync_single_for_device
	ldr	x0, [x20, #48]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x20, #48]
	mov	w2, wzr
	ldr	w1, [x20, #72]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x20, #48]
	mov	w1, w26
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x20, #48]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x20, #112]
	mov	w9, #1
	sub	w8, w9, w8
	str	w8, [x20, #112]
.LBB16_127:
	ldr	x8, [x20, #432]
	ldr	w8, [x8, #40]
	cmp	w8, #23
	b.hi	.LBB16_129
	mov	w9, #1
	lsl	w8, w9, w8
	mov	w9, #1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.ne	.LBB16_420
.LBB16_129:
	ldr	w8, [x28]
	cbz	w8, .LBB16_420
	ldr	w8, [x20, #792]
	str	wzr, [x20, #756]
	cmp	w8, #1
	b.ge	.LBB16_402
.LBB16_131:
	adrp	x8, jiffies
	ldr	x26, [x8, :lo12:jiffies]
	ldrb	w8, [x20, #272]
	add	w8, w8, w8, lsl #1
	lsl	w0, w8, #2
	bl	__msecs_to_jiffies
	add	x1, x0, x26
	ldr	x0, [sp]
	b	.LBB16_419
.LBB16_132:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_423
.LBB16_133:
	mov	w28, #1
.LBB16_134:
	str	x26, [x20, #432]
	cmp	w28, #0
	ldr	w1, [x26, #40]
	mov	w8, #1
	cset	w2, ne
	cinc	w8, w8, ne
	cmp	w1, #12
	str	w8, [sp, #32]
	b.eq	.LBB16_139
	cmp	w1, #14
	b.eq	.LBB16_141
	ldr	x28, [sp, #48]
	cmp	w1, #13
	b.ne	.LBB16_145
	ldr	w8, [x20, #772]
	cbz	w8, .LBB16_145
	mov	x0, x20
	mov	w1, #14
	bl	ebc_lut_update
	ldrb	w8, [x20, #320]
	sub	w8, w8, #6
	and	w9, w8, #0x8000
	add	w8, w8, w9, lsr #15
	mov	w9, #2
	lsr	w8, w8, #1
	b	.LBB16_143
.LBB16_139:
	ldr	w8, [x20, #772]
	ldr	x28, [sp, #48]
	cbz	w8, .LBB16_145
	mov	x0, x20
	mov	w1, #14
	bl	ebc_lut_update
	ldrb	w8, [x20, #320]
	mov	w9, #21846
	sub	w8, w8, #6
	mul	w8, w8, w9
	lsr	w9, w8, #16
	add	w8, w9, w8, lsr #31
	mov	w9, #3
	strb	w9, [x20, #272]
	b	.LBB16_144
.LBB16_141:
	ldr	w8, [x20, #772]
	ldr	x28, [sp, #48]
	cbz	w8, .LBB16_145
	mov	x0, x20
	mov	w1, #14
	bl	ebc_lut_update
	ldrb	w8, [x20, #320]
	sub	w8, w8, #6
	and	w9, w8, #0xc000
	add	w8, w8, w9, lsr #14
	mov	w9, #4
	lsr	w8, w8, #2
.LBB16_143:
	strb	w9, [x20, #272]
.LBB16_144:
	strb	w8, [x20, #864]
	ldr	w8, [x20, #772]
	cbnz	w8, .LBB16_146
	b	.LBB16_163
.LBB16_145:
	mov	x0, x20
	bl	ebc_lut_update
	ldr	w8, [x20, #320]
	strb	w8, [x20, #272]
	ldr	w8, [x20, #772]
	cbz	w8, .LBB16_163
.LBB16_146:
	ldr	w9, [x26, #40]
	sub	w9, w9, #12
	cmp	w9, #2
	b.hi	.LBB16_163
	ldr	w8, [x20, #768]
	cbz	w8, .LBB16_169
	ldr	x8, [x20, #424]
	ldr	x1, [x20, #360]
	ldrsw	x2, [x20, #244]
	ldr	x0, [x8, #16]
	bl	memcpy
	ldr	w8, [x20, #296]
	mov	w3, #232
	cmp	w8, #1
	b.lt	.LBB16_170
	ldp	x12, x13, [x20, #424]
	mov	w9, wzr
	mov	w10, wzr
	ldrsb	w15, [x20, #864]
	ldr	w11, [x20, #300]
	ldr	x12, [x12, #16]
	ldr	x13, [x13, #16]
	add	w15, w15, #2
	ldr	x14, [x20, #368]
	ldr	x16, [x20, #352]
	b	.LBB16_151
.LBB16_150:
	add	w10, w10, #1
	add	w9, w9, w11
	cmp	w10, w8
	b.eq	.LBB16_170
.LBB16_151:
	cmp	w11, #1
	b.lt	.LBB16_150
	mov	w0, w9
	mov	x17, x11
	b	.LBB16_156
.LBB16_153:
	mov	w2, #255
.LBB16_154:
	add	w1, w2, w1
	strb	w3, [x12, x0]
	strb	w1, [x16, x0]
.LBB16_155:
	subs	x17, x17, #1
	add	w0, w0, #1
	b.eq	.LBB16_150
.LBB16_156:
	sxtw	x0, w0
	ldrb	w1, [x14, x0]
	cmp	w1, #120
	b.ne	.LBB16_155
	ldrb	w2, [x13, x0]
	ldrb	w1, [x12, x0]
	cmp	w1, w2
	b.ne	.LBB16_155
	ldrsb	w1, [x16, x0]
	cmp	w2, #240
	strb	w22, [x14, x0]
	b.ne	.LBB16_161
	cmp	w15, w1
	b.le	.LBB16_155
	mov	w2, #1
	b	.LBB16_154
.LBB16_161:
	cbnz	w2, .LBB16_155
	cmn	w1, #1
	b.ge	.LBB16_153
	b	.LBB16_155
.LBB16_163:
	cbz	w8, .LBB16_168
	ldr	w8, [x20, #776]
	cbnz	w8, .LBB16_166
	ldr	w8, [x20, #768]
	cbz	w8, .LBB16_168
.LBB16_166:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_403
.LBB16_167:
	mov	w8, #21
	str	w8, [x26, #40]
	mov	w8, #2
	str	w8, [sp, #32]
.LBB16_168:
	str	wzr, [x20, #776]
	str	wzr, [x20, #768]
	b	.LBB16_172
.LBB16_169:
	ldr	x8, [x20, #424]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_170:
	ldr	w8, [x20, #776]
	cbz	w8, .LBB16_265
.LBB16_171:
	mov	w8, #1
	str	w8, [x20, #776]
.LBB16_172:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_228
.LBB16_173:
	mov	w8, #1
	mov	x0, x20
	str	w8, [x20, #268]
	ldr	w8, [sp, #32]
	str	w8, [x20, #456]
	bl	ebc_frame_start
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #24]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x20, #772]
	cbz	w8, .LBB16_192
	ldr	w8, [x26, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_192
	ldr	w8, [x20, #776]
	cbz	w8, .LBB16_192
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_232
.LBB16_177:
	ldr	w8, [x20, #296]
	cmp	w8, #1
	b.lt	.LBB16_190
	ldr	x14, [x20, #432]
	mov	w10, wzr
	ldp	x15, x13, [x20, #360]
	mov	w11, wzr
	mov	w9, wzr
	ldr	w12, [x20, #300]
	mov	w5, #240
	ldr	x14, [x14, #16]
	ldr	x16, [x20, #352]
	ldrsb	w17, [x20, #864]
	b	.LBB16_180
.LBB16_179:
	add	w11, w11, #1
	add	w10, w10, w12
	cmp	w11, w8
	b.eq	.LBB16_191
.LBB16_180:
	cmp	w12, #1
	b.lt	.LBB16_179
	mov	w1, w10
	mov	x0, x12
	b	.LBB16_185
.LBB16_182:
	sub	w2, w2, #1
	orr	w3, w3, #0x1
	sxtb	w2, w2
	cmp	w2, #1
	csel	w3, w4, w3, lt
	csel	w4, w19, w24, lt
	csinc	w9, w9, wzr, lt
.LBB16_183:
	strb	w3, [x15, x1]
	strb	w4, [x13, x1]
	strb	w2, [x16, x1]
.LBB16_184:
	subs	x0, x0, #1
	add	w1, w1, #1
	b.eq	.LBB16_179
.LBB16_185:
	sxtw	x1, w1
	ldrb	w4, [x14, x1]
	ldrb	w3, [x15, x1]
	cmp	w3, w4
	b.ne	.LBB16_188
	ldrb	w2, [x13, x1]
	sub	w3, w2, #25
	cmp	w3, #94
	b.hi	.LBB16_184
	add	w2, w2, #16
	strb	w2, [x13, x1]
	b	.LBB16_184
.LBB16_188:
	ldrb	w2, [x16, x1]
	cmp	w4, #240
	b.ne	.LBB16_182
	add	w2, w2, #1
	orr	w3, w3, #0x1
	sxtb	w2, w2
	cmp	w2, w17
	csel	w3, w3, w5, lt
	csel	w4, w24, w19, lt
	csinc	w9, w9, wzr, ge
	b	.LBB16_183
.LBB16_190:
	mov	w9, wzr
.LBB16_191:
	str	w9, [x20, #768]
.LBB16_192:
	ldr	x8, [sp, #40]
	ldr	w9, [x28]
	ldr	w8, [x8]
	cbz	w9, .LBB16_199
	cmp	w8, #1
	b.ge	.LBB16_230
.LBB16_194:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_195:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x28]
	cbz	w8, .LBB16_198
	cbnz	x0, .LBB16_200
	bl	schedule
	b	.LBB16_195
.LBB16_198:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB16_200
.LBB16_199:
	tbz	w8, #31, .LBB16_231
.LBB16_200:
	ldr	w8, [x20, #288]
	cbnz	w8, .LBB16_233
	ldr	w8, [x20, #772]
	cbz	w8, .LBB16_418
	ldr	w8, [x26, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_418
	ldr	w8, [x20, #768]
	cbz	w8, .LBB16_239
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_418
	sub	x0, x29, #40
	mov	w1, wzr
	str	wzr, [x20, #304]
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x20, #304]
	cbz	w8, .LBB16_224
.LBB16_206:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_207:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_418
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_229
.LBB16_209:
	ldr	x8, [x20, #424]
	ldr	x1, [x20, #360]
	ldrsw	x2, [x20, #244]
	ldr	x0, [x8, #16]
	bl	memcpy
	ldr	w8, [x20, #296]
	mov	w3, #232
	cmp	w8, #1
	b.lt	.LBB16_172
	ldp	x12, x13, [x20, #424]
	mov	w9, wzr
	mov	w10, wzr
	ldrsb	w15, [x20, #864]
	ldp	x16, x14, [x20, #352]
	ldr	w11, [x20, #300]
	add	w15, w15, #2
	ldr	x12, [x12, #16]
	ldr	x13, [x13, #16]
	b	.LBB16_212
.LBB16_211:
	add	w10, w10, #1
	add	w9, w9, w11
	cmp	w10, w8
	b.eq	.LBB16_172
.LBB16_212:
	cmp	w11, #1
	b.lt	.LBB16_211
	mov	w0, w9
	mov	x17, x11
	b	.LBB16_216
.LBB16_214:
	add	w1, w2, w1
	strb	w3, [x12, x0]
	strb	w1, [x16, x0]
.LBB16_215:
	subs	x17, x17, #1
	add	w0, w0, #1
	b.eq	.LBB16_211
.LBB16_216:
	sxtw	x0, w0
	ldrb	w1, [x14, x0]
	cmp	w1, #120
	b.ne	.LBB16_215
	ldrb	w2, [x13, x0]
	ldrb	w1, [x12, x0]
	cmp	w1, w2
	b.ne	.LBB16_215
	ldrsb	w1, [x16, x0]
	cmp	w2, #240
	strb	w22, [x14, x0]
	b.ne	.LBB16_221
	cmp	w15, w1
	b.le	.LBB16_215
	mov	w2, #1
	b	.LBB16_214
.LBB16_221:
	cbnz	w2, .LBB16_215
	cmn	w1, #1
	b.lt	.LBB16_215
	mov	w2, #255
	b	.LBB16_214
.LBB16_224:
	mov	w8, #3
.LBB16_225:
	cbnz	x0, .LBB16_207
	mov	x0, x8
	bl	schedule_timeout
	mov	x28, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x20, #304]
	cmp	x28, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x28, xzr, eq
	ldr	x28, [sp, #48]
	cbnz	w9, .LBB16_206
	cbnz	x8, .LBB16_225
	b	.LBB16_206
.LBB16_228:
	ldr	x8, [x20, #432]
	adrp	x1, .L.str.83
	ldr	x0, [x20, #312]
	add	x1, x1, :lo12:.L.str.83
	ldrb	w3, [x20, #272]
	ldr	w2, [x8, #40]
	ldrb	w4, [x20, #320]
	bl	_dev_info
	b	.LBB16_173
.LBB16_229:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_209
.LBB16_230:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	x0, [x8]
	bl	_dev_info
	ldr	w8, [x28]
	cbnz	w8, .LBB16_194
	b	.LBB16_200
.LBB16_231:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.86
	add	x1, x1, :lo12:.L.str.86
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_200
.LBB16_232:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_177
.LBB16_233:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_404
.LBB16_234:
	ldr	x8, [x20, #424]
	ldr	x0, [x20, #360]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #352]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x0, [x20, #376]
	mov	w1, wzr
	ldrsw	x2, [x20, #244]
	bl	memset
	ldr	w8, [x20, #244]
	cmp	w8, #1
	b.lt	.LBB16_418
	ldrb	w11, [x20, #272]
	ldrb	w12, [x20, #288]
	ldr	x9, [x20, #376]
	sub	w11, w11, w12
	ldp	x12, x10, [x20, #352]
	b	.LBB16_237
.LBB16_236:
	add	x9, x9, #1
	add	x10, x10, #1
	add	x12, x12, #1
	subs	w8, w8, #1
	b.eq	.LBB16_418
.LBB16_237:
	ldrb	w13, [x10]
	ldrb	w14, [x12]
	cmp	w13, w14
	b.eq	.LBB16_236
	strb	w11, [x9]
	b	.LBB16_236
.LBB16_239:
	ldr	w8, [x20, #776]
	cbz	w8, .LBB16_418
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_418
	sub	x0, x29, #40
	mov	w1, wzr
	str	wzr, [x20, #304]
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x20, #304]
	cbz	w8, .LBB16_398
.LBB16_242:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_243:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_418
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_427
.LBB16_245:
	ldr	w8, [x20, #296]
	ldr	x1, [x20, #360]
	sub	w8, w8, #1
	cmp	w8, #1
	b.le	.LBB16_408
	ldr	w10, [x20, #300]
	mov	x9, xzr
	ldr	x12, [x20, #432]
	mov	w16, #1
	ldr	x11, [x20, #368]
	mov	w4, #232
	sub	w13, w10, #1
	lsl	w15, w10, #1
	ldr	x12, [x12, #16]
	sub	x14, x13, #1
	orr	x15, x15, #0x1
	mov	x17, x10
	mov	w5, #248
	b	.LBB16_248
.LBB16_247:
	add	w16, w16, #1
	add	x17, x17, x10
	add	x15, x15, x10
	add	x9, x9, x10
	cmp	w16, w8
	b.eq	.LBB16_407
.LBB16_248:
	cmp	w13, #2
	b.lt	.LBB16_247
	mov	x0, xzr
	b	.LBB16_251
.LBB16_250:
	add	x0, x0, #1
	cmp	x14, x0
	b.eq	.LBB16_247
.LBB16_251:
	add	w2, w17, w0
	add	w2, w2, #1
	sxtw	x2, w2
	ldrb	w3, [x11, x2]
	cmp	w3, #8
	b.eq	.LBB16_250
	ldrb	w3, [x12, x2]
	strb	w4, [x1, x2]
	cmp	w3, #240
	b.ne	.LBB16_250
	add	w2, w9, w0
	add	w2, w2, #1
	sxtw	x2, w2
	ldrb	w3, [x11, x2]
	cmp	w3, #8
	b.ne	.LBB16_256
	ldrb	w3, [x12, x2]
	cmp	w3, #240
	b.ne	.LBB16_256
	strb	w5, [x1, x2]
.LBB16_256:
	add	w2, w15, w0
	sxtw	x2, w2
	ldrb	w3, [x11, x2]
	cmp	w3, #8
	b.ne	.LBB16_259
	ldrb	w3, [x12, x2]
	cmp	w3, #240
	b.ne	.LBB16_259
	strb	w5, [x1, x2]
.LBB16_259:
	add	w2, w17, w0
	sxtw	x2, w2
	ldrb	w3, [x11, x2]
	cmp	w3, #8
	b.ne	.LBB16_262
	ldrb	w3, [x12, x2]
	cmp	w3, #240
	b.ne	.LBB16_262
	strb	w5, [x1, x2]
.LBB16_262:
	add	w2, w17, w0
	add	w2, w2, #2
	sxtw	x2, w2
	ldrb	w3, [x11, x2]
	cmp	w3, #8
	b.ne	.LBB16_250
	ldrb	w3, [x12, x2]
	cmp	w3, #240
	b.ne	.LBB16_250
	strb	w5, [x1, x2]
	b	.LBB16_250
.LBB16_265:
	ldr	x0, [x20, #368]
	mov	w1, #8
	ldrsw	x2, [x20, #244]
	bl	memset
	ldr	x0, [x20, #352]
	mov	w1, wzr
	ldrsw	x2, [x20, #244]
	bl	memset
	ldr	w8, [x20, #296]
	cmp	w8, #1
	b.lt	.LBB16_171
	ldp	x13, x12, [x20, #352]
	mov	w9, wzr
	mov	w10, wzr
	ldr	w11, [x20, #300]
	ldrb	w14, [x20, #864]
	b	.LBB16_268
.LBB16_267:
	add	w10, w10, #1
	add	w9, w9, w11
	cmp	w10, w8
	b.eq	.LBB16_171
.LBB16_268:
	cmp	w11, #1
	b.lt	.LBB16_267
	mov	w16, w9
	mov	x15, x11
	b	.LBB16_271
.LBB16_270:
	subs	x15, x15, #1
	add	w16, w16, #1
	b.eq	.LBB16_267
.LBB16_271:
	sxtw	x16, w16
	ldrb	w17, [x12, x16]
	cmp	w17, #240
	b.ne	.LBB16_270
	strb	w14, [x13, x16]
	b	.LBB16_270
.LBB16_273:
	ldr	w8, [x28]
	cbz	w8, .LBB16_279
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_424
.LBB16_275:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_276:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x28]
	cbz	w8, .LBB16_297
	cbnz	x0, .LBB16_298
	bl	schedule
	b	.LBB16_276
.LBB16_279:
	ldr	x8, [x20, #424]
	ldr	w9, [x26, #40]
	ldr	w8, [x8, #40]
	cmp	w9, w8
	b.eq	.LBB16_286
	ldr	w8, [x28]
	cbz	w8, .LBB16_286
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_426
.LBB16_282:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_283:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x28]
	cbz	w8, .LBB16_297
	cbnz	x0, .LBB16_298
	bl	schedule
	b	.LBB16_283
.LBB16_286:
	ldr	w8, [x20, #300]
	mov	w3, #255
	ldr	w9, [x20, #296]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w13, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB16_300
	mov	w10, wzr
	ldr	x11, [x20, #376]
	ldr	x12, [x26, #16]
	asr	w13, w13, #3
	ldr	x14, [x20, #352]
	b	.LBB16_289
.LBB16_288:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB16_300
.LBB16_289:
	cmp	w8, #8
	b.lt	.LBB16_288
	mov	w15, w13
	b	.LBB16_292
.LBB16_291:
	add	x14, x14, #8
	subs	w15, w15, #1
	b.eq	.LBB16_288
.LBB16_292:
	ldr	x16, [x12], #8
	ldr	x17, [x14]
	ldr	x0, [x11], #8
	cmp	x16, x17
	b.eq	.LBB16_291
	tst	x0, #0xff
	csel	x1, x3, xzr, eq
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
	b	.LBB16_291
.LBB16_294:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	ldr	x0, [x8]
	bl	_dev_info
	ldr	x8, [sp, #48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_30
	b	.LBB16_43
.LBB16_295:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.76
	add	x1, x1, :lo12:.L.str.76
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_44
.LBB16_296:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_107
.LBB16_297:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_298:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_422
.LBB16_299:
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #352]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_300:
	ldr	w8, [x20, #268]
	mov	w9, #3
	str	w9, [x20, #456]
	cbnz	w8, .LBB16_420
	mov	w8, #1
	mov	x0, x20
	mov	w2, wzr
	str	w8, [x20, #268]
	ldr	w1, [x26, #40]
	bl	ebc_lut_update
	ldr	w9, [x20, #792]
	ldr	w8, [x20, #320]
	cmp	w9, #1
	strh	w8, [x20, #272]
	b.ge	.LBB16_405
.LBB16_302:
	mov	x0, x20
	bl	ebc_frame_start
	b	.LBB16_420
.LBB16_303:
	mov	x0, x20
	mov	w1, wzr
	bl	ebc_power_set
	ldr	w8, [x20, #304]
	cbnz	w8, .LBB16_20
.LBB16_304:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_305:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x20, #304]
	cbnz	w8, .LBB16_393
	cbnz	x0, .LBB16_20
	bl	schedule
	b	.LBB16_305
.LBB16_308:
.LBB16_309:
	ldr	x0, [x20, #360]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #352]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x20, #776]
	str	wzr, [x20, #768]
.LBB16_310:
	mov	w8, #4
	str	x26, [x20, #448]
	ldr	w9, [x20, #300]
	str	w8, [x20, #456]
	ldp	w10, w8, [x26, #48]
	ldp	w12, w14, [x26, #56]
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
	ldr	w10, [x20, #296]
	add	w9, w15, #1
	asr	w13, w12, #3
	sub	w16, w13, #1
	cmp	w9, w13
	csinc	w9, w16, w15, ge
	sub	w15, w10, #1
	cmp	w14, w10
	csel	w10, w14, w15, lt
	cmp	w8, w10
	b.le	.LBB16_315
.LBB16_311:
	ldr	x28, [sp, #48]
	ldr	w8, [x28]
	cbz	w8, .LBB16_387
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	ldr	x0, [x20, #440]
	cbz	x0, .LBB16_314
.LBB16_313:
	bl	ebc_buf_release
.LBB16_314:
	ldr	x8, [x20, #448]
	str	x8, [x20, #440]
	b	.LBB16_3
.LBB16_315:
	ldr	x14, [x20, #432]
	mul	w13, w13, w8
	ldp	x16, x15, [x20, #376]
	sxtw	x13, w13
	asr	w11, w11, #3
	ldr	x14, [x14, #16]
	lsl	x0, x13, #3
	ldr	x17, [x26, #16]
	sbfx	x2, x12, #3, #29
	ldr	x1, [x20, #352]
	add	x13, x16, x0
	add	x12, x15, x0
	add	x14, x14, x0
	add	x15, x17, x0
	sxtw	x17, w11
	add	x16, x1, x0
	add	w0, w9, #1
	sxtw	x0, w0
	lsl	x1, x2, #3
	str	x17, [sp, #32]
	b	.LBB16_317
.LBB16_316:
	add	w8, w8, #1
	add	x12, x12, x1
	add	x13, x13, x1
	add	x14, x14, x1
	add	x15, x15, x1
	add	x16, x16, x1
	cmp	w8, w10
	b.gt	.LBB16_311
.LBB16_317:
	cmp	w11, w9
	b.gt	.LBB16_316
	ldr	x2, [sp, #32]
	b	.LBB16_321
.LBB16_319:
	lsr	x17, x5, #56
	orr	x26, x4, #0x100000000000000
	cmp	x17, #240
	orr	x7, x7, #0xff00000000000000
	csel	x4, x26, x4, eq
.LBB16_320:
	bic	x17, x6, x7
	and	x5, x7, x5
	add	x2, x2, #1
	orr	x17, x17, x5
	cmp	x0, x2
	str	x4, [x12, x3]
	str	x17, [x16, x3]
	b.eq	.LBB16_316
.LBB16_321:
	lsl	x3, x2, #3
	ldr	x28, [x13, x3]
	ldr	x6, [x16, x3]
	ldr	x26, [x15, x3]
	ldr	x5, [x14, x3]
	ldr	x4, [x12, x3]
	tst	x28, #0xff
	b.eq	.LBB16_323
	mov	x7, xzr
	b	.LBB16_325
.LBB16_323:
	and	x4, x4, #0xffffffffffffff00
	and	x30, x26, #0xf0
	cmp	w30, #240
	b.ne	.LBB16_348
	and	x7, x5, #0xff
	cmp	x7, #240
	cset	w7, eq
	orr	x4, x4, x7
	mov	w7, #255
.LBB16_325:
	tst	x28, #0xff00
	b.eq	.LBB16_332
	tst	x28, #0xff0000
	b.eq	.LBB16_334
.LBB16_327:
	tst	x28, #0xff000000
	b.eq	.LBB16_336
.LBB16_328:
	tst	x28, #0xff00000000
	b.eq	.LBB16_338
.LBB16_329:
	tst	x28, #0xff0000000000
	b.eq	.LBB16_340
.LBB16_330:
	tst	x28, #0xff000000000000
	b.eq	.LBB16_342
.LBB16_331:
	lsr	x17, x28, #56
	cbnz	x17, .LBB16_320
	b	.LBB16_344
.LBB16_332:
	and	x4, x4, #0xffffffffffff00ff
	and	x30, x26, #0xf000
	cmp	w30, #15, lsl #12
	b.ne	.LBB16_350
	and	x30, x5, #0xff00
	orr	x17, x4, #0x100
	cmp	x30, #15, lsl #12
	orr	x7, x7, #0xff00
	csel	x4, x17, x4, eq
	tst	x28, #0xff0000
	b.ne	.LBB16_327
.LBB16_334:
	and	x4, x4, #0xffffffffff00ffff
	and	x30, x26, #0xf00000
	cmp	x30, #3840, lsl #12
	b.ne	.LBB16_352
	and	x17, x5, #0xff0000
	orr	x30, x4, #0x10000
	cmp	x17, #3840, lsl #12
	orr	x7, x7, #0xff0000
	csel	x4, x30, x4, eq
	tst	x28, #0xff000000
	b.ne	.LBB16_328
.LBB16_336:
	and	x4, x4, #0xffffffff00ffffff
	and	x30, x26, #0xf0000000
	cmp	w30, w27
	b.ne	.LBB16_354
	and	x17, x5, #0xff000000
	orr	x30, x4, #0x1000000
	cmp	x17, x27
	orr	x7, x7, #0xff000000
	csel	x4, x30, x4, eq
	tst	x28, #0xff00000000
	b.ne	.LBB16_329
.LBB16_338:
	and	x4, x4, #0xffffff00ffffffff
	and	x30, x26, #0xf000000000
	cmp	x30, x25
	b.ne	.LBB16_356
	and	x17, x5, #0xff00000000
	orr	x30, x4, #0x100000000
	cmp	x17, x25
	orr	x7, x7, #0xff00000000
	csel	x4, x30, x4, eq
	tst	x28, #0xff0000000000
	b.ne	.LBB16_330
.LBB16_340:
	and	x4, x4, #0xffff00ffffffffff
	and	x30, x26, #0xf00000000000
	cmp	x30, x23
	b.ne	.LBB16_358
	and	x17, x5, #0xff0000000000
	orr	x30, x4, #0x10000000000
	cmp	x17, x23
	orr	x7, x7, #0xff0000000000
	csel	x4, x30, x4, eq
	tst	x28, #0xff000000000000
	b.ne	.LBB16_331
.LBB16_342:
	and	x4, x4, #0xff00ffffffffffff
	and	x30, x26, #0xf0000000000000
	cmp	x30, x21
	b.ne	.LBB16_360
	and	x17, x5, #0xff000000000000
	orr	x30, x4, #0x1000000000000
	cmp	x17, x21
	orr	x7, x7, #0xff000000000000
	csel	x4, x30, x4, eq
	lsr	x17, x28, #56
	cbnz	x17, .LBB16_320
.LBB16_344:
	and	x4, x4, #0xffffffffffffff
	lsr	x17, x26, #60
	cmp	x17, #15
	b.hs	.LBB16_319
	and	x26, x26, #0xf000000000000000
	mov	x17, #-2305843009213693952
	cmp	x26, x17
	b.eq	.LBB16_378
	cbnz	x26, .LBB16_379
	and	x6, x6, #0xffffffffffffff
	orr	x4, x4, #0x100000000000000
	b	.LBB16_320
.LBB16_348:
	cbnz	w30, .LBB16_362
	mov	x7, xzr
	and	x6, x6, #0xffffffffffffff00
	orr	x4, x4, #0x1
	b	.LBB16_325
.LBB16_350:
	cbnz	w30, .LBB16_364
	and	x6, x6, #0xffffffffffff00ff
	b	.LBB16_366
.LBB16_352:
	cbnz	x30, .LBB16_367
	and	x6, x6, #0xffffffffff00ffff
	b	.LBB16_369
.LBB16_354:
	cbnz	w30, .LBB16_370
	and	x6, x6, #0xffffffff00ffffff
	orr	x4, x4, #0x1000000
	tst	x28, #0xff00000000
	b.ne	.LBB16_329
	b	.LBB16_338
.LBB16_356:
	cbnz	x30, .LBB16_372
	and	x6, x6, #0xffffff00ffffffff
	orr	x4, x4, #0x100000000
	tst	x28, #0xff0000000000
	b.ne	.LBB16_330
	b	.LBB16_340
.LBB16_358:
	cbnz	x30, .LBB16_374
	and	x6, x6, #0xffff00ffffffffff
	orr	x4, x4, #0x10000000000
	tst	x28, #0xff000000000000
	b.ne	.LBB16_331
	b	.LBB16_342
.LBB16_360:
	cbnz	x30, .LBB16_376
	and	x6, x6, #0xff00ffffffffffff
	orr	x4, x4, #0x1000000000000
	lsr	x17, x28, #56
	cbnz	x17, .LBB16_320
	b	.LBB16_344
.LBB16_362:
	cmp	w30, #224
	b.ne	.LBB16_380
	and	x6, x6, #0xffffffffffffff00
	mov	x7, xzr
	orr	x6, x6, #0xf0
	orr	x4, x4, #0x1
	b	.LBB16_325
.LBB16_364:
	and	x17, x6, #0xffffffffffff00ff
	cmp	w30, #14, lsl #12
	b.ne	.LBB16_381
	orr	x6, x17, #0xf000
.LBB16_366:
	orr	x4, x4, #0x100
	tst	x28, #0xff0000
	b.ne	.LBB16_327
	b	.LBB16_334
.LBB16_367:
	and	x17, x6, #0xffffffffff00ffff
	cmp	x30, #3584, lsl #12
	b.ne	.LBB16_382
	orr	x6, x17, #0xf00000
.LBB16_369:
	orr	x4, x4, #0x10000
	tst	x28, #0xff000000
	b.ne	.LBB16_328
	b	.LBB16_336
.LBB16_370:
	mov	w17, #-536870912
	cmp	w30, w17
	b.ne	.LBB16_383
	and	x17, x6, #0xffffffff00ffffff
	orr	x4, x4, #0x1000000
	orr	x6, x17, #0xf0000000
	tst	x28, #0xff00000000
	b.ne	.LBB16_329
	b	.LBB16_338
.LBB16_372:
	mov	x17, #962072674304
	cmp	x30, x17
	b.ne	.LBB16_384
	and	x17, x6, #0xffffff00ffffffff
	orr	x4, x4, #0x100000000
	orr	x6, x17, #0xf000000000
	tst	x28, #0xff0000000000
	b.ne	.LBB16_330
	b	.LBB16_340
.LBB16_374:
	mov	x17, #246290604621824
	cmp	x30, x17
	b.ne	.LBB16_385
	and	x17, x6, #0xffff00ffffffffff
	orr	x4, x4, #0x10000000000
	orr	x6, x17, #0xf00000000000
	tst	x28, #0xff000000000000
	b.ne	.LBB16_331
	b	.LBB16_342
.LBB16_376:
	mov	x17, #63050394783186944
	cmp	x30, x17
	b.ne	.LBB16_386
	and	x17, x6, #0xff00ffffffffffff
	orr	x4, x4, #0x1000000000000
	orr	x6, x17, #0xf0000000000000
	lsr	x17, x28, #56
	cbnz	x17, .LBB16_320
	b	.LBB16_344
.LBB16_378:
	mov	x17, #-1152921504606846976
	orr	x4, x4, #0x100000000000000
	bfxil	x17, x6, #0, #56
	mov	x6, x17
	b	.LBB16_320
.LBB16_379:
	and	x17, x6, #0xffffffffffffff
	orr	x6, x17, x26
	b	.LBB16_320
.LBB16_380:
	and	x6, x6, #0xffffffffffffff00
	mov	x7, xzr
	orr	x6, x30, x6
	b	.LBB16_325
.LBB16_381:
	orr	x6, x17, x30
	tst	x28, #0xff0000
	b.ne	.LBB16_327
	b	.LBB16_334
.LBB16_382:
	orr	x6, x17, x30
	tst	x28, #0xff000000
	b.ne	.LBB16_328
	b	.LBB16_336
.LBB16_383:
	and	x17, x6, #0xffffffff00ffffff
	orr	x6, x17, x30
	tst	x28, #0xff00000000
	b.ne	.LBB16_329
	b	.LBB16_338
.LBB16_384:
	and	x17, x6, #0xffffff00ffffffff
	orr	x6, x17, x30
	tst	x28, #0xff0000000000
	b.ne	.LBB16_330
	b	.LBB16_340
.LBB16_385:
	and	x17, x6, #0xffff00ffffffffff
	orr	x6, x17, x30
	tst	x28, #0xff000000000000
	b.ne	.LBB16_331
	b	.LBB16_342
.LBB16_386:
	and	x17, x6, #0xff00ffffffffffff
	orr	x6, x17, x30
	lsr	x17, x28, #56
	cbnz	x17, .LBB16_320
	b	.LBB16_344
.LBB16_387:
	mov	w8, #1
	mov	x0, x20
	mov	w1, #1
	mov	w2, wzr
	str	w8, [x20, #268]
	bl	ebc_lut_update
	ldr	w9, [x20, #792]
	ldr	w8, [x20, #320]
	cmp	w9, #1
	strh	w8, [x20, #272]
	b.ge	.LBB16_389
.LBB16_388:
	mov	x0, x20
	bl	ebc_frame_start
	ldr	x0, [x20, #440]
	cbnz	x0, .LBB16_313
	b	.LBB16_314
.LBB16_389:
	ldr	x9, [sp, #8]
	adrp	x1, .L.str.74
	and	w2, w8, #0xff
	ubfx	w3, w8, #8, #8
	add	x1, x1, :lo12:.L.str.74
	ldr	x0, [x9]
	bl	_dev_info
	b	.LBB16_388
.LBB16_390:
	ldr	x9, [x20, #432]
	adrp	x1, .L.str.77
	ldr	x0, [x20, #312]
	and	w3, w8, #0xff
	add	x1, x1, :lo12:.L.str.77
	ldr	w2, [x9, #40]
	bl	_dev_info
	b	.LBB16_96
.LBB16_391:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	ldr	x0, [x8]
	bl	_dev_info
	ldr	w8, [x28]
	cbnz	w8, .LBB16_76
	b	.LBB16_93
.LBB16_392:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.76
	add	x1, x1, :lo12:.L.str.76
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_94
.LBB16_393:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB16_20
.LBB16_394:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.72
	add	x1, x1, :lo12:.L.str.72
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_64
.LBB16_395:
.LBB16_396:
	ldr	x0, [x20, #360]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x20, #432]
	ldr	x0, [x20, #352]
	ldrsw	x2, [x20, #244]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x20, #776]
	str	wzr, [x20, #768]
	b	.LBB16_300
.LBB16_397:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.72
	add	x1, x1, :lo12:.L.str.72
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_71
.LBB16_398:
	mov	w8, #3
.LBB16_399:
	cbnz	x0, .LBB16_243
	mov	x0, x8
	bl	schedule_timeout
	mov	x26, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x20, #304]
	cmp	x26, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x26, xzr, eq
	cbnz	w9, .LBB16_242
	cbnz	x8, .LBB16_399
	b	.LBB16_242
.LBB16_402:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_131
.LBB16_403:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.82
	add	x1, x1, :lo12:.L.str.82
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_167
.LBB16_404:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.87
	add	x1, x1, :lo12:.L.str.87
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_234
.LBB16_405:
	ldr	x9, [sp, #8]
	adrp	x1, .L.str.79
	and	w2, w8, #0xff
	add	x1, x1, :lo12:.L.str.79
	ldr	x0, [x9]
	bl	_dev_info
	b	.LBB16_302
.LBB16_406:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.91
	add	x1, x1, :lo12:.L.str.91
	ldr	x0, [x8]
	bl	_dev_err
	b	.LBB16_7
.LBB16_407:
	ldr	x1, [x20, #360]
.LBB16_408:
	ldr	x8, [x20, #424]
	ldrsw	x2, [x20, #244]
	ldr	x0, [x8, #16]
	bl	memcpy
	ldr	w8, [x20, #792]
	mov	w9, #6
	cmp	w8, #1
	mov	w8, #1
	strb	w9, [x20, #272]
	str	w8, [x20, #268]
	b.ge	.LBB16_428
.LBB16_409:
	mov	x0, x20
	bl	ebc_frame_start
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #24]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x20, #792]
	cmp	w8, #1
	b.ge	.LBB16_429
	ldr	w8, [x28]
	cbz	w8, .LBB16_417
.LBB16_411:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_412:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x28]
	cbz	w8, .LBB16_416
	cbnz	x0, .LBB16_417
	bl	schedule
	b	.LBB16_412
.LBB16_415:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.73
	add	x1, x1, :lo12:.L.str.73
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_120
.LBB16_416:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_417:
	str	wzr, [x20, #776]
.LBB16_418:
	adrp	x8, jiffies
	mov	w9, #335544320
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #24]
	add	x1, x8, x9
.LBB16_419:
	bl	mod_timer
.LBB16_420:
	ldr	w8, [x20, #660]
	cbnz	w8, .LBB16_1
	mov	w8, #1
	str	w8, [x20, #660]
	b	.LBB16_2
.LBB16_422:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.76
	add	x1, x1, :lo12:.L.str.76
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_299
.LBB16_423:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.81
	add	x1, x1, :lo12:.L.str.81
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_133
.LBB16_424:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	ldr	x0, [x8]
	bl	_dev_info
	ldr	w8, [x28]
	cbnz	w8, .LBB16_275
	b	.LBB16_298
.LBB16_425:
	adrp	x1, .L.str.73
	ldr	x0, [x20, #312]
	add	x1, x1, :lo12:.L.str.73
	bl	_dev_info
	ldr	x9, [x20, #432]
	b	.LBB16_88
.LBB16_426:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	ldr	x0, [x8]
	bl	_dev_info
	ldr	w8, [x28]
	cbnz	w8, .LBB16_282
	b	.LBB16_298
.LBB16_427:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.89
	add	x1, x1, :lo12:.L.str.89
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_245
.LBB16_428:
	ldr	x8, [x20, #432]
	adrp	x1, .L.str.90
	ldr	x0, [x20, #312]
	add	x1, x1, :lo12:.L.str.90
	mov	w3, #6
	ldr	w2, [x8, #40]
	bl	_dev_info
	b	.LBB16_409
.LBB16_429:
	ldr	x8, [sp, #8]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	x0, [x8]
	bl	_dev_info
	ldr	w8, [x28]
	cbnz	w8, .LBB16_411
	b	.LBB16_417
.Lfunc_end16:
	.size	ebc_thread, .Lfunc_end16-ebc_thread

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
	b.eq	.LBB17_3
	add	x8, x19, #60
	cmp	w6, #2
	str	x8, [sp, #8]
	b.ne	.LBB17_4
	cmp	w10, #0
	mov	w27, wzr
	cinc	w8, w10, lt
	asr	w10, w8, #1
	b	.LBB17_5
.LBB17_3:
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
	b	.LBB17_5
.LBB17_4:
	mov	w27, wzr
.LBB17_5:
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
	b.le	.LBB17_59
	cmp	w20, #1
	mov	w2, wzr
	csinc	w9, w20, wzr, hi
	lsl	w8, w26, #1
	lsl	x9, x9, #3
	mov	w10, #56
	b	.LBB17_10
.LBB17_7:
	add	x12, x24, x11
	add	x13, x23, x11
	add	x24, x12, x17
	add	x12, x22, x11
	add	x11, x21, x11
	add	x23, x13, x17
	add	x22, x12, x17
	add	x21, x11, x17
.LBB17_8:
	ldur	w11, [x29, #-12]
.LBB17_9:
	add	w27, w27, #2
	add	w28, w28, w8
	cmp	w27, w11
	b.ge	.LBB17_59
.LBB17_10:
	cmp	w25, #8
	b.lo	.LBB17_9
	ldur	x12, [x29, #-8]
	mov	x11, xzr
	add	x12, x12, w28, sxtw
	mov	x13, x12
	b	.LBB17_15
.LBB17_12:
	str	x14, [x23, x11]
.LBB17_13:
	mov	w2, #1
	str	w16, [x13]
.LBB17_14:
	add	x13, x13, #4
	add	x11, x11, #8
	cmp	x9, x11
	b.eq	.LBB17_34
.LBB17_15:
	ldr	x15, [x24, x11]
	ldr	x14, [x23, x11]
	cmp	x15, x14
	b.eq	.LBB17_14
	eor	x0, x14, x15
	tst	x0, #0xff
	b.eq	.LBB17_18
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
	b	.LBB17_19
.LBB17_18:
	mov	w16, wzr
	mov	w17, wzr
.LBB17_19:
	add	x1, x21, x11
	tst	x0, #0xff00
	b.eq	.LBB17_21
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
.LBB17_21:
	tst	x0, #0xff0000
	b.eq	.LBB17_23
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
.LBB17_23:
	add	x1, x21, x11
	tst	x0, #0xff000000
	b.eq	.LBB17_25
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
.LBB17_25:
	tst	x0, #0xff00000000
	b.eq	.LBB17_27
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
.LBB17_27:
	add	x1, x21, x11
	tst	x0, #0xff0000000000
	b.eq	.LBB17_29
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
.LBB17_29:
	tst	x0, #0xff000000000000
	b.eq	.LBB17_31
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
.LBB17_31:
	lsr	x0, x0, #56
	cbnz	x0, .LBB17_33
	cbnz	w17, .LBB17_12
	b	.LBB17_13
.LBB17_33:
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
	tbnz	w17, #0, .LBB17_12
	b	.LBB17_13
.LBB17_34:
	add	x13, x24, x11
	add	x14, x23, x11
	add	x15, x22, x11
	add	x16, x21, x11
	cmp	w25, #8
	b.hs	.LBB17_36
	mov	x22, x15
	mov	x21, x16
	mov	x23, x14
	mov	x24, x13
	b	.LBB17_8
.LBB17_36:
	mov	x17, xzr
	b	.LBB17_40
.LBB17_37:
	str	x0, [x14, x17]
.LBB17_38:
	ldr	w0, [x12]
	orr	w0, w0, w2
	mov	w2, #1
	str	w0, [x12]
.LBB17_39:
	add	x12, x12, #4
	add	x17, x17, #8
	cmp	x9, x17
	b.eq	.LBB17_7
.LBB17_40:
	ldr	x1, [x13, x17]
	ldr	x0, [x14, x17]
	cmp	x1, x0
	b.eq	.LBB17_39
	eor	x4, x0, x1
	tst	x4, #0xff
	b.eq	.LBB17_43
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
	b	.LBB17_44
.LBB17_43:
	mov	w3, wzr
	mov	w2, wzr
.LBB17_44:
	add	x5, x16, x17
	tst	x4, #0xff00
	b.eq	.LBB17_46
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
.LBB17_46:
	tst	x4, #0xff0000
	b.eq	.LBB17_48
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
.LBB17_48:
	add	x5, x16, x17
	tst	x4, #0xff000000
	b.eq	.LBB17_50
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
.LBB17_50:
	tst	x4, #0xff00000000
	b.eq	.LBB17_52
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
.LBB17_52:
	add	x5, x16, x17
	tst	x4, #0xff0000000000
	b.eq	.LBB17_54
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
.LBB17_54:
	tst	x4, #0xff000000000000
	b.eq	.LBB17_56
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
.LBB17_56:
	lsr	x4, x4, #56
	cbnz	x4, .LBB17_58
	cbnz	w3, .LBB17_37
	b	.LBB17_38
.LBB17_58:
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
	tbnz	w3, #0, .LBB17_37
	b	.LBB17_38
.LBB17_59:
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
.Lfunc_end17:
	.size	get_overlay_image2, .Lfunc_end17-get_overlay_image2

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
	b.eq	.LBB18_3
	add	x9, x19, #60
	cmp	w6, #2
	str	x9, [sp, #8]
	b.ne	.LBB18_4
	cmp	w8, #0
	mov	w26, wzr
	cinc	w9, w8, lt
	asr	w28, w9, #1
	b	.LBB18_6
.LBB18_3:
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
	b	.LBB18_5
.LBB18_4:
	mov	w26, wzr
.LBB18_5:
	mov	w28, w8
.LBB18_6:
	ldr	w9, [x27, #196]
	lsr	w25, w11, #2
	stp	w12, w11, [sp]
	cbz	w9, .LBB18_36
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
	b.le	.LBB18_37
.LBB18_8:
	ldp	w9, w7, [sp]
	mov	w16, wzr
	sxtw	x8, w25
	mov	w11, #56
	cmp	w9, #1
	csinc	w10, w9, wzr, hi
	add	x9, x24, #1
	lsl	x10, x10, #3
	b	.LBB18_11
.LBB18_9:
	add	x20, x20, x12
	add	x23, x23, x12
	add	x22, x22, x12
	add	x21, x21, x12
.LBB18_10:
	add	w26, w26, #1
	add	x9, x9, x8
	cmp	w26, w28
	b.eq	.LBB18_38
.LBB18_11:
	cmp	w7, #8
	b.lo	.LBB18_10
	mov	x12, xzr
	mov	x13, x9
	b	.LBB18_16
.LBB18_13:
	str	x14, [x22, x12]
.LBB18_14:
	mov	w16, #1
	strb	w0, [x13]
.LBB18_15:
	add	x12, x12, #8
	add	x13, x13, #2
	cmp	x10, x12
	b.eq	.LBB18_9
.LBB18_16:
	ldr	x15, [x23, x12]
	ldr	x14, [x22, x12]
	cmp	x15, x14
	b.eq	.LBB18_15
	eor	x16, x14, x15
	tst	x16, #0xff
	b.eq	.LBB18_19
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
	b	.LBB18_20
.LBB18_19:
	mov	w0, wzr
	mov	w17, wzr
.LBB18_20:
	add	x1, x21, x12
	tst	x16, #0xff00
	b.eq	.LBB18_22
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
.LBB18_22:
	tst	x16, #0xff0000
	b.eq	.LBB18_24
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
.LBB18_24:
	add	x1, x21, x12
	tst	x16, #0xff000000
	b.eq	.LBB18_26
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
.LBB18_26:
	tst	x16, #0xff00000000
	sturb	w0, [x13, #-1]
	b.eq	.LBB18_28
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
	b	.LBB18_29
.LBB18_28:
	mov	w0, wzr
.LBB18_29:
	add	x1, x21, x12
	tst	x16, #0xff0000000000
	b.eq	.LBB18_31
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
.LBB18_31:
	tst	x16, #0xff000000000000
	b.eq	.LBB18_33
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
.LBB18_33:
	lsr	x16, x16, #56
	cbnz	x16, .LBB18_35
	cbnz	w17, .LBB18_13
	b	.LBB18_14
.LBB18_35:
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
	tbnz	w17, #0, .LBB18_13
	b	.LBB18_14
.LBB18_36:
	sub	w8, w28, w26
	mul	w9, w26, w25
	mov	w1, wzr
	mul	w8, w8, w25
	add	x24, x24, w9, sxtw
	sxtw	x2, w8
	mov	x0, x24
	bl	memset
	cmp	w28, w26
	b.gt	.LBB18_8
.LBB18_37:
	mov	w16, wzr
.LBB18_38:
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
.Lfunc_end18:
	.size	get_overlay_image, .Lfunc_end18-get_overlay_image

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
	b.le	.LBB19_2
.LBB19_1:
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB19_2:
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
	b	.LBB19_4
.LBB19_3:
	add	w8, w8, #1
	add	w14, w14, w9
	cmp	w8, w11
	b.gt	.LBB19_1
.LBB19_4:
	tbnz	w8, #0, .LBB19_6
	ldr	x12, [sp, #40]
	ldr	x15, [sp, #56]
	ldr	w12, [x12, #116]
	mul	w12, w12, w8
	lsr	w12, w12, #2
	add	x4, x15, x12
.LBB19_6:
	cmp	w13, w10
	b.gt	.LBB19_3
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
	b	.LBB19_10
.LBB19_8:
	ldr	w12, [x29]
	orr	w12, w12, w17
	str	w12, [x29]
.LBB19_9:
	add	x7, x7, #8
	add	x19, x19, #8
	add	x29, x29, #4
	add	w1, w1, #8
	subs	x30, x30, #1
	b.eq	.LBB19_3
.LBB19_10:
	ldr	x3, [x7]
	ldr	x16, [x19]
	cmp	x3, x16
	b.eq	.LBB19_9
	add	x0, x24, w1, sxtw
	str	w6, [x5, #60]
	eor	x12, x16, x3
	and	x15, x12, #0xff
	ldrb	w17, [x0]
	cmp	x15, #0
	ccmp	w17, #0, #0, ne
	b.eq	.LBB19_13
	mov	w17, wzr
	tst	x12, #0xff00
	b.ne	.LBB19_14
	b	.LBB19_16
.LBB19_13:
	lsl	w15, w16, #2
	ldr	x17, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #3, #5
	ldrb	w15, [x17, x15]
	strb	w6, [x0]
	lsl	w17, w15, w20
	tst	x12, #0xff00
	b.eq	.LBB19_16
.LBB19_14:
	ldrb	w15, [x0, #1]
	cbnz	w15, .LBB19_16
	lsr	x15, x16, #6
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #11, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #1]
	lsl	w15, w15, w21
	orr	w17, w15, w17
.LBB19_16:
	tst	x12, #0xff0000
	b.eq	.LBB19_19
	ldrb	w15, [x0, #2]
	cbnz	w15, .LBB19_19
	lsr	x15, x16, #14
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #19, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #2]
	lsl	w15, w15, w22
	orr	w17, w15, w17
.LBB19_19:
	tst	x12, #0xff000000
	b.eq	.LBB19_22
	ldrb	w15, [x0, #3]
	cbnz	w15, .LBB19_22
	lsr	x15, x16, #22
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #27, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #3]
	lsl	w15, w15, w23
	orr	w17, w15, w17
.LBB19_22:
	tst	x12, #0xff00000000
	b.eq	.LBB19_25
	ldrb	w15, [x0, #4]
	cbnz	w15, .LBB19_25
	lsr	x15, x16, #30
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #35, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #4]
	lsl	w15, w15, w25
	orr	w17, w15, w17
.LBB19_25:
	tst	x12, #0xff0000000000
	b.eq	.LBB19_28
	ldrb	w15, [x0, #5]
	cbnz	w15, .LBB19_28
	lsr	x15, x16, #38
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #43, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #5]
	lsl	w15, w15, w26
	orr	w17, w15, w17
.LBB19_28:
	tst	x12, #0xff000000000000
	b.eq	.LBB19_31
	ldrb	w15, [x0, #6]
	cbnz	w15, .LBB19_31
	lsr	x15, x16, #46
	ldr	x2, [x5, #120]
	and	x15, x15, #0x3e0
	bfxil	x15, x3, #51, #5
	ldrb	w15, [x2, x15]
	strb	w6, [x0, #6]
	lsl	w15, w15, w27
	orr	w17, w15, w17
.LBB19_31:
	lsr	x12, x12, #56
	cbz	x12, .LBB19_8
	ldrb	w12, [x0, #7]
	cbnz	w12, .LBB19_8
	lsr	x12, x16, #54
	ldr	x15, [x5, #120]
	and	x12, x12, #0x3e0
	bfxil	x12, x3, #59, #5
	ldrb	w12, [x15, x12]
	strb	w6, [x0, #7]
	lsl	w12, w12, w28
	orr	w17, w12, w17
	b	.LBB19_8
.Lfunc_end19:
	.size	get_overlay_image_area2, .Lfunc_end19-get_overlay_image_area2

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
	b.le	.LBB20_2
.LBB20_1:
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.LBB20_2:
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
	b	.LBB20_4
.LBB20_3:
	add	w8, w8, #1
	add	w13, w13, w9
	cmp	w8, w11
	b.gt	.LBB20_1
.LBB20_4:
	cbz	w2, .LBB20_6
	ldp	w0, w15, [x14, #116]
	mvn	w3, w8
	add	w15, w15, w3
	cmp	w12, w10
	b.gt	.LBB20_3
	b	.LBB20_7
.LBB20_6:
	ldr	w15, [x14, #116]
	mov	w0, w8
	cmp	w12, w10
	b.gt	.LBB20_3
.LBB20_7:
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
	b	.LBB20_10
.LBB20_8:
	strb	w0, [x27, #1]
.LBB20_9:
	add	w26, w26, #8
	add	w25, w25, #2
	add	x20, x20, #8
	add	x21, x21, #8
	subs	x19, x19, #1
	b.eq	.LBB20_3
.LBB20_10:
	ldr	x28, [x20]
	ldr	x29, [x21]
	cmp	x28, x29
	b.eq	.LBB20_9
	add	x27, x22, w25, sxtw
	sxtw	x15, w26
	add	x30, x23, x15
	add	x15, x24, x15
	eor	x4, x29, x28
	ldrb	w3, [x27]
	tst	x4, #0xff
	str	w7, [x5, #60]
	b.eq	.LBB20_14
	ldrb	w0, [x30]
	cbnz	w0, .LBB20_14
	ldrb	w0, [x15]
	lsl	w17, w29, #2
	and	x17, x17, #0x3e0
	bfxil	x17, x28, #3, #5
	add	x0, x5, x0, lsl #3
	ldr	x0, [x0, #120]
	ldrb	w17, [x0, x17]
	strb	w7, [x30]
	orr	w3, w17, w3
.LBB20_14:
	tst	x4, #0xff00
	b.eq	.LBB20_17
	ldrb	w17, [x30, #1]
	cbnz	w17, .LBB20_17
	ldrb	w17, [x15, #1]
	lsr	x0, x29, #6
	and	x0, x0, #0x3e0
	bfxil	x0, x28, #11, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x0]
	strb	w7, [x30, #1]
	orr	w3, w3, w17, lsl #2
.LBB20_17:
	tst	x4, #0xff0000
	b.eq	.LBB20_20
	ldrb	w17, [x30, #2]
	cbnz	w17, .LBB20_20
	ldrb	w17, [x15, #2]
	lsr	x0, x29, #14
	and	x0, x0, #0x3e0
	bfxil	x0, x28, #19, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x0]
	strb	w7, [x30, #2]
	orr	w3, w3, w17, lsl #4
.LBB20_20:
	tst	x4, #0xff000000
	b.eq	.LBB20_23
	ldrb	w17, [x30, #3]
	cbnz	w17, .LBB20_23
	ldrb	w17, [x15, #3]
	lsr	x0, x29, #22
	and	x0, x0, #0x3e0
	bfxil	x0, x28, #27, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x0]
	strb	w7, [x30, #3]
	orr	w3, w3, w17, lsl #6
.LBB20_23:
	ldrb	w0, [x27, #1]
	tst	x4, #0xff00000000
	strb	w3, [x27]
	b.eq	.LBB20_26
	ldrb	w17, [x30, #4]
	cbnz	w17, .LBB20_26
	ldrb	w17, [x15, #4]
	lsr	x3, x29, #30
	and	x3, x3, #0x3e0
	bfxil	x3, x28, #35, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x3]
	strb	w7, [x30, #4]
	orr	w0, w17, w0
.LBB20_26:
	tst	x4, #0xff0000000000
	b.eq	.LBB20_29
	ldrb	w17, [x30, #5]
	cbnz	w17, .LBB20_29
	ldrb	w17, [x15, #5]
	lsr	x3, x29, #38
	and	x3, x3, #0x3e0
	bfxil	x3, x28, #43, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x3]
	strb	w7, [x30, #5]
	orr	w0, w0, w17, lsl #2
.LBB20_29:
	tst	x4, #0xff000000000000
	b.eq	.LBB20_32
	ldrb	w17, [x30, #6]
	cbnz	w17, .LBB20_32
	ldrb	w17, [x15, #6]
	lsr	x3, x29, #46
	and	x3, x3, #0x3e0
	bfxil	x3, x28, #51, #5
	add	x17, x5, x17, lsl #3
	ldr	x17, [x17, #120]
	ldrb	w17, [x17, x3]
	strb	w7, [x30, #6]
	orr	w0, w0, w17, lsl #4
.LBB20_32:
	lsr	x17, x4, #56
	cbz	x17, .LBB20_8
	ldrb	w17, [x30, #7]
	cbnz	w17, .LBB20_8
	ldrb	w15, [x15, #7]
	lsr	x17, x29, #54
	and	x17, x17, #0x3e0
	bfxil	x17, x28, #59, #5
	add	x15, x5, x15, lsl #3
	ldr	x15, [x15, #120]
	ldrb	w15, [x15, x17]
	strb	w7, [x30, #7]
	orr	w0, w0, w15, lsl #6
	b	.LBB20_8
.Lfunc_end20:
	.size	get_overlay_image_area, .Lfunc_end20-get_overlay_image_area

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
	b.eq	.LBB21_3
	add	x8, x19, #60
	cmp	w5, #2
	str	x8, [sp, #8]
	b.ne	.LBB21_4
	cmp	w25, #0
	mov	w27, wzr
	cinc	w8, w25, lt
	asr	w25, w8, #1
	b	.LBB21_5
.LBB21_3:
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
	b	.LBB21_5
.LBB21_4:
	mov	w27, wzr
.LBB21_5:
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
	b.le	.LBB21_19
	cmp	w24, #1
	mov	w8, wzr
	csinc	w9, w24, wzr, hi
	stur	w23, [x29, #-12]
	lsl	x24, x9, #3
	str	x9, [sp, #16]
	b	.LBB21_9
.LBB21_7:
	add	x22, x22, x23
	add	x21, x21, x23
	add	x20, x20, x23
	ldur	w23, [x29, #-12]
.LBB21_8:
	add	w27, w27, #2
	cmp	w27, w25
	b.ge	.LBB21_19
.LBB21_9:
	cmp	w23, #8
	b.lo	.LBB21_8
	ldp	x26, x9, [sp, #16]
	ldr	w9, [x9, #116]
	mul	w28, w9, w27
	ldur	x9, [x29, #-8]
	add	x23, x9, x28, lsr #2
	b	.LBB21_12
.LBB21_11:
	add	x21, x21, #8
	add	x22, x22, #8
	add	x20, x20, #8
	add	x23, x23, #4
	subs	x26, x26, #1
	b.eq	.LBB21_14
.LBB21_12:
	ldr	x9, [x22]
	ldr	x10, [x21]
	cmp	x9, x10
	b.eq	.LBB21_11
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	mov	x3, x19
	mov	w4, wzr
	bl	get_one_auto_image2
	mov	w8, #1
	str	w0, [x23]
	b	.LBB21_11
.LBB21_14:
	ldur	w23, [x29, #-12]
	cmp	w23, #8
	b.lo	.LBB21_8
	ldur	x9, [x29, #-8]
	mov	x23, xzr
	add	x26, x9, x28, lsr #2
	b	.LBB21_17
.LBB21_16:
	add	x26, x26, #4
	add	x23, x23, #8
	cmp	x24, x23
	b.eq	.LBB21_7
.LBB21_17:
	add	x0, x22, x23
	add	x1, x21, x23
	ldr	x9, [x0]
	ldr	x10, [x1]
	cmp	x9, x10
	b.eq	.LBB21_16
	add	x2, x20, x23
	mov	x3, x19
	mov	w4, #2
	bl	get_one_auto_image2
	ldr	w8, [x26]
	orr	w9, w8, w0
	mov	w8, #1
	str	w9, [x26]
	b	.LBB21_16
.LBB21_19:
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
.Lfunc_end21:
	.size	get_auto_image2, .Lfunc_end21-get_auto_image2

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
	b.eq	.LBB22_3
	add	x11, x4, #60
	cmp	w5, #2
	b.ne	.LBB22_6
	cmp	w10, #0
	mov	w12, wzr
	cinc	w10, w10, lt
	asr	w10, w10, #1
	cmp	w12, w10
	b.ge	.LBB22_4
	b	.LBB22_7
.LBB22_3:
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
	b.lt	.LBB22_7
.LBB22_4:
	mov	w19, wzr
.LBB22_5:
	str	w19, [x11]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x26, x25, [sp], #64
	ret
.LBB22_6:
	mov	w12, wzr
	cmp	w12, w10
	b.ge	.LBB22_4
.LBB22_7:
	cmp	w15, #1
	mov	w19, wzr
	ldrb	w13, [x4, #56]
	csinc	w15, w15, wzr, hi
	ldr	w14, [x8, #196]
	add	x16, x0, #1
	b	.LBB22_10
.LBB22_8:
	add	x3, x3, x17
	add	x1, x1, x17
	add	x2, x2, x17
.LBB22_9:
	add	w12, w12, #1
	cmp	w12, w10
	b.eq	.LBB22_5
.LBB22_10:
	cbz	w14, .LBB22_12
	ldp	w5, w17, [x8, #116]
	mvn	w0, w12
	add	w0, w17, w0
	cmp	w9, #8
	b.lo	.LBB22_9
	b	.LBB22_13
.LBB22_12:
	ldr	w0, [x8, #116]
	mov	w5, w12
	cmp	w9, #8
	b.lo	.LBB22_9
.LBB22_13:
	mul	w0, w0, w5
	mov	x17, xzr
	mov	w5, w15
	lsr	w0, w0, #2
	add	x0, x16, x0
	b	.LBB22_16
.LBB22_14:
	sturh	wzr, [x0, #-1]
.LBB22_15:
	add	x17, x17, #8
	add	x0, x0, #2
	subs	w5, w5, #1
	b.eq	.LBB22_8
.LBB22_16:
	ldr	x7, [x1, x17]
	ldr	x6, [x2, x17]
	cmp	x7, x6
	b.eq	.LBB22_14
	eor	x19, x6, x7
	tst	x19, #0xff
	b.eq	.LBB22_19
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
	b	.LBB22_20
.LBB22_19:
	mov	w20, wzr
.LBB22_20:
	add	x21, x3, x17
	tst	x19, #0xff00
	b.eq	.LBB22_22
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
.LBB22_22:
	tst	x19, #0xff0000
	b.eq	.LBB22_24
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
.LBB22_24:
	add	x21, x3, x17
	tst	x19, #0xff000000
	b.eq	.LBB22_26
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
.LBB22_26:
	tst	x19, #0xff00000000
	sturb	w20, [x0, #-1]
	b.eq	.LBB22_28
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
	b	.LBB22_29
.LBB22_28:
	mov	w20, wzr
.LBB22_29:
	add	x21, x3, x17
	tst	x19, #0xff0000000000
	b.eq	.LBB22_31
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
.LBB22_31:
	tst	x19, #0xff000000000000
	b.eq	.LBB22_33
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
.LBB22_33:
	lsr	x19, x19, #56
	cbz	x19, .LBB22_35
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
.LBB22_35:
	mov	w19, #1
	str	x6, [x2, x17]
	strb	w20, [x0]
	b	.LBB22_15
.Lfunc_end22:
	.size	get_auto_image, .Lfunc_end22-get_auto_image

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
	b.eq	.LBB23_3
	cmp	w4, #2
	b.ne	.LBB23_4
	cmp	w23, #0
	mov	w24, wzr
	cinc	w8, w23, lt
	asr	w23, w8, #1
	b	.LBB23_5
.LBB23_3:
	cmp	w23, #0
	cinc	w8, w23, lt
	asr	w24, w8, #1
	mul	w8, w24, w9
	sbfiz	x8, x8, #3, #32
	add	x20, x20, x8
	add	x19, x19, x8
	b	.LBB23_5
.LBB23_4:
	mov	w24, wzr
.LBB23_5:
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
	b.le	.LBB23_25
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
	b	.LBB23_9
.LBB23_7:
	add	x20, x20, x15
	add	x19, x19, x15
.LBB23_8:
	add	w24, w24, #2
	add	w25, w25, w8
	cmp	w24, w23
	b.ge	.LBB23_25
.LBB23_9:
	cmp	w22, #8
	b.lo	.LBB23_8
	ldr	x14, [sp, #8]
	mov	x15, x9
	add	x14, x14, w25, sxtw
	mov	x16, x14
	b	.LBB23_14
.LBB23_11:
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
.LBB23_12:
	str	w17, [x16]
.LBB23_13:
	add	x16, x16, #4
	subs	x15, x15, #1
	b.eq	.LBB23_17
.LBB23_14:
	ldr	x17, [x20], #8
	ldr	x1, [x19], #8
	cmp	x17, x1
	b.eq	.LBB23_13
	eor	x0, x1, x17
	cbnz	x0, .LBB23_11
	mov	w17, wzr
	b	.LBB23_12
.LBB23_17:
	cmp	w22, #8
	b.lo	.LBB23_8
	mov	x15, xzr
	b	.LBB23_22
.LBB23_19:
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
.LBB23_20:
	ldr	w17, [x14]
	orr	w16, w17, w16
	str	w16, [x14]
.LBB23_21:
	add	x14, x14, #4
	add	x15, x15, #8
	cmp	x10, x15
	b.eq	.LBB23_7
.LBB23_22:
	ldr	x16, [x20, x15]
	ldr	x0, [x19, x15]
	cmp	x16, x0
	b.eq	.LBB23_21
	eor	x17, x0, x16
	cbnz	x17, .LBB23_19
	mov	w16, wzr
	b	.LBB23_20
.LBB23_25:
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldp	x28, x27, [sp, #32]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #112
	ret
.Lfunc_end23:
	.size	direct_mode_data_change_part2, .Lfunc_end23-direct_mode_data_change_part2

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
	b.eq	.LBB24_3
	cmp	w4, #2
	b.ne	.LBB24_4
	cmp	w8, #0
	mov	w23, wzr
	cinc	w9, w8, lt
	asr	w24, w9, #1
	b	.LBB24_6
.LBB24_3:
	cmp	w8, #0
	cinc	w9, w8, lt
	asr	w23, w9, #1
	mul	w9, w23, w10
	sbfiz	x9, x9, #3, #32
	add	x20, x20, x9
	add	x19, x19, x9
	b	.LBB24_5
.LBB24_4:
	mov	w23, wzr
.LBB24_5:
	mov	w24, w8
.LBB24_6:
	ldrb	w28, [x3, #56]
	lsr	w25, w22, #2
	ldr	w27, [x3, #72]
	ldr	w9, [x26, #196]
	ldr	x10, [x3, #120]
	str	x10, [sp]
	cbz	w9, .LBB24_8
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
	b.gt	.LBB24_9
	b	.LBB24_19
.LBB24_8:
	sub	w8, w24, w23
	mul	w9, w23, w25
	mov	w1, wzr
	mul	w8, w8, w25
	add	x21, x21, w9, sxtw
	sxtw	x2, w8
	mov	x0, x21
	bl	memset
	cmp	w24, w23
	b.le	.LBB24_19
.LBB24_9:
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
	b	.LBB24_11
.LBB24_10:
	add	w23, w23, #1
	add	x21, x21, x8
	cmp	w23, w24
	b.eq	.LBB24_19
.LBB24_11:
	cmp	w22, #8
	b.lo	.LBB24_10
	mov	x12, xzr
	b	.LBB24_16
.LBB24_13:
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
.LBB24_14:
	strh	w13, [x21, x12]
.LBB24_15:
	add	x12, x12, #2
	cmp	x10, x12
	b.eq	.LBB24_10
.LBB24_16:
	ldr	x13, [x20], #8
	ldr	x15, [x19], #8
	cmp	x13, x15
	b.eq	.LBB24_15
	eor	x14, x15, x13
	cbnz	x14, .LBB24_13
	mov	w13, wzr
	b	.LBB24_14
.LBB24_19:
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
	.size	direct_mode_data_change_part, .Lfunc_end24-direct_mode_data_change_part

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
	b.ge	.LBB25_39
	lsr	w14, w8, #2
	cmp	w12, #1
	csinc	w15, w12, wzr, hi
	adrp	x16, .LJTI25_1
	mul	w12, w9, w14
	adrp	x1, .LJTI25_0
	lsl	w14, w14, #1
	lsl	x15, x15, #3
	add	x16, x16, :lo12:.LJTI25_1
	add	x1, x1, :lo12:.LJTI25_0
	b	.LBB25_4
.LBB25_2:
	add	x17, x17, x2
	add	x13, x13, x2
	add	x11, x11, x2
	add	x17, x17, x19
	add	x13, x13, x19
	add	x11, x11, x19
.LBB25_3:
	add	w9, w9, #2
	add	w12, w12, w14
	cmp	w9, w10
	b.ge	.LBB25_39
.LBB25_4:
	cmp	w8, #8
	b.lo	.LBB25_3
	add	x4, x0, w12, sxtw
	mov	x2, xzr
	mov	x5, x4
	b	.LBB25_8
.LBB25_6:
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
.LBB25_7:
	add	x2, x2, #8
	cmp	x15, x2
	str	w6, [x5], #4
	b.eq	.LBB25_21
.LBB25_8:
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
	b.hi	.LBB25_11
	adr	x26, .LBB25_10
	ldrb	w27, [x1, x25]
	add	x26, x26, x27, lsl #2
	br	x26
.LBB25_10:
	ldr	w19, [x3, #636]
	mul	w20, w22, w22
	madd	w20, w24, w24, w20
	mul	w19, w19, w19
	cmp	w20, w19
	b.le	.LBB25_17
	b	.LBB25_19
.LBB25_11:
	ldr	w19, [x3, #636]
	cmp	w19, w2
	b.gt	.LBB25_17
	b	.LBB25_19
.LBB25_12:
	ldr	w22, [x3, #636]
	mul	w19, w22, w19
	sdiv	w19, w19, w20
	add	w20, w21, w23
	cmp	w20, w19
	ccmp	w20, w22, #0, le
	b.le	.LBB25_17
	b	.LBB25_19
.LBB25_13:
	ldr	w22, [x3, #636]
	mul	w19, w22, w19
	sdiv	w19, w19, w20
	cmp	w23, w19
	b.gt	.LBB25_19
	cmp	w21, w22
	b.le	.LBB25_17
	b	.LBB25_19
.LBB25_15:
	ldr	w19, [x3, #636]
	cmp	w23, w19
	b.le	.LBB25_17
	cmp	w21, w19
	b.gt	.LBB25_19
.LBB25_17:
	ldr	w19, [x17, x2]
	mvn	w19, w19
	tst	x19, #0xff
	b.ne	.LBB25_19
	str	xzr, [x17, x2]
.LBB25_19:
	ldrb	w19, [x17, x2]
	ldrb	w20, [x3, #56]
	cmp	w19, w20
	b.lo	.LBB25_6
	mov	w6, wzr
	b	.LBB25_7
.LBB25_21:
	add	x5, x17, x2
	add	x6, x13, x2
	add	x7, x11, x2
	cmp	w8, #8
	b.hs	.LBB25_23
	mov	x11, x7
	mov	x13, x6
	mov	x17, x5
	b	.LBB25_3
.LBB25_23:
	mov	x19, xzr
	b	.LBB25_26
.LBB25_24:
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
.LBB25_25:
	add	x19, x19, #8
	add	x4, x4, #4
	cmp	x15, x19
	b.eq	.LBB25_2
.LBB25_26:
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
	b.hi	.LBB25_29
	adr	x29, .LBB25_28
	ldrb	w30, [x16, x28]
	add	x29, x29, x30, lsl #2
	br	x29
.LBB25_28:
	ldr	w22, [x3, #636]
	mul	w23, w25, w25
	madd	w23, w27, w27, w23
	mul	w22, w22, w22
	cmp	w23, w22
	b.le	.LBB25_35
	b	.LBB25_37
.LBB25_29:
	ldr	w22, [x3, #636]
	cmp	w22, w19
	b.gt	.LBB25_35
	b	.LBB25_37
.LBB25_30:
	ldr	w25, [x3, #636]
	mul	w22, w25, w22
	sdiv	w22, w22, w23
	add	w23, w24, w26
	cmp	w23, w22
	ccmp	w23, w25, #0, le
	b.le	.LBB25_35
	b	.LBB25_37
.LBB25_31:
	ldr	w25, [x3, #636]
	mul	w22, w25, w22
	sdiv	w22, w22, w23
	cmp	w26, w22
	b.gt	.LBB25_37
	cmp	w24, w25
	b.le	.LBB25_35
	b	.LBB25_37
.LBB25_33:
	ldr	w22, [x3, #636]
	cmp	w26, w22
	b.le	.LBB25_35
	cmp	w24, w22
	b.gt	.LBB25_37
.LBB25_35:
	ldr	w22, [x5, x19]
	mvn	w22, w22
	tst	x22, #0xff
	b.ne	.LBB25_37
	str	xzr, [x5, x19]
.LBB25_37:
	ldrb	w22, [x5, x19]
	ldrb	w23, [x3, #56]
	cmp	w22, w23
	b.lo	.LBB25_24
	str	wzr, [x4]
	b	.LBB25_25
.LBB25_39:
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end25:
	.size	direct_mode_data_change_full2, .Lfunc_end25-direct_mode_data_change_full2
	.section	.rodata,"a",@progbits
.LJTI25_0:
	.byte	(.LBB25_10-.LBB25_10)>>2
	.byte	(.LBB25_12-.LBB25_10)>>2
	.byte	(.LBB25_13-.LBB25_10)>>2
	.byte	(.LBB25_15-.LBB25_10)>>2
.LJTI25_1:
	.byte	(.LBB25_28-.LBB25_28)>>2
	.byte	(.LBB25_30-.LBB25_28)>>2
	.byte	(.LBB25_31-.LBB25_28)>>2
	.byte	(.LBB25_33-.LBB25_28)>>2

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
	b.ge	.LBB26_21
	cmp	w15, #1
	sxtw	x14, w14
	csinc	w17, w15, wzr, hi
	add	x15, x0, x16
	lsl	x16, x17, #3
	adrp	x17, .LJTI26_0
	add	x17, x17, :lo12:.LJTI26_0
	b	.LBB26_4
.LBB26_2:
	add	x13, x13, x0
	add	x11, x11, x0
	add	x10, x10, x0
.LBB26_3:
	add	w9, w9, #1
	add	x15, x15, x14
	cmp	w9, w12
	b.eq	.LBB26_21
.LBB26_4:
	cmp	w8, #8
	b.lo	.LBB26_3
	mov	x0, xzr
	mov	x1, x15
	b	.LBB26_8
.LBB26_6:
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
.LBB26_7:
	add	x0, x0, #8
	add	x1, x1, #2
	cmp	x16, x0
	b.eq	.LBB26_2
.LBB26_8:
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
	b.hi	.LBB26_11
	adr	x23, .LBB26_10
	ldrb	w24, [x17, x22]
	add	x23, x23, x24, lsl #2
	br	x23
.LBB26_10:
	ldr	w5, [x3, #636]
	mul	w6, w19, w19
	madd	w6, w21, w21, w6
	mul	w5, w5, w5
	cmp	w6, w5
	b.le	.LBB26_17
	b	.LBB26_19
.LBB26_11:
	ldr	w5, [x3, #636]
	cmp	w5, w0
	b.gt	.LBB26_17
	b	.LBB26_19
.LBB26_12:
	ldr	w19, [x3, #636]
	mul	w5, w19, w5
	sdiv	w5, w5, w6
	add	w6, w7, w20
	cmp	w6, w5
	ccmp	w6, w19, #0, le
	b.le	.LBB26_17
	b	.LBB26_19
.LBB26_13:
	ldr	w19, [x3, #636]
	mul	w5, w19, w5
	sdiv	w5, w5, w6
	cmp	w20, w5
	b.gt	.LBB26_19
	cmp	w7, w19
	b.le	.LBB26_17
	b	.LBB26_19
.LBB26_15:
	ldr	w5, [x3, #636]
	cmp	w20, w5
	b.le	.LBB26_17
	cmp	w7, w5
	b.gt	.LBB26_19
.LBB26_17:
	ldr	w5, [x13, x0]
	mvn	w5, w5
	tst	x5, #0xff
	b.ne	.LBB26_19
	str	xzr, [x13, x0]
.LBB26_19:
	ldrb	w5, [x13, x0]
	ldrb	w6, [x3, #56]
	cmp	w5, w6
	b.lo	.LBB26_6
	strh	wzr, [x1]
	b	.LBB26_7
.LBB26_21:
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldp	x24, x23, [sp], #48
	ret
.Lfunc_end26:
	.size	direct_mode_data_change_full, .Lfunc_end26-direct_mode_data_change_full
	.section	.rodata,"a",@progbits
.LJTI26_0:
	.byte	(.LBB26_10-.LBB26_10)>>2
	.byte	(.LBB26_12-.LBB26_10)>>2
	.byte	(.LBB26_13-.LBB26_10)>>2
	.byte	(.LBB26_15-.LBB26_10)>>2

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
	b.ge	.LBB27_10
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
	b	.LBB27_3
.LBB27_2:
	add	w9, w9, #2
	add	w14, w14, w16
	cmp	w9, w11
	b.ge	.LBB27_10
.LBB27_3:
	cmp	w8, #8
	b.lo	.LBB27_2
	add	x1, x0, w14, sxtw
	mov	x2, x13
	mov	x3, x1
.LBB27_5:
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
	b.ne	.LBB27_5
	cmp	w8, #8
	b.lo	.LBB27_2
	mov	x2, xzr
.LBB27_8:
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
	b.ne	.LBB27_8
	add	x12, x12, x2
	add	x10, x10, x2
	b	.LBB27_2
.LBB27_10:
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldr	x23, [sp], #48
	ret
.Lfunc_end27:
	.size	direct_mode_data_change2, .Lfunc_end27-direct_mode_data_change2

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
	b.ge	.LBB28_6
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
	b	.LBB28_3
.LBB28_2:
	add	w9, w9, #1
	add	x15, x15, x13
	cmp	w9, w10
	b.eq	.LBB28_6
.LBB28_3:
	cmp	w8, #8
	b.lo	.LBB28_2
	mov	x17, xzr
.LBB28_5:
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
	b.ne	.LBB28_5
	b	.LBB28_2
.LBB28_6:
	ldr	x19, [sp], #16
	ret
.Lfunc_end28:
	.size	direct_mode_data_change, .Lfunc_end28-direct_mode_data_change

	.p2align	2
	.type	get_one_auto_image2,@function
get_one_auto_image2:
	ldr	x9, [x0]
	ldr	x8, [x1]
	ldrb	w10, [x3, #56]
	eor	x11, x8, x9
	tst	x11, #0xff
	b.eq	.LBB29_16
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
	b.eq	.LBB29_3
.LBB29_2:
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
.LBB29_3:
	tst	x11, #0xff0000
	b.eq	.LBB29_5
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
.LBB29_5:
	tst	x11, #0xff000000
	b.eq	.LBB29_7
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
.LBB29_7:
	tst	x11, #0xff00000000
	b.eq	.LBB29_9
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
.LBB29_9:
	tst	x11, #0xff0000000000
	b.eq	.LBB29_11
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
.LBB29_11:
	tst	x11, #0xff000000000000
	b.eq	.LBB29_13
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
.LBB29_13:
	lsr	x11, x11, #56
	cbz	x11, .LBB29_15
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
.LBB29_15:
	str	x8, [x1]
	ret
.LBB29_16:
	mov	w0, wzr
	tst	x11, #0xff00
	b.ne	.LBB29_2
	b	.LBB29_3
.Lfunc_end29:
	.size	get_one_auto_image2, .Lfunc_end29-get_one_auto_image2

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
	cbz	x0, .LBB30_7
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	blr	x8
	mov	w2, w0
	cbz	w2, .LBB30_8
.LBB30_2:
	mov	w8, #25
	ldr	w9, [x19, #792]
	str	w8, [sp, #4]
	tbz	w9, #31, .LBB30_31
.LBB30_3:
	ldr	w8, [x19, #792]
	cmp	w8, #1
	b.ge	.LBB30_18
	cmp	w21, #23
	b.hi	.LBB30_6
.LBB30_5:
	adrp	x9, .LJTI30_0
	mov	w8, w21
	add	x9, x9, :lo12:.LJTI30_0
	mov	w1, wzr
	adr	x10, .LBB30_6
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB30_6:
	mov	w1, #3
	b	.LBB30_27
.LBB30_7:
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
	cbnz	w2, .LBB30_2
.LBB30_8:
	ldr	w2, [sp, #4]
	tbnz	w2, #31, .LBB30_12
	cmp	w2, #51
	b.lo	.LBB30_3
	ldr	w8, [x19, #792]
	tbz	w8, #31, .LBB30_33
.LBB30_11:
	mov	w8, #50
	str	w8, [sp, #4]
	b	.LBB30_3
.LBB30_12:
	ldr	w8, [x19, #792]
	tbz	w8, #31, .LBB30_32
.LBB30_13:
	mov	w8, #25
	str	w8, [sp, #4]
	b	.LBB30_3
.LBB30_14:
	mov	w1, #1
	b	.LBB30_27
.LBB30_15:
	mov	w1, #8
	b	.LBB30_27
.LBB30_16:
	mov	w1, #7
	b	.LBB30_27
.LBB30_17:
	mov	w1, #2
	b	.LBB30_27
.LBB30_18:
	adrp	x1, .L.str.95
	ldr	x0, [x19, #312]
	ldr	w2, [sp, #4]
	add	x1, x1, :lo12:.L.str.95
	bl	_dev_info
	cmp	w21, #23
	b.ls	.LBB30_5
	b	.LBB30_6
.LBB30_19:
	mov	w1, #10
	b	.LBB30_27
.LBB30_20:
	mov	w1, #4
	b	.LBB30_27
.LBB30_21:
	mov	w1, #5
	b	.LBB30_27
.LBB30_22:
	mov	w1, #6
	b	.LBB30_27
.LBB30_23:
	ldr	w8, [x19, #780]
	mov	w9, #3
	cmp	w8, #0
	mov	w8, #14
	csel	w1, w9, w8, eq
	b	.LBB30_27
.LBB30_24:
	ldr	w8, [x19, #780]
	mov	w9, #4
	cmp	w8, #0
	mov	w8, #13
	csel	w1, w9, w8, eq
	b	.LBB30_27
.LBB30_25:
	ldr	w20, [x19, #192]
	mov	w1, #11
	b	.LBB30_27
.LBB30_26:
	ldr	w20, [x19, #192]
	mov	w1, #12
.LBB30_27:
	add	x0, x19, #320
	ldr	w2, [sp, #4]
	mov	w3, #32
	mov	w4, w20
	bl	epd_lut_get
	cbnz	w0, .LBB30_30
.LBB30_28:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB30_34
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x21, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB30_30:
	adrp	x1, .L.str.96
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.96
	bl	_dev_err
	b	.LBB30_28
.LBB30_31:
	adrp	x1, .L.str.94
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.94
	bl	_dev_info
	b	.LBB30_3
.LBB30_32:
	adrp	x1, .L.str.92
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.92
	bl	_dev_info
	b	.LBB30_13
.LBB30_33:
	adrp	x1, .L.str.93
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.93
	bl	_dev_info
	b	.LBB30_11
.LBB30_34:
	bl	__stack_chk_fail
.Lfunc_end30:
	.size	ebc_lut_update, .Lfunc_end30-ebc_lut_update
	.section	.rodata,"a",@progbits
.LJTI30_0:
	.byte	(.LBB30_6-.LBB30_6)>>2
	.byte	(.LBB30_19-.LBB30_6)>>2
	.byte	(.LBB30_6-.LBB30_6)>>2
	.byte	(.LBB30_20-.LBB30_6)>>2
	.byte	(.LBB30_21-.LBB30_6)>>2
	.byte	(.LBB30_22-.LBB30_6)>>2
	.byte	(.LBB30_15-.LBB30_6)>>2
	.byte	(.LBB30_23-.LBB30_6)>>2
	.byte	(.LBB30_24-.LBB30_6)>>2
	.byte	(.LBB30_25-.LBB30_6)>>2
	.byte	(.LBB30_26-.LBB30_6)>>2
	.byte	(.LBB30_15-.LBB30_6)>>2
	.byte	(.LBB30_16-.LBB30_6)>>2
	.byte	(.LBB30_16-.LBB30_6)>>2
	.byte	(.LBB30_14-.LBB30_6)>>2
	.byte	(.LBB30_17-.LBB30_6)>>2
	.byte	(.LBB30_14-.LBB30_6)>>2
	.byte	(.LBB30_27-.LBB30_6)>>2
	.byte	(.LBB30_6-.LBB30_6)>>2
	.byte	(.LBB30_6-.LBB30_6)>>2
	.byte	(.LBB30_6-.LBB30_6)>>2
	.byte	(.LBB30_6-.LBB30_6)>>2
	.byte	(.LBB30_14-.LBB30_6)>>2
	.byte	(.LBB30_17-.LBB30_6)>>2

	.text
	.p2align	2
	.type	ebc_frame_start,@function
ebc_frame_start:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	ldr	w8, [x0, #456]
	stp	x20, x19, [sp, #32]
	mov	x19, x0
	add	x20, x0, #216
	stp	x22, x21, [sp, #16]
	mov	x29, sp
	cmp	w8, #1
	b.eq	.LBB31_7
	cmp	w8, #3
	b.eq	.LBB31_9
	cmp	w8, #4
	b.ne	.LBB31_13
	ldr	x0, [x19, #392]
	mov	w1, wzr
	ldrsw	x2, [x19, #248]
	bl	memset
	ldp	x4, x0, [x19, #384]
	mov	x5, x20
	ldp	x1, x2, [x19, #352]
	ldr	w8, [x19, #204]
	ldr	x3, [x19, #376]
	cbz	w8, .LBB31_18
	bl	get_overlay_image_area2
	ldr	w8, [x19, #276]
	cbz	w8, .LBB31_19
.LBB31_5:
	ldp	w8, w9, [x19, #172]
	ldr	w10, [x19, #180]
	mov	w3, #1
	ldr	x0, [x19, #40]
	str	wzr, [x19, #112]
	ldr	x1, [x19, #72]
	mov	w22, #1
	ldrsw	x2, [x19, #248]
	add	w8, w9, w8
	add	w21, w8, w10
	bl	dma_sync_single_for_device
	ldr	x0, [x19, #48]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x19, #48]
	mov	w2, wzr
	ldr	w1, [x19, #72]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x19, #48]
	mov	w1, w21
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x19, #48]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x19, #112]
	mov	w1, wzr
	ldr	x0, [x19, #400]
	ldrsw	x2, [x19, #248]
	sub	w8, w22, w8
	str	w8, [x19, #112]
	bl	memset
	ldp	x1, x2, [x19, #352]
	mov	x5, x20
	ldp	x3, x4, [x19, #376]
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #400]
	cbz	w8, .LBB31_28
	bl	get_overlay_image_area2
	b	.LBB31_39
.LBB31_7:
	ldp	x11, x10, [x19, #424]
	mov	x3, x20
	mov	w4, #1
	ldrb	w8, [x19, #272]
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #392]
	str	w8, [x19, #288]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB31_21
	bl	direct_mode_data_change_part2
	b	.LBB31_22
.LBB31_9:
	ldp	x1, x2, [x19, #352]
	mov	x4, x20
	mov	w5, #1
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #392]
	ldr	x3, [x19, #376]
	cbz	w8, .LBB31_24
	bl	get_auto_image2
	ldr	w8, [x19, #276]
	cbz	w8, .LBB31_25
.LBB31_11:
	ldp	x1, x2, [x19, #352]
	mov	x4, x20
	mov	w5, #1
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #400]
	ldr	x3, [x19, #376]
	cbz	w8, .LBB31_29
	bl	get_auto_image2
	b	.LBB31_38
.LBB31_13:
	ldr	x8, [x19, #432]
	ldr	w9, [x8, #40]
	cmp	w9, #21
	b.ne	.LBB31_16
	ldr	w8, [x19, #300]
	mov	w1, #255
	ldr	w9, [x19, #296]
	ldr	x0, [x19, #376]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #860]
	str	wzr, [x19, #856]
	ldr	w9, [x19, #848]
	mov	x3, x20
	ldr	w10, [x19, #300]
	mov	w4, #1
	cmp	w8, #4
	ldr	x0, [x19, #392]
	csel	w8, wzr, w8, hi
	cmp	w9, w10
	ccmp	w9, #1, #8, le
	str	w8, [x19, #844]
	ldp	x11, x8, [x19, #424]
	csel	w9, w10, w9, lt
	ldr	w10, [x19, #204]
	str	w9, [x19, #840]
	str	w9, [x19, #852]
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	cbz	w10, .LBB31_30
	bl	direct_mode_data_change_full2
	b	.LBB31_31
.LBB31_16:
	ldrb	w9, [x19, #272]
	mov	x3, x20
	ldr	x11, [x19, #424]
	mov	w4, #1
	ldr	w10, [x19, #204]
	str	w9, [x19, #288]
	ldr	x0, [x19, #392]
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	cbz	w10, .LBB31_33
	bl	direct_mode_data_change2
	b	.LBB31_34
.LBB31_18:
	bl	get_overlay_image_area
	ldr	w8, [x19, #276]
	cbnz	w8, .LBB31_5
.LBB31_19:
	ldr	w8, [x19, #792]
	cmp	w8, #1
	b.lt	.LBB31_26
	adrp	x1, .L.str.97
	adrp	x2, .L__func__.ebc_frame_start
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.97
	b	.LBB31_41
.LBB31_21:
	bl	direct_mode_data_change_part
.LBB31_22:
	ldr	w8, [x19, #288]
	mov	x3, x20
	ldp	x11, x10, [x19, #424]
	mov	w4, #1
	sub	w8, w8, #1
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #400]
	str	w8, [x19, #288]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB31_27
	bl	direct_mode_data_change_part2
	b	.LBB31_38
.LBB31_24:
	bl	get_auto_image
	ldr	w8, [x19, #276]
	cbnz	w8, .LBB31_11
.LBB31_25:
	ldr	w8, [x19, #792]
	cmp	w8, #1
	b.ge	.LBB31_40
.LBB31_26:
	str	wzr, [x19, #268]
	b	.LBB31_39
.LBB31_27:
	bl	direct_mode_data_change_part
	b	.LBB31_38
.LBB31_28:
	bl	get_overlay_image_area
	b	.LBB31_39
.LBB31_29:
	bl	get_auto_image
	b	.LBB31_38
.LBB31_30:
	bl	direct_mode_data_change_full
.LBB31_31:
	ldr	w8, [x19, #840]
	mov	x3, x20
	ldr	w9, [x19, #852]
	mov	w4, #1
	ldr	w10, [x19, #204]
	ldr	x0, [x19, #400]
	add	w8, w9, w8
	ldp	x11, x9, [x19, #424]
	str	w8, [x19, #852]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	cbz	w10, .LBB31_36
	bl	direct_mode_data_change_full2
	b	.LBB31_38
.LBB31_33:
	bl	direct_mode_data_change
.LBB31_34:
	ldr	w8, [x19, #288]
	mov	x3, x20
	ldp	x11, x10, [x19, #424]
	mov	w4, #1
	sub	w8, w8, #1
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #400]
	str	w8, [x19, #288]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB31_37
	bl	direct_mode_data_change2
	b	.LBB31_38
.LBB31_36:
	bl	direct_mode_data_change_full
	b	.LBB31_38
.LBB31_37:
	bl	direct_mode_data_change
.LBB31_38:
	ldp	w8, w9, [x19, #172]
	ldr	w10, [x19, #180]
	mov	w3, #1
	ldr	x0, [x19, #40]
	str	wzr, [x19, #112]
	ldr	x1, [x19, #72]
	mov	w21, #1
	ldrsw	x2, [x19, #248]
	add	w8, w9, w8
	add	w20, w8, w10
	bl	dma_sync_single_for_device
	ldr	x0, [x19, #48]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x19, #48]
	mov	w2, wzr
	ldr	w1, [x19, #72]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x19, #48]
	mov	w1, w20
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x19, #48]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x19, #112]
	sub	w8, w21, w8
	str	w8, [x19, #112]
.LBB31_39:
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB31_40:
	adrp	x1, .L.str.98
	adrp	x2, .L__func__.ebc_frame_start
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.98
.LBB31_41:
	add	x2, x2, :lo12:.L__func__.ebc_frame_start
	bl	_dev_info
	b	.LBB31_26
.Lfunc_end31:
	.size	ebc_frame_start, .Lfunc_end31-ebc_frame_start

	.p2align	2
	.type	ebc_power_set,@function
ebc_power_set:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	ldr	w8, [x0, #408]
	stp	x20, x19, [sp, #16]
	mov	x29, sp
	cmp	w8, w1
	b.eq	.LBB32_17
	mov	x19, x0
	ldr	w8, [x0, #788]
	cmp	w1, #1
	b.ne	.LBB32_8
	cbz	w8, .LBB32_4
	mov	w0, #1
	bl	ebc_notify
.LBB32_4:
	ldr	w8, [x19, #656]
	cbnz	w8, .LBB32_6
	mov	w8, #1
	add	x0, x19, #464
	str	w8, [x19, #656]
	bl	__pm_stay_awake
.LBB32_6:
	mov	w8, #1
	ldr	x0, [x19, #16]
	str	w8, [x19, #408]
	cbz	x0, .LBB32_15
	ldr	x8, [x0, #32]
	mov	w1, #1
	blr	x8
	mov	w20, wzr
	b	.LBB32_16
.LBB32_8:
	cbz	w8, .LBB32_10
	mov	x0, xzr
	bl	ebc_notify
.LBB32_10:
	ldr	x0, [x19, #8]
	str	wzr, [x19, #408]
	ldr	x8, [x0, #80]
	blr	x8
	ldr	x0, [x19, #16]
	cbz	x0, .LBB32_18
	ldr	x8, [x0, #32]
	mov	w1, wzr
	blr	x8
	mov	w20, wzr
	ldr	w8, [x19, #656]
	cbz	w8, .LBB32_13
.LBB32_12:
	add	x0, x19, #464
	str	wzr, [x19, #656]
	bl	__pm_relax
.LBB32_13:
	ldr	w8, [x19, #792]
	cmp	w8, #1
	b.lt	.LBB32_17
	adrp	x1, .L.str.101
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.101
	b	.LBB32_20
.LBB32_15:
	ldr	x0, [x19, #24]
	bl	regulator_enable
	mov	w20, w0
.LBB32_16:
	ldr	x0, [x19, #8]
	add	x1, x19, #40
	ldr	x8, [x0, #72]
	blr	x8
	ldr	w8, [x19, #792]
	cmp	w8, #1
	b.ge	.LBB32_19
.LBB32_17:
	ldp	x20, x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.LBB32_18:
	ldr	x0, [x19, #24]
	bl	regulator_disable
	mov	w20, w0
	ldr	w8, [x19, #656]
	cbnz	w8, .LBB32_12
	b	.LBB32_13
.LBB32_19:
	ldr	x0, [x19, #312]
	adrp	x1, .L.str.100
	add	x1, x1, :lo12:.L.str.100
.LBB32_20:
	mov	w2, w20
	bl	_dev_info
	b	.LBB32_17
.Lfunc_end32:
	.size	ebc_power_set, .Lfunc_end32-ebc_power_set

	.p2align	2
	.type	ebc_frame_control_timeout,@function
ebc_frame_control_timeout:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	mov	w10, #1
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #792]
	str	w10, [x8, #756]
	cmp	w9, #1
	b.ge	.LBB33_2
.LBB33_1:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.LBB33_2:
	adrp	x1, .L.str.103
	ldr	x0, [x8, #312]
	add	x1, x1, :lo12:.L.str.103
	bl	_dev_info
	b	.LBB33_1
.Lfunc_end33:
	.size	ebc_frame_control_timeout, .Lfunc_end33-ebc_frame_control_timeout

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
.Lfunc_end34:
	.size	ebc_frame_timeout, .Lfunc_end34-ebc_frame_timeout

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
	b.hi	.LBB35_55
	adrp	x9, .LJTI35_0
	mov	x0, xzr
	add	x9, x9, :lo12:.LJTI35_0
	adr	x10, .LBB35_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB35_2:
	mov	x19, x2
	cbz	x2, .LBB35_24
	cmp	w8, #25
	b.hi	.LBB35_55
	adrp	x9, .LJTI35_1
	mov	x0, xzr
	add	x9, x9, :lo12:.LJTI35_1
	adr	x10, .LBB35_5
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB35_5:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	add	x20, sp, #16
	bl	_copy_from_user
	cbnz	w0, .LBB35_51
	add	x0, x20, #48
	bl	ebc_empty_buf_get
	cbz	x0, .LBB35_52
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
	cbz	w0, .LBB35_56
	mov	x0, x20
	bl	ebc_buf_release
	mov	x0, #-14
	b	.LBB35_58
.LBB35_9:
	mov	w8, #1
	ldr	w9, [x21, #792]
	str	w8, [x21, #752]
	tbnz	w9, #31, .LBB35_56
	adrp	x1, .L.str.119
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.119
	bl	_dev_info
	b	.LBB35_56
.LBB35_11:
	ldr	w8, [x21, #792]
	str	wzr, [x21, #752]
	tbnz	w8, #31, .LBB35_56
	adrp	x1, .L.str.120
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.120
	bl	_dev_info
	b	.LBB35_56
.LBB35_13:
	mov	w8, #1
	ldr	w9, [x21, #792]
	str	w8, [x21, #760]
	tbnz	w9, #31, .LBB35_56
	adrp	x1, .L.str.117
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.117
	bl	_dev_info
	b	.LBB35_56
.LBB35_15:
	ldr	w8, [x21, #792]
	str	wzr, [x21, #760]
	tbnz	w8, #31, .LBB35_56
	adrp	x1, .L.str.118
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB35_56
.LBB35_17:
	bl	ebc_drop_one_dsp_buf
	cbnz	w0, .LBB35_51
	b	.LBB35_56
.LBB35_18:
	ldr	w8, [x21, #792]
	tbz	w8, #31, .LBB35_60
.LBB35_19:
	mov	w0, #2
	bl	ebc_notify
	mov	w8, #1
	mov	x0, xzr
	str	w8, [x21, #744]
	str	w8, [x21, #764]
	b	.LBB35_57
.LBB35_20:
	ldr	w8, [x21, #792]
	tbz	w8, #31, .LBB35_61
	ldr	w8, [x21, #744]
	cbz	w8, .LBB35_23
.LBB35_22:
	mov	w0, #3
	bl	ebc_notify
.LBB35_23:
	mov	x0, xzr
	str	wzr, [x21, #744]
	str	wzr, [x21, #764]
	b	.LBB35_57
.LBB35_24:
	adrp	x1, .L.str.116
	adrp	x2, .L__func__.ebc_io_ctl
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.116
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	mov	x0, #-14
	b	.LBB35_58
.LBB35_25:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	x0, .LBB35_51
	bl	ebc_phy_buf_base_get
	ldrsw	x8, [sp, #16]
	add	x0, x0, x8
	bl	ebc_find_buf_by_phy_addr
	cbz	x0, .LBB35_57
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
	b	.LBB35_36
.LBB35_28:
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
	cbz	x0, .LBB35_57
	adrp	x1, .L.str.121
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.121
	bl	_dev_err
	mov	x0, #-14
	b	.LBB35_58
.LBB35_30:
	bl	ebc_empty_osd_buf_get
	cbz	x0, .LBB35_52
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
	b	.LBB35_57
.LBB35_32:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	x0, .LBB35_51
	bl	ebc_osd_buf_clone
	cbz	x0, .LBB35_57
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	ldr	x10, [sp, #40]
	ldr	w11, [sp, #48]
	str	w8, [x0, #40]
	str	w9, [x0, #48]
	stur	x10, [x0, #52]
	str	w11, [x0, #60]
	bl	ebc_add_to_osd_buf_list
	ldr	w8, [x21, #308]
	cbnz	w8, .LBB35_36
	mov	w8, #1
	str	w8, [x21, #308]
.LBB35_36:
	ldr	w8, [x21, #304]
	cbnz	w8, .LBB35_56
	adrp	x0, ebc_thread_wq
	mov	w8, #1
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1
	str	w8, [x21, #304]
	bl	__wake_up_sync
	b	.LBB35_56
.LBB35_38:
	add	x1, x21, #752
	b	.LBB35_46
.LBB35_39:
	mov	w8, #1
	add	x1, sp, #12
	str	w8, [sp, #12]
	b	.LBB35_46
.LBB35_40:
	add	x1, x21, #656
	b	.LBB35_46
.LBB35_41:
	ldr	w8, [x21, #868]
	str	wzr, [sp, #12]
	cmp	w8, #3576
	b.ne	.LBB35_56
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB35_51
	ldr	w8, [x21, #792]
	tbz	w8, #31, .LBB35_62
.LBB35_44:
	ldr	w8, [sp, #12]
	str	w8, [x21, #772]
	b	.LBB35_56
.LBB35_45:
	add	x1, x21, #780
.LBB35_46:
	mov	x0, x19
	mov	w2, #4
	bl	_copy_to_user
	b	.LBB35_57
.LBB35_47:
	add	x0, x21, #848
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB35_51
	ldr	w8, [x21, #792]
	tbnz	w8, #31, .LBB35_56
	adrp	x1, .L.str.125
	ldr	x0, [x21, #312]
	ldr	w2, [x21, #848]
	add	x1, x1, :lo12:.L.str.125
	bl	_dev_info
	b	.LBB35_56
.LBB35_50:
	add	x0, x21, #860
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbz	w0, .LBB35_53
.LBB35_51:
	mov	x0, #-14
	b	.LBB35_58
.LBB35_52:
	mov	x0, #-1
	b	.LBB35_58
.LBB35_53:
	ldr	w8, [x21, #792]
	tbnz	w8, #31, .LBB35_56
	adrp	x1, .L.str.126
	ldr	x0, [x21, #312]
	ldr	w2, [x21, #860]
	add	x1, x1, :lo12:.L.str.126
	bl	_dev_info
	b	.LBB35_56
.LBB35_55:
	adrp	x1, .L.str.127
	adrp	x2, .L__func__.ebc_io_ctl
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.127
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
.LBB35_56:
	mov	x0, xzr
.LBB35_57:
	sxtw	x0, w0
.LBB35_58:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB35_63
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x29, x30, [sp, #96]
	ldr	x23, [sp, #112]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB35_60:
	adrp	x1, .L.str.122
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.122
	bl	_dev_info
	b	.LBB35_19
.LBB35_61:
	adrp	x1, .L.str.123
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.123
	bl	_dev_info
	ldr	w8, [x21, #744]
	cbnz	w8, .LBB35_22
	b	.LBB35_23
.LBB35_62:
	adrp	x1, .L.str.124
	ldr	x0, [x21, #312]
	ldr	w2, [sp, #12]
	add	x1, x1, :lo12:.L.str.124
	bl	_dev_info
	b	.LBB35_44
.LBB35_63:
	bl	__stack_chk_fail
.Lfunc_end35:
	.size	ebc_io_ctl, .Lfunc_end35-ebc_io_ctl
	.section	.rodata,"a",@progbits
	.p2align	1
.LJTI35_0:
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_9-.LBB35_2)>>2
	.hword	(.LBB35_11-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_57-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_13-.LBB35_2)>>2
	.hword	(.LBB35_15-.LBB35_2)>>2
	.hword	(.LBB35_57-.LBB35_2)>>2
	.hword	(.LBB35_57-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_17-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_18-.LBB35_2)>>2
	.hword	(.LBB35_20-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_55-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.hword	(.LBB35_2-.LBB35_2)>>2
	.p2align	1
.LJTI35_1:
	.hword	(.LBB35_5-.LBB35_5)>>2
	.hword	(.LBB35_25-.LBB35_5)>>2
	.hword	(.LBB35_28-.LBB35_5)>>2
	.hword	(.LBB35_57-.LBB35_5)>>2
	.hword	(.LBB35_9-.LBB35_5)>>2
	.hword	(.LBB35_11-.LBB35_5)>>2
	.hword	(.LBB35_30-.LBB35_5)>>2
	.hword	(.LBB35_32-.LBB35_5)>>2
	.hword	(.LBB35_57-.LBB35_5)>>2
	.hword	(.LBB35_57-.LBB35_5)>>2
	.hword	(.LBB35_57-.LBB35_5)>>2
	.hword	(.LBB35_38-.LBB35_5)>>2
	.hword	(.LBB35_13-.LBB35_5)>>2
	.hword	(.LBB35_15-.LBB35_5)>>2
	.hword	(.LBB35_57-.LBB35_5)>>2
	.hword	(.LBB35_57-.LBB35_5)>>2
	.hword	(.LBB35_39-.LBB35_5)>>2
	.hword	(.LBB35_17-.LBB35_5)>>2
	.hword	(.LBB35_40-.LBB35_5)>>2
	.hword	(.LBB35_18-.LBB35_5)>>2
	.hword	(.LBB35_20-.LBB35_5)>>2
	.hword	(.LBB35_41-.LBB35_5)>>2
	.hword	(.LBB35_55-.LBB35_5)>>2
	.hword	(.LBB35_45-.LBB35_5)>>2
	.hword	(.LBB35_47-.LBB35_5)>>2
	.hword	(.LBB35_50-.LBB35_5)>>2

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
	b.eq	.LBB36_2
	ldr	x0, [x19, #48]
	bl	down_write
	str	w21, [x19, #40]
	ldr	x0, [x19, #48]
	bl	up_write
.LBB36_2:
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
.Lfunc_end36:
	.size	ebc_mmap, .Lfunc_end36-ebc_mmap

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
	cbz	x0, .LBB37_7
	mov	x20, x0
	mov	x21, xzr
	add	x22, x22, #800
	mov	w23, #1
.LBB37_2:
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
.LBB37_4:
	mov	w1, #524288
	bl	dma_buf_fd
	str	w0, [x20, x21, lsl #2]
	add	x21, x21, #1
	cmp	x21, #5
	b.ne	.LBB37_2
	b	.LBB37_6
.Ltmp25:
.LBB37_5:
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
	b	.LBB37_4
.LBB37_6:
	mov	w0, wzr
	str	x20, [x19, #200]
	str	xzr, [x19, #104]
	b	.LBB37_8
.LBB37_7:
	mov	w0, #-12
.LBB37_8:
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldr	x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end37:
	.size	ebc_open, .Lfunc_end37-ebc_open

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
.Lfunc_end38:
	.size	ebc_release, .Lfunc_end38-ebc_release

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
	tbnz	w9, #5, .LBB39_2
	ldr	x10, [x8]
	mov	x9, x0
	tbz	w10, #26, .LBB39_3
.LBB39_2:
	lsl	x9, x0, #8
	and	x9, x0, x9, asr #8
.LBB39_3:
	mov	x10, #549755813888
	sub	x10, x10, x2
	cmp	x10, x9
	b.lo	.LBB39_18
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
.LBB39_6:
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
	cbnz	w10, .LBB39_10
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
.LBB39_9:
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
.LBB39_10:
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
.LBB39_11:
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
.LBB39_13:
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
	cbnz	w9, .LBB39_17
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
.LBB39_16:
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
.LBB39_17:
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
.LBB39_18:
	mov	x0, x2
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Ltmp33:
.LBB39_19:
	adrp	x9, cpu_hwcaps
	ldr	x9, [x9, :lo12:cpu_hwcaps]
	tbnz	w9, #29, .LBB39_11
	b	.LBB39_6
.Ltmp86:
.LBB39_20:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB39_11
.Ltmp91:
.LBB39_21:
	adrp	x8, cpu_hwcaps
	ldr	x8, [x8, :lo12:cpu_hwcaps]
	tbnz	w8, #29, .LBB39_18
	b	.LBB39_13
.Ltmp144:
.LBB39_22:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB39_18
.Ltmp65:
.LBB39_23:
	mov	w10, #160
	b	.LBB39_9
.Ltmp123:
.LBB39_24:
	mov	w9, #160
	b	.LBB39_16
.Lfunc_end39:
	.size	_copy_to_user, .Lfunc_end39-_copy_to_user

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
	tbnz	w9, #5, .LBB40_2
	ldr	x10, [x8]
	mov	x9, x1
	tbz	w10, #26, .LBB40_3
.LBB40_2:
	lsl	x9, x1, #8
	and	x9, x1, x9, asr #8
.LBB40_3:
	mov	x10, #549755813888
	mov	x21, x19
	sub	x10, x10, x19
	cmp	x10, x9
	b.lo	.LBB40_18
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
.LBB40_6:
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
	cbnz	w10, .LBB40_10
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
.LBB40_9:
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
.LBB40_11:
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
.LBB40_13:
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
	cbnz	w9, .LBB40_17
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
.LBB40_16:
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
.LBB40_18:
	cbnz	x21, .LBB40_20
.LBB40_19:
	ldp	x20, x19, [sp, #32]
	mov	x0, x21
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB40_20:
	sub	x8, x19, x21
	mov	w1, wzr
	add	x0, x20, x8
	mov	x2, x21
	bl	memset
	b	.LBB40_19
.Ltmp149:
.LBB40_21:
	adrp	x9, cpu_hwcaps
	ldr	x9, [x9, :lo12:cpu_hwcaps]
	tbnz	w9, #29, .LBB40_11
	b	.LBB40_6
.Ltmp202:
.LBB40_22:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB40_11
.Ltmp207:
.LBB40_23:
	adrp	x8, cpu_hwcaps
	ldr	x8, [x8, :lo12:cpu_hwcaps]
	tbnz	w8, #29, .LBB40_18
	b	.LBB40_13
.Ltmp260:
.LBB40_24:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB40_18
.Ltmp181:
.LBB40_25:
	mov	w10, #160
	b	.LBB40_9
.Ltmp239:
.LBB40_26:
	mov	w9, #160
	b	.LBB40_16
.Lfunc_end40:
	.size	_copy_from_user, .Lfunc_end40-_copy_from_user

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
	ldr	x20, [x8, #256]
	cmp	w9, w21
	b.eq	.LBB41_2
	ldr	x0, [x19, #48]
	bl	down_write
	str	w21, [x19, #40]
	ldr	x0, [x19, #48]
	bl	up_write
.LBB41_2:
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
.Lfunc_end41:
	.size	waveform_mmap, .Lfunc_end41-waveform_mmap

	.p2align	2
	.type	waveform_open,@function
waveform_open:
	mov	w0, wzr
	str	xzr, [x1, #104]
	ret
.Lfunc_end42:
	.size	waveform_open, .Lfunc_end42-waveform_open

	.p2align	2
	.type	waveform_version_read,@function
waveform_version_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	mov	x29, sp
	mov	x19, x2
	bl	epd_lut_get_wf_version
	adrp	x1, .L.str.131
	mov	x2, x0
	add	x1, x1, :lo12:.L.str.131
	mov	x0, x19
	bl	sprintf
	ldr	x19, [sp, #16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end43:
	.size	waveform_version_read, .Lfunc_end43-waveform_version_read

	.p2align	2
	.type	pmic_name_read,@function
pmic_name_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.131
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.131
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x8, [x8, #16]
	add	x2, x8, #8
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end44:
	.size	pmic_name_read, .Lfunc_end44-pmic_name_read

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
	cbz	x0, .LBB45_2
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	blr	x8
	b	.LBB45_3
.LBB45_2:
	ldr	x0, [x8, #32]
	add	x1, sp, #4
	bl	thermal_zone_get_temp
.LBB45_3:
	adrp	x1, .L.str.134
	ldr	w2, [sp, #4]
	add	x1, x1, :lo12:.L.str.134
	mov	x0, x19
	bl	sprintf
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB45_5
	ldp	x29, x30, [sp, #16]
	sxtw	x0, w0
	ldr	x19, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #48
	ret
.LBB45_5:
	bl	__stack_chk_fail
.Lfunc_end45:
	.size	pmic_temp_read, .Lfunc_end45-pmic_temp_read

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
	cbz	x0, .LBB46_2
	ldr	x8, [x0, #64]
	blr	x8
	mov	w2, w0
	b	.LBB46_3
.LBB46_2:
	ldr	x0, [x8, #24]
	bl	regulator_get_voltage
	mov	w8, #19923
	movk	w8, #4194, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w2, w8, w9
.LBB46_3:
	adrp	x1, .L.str.134
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.134
	bl	sprintf
	ldr	x19, [sp, #16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end46:
	.size	pmic_vcom_read, .Lfunc_end46-pmic_vcom_read

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
	cbnz	w0, .LBB47_5
	ldr	x0, [x21, #16]
	cbz	x0, .LBB47_3
	ldr	w1, [sp, #4]
	bl	ebc_pmic_set_vcom
	cbz	w0, .LBB47_7
	b	.LBB47_4
.LBB47_3:
	ldr	x0, [x21, #24]
	ldr	w1, [sp, #4]
	bl	ebc_regulator_set_vcom
	cbz	w0, .LBB47_7
.LBB47_4:
	adrp	x1, .L.str.137
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.137
	bl	_dev_err
	b	.LBB47_6
.LBB47_5:
	adrp	x1, .L.str.136
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.136
	mov	x2, x20
	bl	_dev_err
.LBB47_6:
	mov	x19, #-1
.LBB47_7:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB47_9
	mov	x0, x19
	ldr	x21, [sp, #32]
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB47_9:
	bl	__stack_chk_fail
.Lfunc_end47:
	.size	pmic_vcom_write, .Lfunc_end47-pmic_vcom_write

	.p2align	2
	.type	ebc_version_read,@function
ebc_version_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	mov	x0, x2
	adrp	x1, .L.str.131
	adrp	x2, .L.str.2
	add	x1, x1, :lo12:.L.str.131
	add	x2, x2, :lo12:.L.str.2
	mov	x29, sp
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end48:
	.size	ebc_version_read, .Lfunc_end48-ebc_version_read

	.p2align	2
	.type	ebc_state_read,@function
ebc_state_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.134
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.134
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w2, [x8, #656]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end49:
	.size	ebc_state_read, .Lfunc_end49-ebc_state_read

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
.Lfunc_end50:
	.size	ebc_buf_state_read, .Lfunc_end50-ebc_buf_state_read

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
	cbz	w9, .LBB51_4
	ldr	x11, [x8, #376]
	mov	w10, wzr
.LBB51_2:
	ldrb	w8, [x11, w10, sxtw]
	cbnz	w8, .LBB51_5
	add	w10, w10, #1
	cmp	w9, w10
	b.ne	.LBB51_2
.LBB51_4:
	mov	w8, #2608
	mov	w0, #2
	strb	wzr, [x2, #2]
	strh	w8, [x2]
	b	.LBB51_6
.LBB51_5:
	adrp	x1, .L.str.134
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.134
	mov	w2, w8
	bl	sprintf
	sxtw	x0, w0
.LBB51_6:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end51:
	.size	auto_frame_state_read, .Lfunc_end51-auto_frame_state_read

	.p2align	2
	.type	ebc_debug_level_read,@function
ebc_debug_level_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.134
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.134
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w2, [x8, #792]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end52:
	.size	ebc_debug_level_read, .Lfunc_end52-ebc_debug_level_read

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
	cbnz	w0, .LBB53_4
	ldr	w8, [sp, #4]
	str	w8, [x21, #792]
.LBB53_2:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB53_5
	mov	x0, x19
	ldr	x21, [sp, #32]
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB53_4:
	adrp	x1, .L.str.136
	ldr	x0, [x21, #312]
	add	x1, x1, :lo12:.L.str.136
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1
	b	.LBB53_2
.LBB53_5:
	bl	__stack_chk_fail
.Lfunc_end53:
	.size	ebc_debug_level_write, .Lfunc_end53-ebc_debug_level_write

	.p2align	2
	.type	wf_data_write,@function
wf_data_write:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.145
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.145
	stp	x26, x25, [sp, #32]
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #80]
	stp	x28, x27, [sp, #16]
	mov	x19, x3
	stp	x24, x23, [sp, #48]
	ldr	x25, [x8, #336]
	stp	x22, x21, [sp, #64]
	ldrb	w20, [x8, #320]
	bl	strstr
	cbnz	x0, .LBB54_2
.LBB54_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.LBB54_2:
	adrp	x0, .L.str.146
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.146
	bl	_printk
	adrp	x22, .L.str.147
	adrp	x23, .L.str.148
	mov	x21, xzr
	add	x22, x22, :lo12:.L.str.147
	add	x23, x23, :lo12:.L.str.148
.LBB54_3:
	mov	x24, xzr
	mov	x26, x25
.LBB54_4:
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB54_7
	mov	x27, x20
	mov	x28, x26
.LBB54_6:
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	add	x28, x28, #1024
	subs	x27, x27, #1
	b.ne	.LBB54_6
.LBB54_7:
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB54_4
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB54_3
	b	.LBB54_1
.Lfunc_end54:
	.size	wf_data_write, .Lfunc_end54-wf_data_write

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
	cbnz	x0, .LBB55_2
	adrp	x0, .L.str.150
	add	x0, x0, :lo12:.L.str.150
	bl	_printk
	b	.LBB55_17
.LBB55_2:
	adrp	x1, .L.str.145
	mov	x19, x0
	str	x0, [sp, #40]
	add	x1, x1, :lo12:.L.str.145
	mov	x0, x21
	bl	strstr
	cbnz	x0, .LBB55_4
	adrp	x0, .L.str.153
	add	x0, x0, :lo12:.L.str.153
	b	.LBB55_16
.LBB55_4:
	adrp	x1, .L.str.151
	add	x2, sp, #20
	add	x1, x1, :lo12:.L.str.151
	add	x3, sp, #16
	mov	x0, x21
	bl	sscanf
	ldp	w3, w2, [sp, #16]
	adrp	x0, .L.str.152
	adrp	x1, .L__func__.ori_wf_data_write
	add	x0, x0, :lo12:.L.str.152
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
	ldr	w1, [sp, #20]
	cmp	w1, #8
	b.hi	.LBB55_15
	ldr	w2, [sp, #16]
	tbnz	w2, #31, .LBB55_15
	cmp	w2, #50
	b.gt	.LBB55_15
	add	x0, sp, #24
	mov	w3, #32
	str	x20, [sp, #8]
	bl	epd_lut_get_original
	ldrb	w21, [sp, #24]
	adrp	x0, .L.str.146
	add	x0, x0, :lo12:.L.str.146
	mov	w1, w21
	bl	_printk
	adrp	x23, .L.str.147
	adrp	x24, .L.str.148
	mov	x22, xzr
	mov	x20, x19
	add	x23, x23, :lo12:.L.str.147
	add	x24, x24, :lo12:.L.str.148
.LBB55_8:
	mov	x25, xzr
	mov	x26, x20
.LBB55_9:
	mov	x0, x23
	mov	w1, w25
	mov	w2, w22
	bl	_printk
	cbz	w21, .LBB55_12
	mov	x28, x21
	mov	x27, x26
.LBB55_11:
	ldrb	w1, [x27]
	mov	x0, x24
	bl	_printk
	add	x27, x27, #1024
	subs	x28, x28, #1
	b.ne	.LBB55_11
.LBB55_12:
	add	x25, x25, #1
	add	x26, x26, #32
	cmp	x25, #32
	b.ne	.LBB55_9
	add	x22, x22, #1
	add	x20, x20, #1
	cmp	x22, #32
	b.ne	.LBB55_8
	mov	x0, x19
	bl	kfree
	ldr	x20, [sp, #8]
	b	.LBB55_17
.LBB55_15:
	adrp	x0, .L.str.154
	add	x0, x0, :lo12:.L.str.154
.LBB55_16:
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
.LBB55_17:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB55_19
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
.LBB55_19:
	bl	__stack_chk_fail
.Lfunc_end55:
	.size	ori_wf_data_write, .Lfunc_end55-ori_wf_data_write

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
	str	w8, [x19, #748]
	cbz	x0, .LBB56_2
	ldr	x8, [x0, #40]
	blr	x8
.LBB56_2:
	adrp	x1, .L.str.155
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.155
	bl	_dev_info
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end56:
	.size	ebc_suspend, .Lfunc_end56-ebc_suspend

	.p2align	2
	.type	ebc_resume,@function
ebc_resume:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	ldr	x19, [x0, #120]
	mov	x29, sp
	ldr	x0, [x19, #16]
	cbz	x0, .LBB57_2
	ldr	x8, [x0, #48]
	blr	x8
.LBB57_2:
	adrp	x1, .L.str.156
	ldr	x0, [x19, #312]
	add	x1, x1, :lo12:.L.str.156
	str	wzr, [x19, #748]
	bl	_dev_info
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end57:
	.size	ebc_resume, .Lfunc_end57-ebc_resume

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
	.asciz	"7.08_y8"
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
	.asciz	"too large resolution, not support\n"
	.size	.L.str.55, 35

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"memory-region"
	.size	.L.str.56, 14

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"Couldn't address to resource for reserved memory\n"
	.size	.L.str.57, 50

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"reserved memory not enough, need 0x%x\n"
	.size	.L.str.58, 39

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"Couldn't remap for reserved memory\n"
	.size	.L.str.59, 36

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"waveform-region"
	.size	.L.str.60, 16

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"wf,mode_table"
	.size	.L.str.61, 14

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"%s:%d: failed to get mem from reserved\n"
	.size	.L.str.62, 40

	.type	.L__func__.ebc_lut_table_init,@object
.L__func__.ebc_lut_table_init:
	.asciz	"ebc_lut_table_init"
	.size	.L__func__.ebc_lut_table_init, 19

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.size	.L.str.63, 81

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"Failed to read waveform file from kernel, no waveform!!!\n"
	.size	.L.str.64, 58

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"ebc_task"
	.size	.L.str.65, 9

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"failed to create ebc_task thread\n"
	.size	.L.str.66, 34

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"ebc_taskup"
	.size	.L.str.67, 11

	.type	ebc_auto_assist_task,@object
	.local	ebc_auto_assist_task
	.comm	ebc_auto_assist_task,8,8
	.type	.L.str.68,@object
.L.str.68:
	.asciz	"failed to create ebc_taskup thread\n"
	.size	.L.str.68, 36

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"ebc_thread"
	.size	.L.str.69, 11

	.type	ebc_task,@object
	.local	ebc_task
	.comm	ebc_task,8,8
	.type	.L.str.70,@object
.L.str.70:
	.asciz	"failed to run ebc thread\n"
	.size	.L.str.70, 26

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

	.type	.L.str.71,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"ebc suspend, drop osd buf\n"
	.size	.L.str.71, 27

	.type	.L.str.72,@object
.L.str.72:
	.asciz	"break from part work, frame left = %d\n"
	.size	.L.str.72, 39

	.type	.L.str.73,@object
.L.str.73:
	.asciz	"break from fast mode, process it\n"
	.size	.L.str.73, 34

	.type	.L.str.74,@object
.L.str.74:
	.asciz	"overlay mode start, frame_total=%d, bw_frame = %d\n"
	.size	.L.str.74, 51

	.type	.L.str.75,@object
.L.str.75:
	.asciz	"ebc is busy now, waiting prev mode end...\n"
	.size	.L.str.75, 43

	.type	.L.str.76,@object
.L.str.76:
	.asciz	"prev refresh mode end\n"
	.size	.L.str.76, 23

	.type	.L.str.77,@object
.L.str.77:
	.asciz	"frame start under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.77, 55

	.type	.L.str.78,@object
.L.str.78:
	.asciz	"control bg update under overlay mode, overlay_bg_update=0\n"
	.size	.L.str.78, 59

	.type	.L.str.79,@object
.L.str.79:
	.asciz	"auto mode start, frame_total=%d\n"
	.size	.L.str.79, 33

	.type	.L.str.80,@object
.L.str.80:
	.asciz	"check_part_mode==0, no need refresh\n"
	.size	.L.str.80, 37

	.type	.L.str.81,@object
.L.str.81:
	.asciz	"check_diff_percent==2, full refresh\n"
	.size	.L.str.81, 37

	.type	.L.str.82,@object
.L.str.82:
	.asciz	"change from fast mode and not complete, force full\n"
	.size	.L.str.82, 52

	.type	.L.str.83,@object
.L.str.83:
	.asciz	"frame start, mode = %d, framecount = %d vs %d\n"
	.size	.L.str.83, 47

	.type	.L.str.84,@object
.L.str.84:
	.asciz	"update repair buf\n"
	.size	.L.str.84, 19

	.type	.L.str.85,@object
.L.str.85:
	.asciz	"waiting frame done\n"
	.size	.L.str.85, 20

	.type	.L.str.86,@object
.L.str.86:
	.asciz	"----update repair buf timeout----\n"
	.size	.L.str.86, 35

	.type	.L.str.87,@object
.L.str.87:
	.asciz	"break from part work, do something before turn to overlay work\n"
	.size	.L.str.87, 64

	.type	.L.str.88,@object
.L.str.88:
	.asciz	"no buffer, do repair..........\n"
	.size	.L.str.88, 32

	.type	.L.str.89,@object
.L.str.89:
	.asciz	"no buffer, do ghost remove..........\n"
	.size	.L.str.89, 38

	.type	.L.str.90,@object
.L.str.90:
	.asciz	"frame start, mode = %d, framecount = %d\n"
	.size	.L.str.90, 41

	.type	.L.str.91,@object
.L.str.91:
	.asciz	"ebc buffer mode %d error!!!\n"
	.size	.L.str.91, 29

	.type	.L.str.92,@object
.L.str.92:
	.asciz	"temperature = %d, out of range0~50 ,use 25 \n"
	.size	.L.str.92, 45

	.type	.L.str.93,@object
.L.str.93:
	.asciz	"temperature = %d, out of range0~50 ,use 50 \n"
	.size	.L.str.93, 45

	.type	.L.str.94,@object
.L.str.94:
	.asciz	"ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.size	.L.str.94, 46

	.type	.L.str.95,@object
.L.str.95:
	.asciz	"lut update use temperature = %d\n"
	.size	.L.str.95, 33

	.type	.L.str.96,@object
.L.str.96:
	.asciz	"get lut data failed\n"
	.size	.L.str.96, 21

	.type	.L.str.97,@object
.L.str.97:
	.asciz	"%s: overlay no need to update\n"
	.size	.L.str.97, 31

	.type	.L__func__.ebc_frame_start,@object
.L__func__.ebc_frame_start:
	.asciz	"ebc_frame_start"
	.size	.L__func__.ebc_frame_start, 16

	.type	.L.str.98,@object
.L.str.98:
	.asciz	"%s: auto no need to update\n"
	.size	.L.str.98, 28

	.type	.L.str.99,@object
.L.str.99:
	.asciz	"%s: overlay bg no need to update, overlay_bg_update=1\n"
	.size	.L.str.99, 55

	.type	.L__func__.ebc_overlay_bg_frame_start,@object
.L__func__.ebc_overlay_bg_frame_start:
	.asciz	"ebc_overlay_bg_frame_start"
	.size	.L__func__.ebc_overlay_bg_frame_start, 27

	.type	.L.str.100,@object
.L.str.100:
	.asciz	"ebc hw power on res:%d\n"
	.size	.L.str.100, 24

	.type	.L.str.101,@object
.L.str.101:
	.asciz	"ebc hw power off res:%d\n"
	.size	.L.str.101, 25

	.type	.L.str.102,@object
.L.str.102:
	.asciz	"ebc"
	.size	.L.str.102, 4

	.type	.L.str.103,@object
.L.str.103:
	.asciz	"ebc_frame_control_timeout, overlay_bg_update=1\n"
	.size	.L.str.103, 48

	.type	.L.str.104,@object
.L.str.104:
	.asciz	"ulogo_addr="
	.size	.L.str.104, 12

	.type	.L.str.105,@object
.L.str.105:
	.asciz	"klogo_addr="
	.size	.L.str.105, 12

	.type	.L.str.106,@object
.L.str.106:
	.asciz	"ulogo_addr=0x%x"
	.size	.L.str.106, 16

	.type	.L.str.107,@object
.L.str.107:
	.asciz	"have ulogo display, ulogo addr = 0x%x\n"
	.size	.L.str.107, 39

	.type	.L.str.108,@object
.L.str.108:
	.asciz	"malloc ulogo buffer failed\n"
	.size	.L.str.108, 28

	.type	.L.str.109,@object
.L.str.109:
	.asciz	"klogo_addr=0x%x"
	.size	.L.str.109, 16

	.type	.L.str.110,@object
.L.str.110:
	.asciz	"need show klogo, klogo addr = 0x%x\n"
	.size	.L.str.110, 36

	.type	.L.str.111,@object
.L.str.111:
	.asciz	"malloc klogo buffer failed\n"
	.size	.L.str.111, 28

	.type	.L.str.112,@object
.L.str.112:
	.asciz	"no uboot logo, panel init\n"
	.size	.L.str.112, 27

	.type	.L.str.113,@object
.L.str.113:
	.asciz	"ebc_dev_logo"
	.size	.L.str.113, 13

	.type	.L.str.114,@object
.L.str.114:
	.asciz	"ebc_dev_reset"
	.size	.L.str.114, 14

	.type	ebc_misc,@object
	.data
	.p2align	3
ebc_misc:
	.word	243
	.zero	4
	.xword	.L.str.102
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
	.xword	.L.str.128
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
	.xword	.L.str.130
	.hword	292
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.size	dev_attr_waveform_version, 32

	.type	dev_attr_pmic_name,@object
	.p2align	3
dev_attr_pmic_name:
	.xword	.L.str.132
	.hword	292
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.size	dev_attr_pmic_name, 32

	.type	dev_attr_pmic_temp,@object
	.p2align	3
dev_attr_pmic_temp:
	.xword	.L.str.133
	.hword	292
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.size	dev_attr_pmic_temp, 32

	.type	dev_attr_pmic_vcom,@object
	.p2align	3
dev_attr_pmic_vcom:
	.xword	.L.str.135
	.hword	420
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.size	dev_attr_pmic_vcom, 32

	.type	dev_attr_ebc_version,@object
	.p2align	3
dev_attr_ebc_version:
	.xword	.L.str.138
	.hword	292
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.size	dev_attr_ebc_version, 32

	.type	dev_attr_ebc_state,@object
	.p2align	3
dev_attr_ebc_state:
	.xword	.L.str.139
	.hword	292
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.size	dev_attr_ebc_state, 32

	.type	dev_attr_ebc_buf_state,@object
	.p2align	3
dev_attr_ebc_buf_state:
	.xword	.L.str.140
	.hword	292
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.size	dev_attr_ebc_buf_state, 32

	.type	dev_attr_auto_frame_state,@object
	.p2align	3
dev_attr_auto_frame_state:
	.xword	.L.str.141
	.hword	292
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.size	dev_attr_auto_frame_state, 32

	.type	dev_attr_ebc_debug_level,@object
	.p2align	3
dev_attr_ebc_debug_level:
	.xword	.L.str.143
	.hword	420
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.size	dev_attr_ebc_debug_level, 32

	.type	dev_attr_wf_data,@object
	.p2align	3
dev_attr_wf_data:
	.xword	.L.str.144
	.hword	128
	.zero	6
	.xword	0
	.xword	wf_data_write
	.size	dev_attr_wf_data, 32

	.type	dev_attr_ori_wf_data,@object
	.p2align	3
dev_attr_ori_wf_data:
	.xword	.L.str.149
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

	.type	.L.str.116,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.116:
	.asciz	"%s: argp NULL\n"
	.size	.L.str.116, 15

	.type	.L__func__.ebc_io_ctl,@object
.L__func__.ebc_io_ctl:
	.asciz	"ebc_io_ctl"
	.size	.L__func__.ebc_io_ctl, 11

	.type	.L.str.117,@object
.L.str.117:
	.asciz	"enable bg control\n"
	.size	.L.str.117, 19

	.type	.L.str.118,@object
.L.str.118:
	.asciz	"disable bg control\n"
	.size	.L.str.118, 20

	.type	.L.str.119,@object
.L.str.119:
	.asciz	"enable ebc overlay, you can use osd buf to show something over the system display\n"
	.size	.L.str.119, 83

	.type	.L.str.120,@object
.L.str.120:
	.asciz	"disable ebc overlay\n"
	.size	.L.str.120, 21

	.type	.L.str.121,@object
.L.str.121:
	.asciz	"EBC_GET_BUFFER_INFO failed\n"
	.size	.L.str.121, 28

	.type	.L.str.122,@object
.L.str.122:
	.asciz	"EBC_FB_BLANK\n"
	.size	.L.str.122, 14

	.type	.L.str.123,@object
.L.str.123:
	.asciz	"EBC_FB_UNBLANK\n"
	.size	.L.str.123, 16

	.type	.L.str.124,@object
.L.str.124:
	.asciz	"EBC_ENABLE_REPAIR = %d\n"
	.size	.L.str.124, 24

	.type	.L.str.125,@object
.L.str.125:
	.asciz	"EBC_SET_FULL_REFRESH_WIDTH = %d\n"
	.size	.L.str.125, 33

	.type	.L.str.126,@object
.L.str.126:
	.asciz	"EBC_SET_FULL_REFRESH_TYPE = %d\n"
	.size	.L.str.126, 32

	.type	.L.str.127,@object
.L.str.127:
	.asciz	"%s: unknown cmd\n"
	.size	.L.str.127, 17

	.type	.L.str.128,@object
.L.str.128:
	.asciz	"waveform"
	.size	.L.str.128, 9

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

	.type	.L.str.130,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.130:
	.asciz	"waveform_version"
	.size	.L.str.130, 17

	.type	.L.str.131,@object
.L.str.131:
	.asciz	"%s\n"
	.size	.L.str.131, 4

	.type	.L.str.132,@object
.L.str.132:
	.asciz	"pmic_name"
	.size	.L.str.132, 10

	.type	.L.str.133,@object
.L.str.133:
	.asciz	"pmic_temp"
	.size	.L.str.133, 10

	.type	.L.str.134,@object
.L.str.134:
	.asciz	"%d\n"
	.size	.L.str.134, 4

	.type	.L.str.135,@object
.L.str.135:
	.asciz	"pmic_vcom"
	.size	.L.str.135, 10

	.type	.L.str.136,@object
.L.str.136:
	.asciz	"invalid value = %s\n"
	.size	.L.str.136, 20

	.type	.L.str.137,@object
.L.str.137:
	.asciz	"set vcom value failed\n"
	.size	.L.str.137, 23

	.type	.L.str.138,@object
.L.str.138:
	.asciz	"ebc_version"
	.size	.L.str.138, 12

	.type	.L.str.139,@object
.L.str.139:
	.asciz	"ebc_state"
	.size	.L.str.139, 10

	.type	.L.str.140,@object
.L.str.140:
	.asciz	"ebc_buf_state"
	.size	.L.str.140, 14

	.type	.L.str.141,@object
.L.str.141:
	.asciz	"auto_frame_state"
	.size	.L.str.141, 17

	.type	.L.str.142,@object
.L.str.142:
	.asciz	"0\n"
	.size	.L.str.142, 3

	.type	.L.str.143,@object
.L.str.143:
	.asciz	"ebc_debug_level"
	.size	.L.str.143, 16

	.type	.L.str.144,@object
.L.str.144:
	.asciz	"wf_data"
	.size	.L.str.144, 8

	.type	.L.str.145,@object
.L.str.145:
	.asciz	"603893"
	.size	.L.str.145, 7

	.type	.L.str.146,@object
.L.str.146:
	.asciz	"lutdata: %d frames\n"
	.size	.L.str.146, 20

	.type	.L.str.147,@object
.L.str.147:
	.asciz	"[%d-->%d]: \n"
	.size	.L.str.147, 13

	.type	.L.str.148,@object
.L.str.148:
	.asciz	"\001c\0017%d, "
	.size	.L.str.148, 9

	.type	.L.str.149,@object
.L.str.149:
	.asciz	"ori_wf_data"
	.size	.L.str.149, 12

	.type	.L.str.150,@object
.L.str.150:
	.asciz	"malloc wf_table buffer failed\n"
	.size	.L.str.150, 31

	.type	.L.str.151,@object
.L.str.151:
	.asciz	"603893 %d %d"
	.size	.L.str.151, 13

	.type	.L.str.152,@object
.L.str.152:
	.asciz	"%s: wf mode %d on temp %d\n"
	.size	.L.str.152, 27

	.type	.L__func__.ori_wf_data_write,@object
.L__func__.ori_wf_data_write:
	.asciz	"ori_wf_data_write"
	.size	.L__func__.ori_wf_data_write, 18

	.type	.L.str.153,@object
.L.str.153:
	.asciz	"%s: err code\n"
	.size	.L.str.153, 14

	.type	.L.str.154,@object
.L.str.154:
	.asciz	"%s: err lut_type or temp\n"
	.size	.L.str.154, 26

	.type	.L.str.155,@object
.L.str.155:
	.asciz	"device suspend\n"
	.size	.L.str.155, 16

	.type	.L.str.156,@object
.L.str.156:
	.asciz	"device resume\n"
	.size	.L.str.156, 15

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
