// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"ebc_dev_y8.c"

	.section	.initcall6s.init,"a",@progbits
__initcall__kmod_rkebc__465_4865_ebc_init6s:
.Ltmp0:
	.word	ebc_init-.Ltmp0
	.text



	.globl	refresh_new_image
	.p2align	2
	.type	refresh_new_image,@function
refresh_new_image:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	ldp	w9, w8, [x6, #80]
	stp	x28, x27, [sp, #16]
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w11, w10, w8, lt
	cmp	w9, #1
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	b.lt	.LBB0_145
	asr	w11, w11, #3
	mov	w10, wzr
	sub	w14, w11, #1
	mov	w12, #-268435456
	mov	x13, #1030792151040
	add	x14, x14, #1
	mov	x15, #263882790666240
	mov	x16, #67553994410557440
	mov	x17, #-2305843009213693952
	mov	x30, #63050394783186944
	mov	x19, #962072674304
	mov	w20, #-536870912
	b	.LBB0_4
.LBB0_2:
	add	x1, x1, x14, lsl #3
	add	x0, x0, x22
	add	x5, x5, x22
	add	x3, x3, x22
	add	x2, x2, x22
	mov	x4, x21
.LBB0_3:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB0_145
.LBB0_4:
	cmp	w8, #8
	b.lt	.LBB0_3
	mov	x22, xzr
	add	x21, x4, x14, lsl #3
	mov	w23, w11
.LBB0_6:
	ldr	x29, [x4, x22]
	ldr	x28, [x2, x22]
	ldr	x25, [x0, x22]
	ldr	x24, [x3, x22]
	cbnz	x29, .LBB0_24
	and	x6, x28, #0xf0
	cmp	w6, #240
	b.ne	.LBB0_65
	mvn	w6, w24
	mov	w27, #248
	tst	x6, #0xf0
	cset	w26, eq
.LBB0_9:
	and	x6, x28, #0xf000
	cmp	w6, #15, lsl #12
	b.ne	.LBB0_67
	mvn	w6, w24
	orr	x29, x26, #0x100
	tst	x6, #0xf000
	orr	x27, x27, #0xf800
	csel	x26, x29, x26, eq
.LBB0_11:
	and	x6, x28, #0xf00000
	cmp	x6, #3840, lsl #12
	b.ne	.LBB0_69
	mvn	w6, w24
	orr	x29, x26, #0x10000
	tst	x6, #0xf00000
	orr	x27, x27, #0xf80000
	csel	x26, x29, x26, eq
.LBB0_13:
	and	x6, x28, #0xf0000000
	cmp	w6, w12
	b.ne	.LBB0_71
	mvn	w6, w24
	orr	x29, x26, #0x1000000
	tst	x6, #0xf0000000
	orr	x27, x27, #0xf8000000
	csel	x26, x29, x26, eq
.LBB0_15:
	and	x6, x28, #0xf000000000
	cmp	x6, x13
	b.ne	.LBB0_73
	orr	x6, x26, #0x100000000
	bics	xzr, x13, x24
	orr	x27, x27, #0xf800000000
	csel	x26, x6, x26, eq
.LBB0_17:
	and	x6, x28, #0xf00000000000
	cmp	x6, x15
	b.ne	.LBB0_75
	orr	x6, x26, #0x10000000000
	bics	xzr, x15, x24
	orr	x27, x27, #0xf80000000000
	csel	x26, x6, x26, eq
.LBB0_19:
	and	x6, x28, #0xf0000000000000
	cmp	x6, x16
	b.ne	.LBB0_77
	orr	x6, x26, #0x1000000000000
	bics	xzr, x16, x24
	orr	x27, x27, #0xf8000000000000
	csel	x26, x6, x26, eq
.LBB0_21:
	lsr	x6, x28, #60
	cmp	x6, #15
	b.lo	.LBB0_79
	lsr	x6, x24, #59
	orr	x28, x26, #0x100000000000000
	cmp	x6, #29
	orr	x27, x27, #0xf800000000000000
	csel	x26, x28, x26, hi
.LBB0_23:
	bic	x6, x25, x27
	and	x7, x27, x24
	orr	x6, x6, x7
	str	x26, [x5, x22]
	subs	w23, w23, #1
	str	x6, [x0, x22]
	add	x22, x22, #8
	b.ne	.LBB0_6
	b	.LBB0_2
.LBB0_24:
	ldr	x26, [x5, x22]
	tst	x29, #0xff
	ldr	x30, [x1, x22]
	b.eq	.LBB0_27
	mov	x27, xzr
	mvn	w6, w30
	tst	x6, #0xf0
	b.ne	.LBB0_29
	and	x6, x24, #0xf0
	cmp	x6, #240
	b.ne	.LBB0_29
.LBB0_27:
	and	x26, x26, #0xffffffffffffff00
	and	x29, x29, #0xffffffffffffff00
	and	x6, x28, #0xf0
	cmp	w6, #240
	b.ne	.LBB0_108
	mvn	w6, w24
	mov	w27, #248
	tst	x6, #0xf0
	cset	w6, eq
	orr	x26, x26, x6
.LBB0_29:
	tst	x29, #0xff00
	b.eq	.LBB0_32
	mvn	w6, w30
	tst	x6, #0xf000
	b.ne	.LBB0_34
	and	x6, x24, #0xf000
	cmp	x6, #15, lsl #12
	b.ne	.LBB0_34
.LBB0_32:
	and	x26, x26, #0xffffffffffff00ff
	and	x29, x29, #0xffffffffffff00ff
	and	x6, x28, #0xf000
	cmp	w6, #15, lsl #12
	b.ne	.LBB0_110
	mvn	w6, w24
	orr	x7, x26, #0x100
	tst	x6, #0xf000
	orr	x27, x27, #0xf800
	csel	x26, x7, x26, eq
.LBB0_34:
	tst	x29, #0xff0000
	b.eq	.LBB0_37
	mvn	w6, w30
	tst	x6, #0xf00000
	b.ne	.LBB0_39
	and	x6, x24, #0xf00000
	cmp	x6, #3840, lsl #12
	b.ne	.LBB0_39
.LBB0_37:
	and	x26, x26, #0xffffffffff00ffff
	and	x29, x29, #0xffffffffff00ffff
	and	x6, x28, #0xf00000
	cmp	x6, #3840, lsl #12
	b.ne	.LBB0_112
	mvn	w6, w24
	orr	x7, x26, #0x10000
	tst	x6, #0xf00000
	orr	x27, x27, #0xf80000
	csel	x26, x7, x26, eq
.LBB0_39:
	tst	x29, #0xff000000
	b.eq	.LBB0_42
	mvn	w6, w30
	tst	x6, #0xf0000000
	b.ne	.LBB0_44
	and	x6, x24, #0xf0000000
	cmp	x6, x12
	b.ne	.LBB0_44
.LBB0_42:
	and	x26, x26, #0xffffffff00ffffff
	and	x29, x29, #0xffffffff00ffffff
	and	x6, x28, #0xf0000000
	cmp	w6, w12
	b.ne	.LBB0_114
	mvn	w6, w24
	orr	x7, x26, #0x1000000
	tst	x6, #0xf0000000
	orr	x27, x27, #0xf8000000
	csel	x26, x7, x26, eq
.LBB0_44:
	tst	x29, #0xff00000000
	b.eq	.LBB0_47
	mvn	x6, x30
	tst	x6, #0xf000000000
	b.ne	.LBB0_49
	and	x6, x24, #0xf000000000
	cmp	x6, x13
	b.ne	.LBB0_49
.LBB0_47:
	and	x26, x26, #0xffffff00ffffffff
	and	x29, x29, #0xffffff00ffffffff
	and	x6, x28, #0xf000000000
	cmp	x6, x13
	b.ne	.LBB0_116
	orr	x6, x26, #0x100000000
	bics	xzr, x13, x24
	orr	x27, x27, #0xf800000000
	csel	x26, x6, x26, eq
.LBB0_49:
	tst	x29, #0xff0000000000
	b.eq	.LBB0_52
	mvn	x6, x30
	tst	x6, #0xf00000000000
	b.ne	.LBB0_54
	and	x6, x24, #0xf00000000000
	cmp	x6, x15
	b.ne	.LBB0_54
.LBB0_52:
	and	x26, x26, #0xffff00ffffffffff
	and	x29, x29, #0xffff00ffffffffff
	and	x6, x28, #0xf00000000000
	cmp	x6, x15
	b.ne	.LBB0_118
	orr	x6, x26, #0x10000000000
	bics	xzr, x15, x24
	orr	x27, x27, #0xf80000000000
	csel	x26, x6, x26, eq
.LBB0_54:
	tst	x29, #0xff000000000000
	b.eq	.LBB0_57
	mvn	x6, x30
	tst	x6, #0xf0000000000000
	b.ne	.LBB0_59
	and	x6, x24, #0xf0000000000000
	cmp	x6, x16
	b.ne	.LBB0_59
.LBB0_57:
	and	x26, x26, #0xff00ffffffffffff
	and	x29, x29, #0xff00ffffffffffff
	and	x6, x28, #0xf0000000000000
	cmp	x6, x16
	b.ne	.LBB0_120
	orr	x6, x26, #0x1000000000000
	bics	xzr, x16, x24
	orr	x27, x27, #0xf8000000000000
	csel	x26, x6, x26, eq
.LBB0_59:
	lsr	x6, x29, #56
	cbz	x6, .LBB0_62
	lsr	x6, x30, #60
	cmp	x6, #15
	b.lo	.LBB0_64
	lsr	x6, x24, #60
	cmp	x6, #15
	b.lo	.LBB0_64
.LBB0_62:
	and	x26, x26, #0xffffffffffffff
	lsr	x6, x28, #60
	cmp	x6, #15
	b.lo	.LBB0_105
	lsr	x6, x24, #59
	orr	x7, x26, #0x100000000000000
	cmp	x6, #29
	orr	x27, x27, #0xf800000000000000
	csel	x26, x7, x26, hi
.LBB0_64:
	mov	x30, #63050394783186944
	b	.LBB0_23
.LBB0_65:
	cbnz	w6, .LBB0_82
	mov	x27, xzr
	and	x25, x25, #0xffffffffffffff00
	mov	w26, #1
	b	.LBB0_9
.LBB0_67:
	cbnz	w6, .LBB0_84
	and	x25, x25, #0xffffffffffff00ff
	orr	x26, x26, #0x100
	b	.LBB0_11
.LBB0_69:
	cbnz	x6, .LBB0_86
	and	x25, x25, #0xffffffffff00ffff
	orr	x26, x26, #0x10000
	b	.LBB0_13
.LBB0_71:
	cbnz	w6, .LBB0_88
	and	x25, x25, #0xffffffff00ffffff
	orr	x26, x26, #0x1000000
	b	.LBB0_15
.LBB0_73:
	cbnz	x6, .LBB0_90
	and	x25, x25, #0xffffff00ffffffff
	orr	x26, x26, #0x100000000
	b	.LBB0_17
.LBB0_75:
	cbnz	x6, .LBB0_92
	and	x25, x25, #0xffff00ffffffffff
	orr	x26, x26, #0x10000000000
	b	.LBB0_19
.LBB0_77:
	cbnz	x6, .LBB0_94
	and	x25, x25, #0xff00ffffffffffff
	orr	x26, x26, #0x1000000000000
	b	.LBB0_21
.LBB0_79:
	and	x6, x28, #0xf000000000000000
	cmp	x6, x17
	b.eq	.LBB0_96
	and	x25, x25, #0xffffffffffffff
	cbnz	x6, .LBB0_97
	orr	x26, x26, #0x100000000000000
	b	.LBB0_23
.LBB0_82:
	cmp	w6, #224
	b.ne	.LBB0_98
	and	x6, x25, #0xffffffffffffff00
	mov	x27, xzr
	orr	x25, x6, #0xf0
	mov	w26, #1
	b	.LBB0_9
.LBB0_84:
	cmp	w6, #14, lsl #12
	b.ne	.LBB0_99
	and	x6, x25, #0xffffffffffff00ff
	orr	x26, x26, #0x100
	orr	x25, x6, #0xf000
	b	.LBB0_11
.LBB0_86:
	cmp	x6, #3584, lsl #12
	b.ne	.LBB0_100
	and	x6, x25, #0xffffffffff00ffff
	orr	x26, x26, #0x10000
	orr	x25, x6, #0xf00000
	b	.LBB0_13
.LBB0_88:
	cmp	w6, w20
	b.ne	.LBB0_101
	and	x6, x25, #0xffffffff00ffffff
	orr	x26, x26, #0x1000000
	orr	x25, x6, #0xf0000000
	b	.LBB0_15
.LBB0_90:
	cmp	x6, x19
	b.ne	.LBB0_102
	and	x6, x25, #0xffffff00ffffffff
	orr	x26, x26, #0x100000000
	orr	x25, x6, #0xf000000000
	b	.LBB0_17
.LBB0_92:
	mov	x7, #246290604621824
	cmp	x6, x7
	b.ne	.LBB0_103
	and	x6, x25, #0xffff00ffffffffff
	orr	x26, x26, #0x10000000000
	orr	x25, x6, #0xf00000000000
	b	.LBB0_19
.LBB0_94:
	cmp	x6, x30
	b.ne	.LBB0_104
	and	x6, x25, #0xff00ffffffffffff
	orr	x26, x26, #0x1000000000000
	orr	x25, x6, #0xf0000000000000
	b	.LBB0_21
.LBB0_96:
	mov	x6, #-1152921504606846976
	orr	x26, x26, #0x100000000000000
	bfxil	x6, x25, #0, #56
	mov	x25, x6
	b	.LBB0_23
.LBB0_97:
	orr	x25, x25, x6
	b	.LBB0_23
.LBB0_98:
	and	x25, x25, #0xffffffffffffff00
	mov	x26, xzr
	mov	x27, xzr
	orr	x25, x25, x6
	b	.LBB0_9
.LBB0_99:
	and	x25, x25, #0xffffffffffff00ff
	orr	x25, x25, x6
	b	.LBB0_11
.LBB0_100:
	and	x25, x25, #0xffffffffff00ffff
	orr	x25, x25, x6
	b	.LBB0_13
.LBB0_101:
	and	x25, x25, #0xffffffff00ffffff
	orr	x25, x25, x6
	b	.LBB0_15
.LBB0_102:
	and	x25, x25, #0xffffff00ffffffff
	orr	x25, x25, x6
	b	.LBB0_17
.LBB0_103:
	and	x25, x25, #0xffff00ffffffffff
	orr	x25, x25, x6
	b	.LBB0_19
.LBB0_104:
	and	x25, x25, #0xff00ffffffffffff
	orr	x25, x25, x6
	b	.LBB0_21
.LBB0_105:
	and	x6, x28, #0xf000000000000000
	cmp	x6, x17
	b.eq	.LBB0_136
	cbnz	x6, .LBB0_137
	and	x25, x25, #0xffffffffffffff
	orr	x26, x26, #0x100000000000000
	b	.LBB0_64
.LBB0_108:
	cbnz	w6, .LBB0_122
	mov	x27, xzr
	and	x25, x25, #0xffffffffffffff00
	orr	x26, x26, #0x1
	b	.LBB0_29
.LBB0_110:
	cbnz	w6, .LBB0_124
	and	x25, x25, #0xffffffffffff00ff
	orr	x26, x26, #0x100
	b	.LBB0_34
.LBB0_112:
	cbnz	x6, .LBB0_126
	and	x25, x25, #0xffffffffff00ffff
	orr	x26, x26, #0x10000
	b	.LBB0_39
.LBB0_114:
	cbnz	w6, .LBB0_128
	and	x25, x25, #0xffffffff00ffffff
	orr	x26, x26, #0x1000000
	b	.LBB0_44
.LBB0_116:
	cbnz	x6, .LBB0_130
	and	x25, x25, #0xffffff00ffffffff
	orr	x26, x26, #0x100000000
	b	.LBB0_49
.LBB0_118:
	cbnz	x6, .LBB0_132
	and	x25, x25, #0xffff00ffffffffff
	orr	x26, x26, #0x10000000000
	b	.LBB0_54
.LBB0_120:
	cbnz	x6, .LBB0_134
	and	x25, x25, #0xff00ffffffffffff
	orr	x26, x26, #0x1000000000000
	b	.LBB0_59
.LBB0_122:
	cmp	w6, #224
	b.ne	.LBB0_138
	and	x6, x25, #0xffffffffffffff00
	mov	x27, xzr
	orr	x25, x6, #0xf0
	orr	x26, x26, #0x1
	b	.LBB0_29
.LBB0_124:
	cmp	w6, #14, lsl #12
	b.ne	.LBB0_139
	and	x6, x25, #0xffffffffffff00ff
	orr	x26, x26, #0x100
	orr	x25, x6, #0xf000
	b	.LBB0_34
.LBB0_126:
	cmp	x6, #3584, lsl #12
	b.ne	.LBB0_140
	and	x6, x25, #0xffffffffff00ffff
	orr	x26, x26, #0x10000
	orr	x25, x6, #0xf00000
	b	.LBB0_39
.LBB0_128:
	cmp	w6, w20
	b.ne	.LBB0_141
	and	x6, x25, #0xffffffff00ffffff
	orr	x26, x26, #0x1000000
	orr	x25, x6, #0xf0000000
	b	.LBB0_44
.LBB0_130:
	cmp	x6, x19
	b.ne	.LBB0_142
	and	x6, x25, #0xffffff00ffffffff
	orr	x26, x26, #0x100000000
	orr	x25, x6, #0xf000000000
	b	.LBB0_49
.LBB0_132:
	mov	x7, #246290604621824
	cmp	x6, x7
	b.ne	.LBB0_143
	and	x6, x25, #0xffff00ffffffffff
	orr	x26, x26, #0x10000000000
	orr	x25, x6, #0xf00000000000
	b	.LBB0_54
.LBB0_134:
	mov	x7, #63050394783186944
	cmp	x6, x7
	b.ne	.LBB0_144
	and	x6, x25, #0xff00ffffffffffff
	orr	x26, x26, #0x1000000000000
	orr	x25, x6, #0xf0000000000000
	b	.LBB0_59
.LBB0_136:
	mov	x6, #-1152921504606846976
	orr	x26, x26, #0x100000000000000
	bfxil	x6, x25, #0, #56
	mov	x25, x6
	b	.LBB0_64
.LBB0_137:
	and	x7, x25, #0xffffffffffffff
	orr	x25, x7, x6
	b	.LBB0_64
.LBB0_138:
	and	x25, x25, #0xffffffffffffff00
	mov	x27, xzr
	orr	x25, x25, x6
	b	.LBB0_29
.LBB0_139:
	and	x7, x25, #0xffffffffffff00ff
	orr	x25, x7, x6
	b	.LBB0_34
.LBB0_140:
	and	x7, x25, #0xffffffffff00ffff
	orr	x25, x7, x6
	b	.LBB0_39
.LBB0_141:
	and	x7, x25, #0xffffffff00ffffff
	orr	x25, x7, x6
	b	.LBB0_44
.LBB0_142:
	and	x7, x25, #0xffffff00ffffffff
	orr	x25, x7, x6
	b	.LBB0_49
.LBB0_143:
	and	x7, x25, #0xffff00ffffffffff
	orr	x25, x7, x6
	b	.LBB0_54
.LBB0_144:
	and	x7, x25, #0xff00ffffffffffff
	orr	x25, x7, x6
	b	.LBB0_59
.LBB0_145:
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
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
	mov	w1, #1176
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
	b.ne	.LBB4_58
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
	b.lt	.LBB4_53
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
	tbz	w27, #0, .LBB4_53
.LBB4_44:
	mov	x23, x21
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	mov	x0, x19
	str	x19, [x23, #40]!
	ldp	x8, x9, [x23, #-32]
	str	x19, [x23, #288]
	str	w25, [x23, #844]
	stp	x8, x9, [x23, #8]
	bl	device_property_present
	tbz	w0, #0, .LBB4_46
	mov	w8, #3576
	str	w8, [x21, #888]
.LBB4_46:
	adrp	x1, .L.str.21
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.21
	bl	device_property_present
	tbz	w0, #0, .LBB4_48
	mov	w8, #1
	str	w8, [x21, #808]
.LBB4_48:
	mov	x0, x23
	bl	ebc_panel_probe
	cbnz	w0, .LBB4_54
	ldp	w9, w8, [x21, #116]
	mov	w10, #1
	mov	w11, #-1
	mov	x0, x21
	str	w8, [x21, #312]
	mul	w8, w9, w8
	str	w10, [x21, #872]
	strb	w10, [x21, #896]
	mov	x10, #-65486
	str	w9, [x21, #316]
	movk	x10, #0, lsl #16
	str	w9, [x21, #864]
	lsr	w9, w8, #2
	str	w11, [x21, #892]
	str	w11, [x21, #912]
	str	w8, [x21, #260]
	str	w9, [x21, #264]
	str	x10, [x21, #904]
	bl	ebc_buffer_manage_init
	cbnz	w0, .LBB4_55
	add	x24, x23, #192
	mov	x0, x24
	bl	ebc_lut_table_init
	cbnz	w0, .LBB4_56
	adrp	x8, nr_cpu_ids
	adrp	x0, __cpu_possible_mask
	add	x0, x0, :lo12:__cpu_possible_mask
	ldr	w1, [x8, :lo12:nr_cpu_ids]
	bl	__bitmap_weight
	str	w0, [x21, #804]
	mov	x0, x24
	bl	ebc_task_init
	mov	w22, w0
	cbnz	w0, .LBB4_57
	mov	x0, x24
	bl	ebc_other_init
	mov	x0, x21
	mov	x1, x23
	bl	ebc_logo_init
	mov	x0, x24
	str	x21, [x20, #136]
	bl	ebc_sysfs_init
	adrp	x1, .L.str.26
	adrp	x2, .L.str.2
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.26
	add	x2, x2, :lo12:.L.str.2
	bl	_dev_info
	b	.LBB4_24
.LBB4_53:
	adrp	x1, .L.str.19
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.19
	bl	_dev_err
	b	.LBB4_13
.LBB4_54:
	mov	w22, w0
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	mov	x0, x19
	mov	w2, w22
	bl	_dev_err
	b	.LBB4_24
.LBB4_55:
	adrp	x1, .L.str.23
	mov	w22, w0
	add	x1, x1, :lo12:.L.str.23
	b	.LBB4_19
.LBB4_56:
	adrp	x1, .L.str.24
	mov	w22, w0
	add	x1, x1, :lo12:.L.str.24
	b	.LBB4_19
.LBB4_57:
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	b	.LBB4_19
.LBB4_58:
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
	ldr	x0, [x19, #816]
	cbz	x0, .LBB5_2
	bl	dma_buf_put
	str	xzr, [x19, #816]
.LBB5_2:
	ldr	x0, [x19, #824]
	cbz	x0, .LBB5_4
	bl	dma_buf_put
	str	xzr, [x19, #824]
.LBB5_4:
	ldr	x0, [x19, #832]
	cbz	x0, .LBB5_6
	bl	dma_buf_put
	str	xzr, [x19, #832]
.LBB5_6:
	ldr	x0, [x19, #840]
	cbz	x0, .LBB5_8
	bl	dma_buf_put
	str	xzr, [x19, #840]
.LBB5_8:
	ldr	x0, [x19, #848]
	cbz	x0, .LBB5_10
	bl	dma_buf_put
	str	xzr, [x19, #848]
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
	ldr	w8, [x19, #472]
	sub	w8, w8, #1
	cmp	w8, #4
	b.hi	.LBB6_8
	adrp	x9, .LJTI6_0
	add	x9, x9, :lo12:.LJTI6_0
	adr	x10, .LBB6_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB6_2:
	ldr	w9, [x19, #304]
	mov	x8, x19
	cbz	w9, .LBB6_28
	ldr	w8, [x19, #324]
	cbz	w8, .LBB6_5
	ldr	w8, [x19, #760]
	cbz	w8, .LBB6_27
.LBB6_5:
	ldr	w8, [x19, #788]
	cbz	w8, .LBB6_22
	ldr	x8, [x19, #448]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB6_22
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB6_27
	b	.LBB6_22
.LBB6_8:
	ldr	w8, [x19, #304]
	cbnz	w8, .LBB6_22
	ldr	w8, [x19, #872]
	cbz	w8, .LBB6_22
	ldr	x0, [x19, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #812]
	str	wzr, [x19, #284]
	cmp	w8, #1
	b.lt	.LBB6_33
	adrp	x1, .L.str.31
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.31
	bl	_dev_info
	b	.LBB6_33
.LBB6_12:
	ldr	w8, [x19, #324]
	cbz	w8, .LBB6_23
	ldr	w9, [x19, #812]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_40
.LBB6_14:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
.LBB6_15:
	adrp	x8, jiffies
	mov	w9, #335544320
	add	x0, x19, #720
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #284]
	b	.LBB6_33
.LBB6_16:
	mov	w8, #1
	ldr	w9, [x19, #292]
	str	w8, [x19, #308]
	cbnz	w9, .LBB6_25
	ldr	w8, [x19, #296]
	cbnz	w8, .LBB6_25
	ldr	w8, [x19, #300]
	cbz	w8, .LBB6_25
	ldr	w9, [x19, #812]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_43
.LBB6_20:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #316]
	mov	w1, wzr
	ldr	w9, [x19, #312]
	ldr	x0, [x19, #392]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #316]
	ldr	w9, [x19, #312]
	ldr	x0, [x19, #400]
	b	.LBB6_39
.LBB6_21:
	ldr	w8, [x19, #304]
	cbz	w8, .LBB6_26
.LBB6_22:
	adrp	x8, ebc_auto_task
	mov	w9, #1
	ldr	x0, [x8, :lo12:ebc_auto_task]
	str	w9, [x19, #284]
	bl	wake_up_process
	b	.LBB6_34
.LBB6_23:
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB6_25
	ldr	w8, [x19, #296]
	cbz	w8, .LBB6_36
.LBB6_25:
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	b	.LBB6_34
.LBB6_26:
	ldr	w9, [x19, #324]
	mov	x8, x19
	cbz	w9, .LBB6_28
.LBB6_27:
	ldr	w9, [x19, #812]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_41
.LBB6_28:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #812]
	str	wzr, [x19, #284]
	cmp	w8, #1
	b.ge	.LBB6_35
	ldr	w3, [x19, #912]
	tbnz	w3, #31, .LBB6_33
.LBB6_30:
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB6_33
	ldr	w2, [x19, #908]
	tbnz	w2, #31, .LBB6_33
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.lt	.LBB6_42
.LBB6_33:
	adrp	x0, ebc_thread_wq
	mov	w1, #1
	add	x0, x0, :lo12:ebc_thread_wq
	bl	__wake_up_sync
.LBB6_34:
	ldp	x20, x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.LBB6_35:
	adrp	x1, .L.str.31
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.31
	bl	_dev_info
	ldr	w3, [x19, #912]
	tbz	w3, #31, .LBB6_30
	b	.LBB6_33
.LBB6_36:
	ldr	w8, [x19, #300]
	cbz	w8, .LBB6_25
	ldr	w9, [x19, #812]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_44
.LBB6_38:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #316]
	ldr	w9, [x19, #312]
	ldr	x0, [x19, #392]
.LBB6_39:
	mul	w8, w9, w8
	sxtw	x2, w8
	mov	w1, wzr
	bl	memset
	b	.LBB6_15
.LBB6_40:
	adrp	x1, .L.str.28
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.28
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_14
.LBB6_41:
	adrp	x1, .L.str.30
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.30
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_28
.LBB6_42:
	adrp	x1, .L.str.32
	ldrb	w8, [x19, #916]
	add	x4, x19, #917
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.32
	strb	wzr, [x4, x8]
	bl	_dev_info
	b	.LBB6_33
.LBB6_43:
	adrp	x1, .L.str.27
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.27
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_20
.LBB6_44:
	adrp	x1, .L.str.29
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.29
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_38
.Lfunc_end6:
	.size	frame_done_callback, .Lfunc_end6-frame_done_callback
	.section	.rodata,"a",@progbits
.LJTI6_0:
	.byte	(.LBB6_2-.LBB6_2)>>2
	.byte	(.LBB6_8-.LBB6_2)>>2
	.byte	(.LBB6_12-.LBB6_2)>>2
	.byte	(.LBB6_16-.LBB6_2)>>2
	.byte	(.LBB6_21-.LBB6_2)>>2

	.text
	.p2align	2
	.type	ebc_panel_probe,@function
ebc_panel_probe:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	mov	x2, x0
	stp	x20, x19, [sp, #32]
	adrp	x1, .L.str.33
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.33
	mov	w3, #1
	ldr	x20, [x2], #76
	mov	x4, xzr
	str	x21, [sp, #16]
	mov	x29, sp
	ldr	x0, [x20, #656]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	add	x21, x20, #656
	adrp	x1, .L.str.34
	add	x2, x19, #80
	add	x1, x1, :lo12:.L.str.34
	mov	w3, #1
	mov	x4, xzr
	ldr	x0, [x21]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.35
	ldr	x0, [x21]
	add	x2, x19, #84
	add	x1, x1, :lo12:.L.str.35
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.36
	ldr	x0, [x21]
	add	x2, x19, #88
	add	x1, x1, :lo12:.L.str.36
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.37
	ldr	x0, [x21]
	add	x2, x19, #104
	add	x1, x1, :lo12:.L.str.37
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.38
	ldr	x0, [x21]
	add	x2, x19, #108
	add	x1, x1, :lo12:.L.str.38
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.39
	ldr	x0, [x21]
	add	x2, x19, #112
	add	x1, x1, :lo12:.L.str.39
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.40
	ldr	x0, [x21]
	add	x2, x19, #116
	add	x1, x1, :lo12:.L.str.40
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.41
	ldr	x0, [x21]
	add	x2, x19, #120
	add	x1, x1, :lo12:.L.str.41
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.42
	ldr	x0, [x21]
	add	x2, x19, #124
	add	x1, x1, :lo12:.L.str.42
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.43
	ldr	x0, [x21]
	add	x2, x19, #128
	add	x1, x1, :lo12:.L.str.43
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.44
	ldr	x0, [x21]
	add	x2, x19, #132
	add	x1, x1, :lo12:.L.str.44
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.45
	ldr	x0, [x21]
	add	x2, x19, #136
	add	x1, x1, :lo12:.L.str.45
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.46
	ldr	x0, [x21]
	add	x2, x19, #140
	add	x1, x1, :lo12:.L.str.46
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.47
	ldr	x0, [x21]
	add	x2, x19, #144
	add	x1, x1, :lo12:.L.str.47
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	add	x20, x19, #148
	adrp	x1, .L.str.48
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.48
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_17
	str	wzr, [x20]
.LBB7_17:
	add	x20, x19, #152
	adrp	x1, .L.str.49
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.49
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_19
	str	wzr, [x20]
.LBB7_19:
	add	x20, x19, #156
	adrp	x1, .L.str.50
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.50
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_21
	str	wzr, [x20]
.LBB7_21:
	add	x20, x19, #92
	adrp	x1, .L.str.51
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.51
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_23
	str	wzr, [x20]
.LBB7_23:
	add	x20, x19, #96
	adrp	x1, .L.str.52
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.52
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_25
	str	wzr, [x20]
.LBB7_25:
	add	x20, x19, #160
	adrp	x1, .L.str.53
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.53
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_27
	str	wzr, [x20]
.LBB7_27:
	add	x20, x19, #164
	adrp	x1, .L.str.54
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.54
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_29
	str	wzr, [x20]
.LBB7_29:
	add	x20, x19, #176
	adrp	x1, .L.str.55
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.55
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_31
	str	wzr, [x20]
.LBB7_31:
	add	x20, x19, #180
	adrp	x1, .L.str.56
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.56
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_33
	str	wzr, [x20]
.LBB7_33:
	add	x20, x19, #168
	adrp	x1, .L.str.57
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.57
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_35
	str	wzr, [x20]
.LBB7_35:
	add	x20, x19, #172
	adrp	x1, .L.str.58
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.58
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_37
	str	wzr, [x20]
.LBB7_37:
	adrp	x1, .L.str.59
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.59
	mov	x2, xzr
	bl	of_find_property
	cmp	x0, #0
	mov	w0, wzr
	cset	w8, ne
	strb	w8, [x19, #184]
	b	.LBB7_39
.LBB7_38:
	mov	w0, #-22
.LBB7_39:
	ldp	x20, x19, [sp, #32]
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
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
	ldr	w8, [x0, #260]
	stp	xzr, xzr, [sp, #56]
	ldr	x20, [x0]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	cmp	w8, #1280, lsl #12
	stp	xzr, xzr, [sp, #8]
	b.gt	.LBB8_23
	adrp	x1, .L.str.61
	mov	x19, x0
	ldr	x0, [x20, #656]
	add	x1, x1, :lo12:.L.str.61
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
	str	x1, [x19, #232]
	sub	x8, x8, x1
	add	x8, x8, #1
	cmp	w8, w9
	str	w8, [x19, #256]
	b.le	.LBB8_25
	sxtw	x2, w8
	mov	x0, x20
	mov	w3, #1
	bl	devm_memremap
	str	x0, [x19, #240]
	cbz	x0, .LBB8_28
	mov	x1, x0
	ldr	x0, [x19, #232]
	ldr	w2, [x19, #256]
	mov	w3, #5242880
	mov	w4, #4
	bl	ebc_buf_init
	cbz	w0, .LBB8_8
.LBB8_7:
	mov	w21, #-12
	b	.LBB8_26
.LBB8_8:
	ldr	x0, [x19, #232]
	mov	w1, #5242880
	str	xzr, [x19, #848]
	str	xzr, [x19, #840]
	str	xzr, [x19, #832]
	str	xzr, [x19, #824]
	str	xzr, [x19, #816]
	bl	ebc_get_dma_buf
	cmn	x0, #4095
	b.hs	.LBB8_13
	ldr	x8, [x19, #232]
	str	x0, [x19, #816]
	mov	w1, #5242880
	add	x8, x8, #1280, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #232]
	str	x0, [x19, #824]
	mov	w1, #5242880
	add	x8, x8, #2560, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #232]
	str	x0, [x19, #832]
	mov	w1, #5242880
	add	x8, x8, #3840, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #232]
	mov	w9, #20971520
	str	x0, [x19, #840]
	mov	w1, #5242880
	add	x8, x8, x9
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.ls	.LBB8_29
.LBB8_13:
	ldr	x0, [x19, #816]
	cbz	x0, .LBB8_15
	bl	dma_buf_put
	str	xzr, [x19, #816]
.LBB8_15:
	ldr	x0, [x19, #824]
	cbz	x0, .LBB8_17
	bl	dma_buf_put
	str	xzr, [x19, #824]
.LBB8_17:
	ldr	x0, [x19, #832]
	cbz	x0, .LBB8_19
	bl	dma_buf_put
	str	xzr, [x19, #832]
.LBB8_19:
	ldr	x0, [x19, #840]
	cbz	x0, .LBB8_21
	bl	dma_buf_put
	str	xzr, [x19, #840]
.LBB8_21:
	ldr	x0, [x19, #848]
	cbz	x0, .LBB8_7
	bl	dma_buf_put
	mov	w21, #-12
	str	xzr, [x19, #848]
	b	.LBB8_26
.LBB8_23:
	adrp	x1, .L.str.60
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.60
	bl	_dev_err
	mov	w21, #-19
	b	.LBB8_26
.LBB8_24:
	adrp	x1, .L.str.62
	mov	w21, w0
	add	x1, x1, :lo12:.L.str.62
	mov	x0, x20
	bl	_dev_err
	b	.LBB8_26
.LBB8_25:
	adrp	x1, .L.str.63
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.63
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
	adrp	x1, .L.str.64
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.64
	bl	_dev_err
	b	.LBB8_7
.LBB8_29:
	ldp	x10, x8, [x19, #232]
	mov	w9, #20971520
	mov	w11, #26214400
	mov	w14, #28311552
	mov	w13, #2097152
	str	x0, [x19, #848]
	mov	w1, wzr
	add	x9, x8, x9
	add	x12, x8, x11
	add	x11, x10, x11
	add	x10, x10, x14
	str	x9, [x19, #248]
	add	x9, x8, x14
	stp	x10, x13, [x19, #96]
	mov	w10, #35651584
	add	x10, x8, x10
	stp	x12, x11, [x19, #64]
	stp	x13, x9, [x19, #80]
	mov	w11, #40894464
	str	x9, [x19, #416]
	mov	w9, #30408704
	add	x9, x8, x9
	mov	w13, #46137344
	add	x11, x8, x11
	add	x13, x8, x13
	stp	x9, x10, [x19, #368]
	mov	w9, #51380224
	add	x0, x8, x9
	stp	x11, x13, [x19, #384]
	ldp	w10, w9, [x19, #116]
	mov	w11, #56623104
	mov	w13, #57671680
	add	x11, x8, x11
	add	x8, x8, x13
	stp	x0, x12, [x19, #400]
	mul	w2, w9, w10
	stp	x11, x8, [x19, #352]
	bl	memset
	ldp	w8, w9, [x19, #116]
	ldr	x0, [x19, #392]
	mov	w1, wzr
	mul	w2, w9, w8
	bl	memset
	ldr	x0, [x19, #384]
	mov	w1, #240
	ldrsw	x2, [x19, #260]
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
	adrp	x1, .L.str.65
	stp	x20, x19, [sp, #192]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.65
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
	adrp	x1, .L.str.66
	add	x2, sp, #4
	add	x1, x1, :lo12:.L.str.66
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
	adrp	x1, .L.str.67
	adrp	x2, .L__func__.ebc_lut_table_init
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.67
	add	x2, x2, :lo12:.L__func__.ebc_lut_table_init
	mov	w3, #4300
	bl	_dev_err
	mov	w0, #-12
	b	.LBB9_9
.LBB9_12:
	adrp	x1, .L.str.68
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.68
	bl	_dev_err
	ldr	x0, [x19, #96]
	mov	w2, w21
	ldr	x1, [x19, #200]
	bl	epd_lut_from_file_init
	tbz	w0, #31, .LBB9_8
	adrp	x1, .L.str.69
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.69
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
	adrp	x3, .L.str.70
	str	x21, [sp, #32]
	mov	w9, #99
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	mov	x19, x0
	adrp	x0, ebc_auto_tast_function
	ldr	x8, [x8, #1584]
	add	x0, x0, :lo12:ebc_auto_tast_function
	add	x3, x3, :lo12:.L.str.70
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
	ldr	w8, [x19, #572]
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
	adrp	x3, .L.str.72
	add	x0, x0, :lo12:ebc_auto_assist_tast_function
	add	x3, x3, :lo12:.L.str.72
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
	ldr	w8, [x19, #572]
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
	adrp	x3, .L.str.74
	mov	w8, #99
	add	x0, x0, :lo12:ebc_thread
	add	x3, x3, :lo12:.L.str.74
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
	ldr	w8, [x19, #572]
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
	adrp	x1, .L.str.71
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.71
	b	.LBB10_24
.LBB10_22:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.73
	add	x1, x1, :lo12:.L.str.73
	b	.LBB10_24
.LBB10_23:
	adrp	x8, ebc_task
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
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
	mov	x9, #4294967297
	add	x10, x0, #540
	stp	x20, x19, [sp, #32]
	mov	x19, x0
	mov	w8, #1
	stp	x22, x21, [sp, #16]
	str	x9, [x10]
	add	x9, x0, #548
	ldr	w10, [x0, #652]
	mov	x29, sp
	str	wzr, [x0, #192]
	str	xzr, [x9]
	mov	w9, #1
	cmp	w10, #3576
	str	xzr, [x0, #528]
	str	xzr, [x0, #88]
	str	wzr, [x0, #52]
	str	wzr, [x0, #68]
	str	w8, [x0, #240]
	str	wzr, [x0, #564]
	str	wzr, [x0, #580]
	b.eq	.LBB11_2
	ldr	w9, [x19, #656]
	cmp	w9, #3576
	cset	w9, eq
.LBB11_2:
	adds	x0, x19, #248
	str	w9, [x19, #556]
	str	w8, [x19, #568]
	b.eq	.LBB11_4
	adrp	x8, .L.str.114
	stp	xzr, xzr, [x19, #424]
	add	x8, x8, :lo12:.L.str.114
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
.LBB11_4:
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
	adrp	x1, .L.str.116
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.116
	str	x8, [sp, #8]
	ldr	x22, [x9, :lo12:saved_command_line]
	str	xzr, [sp]
	mov	x0, x22
	bl	strstr
	adrp	x1, .L.str.117
	mov	x21, x0
	add	x1, x1, :lo12:.L.str.117
	mov	x0, x22
	bl	strstr
	mov	x22, x0
	cbz	x21, .LBB12_3
	adrp	x1, .L.str.118
	add	x2, sp, #4
	add	x1, x1, :lo12:.L.str.118
	mov	x0, x21
	bl	sscanf
	ldr	w2, [sp, #4]
	ldr	x8, [x19, #232]
	cmp	x8, x2
	b.ls	.LBB12_26
	mov	x21, xzr
.LBB12_3:
	mov	w23, #1
	cbz	x22, .LBB12_28
.LBB12_4:
	adrp	x1, .L.str.121
	mov	x2, sp
	add	x1, x1, :lo12:.L.str.121
	mov	x0, x22
	bl	sscanf
	ldr	w2, [sp]
	ldr	x8, [x19, #232]
	cmp	x8, x2
	b.ls	.LBB12_31
	mov	x22, xzr
	mov	w24, #1
	cbnz	w23, .LBB12_29
.LBB12_6:
	adrp	x0, .L.str.125
	add	x0, x0, :lo12:.L.str.125
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
	adrp	x0, .L.str.125
	add	x0, x0, :lo12:.L.str.125
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
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB12_20
	adrp	x0, ebc_thread_wq
	mov	w8, #1
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1
	str	w8, [x19, #320]
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
	adrp	x1, .L.str.119
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.119
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc
	cbz	x0, .LBB12_35
	ldp	w9, w8, [x20, #76]
	ldp	x11, x12, [x19, #232]
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
	adrp	x1, .L.str.124
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.124
	bl	_dev_info
	ldr	x0, [x19, #16]
	cbz	x0, .LBB12_33
	bl	ebc_pmic_verity_vcom
	b	.LBB12_34
.LBB12_31:
	adrp	x1, .L.str.122
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.122
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc
	cbz	x0, .LBB12_36
	ldp	w9, w8, [x20, #76]
	ldp	x11, x12, [x19, #232]
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
	adrp	x0, .L.str.126
	add	x0, x0, :lo12:.L.str.126
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
	adrp	x1, .L.str.120
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.120
	bl	_dev_err
	b	.LBB12_24
.LBB12_36:
	adrp	x1, .L.str.123
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.123
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
	adrp	x1, dev_attr_overlay_wf_data
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_overlay_wf_data
	bl	device_create_file
	adrp	x1, dev_attr_ori_wf_data
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ori_wf_data
	bl	device_create_file
	adrp	x1, dev_attr_record_pix_wf
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_record_pix_wf
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
	sub	sp, sp, #144
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x28, x27, [sp, #64]
	stp	x26, x25, [sp, #80]
	adrp	x25, .LJTI14_0
	stp	x20, x19, [sp, #128]
	adrp	x19, ebc_auto_thread_sem
	ldr	x28, [x8, :lo12:global_ebc]
	adrp	x20, ebc_assist_finished_flag_sem
	stp	x24, x23, [sp, #96]
	add	x19, x19, :lo12:ebc_auto_thread_sem
	stp	x22, x21, [sp, #112]
	add	x20, x20, :lo12:ebc_assist_finished_flag_sem
	mov	w21, #2
	adrp	x22, ebc_auto_assist_task
	mov	w23, #1
	add	x26, x28, #40
	add	x27, x28, #232
	add	x8, x28, #720
	add	x25, x25, :lo12:.LJTI14_0
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	//APP
	mrs	x24, SP_EL0
	//NO_APP
	stp	x26, x8, [sp, #8]
	str	x27, [sp]
	str	x24, [sp, #24]
	b	.LBB14_3
.LBB14_1:
	ldr	w8, [x28, #304]
	mov	x0, x26
	mov	x1, x27
	sub	w8, w8, #1
	str	w8, [x28, #304]
	bl	flip
	ldr	x0, [x22, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
.LBB14_2:
	mov	x0, x19
	bl	up
	bl	schedule
.LBB14_3:
	mov	x0, x19
	bl	down
	mov	x0, x20
	bl	down
	str	w21, [x24, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x28, #472]
	sub	w8, w8, #1
	cmp	w8, #4
	b.hi	.LBB14_8
.Ltmp25:
	adr	x9, .Ltmp25
	ldrsw	x10, [x25, x8, lsl #2]
	add	x9, x9, x10
	br	x9
.LBB14_5:
	ldr	w8, [x28, #304]
	mov	x0, x26
	mov	x1, x27
	sub	w8, w8, #1
	str	w8, [x28, #304]
	bl	flip
	ldr	x0, [x22, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x28, #304]
	cbz	w8, .LBB14_2
	ldrsw	x8, [x28, #112]
	mov	x3, x27
	ldp	x11, x9, [x28, #440]
	mov	w4, #2
	add	x8, x28, x8, lsl #3
	ldr	w10, [x28, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #408]
	cbz	w10, .LBB14_28
	bl	direct_mode_data_change_part2
	b	.LBB14_2
.LBB14_8:
	ldr	x8, [x28, #448]
	ldr	w8, [x8, #40]
	cmp	w8, #21
	b.ne	.LBB14_20
	ldr	w8, [x28, #856]
	mov	x0, x26
	ldr	w9, [x28, #868]
	mov	x1, x27
	add	w8, w9, w8
	str	w8, [x28, #868]
	bl	flip
	ldr	x0, [x22, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	mov	x0, x27
	bl	is_full_refresh_done
	tbz	w0, #0, .LBB14_26
	str	w23, [x28, #872]
	b	.LBB14_2
.LBB14_11:
	ldr	w8, [x28, #292]
	str	wzr, [x28, #300]
	cbnz	w8, .LBB14_13
	ldr	w8, [x28, #296]
	cbz	w8, .LBB14_30
.LBB14_13:
	mov	x0, x26
	mov	x1, x27
	bl	flip
	ldr	x0, [x22, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x28, #112]
	mov	x4, x27
	ldp	x1, x2, [x28, #368]
	mov	w5, #2
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldr	x3, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_25
	bl	get_auto_image2
	b	.LBB14_2
.LBB14_15:
	ldr	w8, [x28, #308]
	cbz	w8, .LBB14_23
	ldr	w8, [x28, #292]
	str	wzr, [x28, #308]
	str	wzr, [x28, #300]
	cbnz	w8, .LBB14_18
	ldr	w8, [x28, #296]
	cbz	w8, .LBB14_43
.LBB14_18:
	mov	x0, x26
	mov	x1, x27
	bl	flip
	ldr	x0, [x22, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x28, #112]
	mov	x5, x27
	ldp	x1, x2, [x28, #368]
	mov	w6, #2
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_29
	bl	get_overlay_image2
	b	.LBB14_2
.LBB14_20:
	ldr	w8, [x28, #304]
	mov	x0, x26
	mov	x1, x27
	sub	w8, w8, #1
	str	w8, [x28, #304]
	bl	flip
	ldr	x0, [x22, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x28, #304]
	cbz	w8, .LBB14_2
	ldrsw	x9, [x28, #112]
	ldp	x12, x10, [x28, #440]
	add	x9, x28, x9, lsl #3
	ldr	w11, [x28, #204]
	ldr	x24, [x12, #16]
	ldr	x25, [x10, #16]
	ldr	x0, [x9, #408]
	cbz	w11, .LBB14_34
	mov	x1, x25
	mov	x2, x24
	mov	x3, x27
	mov	w4, #2
	bl	direct_mode_data_change2
	b	.LBB14_41
.LBB14_23:
	mov	x0, x20
	bl	up
	ldrsw	x8, [x28, #112]
	mov	x5, x27
	ldp	x1, x2, [x28, #368]
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_33
	bl	get_overlay_image_area2
	b	.LBB14_2
.LBB14_25:
	bl	get_auto_image
	b	.LBB14_2
.LBB14_26:
	ldrsw	x8, [x28, #112]
	mov	x3, x27
	ldp	x11, x9, [x28, #440]
	mov	w4, #2
	add	x8, x28, x8, lsl #3
	ldr	w10, [x28, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #408]
	cbz	w10, .LBB14_42
	bl	direct_mode_data_change_full2
	b	.LBB14_2
.LBB14_28:
	bl	direct_mode_data_change_part
	b	.LBB14_2
.LBB14_29:
	bl	get_overlay_image
	b	.LBB14_2
.LBB14_30:
	mov	x0, x20
	bl	up
	ldr	w8, [x28, #780]
	mov	w3, #255
	cbz	w8, .LBB14_47
.LBB14_31:
	ldrsw	x8, [x28, #112]
	mov	x4, x27
	ldp	x1, x2, [x28, #368]
	mov	w5, #1
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldr	x3, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_55
	bl	get_auto_image2
	b	.LBB14_57
.LBB14_33:
	bl	get_overlay_image_area
	b	.LBB14_2
.LBB14_34:
	adrp	x9, global_ebc
	mov	x15, #512
	movk	x15, #1540, lsl #16
	ldrb	w14, [x28, #288]
	movk	x15, #2568, lsl #32
	ldr	x10, [x9, :lo12:global_ebc]
	movk	x15, #3596, lsl #48
	ldp	w13, w9, [x10, #116]
	ldr	w12, [x10, #196]
	stur	x15, [x29, #-8]
	cmp	w9, #0
	lsr	w10, w13, #2
	cinc	w11, w9, lt
	cmp	w12, #0
	stur	w13, [x29, #-12]
	ldr	x13, [x28, #352]
	cneg	w10, w10, ne
	cmp	w9, #2
	b.lt	.LBB14_40
	sub	w8, w14, w8
	sub	w9, w9, #1
	cmp	w12, #0
	asr	w21, w11, #1
	ldur	w11, [x29, #-12]
	lsl	w8, w8, #10
	csel	w9, wzr, w9, eq
	mov	w23, wzr
	add	x26, x13, w8, sxtw
	sxtw	x19, w10
	lsr	w8, w11, #3
	mul	w9, w9, w11
	cmp	w8, #1
	lsr	w9, w9, #2
	csinc	w8, w8, wzr, hi
	add	x27, x0, x9
	lsl	x22, x8, #1
	b	.LBB14_37
.LBB14_36:
	add	w23, w23, #1
	add	x27, x27, x19
	cmp	w23, w21
	b.eq	.LBB14_40
.LBB14_37:
	ldur	w8, [x29, #-12]
	cmp	w8, #8
	b.lo	.LBB14_36
	mov	x20, xzr
.LBB14_39:
	ldr	x2, [x25], #8
	ldr	x1, [x24], #8
	sub	x3, x29, #8
	mov	x0, x26
	bl	ebc_get_8pix_wf_full
	strh	w0, [x27, x20]
	add	x20, x20, #2
	cmp	x22, x20
	b.ne	.LBB14_39
	b	.LBB14_36
.LBB14_40:
	ldp	x27, x26, [sp]
	adrp	x19, ebc_auto_thread_sem
	adrp	x20, ebc_assist_finished_flag_sem
	add	x19, x19, :lo12:ebc_auto_thread_sem
	add	x20, x20, :lo12:ebc_assist_finished_flag_sem
	mov	w21, #2
	adrp	x22, ebc_auto_assist_task
	mov	w23, #1
.LBB14_41:
	adrp	x25, .LJTI14_0
	ldr	x24, [sp, #24]
	add	x25, x25, :lo12:.LJTI14_0
	b	.LBB14_2
.LBB14_42:
	bl	direct_mode_data_change_full
	b	.LBB14_2
.LBB14_43:
	mov	x0, x20
	bl	up
	ldr	w8, [x28, #780]
	cbnz	w8, .LBB14_45
	ldr	x8, [x28, #448]
	mov	x6, x27
	ldp	x0, x1, [x28, #368]
	ldp	x4, x5, [x28, #392]
	ldr	x2, [x28, #248]
	ldr	x3, [x8, #16]
	bl	refresh_new_image
.LBB14_45:
	ldrsw	x8, [x28, #112]
	mov	x5, x27
	ldp	x1, x2, [x28, #368]
	mov	w6, #1
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_56
	bl	get_overlay_image2
	b	.LBB14_57
.LBB14_47:
	ldr	w8, [x28, #316]
	ldr	w9, [x28, #312]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w13, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB14_31
	ldr	x12, [x28, #448]
	mov	w10, wzr
	ldr	x11, [x28, #392]
	asr	w13, w13, #3
	ldr	x14, [x28, #368]
	ldr	x12, [x12, #16]
	b	.LBB14_50
.LBB14_49:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB14_31
.LBB14_50:
	cmp	w8, #8
	b.lt	.LBB14_49
	mov	w15, w13
	b	.LBB14_53
.LBB14_52:
	add	x14, x14, #8
	subs	w15, w15, #1
	b.eq	.LBB14_49
.LBB14_53:
	ldr	x16, [x12], #8
	ldr	x17, [x14]
	ldr	x0, [x11], #8
	cmp	x16, x17
	b.eq	.LBB14_52
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
	b	.LBB14_52
.LBB14_55:
	bl	get_auto_image
	b	.LBB14_57
.LBB14_56:
	bl	get_overlay_image
.LBB14_57:
	adrp	x8, jiffies
	str	w23, [x28, #300]
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #16]
	add	x1, x8, #1
	bl	mod_timer
	b	.LBB14_2
.Lfunc_end14:
	.size	ebc_auto_tast_function, .Lfunc_end14-ebc_auto_tast_function
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI14_0:
	.word	.LBB14_5-.Ltmp25
	.word	.LBB14_8-.Ltmp25
	.word	.LBB14_11-.Ltmp25
	.word	.LBB14_15-.Ltmp25
	.word	.LBB14_1-.Ltmp25

	.text
	.p2align	2
	.type	ebc_auto_assist_tast_function,@function
ebc_auto_assist_tast_function:
	sub	sp, sp, #128
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #80]
	stp	x26, x25, [sp, #64]
	adrp	x23, ebc_assist_finished_flag_sem
	stp	x20, x19, [sp, #112]
	adrp	x19, ebc_auto_assist_thread_sem
	ldr	x24, [x8, :lo12:global_ebc]
	adrp	x25, .LJTI15_0
	stp	x22, x21, [sp, #96]
	add	x19, x19, :lo12:ebc_auto_assist_thread_sem
	mov	w22, #2
	add	x23, x23, :lo12:ebc_assist_finished_flag_sem
	add	x21, x24, #232
	add	x25, x25, :lo12:.LJTI15_0
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]
	//APP
	mrs	x20, SP_EL0
	//NO_APP
	stp	x21, x20, [sp]
	b	.LBB15_4
.LBB15_1:
	ldrsw	x8, [x24, #112]
	mov	x4, x21
	ldp	x1, x2, [x24, #368]
	mov	w5, #3
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldr	x3, [x24, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB15_18
	bl	get_auto_image2
.LBB15_3:
	mov	x0, x23
	bl	up
	mov	x0, x19
	bl	up
	bl	schedule
.LBB15_4:
	mov	x0, x19
	bl	down
	str	w22, [x20, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x24, #472]
	sub	w8, w8, #1
	cmp	w8, #4
	b.hi	.LBB15_9
.Ltmp26:
	adr	x9, .Ltmp26
	ldrsw	x10, [x25, x8, lsl #2]
	add	x9, x9, x10
	br	x9
.LBB15_6:
	ldr	w8, [x24, #304]
	cbz	w8, .LBB15_3
	ldrsw	x8, [x24, #112]
	mov	x3, x21
	ldp	x11, x9, [x24, #440]
	mov	w4, #3
	add	x8, x24, x8, lsl #3
	ldr	w10, [x24, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #408]
	cbz	w10, .LBB15_20
	bl	direct_mode_data_change_part2
	b	.LBB15_3
.LBB15_9:
	ldr	x9, [x24, #448]
	ldr	w8, [x9, #40]
	cmp	w8, #21
	b.ne	.LBB15_15
	mov	x0, x21
	bl	is_full_refresh_done
	tbnz	w0, #0, .LBB15_3
	ldrsw	x8, [x24, #112]
	mov	x3, x21
	ldp	x11, x9, [x24, #440]
	mov	w4, #3
	add	x8, x24, x8, lsl #3
	ldr	w10, [x24, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #408]
	cbz	w10, .LBB15_23
	bl	direct_mode_data_change_full2
	b	.LBB15_3
.LBB15_13:
	ldrsw	x8, [x24, #112]
	mov	x5, x21
	ldp	x1, x2, [x24, #368]
	mov	w6, #3
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldp	x3, x4, [x24, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB15_19
	bl	get_overlay_image2
	b	.LBB15_3
.LBB15_15:
	ldr	w8, [x24, #304]
	cbz	w8, .LBB15_3
	ldrsw	x10, [x24, #112]
	ldr	x12, [x24, #440]
	ldr	w11, [x24, #204]
	add	x10, x24, x10, lsl #3
	ldr	x1, [x9, #16]
	ldr	x2, [x12, #16]
	ldr	x0, [x10, #408]
	cbz	w11, .LBB15_21
	mov	x3, x21
	mov	w4, #3
	bl	direct_mode_data_change2
	b	.LBB15_3
.LBB15_18:
	bl	get_auto_image
	b	.LBB15_3
.LBB15_19:
	bl	get_overlay_image
	b	.LBB15_3
.LBB15_20:
	bl	direct_mode_data_change_part
	b	.LBB15_3
.LBB15_21:
	adrp	x9, global_ebc
	ldrb	w10, [x24, #288]
	ldr	x11, [x24, #352]
	ldr	x9, [x9, :lo12:global_ebc]
	ldp	w13, w26, [x9, #116]
	ldr	w9, [x9, #196]
	cmp	w26, #0
	cinc	w12, w26, lt
	asr	w28, w12, #1
	mov	x12, #512
	movk	x12, #1540, lsl #16
	movk	x12, #2568, lsl #32
	movk	x12, #3596, lsl #48
	stur	x12, [x29, #-8]
	cbz	w9, .LBB15_24
	mvn	w9, w28
	neg	w12, w13, lsr #2
	add	w9, w26, w9
	cmp	w28, w26
	b.lt	.LBB15_25
	b	.LBB15_30
.LBB15_23:
	bl	direct_mode_data_change_full
	b	.LBB15_3
.LBB15_24:
	lsr	w12, w13, #2
	mov	w9, w28
	cmp	w28, w26
	b.ge	.LBB15_30
.LBB15_25:
	sub	w8, w10, w8
	lsr	w10, w13, #3
	lsl	w8, w8, #10
	mul	w9, w9, w13
	cmp	w10, #1
	mov	w23, w13
	add	x22, x11, w8, sxtw
	mul	w8, w28, w10
	lsr	w9, w9, #2
	sxtw	x11, w12
	sbfiz	x8, x8, #3, #32
	add	x25, x0, x9
	add	x21, x1, x8
	add	x20, x2, x8
	csinc	w8, w10, wzr, hi
	str	x11, [sp, #16]
	lsl	x19, x8, #1
	b	.LBB15_27
.LBB15_26:
	ldr	x8, [sp, #16]
	add	w28, w28, #1
	mov	w13, w23
	cmp	w28, w26
	add	x25, x25, x8
	mov	w8, w26
	b.eq	.LBB15_30
.LBB15_27:
	cmp	w13, #8
	b.lo	.LBB15_26
	mov	x27, xzr
.LBB15_29:
	ldr	x2, [x21], #8
	ldr	x1, [x20], #8
	sub	x3, x29, #8
	mov	x0, x22
	bl	ebc_get_8pix_wf_full
	strh	w0, [x25, x27]
	add	x27, x27, #2
	cmp	x19, x27
	b.ne	.LBB15_29
	b	.LBB15_26
.LBB15_30:
	ldp	x21, x20, [sp]
	adrp	x19, ebc_auto_assist_thread_sem
	adrp	x23, ebc_assist_finished_flag_sem
	adrp	x25, .LJTI15_0
	add	x19, x19, :lo12:ebc_auto_assist_thread_sem
	mov	w22, #2
	add	x23, x23, :lo12:ebc_assist_finished_flag_sem
	add	x25, x25, :lo12:.LJTI15_0
	b	.LBB15_3
.Lfunc_end15:
	.size	ebc_auto_assist_tast_function, .Lfunc_end15-ebc_auto_assist_tast_function
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI15_0:
	.word	.LBB15_6-.Ltmp26
	.word	.LBB15_9-.Ltmp26
	.word	.LBB15_1-.Ltmp26
	.word	.LBB15_13-.Ltmp26
	.word	.LBB15_3-.Ltmp26

	.text
	.p2align	2
	.type	ebc_thread,@function
ebc_thread:
	sub	sp, sp, #208
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #192]
	stp	x29, x30, [sp, #112]
	add	x29, sp, #112
	stp	x28, x27, [sp, #128]
	mov	w28, #1
	ldr	x19, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #144]
	stp	x24, x23, [sp, #160]
	mov	x24, #1030792151040
	stp	x22, x21, [sp, #176]
	mov	w22, #-268435456
	add	x8, x19, #812
	add	x9, x19, #232
	mov	x25, #263882790666240
	mov	x26, #67553994410557440
	str	x8, [sp, #56]
	add	x8, x19, #328
	stp	x8, x9, [sp, #16]
	add	x8, x19, #680
	str	x8, [sp, #8]
	add	x8, x19, #284
	stur	x8, [x29, #-48]
	add	x8, x19, #40
	str	x8, [sp]
	add	x8, x19, #720
	str	x8, [sp, #32]
	b	.LBB16_3
.LBB16_1:
	ldr	x0, [x19, #440]
	bl	ebc_buf_release
.LBB16_2:
	ldr	x8, [x19, #448]
	str	x8, [x19, #440]
.LBB16_3:
	bl	ebc_osd_buf_get
	cbz	x0, .LBB16_8
	mov	x20, x0
	ldr	w8, [x19, #760]
	cbnz	w8, .LBB16_6
	ldr	w8, [x19, #764]
	cbz	w8, .LBB16_25
.LBB16_6:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_96
.LBB16_7:
	mov	x0, x20
	bl	ebc_buf_release
	b	.LBB16_3
.LBB16_8:
	ldr	w8, [x19, #776]
	str	wzr, [x19, #324]
	cbz	w8, .LBB16_11
	ldr	w8, [x19, #772]
	cbnz	w8, .LBB16_11
	ldr	w8, [x19, #780]
	cbz	w8, .LBB16_19
.LBB16_11:
	bl	ebc_dsp_buf_get
	cbz	x0, .LBB16_19
	ldr	w2, [x0, #40]
	str	x0, [sp, #48]
	cmp	w2, #21
	b.ne	.LBB16_21
.LBB16_13:
	ldr	w8, [x19, #676]
	cbnz	w8, .LBB16_15
	ldr	x8, [sp, #48]
	str	x8, [x19, #440]
	ldr	w2, [x8, #40]
.LBB16_15:
	cmp	w2, #23
	b.hi	.LBB16_438
	lsl	w8, w28, w2
	tst	w8, #0x1ff80
	b.ne	.LBB16_28
	mov	w9, #124
	movk	w9, #34, lsl #16
	tst	w8, w9
	b.eq	.LBB16_101
	mov	w20, #2
	b	.LBB16_29
.LBB16_19:
	ldr	w8, [x19, #320]
	cbz	w8, .LBB16_35
.LBB16_20:
	str	wzr, [x19, #320]
	b	.LBB16_3
.LBB16_21:
	ldr	w9, [x19, #768]
	ldr	w8, [x19, #472]
	cbz	w9, .LBB16_91
	cmp	w8, #1
	b.eq	.LBB16_93
	cmp	w8, #5
	b.eq	.LBB16_93
	cmp	w8, #2
	b.ne	.LBB16_222
	b	.LBB16_221
.LBB16_25:
	ldr	w8, [x19, #472]
	cmp	w8, #1
	b.eq	.LBB16_78
	cmp	w8, #5
	b.eq	.LBB16_78
	cmp	w8, #2
	b.ne	.LBB16_115
	b	.LBB16_114
.LBB16_28:
	mov	w20, #1
.LBB16_29:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_49
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_354
.LBB16_31:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_32:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_47
	cbnz	x0, .LBB16_48
	bl	schedule
	b	.LBB16_32
.LBB16_35:
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
	ldr	w8, [x19, #320]
	cbz	w8, .LBB16_97
.LBB16_36:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_3
.LBB16_37:
	ldur	x20, [x29, #-48]
	ldr	w8, [x20]
	cmp	w8, #1
	b.ne	.LBB16_207
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
	ldr	w8, [x20]
	cbz	w8, .LBB16_42
.LBB16_39:
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_42
	cbnz	x0, .LBB16_43
	bl	schedule
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_39
.LBB16_42:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_43:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_3
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_3
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_209
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_20
	b	.LBB16_210
.LBB16_47:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_48:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_355
.LBB16_49:
	ldr	w8, [x19, #472]
	sub	w9, w8, #3
	cmp	w9, #2
	b.hs	.LBB16_51
	ldr	x8, [x19, #440]
	str	wzr, [x19, #784]
	str	wzr, [x19, #796]
	ldr	x1, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
	b	.LBB16_55
.LBB16_51:
	cmp	w8, #1
	b.ne	.LBB16_55
	ldr	w2, [x19, #304]
	cbz	w2, .LBB16_55
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_413
.LBB16_54:
	mov	w8, #21
	ldr	x9, [sp, #48]
	str	wzr, [x19, #304]
	mov	w20, #2
	str	w8, [x9, #40]
	ldr	w9, [x19, #788]
	b	.LBB16_82
.LBB16_55:
	ldr	x8, [sp, #48]
	ldr	w8, [x8, #40]
	sub	w9, w8, #6
	cmp	w9, #6
	b.lo	.LBB16_57
	sub	w9, w8, #2
	cmp	w9, #1
	b.hi	.LBB16_69
.LBB16_57:
	ldr	w9, [x19, #260]
	add	w10, w9, #7
	cmp	w9, #0
	csel	w10, w10, w9, lt
	cmp	w9, #8
	b.lt	.LBB16_76
	ldr	x9, [x19, #440]
	asr	w10, w10, #3
	ldr	x11, [sp, #48]
	ldr	x9, [x9, #16]
	ldr	x11, [x11, #16]
	b	.LBB16_60
.LBB16_59:
	subs	w10, w10, #1
	b.eq	.LBB16_76
.LBB16_60:
	ldr	x12, [x11], #8
	ldr	x13, [x9], #8
	eor	x14, x13, x12
	tst	x14, #0xf8f8f8f8f8f8f8f8
	b.eq	.LBB16_59
	and	w14, w12, #0xf8
	and	w15, w13, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_69
	ubfx	x14, x12, #8, #24
	ubfx	x15, x13, #8, #24
	and	w14, w14, #0xf8
	and	w15, w15, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_69
	ubfx	x14, x12, #16, #16
	ubfx	x15, x13, #16, #16
	and	w14, w14, #0xf8
	and	w15, w15, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_69
	and	x14, x12, #0xf8f8f8f8f8f8f8f8
	and	x15, x13, #0xf8f8f8f8f8f8f8f8
	ubfx	x16, x14, #24, #8
	ubfx	x17, x15, #24, #8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_69
	lsr	x16, x12, #32
	lsr	x17, x13, #32
	and	w16, w16, #0xf8
	and	w17, w17, #0xf8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_69
	lsr	x16, x12, #40
	lsr	x17, x13, #40
	and	w16, w16, #0xf8
	and	w17, w17, #0xf8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_69
	lsr	x12, x12, #48
	lsr	x13, x13, #48
	and	w12, w12, #0xf8
	and	w13, w13, #0xf8
	subs	w12, w12, w13
	cneg	w12, w12, mi
	cmp	w12, #8
	b.hi	.LBB16_69
	lsr	x12, x14, #56
	lsr	x13, x15, #56
	subs	w12, w12, w13
	cneg	w12, w12, mi
	cmp	w12, #8
	b.ls	.LBB16_59
.LBB16_69:
	ldr	w9, [x19, #788]
	cbz	w9, .LBB16_82
	sub	w10, w8, #12
	cmp	w10, #2
	b.hi	.LBB16_82
	ldr	x8, [x19, #440]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #3
	b.lo	.LBB16_74
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_424
.LBB16_73:
	ldr	x0, [x19, #368]
	mov	w1, wzr
	ldrsw	x2, [x19, #260]
	bl	memset
.LBB16_74:
	ldr	w8, [x19, #784]
	cbz	w8, .LBB16_237
	ldr	x8, [x19, #440]
	ldr	x1, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x0, [x8, #16]
	b	.LBB16_240
.LBB16_76:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_391
.LBB16_77:
	ldr	x8, [sp, #48]
	str	x8, [x19, #448]
	b	.LBB16_432
.LBB16_78:
	ldr	w2, [x19, #304]
	cbz	w2, .LBB16_107
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #0
	b.gt	.LBB16_405
	str	wzr, [x19, #772]
.LBB16_81:
	adrp	x8, jiffies
	ldr	x21, [x8, :lo12:jiffies]
	ldr	w8, [x19, #304]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	add	x1, x0, x21
	ldr	x0, [sp, #8]
	bl	mod_timer
	str	wzr, [x19, #304]
	b	.LBB16_115
.LBB16_82:
	cbz	w9, .LBB16_244
	ldr	w9, [x19, #784]
	cbz	w9, .LBB16_244
	cmp	w8, #21
	b.eq	.LBB16_244
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_434
.LBB16_86:
	ldr	w8, [x19, #260]
	cmp	w8, #1
	b.lt	.LBB16_243
	ldr	x10, [x19, #448]
	ldr	x11, [sp, #48]
	ldr	x9, [x19, #384]
	ldr	x10, [x10, #16]
	ldr	x11, [x11, #16]
	b	.LBB16_89
.LBB16_88:
	subs	x8, x8, #1
	add	x10, x10, #1
	add	x11, x11, #1
	add	x9, x9, #1
	b.eq	.LBB16_243
.LBB16_89:
	ldrb	w12, [x9]
	cbz	w12, .LBB16_88
	ldrb	w12, [x11]
	mvn	w12, w12
	and	w12, w12, #0xf0
	strb	w12, [x10]
	b	.LBB16_88
.LBB16_91:
	cmp	w8, #4
	b.ne	.LBB16_13
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_222
	b	.LBB16_13
.LBB16_93:
	ldr	w2, [x19, #304]
	cbz	w2, .LBB16_214
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_412
.LBB16_95:
	str	wzr, [x19, #304]
	b	.LBB16_222
.LBB16_96:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.76
	add	x1, x1, :lo12:.L.str.76
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_7
.LBB16_97:
	mov	w8, #13
.LBB16_98:
	cbnz	x0, .LBB16_37
	mov	x0, x8
	bl	schedule_timeout
	mov	x20, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x19, #320]
	cmp	x20, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x20, xzr, eq
	cbnz	w9, .LBB16_36
	cbnz	x8, .LBB16_98
	b	.LBB16_36
.LBB16_101:
	mov	w9, #1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.eq	.LBB16_438
	ldr	w8, [x19, #472]
	ldr	x9, [sp, #48]
	sub	w8, w8, #1
	cmp	w8, #4
	str	x9, [x19, #448]
	b.hi	.LBB16_362
	adrp	x11, .LJTI16_0
	add	x11, x11, :lo12:.LJTI16_0
	adr	x9, .LBB16_104
	ldrh	w10, [x11, x8, lsl #1]
	add	x9, x9, x10, lsl #2
	br	x9
.LBB16_104:
	ldr	w2, [x19, #304]
	cbz	w2, .LBB16_383
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_441
.LBB16_106:
	str	wzr, [x19, #304]
	b	.LBB16_395
.LBB16_107:
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_114
	ldr	w8, [x19, #784]
	cbz	w8, .LBB16_114
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_439
.LBB16_110:
	ldr	w8, [x19, #260]
	ldr	x1, [x19, #384]
	cmp	w8, #1
	b.lt	.LBB16_398
	ldr	x9, [x19, #448]
	ldr	x9, [x9, #16]
.LBB16_112:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_112
	ldr	x1, [x19, #384]
	ldr	w8, [x19, #260]
	b	.LBB16_399
.LBB16_114:
	ldr	x8, [x19, #440]
	ldr	x0, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_115:
	mov	w8, #4
	str	x20, [x19, #464]
	ldr	w9, [x19, #316]
	str	w8, [x19, #472]
	ldp	w10, w8, [x20, #48]
	ldp	w12, w14, [x20, #56]
	add	w11, w10, #7
	cmp	w10, #0
	add	w13, w12, #7
	csel	w11, w11, w10, lt
	cmp	w12, #0
	add	w10, w9, #7
	csel	w12, w13, w12, lt
	cmp	w9, #0
	asr	w15, w12, #3
	csel	w13, w10, w9, lt
	ldr	w10, [x19, #312]
	add	w9, w15, #1
	asr	w12, w13, #3
	sub	w16, w12, #1
	cmp	w9, w12
	csinc	w9, w16, w15, ge
	sub	w15, w10, #1
	cmp	w14, w10
	csel	w10, w14, w15, lt
	cmp	w8, w10
	b.le	.LBB16_120
.LBB16_116:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_205
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	ldr	x0, [x19, #456]
	cbz	x0, .LBB16_119
.LBB16_118:
	bl	ebc_buf_release
.LBB16_119:
	ldr	x8, [x19, #464]
	str	x8, [x19, #456]
	b	.LBB16_3
.LBB16_120:
	ldr	x14, [x19, #448]
	mul	w12, w12, w8
	ldp	x16, x15, [x19, #392]
	asr	w11, w11, #3
	sbfx	x3, x13, #3, #29
	ldr	x17, [x14, #16]
	sxtw	x14, w12
	ldp	x2, x12, [x19, #368]
	lsl	x1, x14, #3
	ldr	x0, [x20, #16]
	add	x13, x15, x1
	add	x14, x16, x1
	add	x15, x17, x1
	add	x17, x2, x1
	lsl	x2, x3, #3
	add	x16, x0, x1
	add	w1, w9, #1
	sxtw	x0, w11
	sxtw	x1, w1
	str	x0, [sp, #48]
	b	.LBB16_122
.LBB16_121:
	add	w8, w8, #1
	add	x13, x13, x2
	add	x14, x14, x2
	add	x15, x15, x2
	add	x16, x16, x2
	add	x17, x17, x2
	cmp	w8, w10
	b.gt	.LBB16_116
.LBB16_122:
	cmp	w11, w9
	b.gt	.LBB16_121
	ldr	x3, [sp, #48]
	b	.LBB16_127
.LBB16_124:
	and	x5, x5, #0xffffffffffffff
	lsr	x0, x21, #60
	cmp	x0, #15
	b.lo	.LBB16_165
	lsr	x0, x6, #59
	orr	x21, x5, #0x100000000000000
	cmp	x0, #29
	orr	x20, x20, #0xf800000000000000
	csel	x5, x21, x5, hi
.LBB16_126:
	bic	x0, x7, x20
	and	x6, x20, x6
	add	x3, x3, #1
	orr	x0, x0, x6
	cmp	x1, x3
	str	x5, [x13, x4]
	str	x0, [x17, x4]
	b.eq	.LBB16_121
.LBB16_127:
	lsl	x4, x3, #3
	ldr	x27, [x14, x4]
	ldr	x7, [x17, x4]
	ldr	x30, [x12, x4]
	ldr	x21, [x16, x4]
	ldr	x6, [x15, x4]
	tst	x27, #0xff
	ldr	x5, [x13, x4]
	b.eq	.LBB16_130
	mov	x20, xzr
	mvn	w23, w30
	tst	x23, #0xf0
	b.ne	.LBB16_132
	and	x23, x6, #0xf0
	cmp	x23, #240
	b.ne	.LBB16_132
.LBB16_130:
	and	x5, x5, #0xffffffffffffff00
	and	x27, x27, #0xffffffffffffff00
	and	x23, x21, #0xf0
	cmp	w23, #240
	b.ne	.LBB16_168
	mvn	w20, w6
	tst	x20, #0xf0
	cset	w20, eq
	orr	x5, x5, x20
	mov	w20, #248
.LBB16_132:
	tst	x27, #0xff00
	b.eq	.LBB16_135
	mvn	w23, w30
	tst	x23, #0xf000
	b.ne	.LBB16_137
	and	x23, x6, #0xf000
	cmp	x23, #15, lsl #12
	b.ne	.LBB16_137
.LBB16_135:
	and	x5, x5, #0xffffffffffff00ff
	and	x27, x27, #0xffffffffffff00ff
	and	x23, x21, #0xf000
	cmp	w23, #15, lsl #12
	b.ne	.LBB16_170
	mvn	w23, w6
	orr	x0, x5, #0x100
	tst	x23, #0xf000
	orr	x20, x20, #0xf800
	csel	x5, x0, x5, eq
.LBB16_137:
	tst	x27, #0xff0000
	b.eq	.LBB16_140
	mvn	w0, w30
	tst	x0, #0xf00000
	b.ne	.LBB16_142
	and	x0, x6, #0xf00000
	cmp	x0, #3840, lsl #12
	b.ne	.LBB16_142
.LBB16_140:
	and	x5, x5, #0xffffffffff00ffff
	and	x27, x27, #0xffffffffff00ffff
	and	x23, x21, #0xf00000
	cmp	x23, #3840, lsl #12
	b.ne	.LBB16_172
	mvn	w0, w6
	orr	x23, x5, #0x10000
	tst	x0, #0xf00000
	orr	x20, x20, #0xf80000
	csel	x5, x23, x5, eq
.LBB16_142:
	tst	x27, #0xff000000
	b.eq	.LBB16_145
	mvn	w0, w30
	tst	x0, #0xf0000000
	b.ne	.LBB16_147
	and	x0, x6, #0xf0000000
	cmp	x0, x22
	b.ne	.LBB16_147
.LBB16_145:
	and	x5, x5, #0xffffffff00ffffff
	and	x27, x27, #0xffffffff00ffffff
	and	x23, x21, #0xf0000000
	cmp	w23, w22
	b.ne	.LBB16_174
	mvn	w0, w6
	orr	x23, x5, #0x1000000
	tst	x0, #0xf0000000
	orr	x20, x20, #0xf8000000
	csel	x5, x23, x5, eq
.LBB16_147:
	tst	x27, #0xff00000000
	b.eq	.LBB16_150
	mvn	x0, x30
	tst	x0, #0xf000000000
	b.ne	.LBB16_152
	and	x0, x6, #0xf000000000
	cmp	x0, x24
	b.ne	.LBB16_152
.LBB16_150:
	and	x5, x5, #0xffffff00ffffffff
	and	x27, x27, #0xffffff00ffffffff
	and	x23, x21, #0xf000000000
	cmp	x23, x24
	b.ne	.LBB16_176
	orr	x0, x5, #0x100000000
	bics	xzr, x24, x6
	orr	x20, x20, #0xf800000000
	csel	x5, x0, x5, eq
.LBB16_152:
	tst	x27, #0xff0000000000
	b.eq	.LBB16_155
	mvn	x0, x30
	tst	x0, #0xf00000000000
	b.ne	.LBB16_157
	and	x0, x6, #0xf00000000000
	cmp	x0, x25
	b.ne	.LBB16_157
.LBB16_155:
	and	x5, x5, #0xffff00ffffffffff
	and	x27, x27, #0xffff00ffffffffff
	and	x23, x21, #0xf00000000000
	cmp	x23, x25
	b.ne	.LBB16_178
	orr	x0, x5, #0x10000000000
	bics	xzr, x25, x6
	orr	x20, x20, #0xf80000000000
	csel	x5, x0, x5, eq
.LBB16_157:
	tst	x27, #0xff000000000000
	b.eq	.LBB16_160
	mvn	x0, x30
	tst	x0, #0xf0000000000000
	b.ne	.LBB16_162
	and	x0, x6, #0xf0000000000000
	cmp	x0, x26
	b.ne	.LBB16_162
.LBB16_160:
	and	x5, x5, #0xff00ffffffffffff
	and	x27, x27, #0xff00ffffffffffff
	and	x23, x21, #0xf0000000000000
	cmp	x23, x26
	b.ne	.LBB16_180
	orr	x0, x5, #0x1000000000000
	bics	xzr, x26, x6
	orr	x20, x20, #0xf8000000000000
	csel	x5, x0, x5, eq
.LBB16_162:
	lsr	x0, x27, #56
	cbz	x0, .LBB16_124
	lsr	x0, x30, #60
	cmp	x0, #15
	b.lo	.LBB16_126
	lsr	x0, x6, #60
	cmp	x0, #15
	b.hs	.LBB16_124
	b	.LBB16_126
.LBB16_165:
	and	x21, x21, #0xf000000000000000
	mov	x0, #-2305843009213693952
	cmp	x21, x0
	b.eq	.LBB16_196
	cbnz	x21, .LBB16_197
	and	x7, x7, #0xffffffffffffff
	orr	x5, x5, #0x100000000000000
	b	.LBB16_126
.LBB16_168:
	cbnz	w23, .LBB16_182
	mov	x20, xzr
	and	x7, x7, #0xffffffffffffff00
	orr	x5, x5, #0x1
	b	.LBB16_132
.LBB16_170:
	cbnz	w23, .LBB16_184
	and	x7, x7, #0xffffffffffff00ff
	orr	x5, x5, #0x100
	b	.LBB16_137
.LBB16_172:
	cbnz	x23, .LBB16_186
	and	x7, x7, #0xffffffffff00ffff
	orr	x5, x5, #0x10000
	b	.LBB16_142
.LBB16_174:
	cbnz	w23, .LBB16_188
	and	x7, x7, #0xffffffff00ffffff
	orr	x5, x5, #0x1000000
	b	.LBB16_147
.LBB16_176:
	cbnz	x23, .LBB16_190
	and	x7, x7, #0xffffff00ffffffff
	orr	x5, x5, #0x100000000
	b	.LBB16_152
.LBB16_178:
	cbnz	x23, .LBB16_192
	and	x7, x7, #0xffff00ffffffffff
	orr	x5, x5, #0x10000000000
	b	.LBB16_157
.LBB16_180:
	cbnz	x23, .LBB16_194
	and	x7, x7, #0xff00ffffffffffff
	orr	x5, x5, #0x1000000000000
	b	.LBB16_162
.LBB16_182:
	cmp	w23, #224
	b.ne	.LBB16_198
	and	x7, x7, #0xffffffffffffff00
	mov	x20, xzr
	orr	x7, x7, #0xf0
	orr	x5, x5, #0x1
	b	.LBB16_132
.LBB16_184:
	and	x0, x7, #0xffffffffffff00ff
	cmp	w23, #14, lsl #12
	b.ne	.LBB16_199
	orr	x7, x0, #0xf000
	orr	x5, x5, #0x100
	b	.LBB16_137
.LBB16_186:
	and	x0, x7, #0xffffffffff00ffff
	cmp	x23, #3584, lsl #12
	b.ne	.LBB16_200
	orr	x7, x0, #0xf00000
	orr	x5, x5, #0x10000
	b	.LBB16_142
.LBB16_188:
	mov	w0, #-536870912
	cmp	w23, w0
	b.ne	.LBB16_201
	and	x0, x7, #0xffffffff00ffffff
	orr	x5, x5, #0x1000000
	orr	x7, x0, #0xf0000000
	b	.LBB16_147
.LBB16_190:
	mov	x0, #962072674304
	cmp	x23, x0
	b.ne	.LBB16_202
	and	x0, x7, #0xffffff00ffffffff
	orr	x5, x5, #0x100000000
	orr	x7, x0, #0xf000000000
	b	.LBB16_152
.LBB16_192:
	mov	x0, #246290604621824
	cmp	x23, x0
	b.ne	.LBB16_203
	and	x0, x7, #0xffff00ffffffffff
	orr	x5, x5, #0x10000000000
	orr	x7, x0, #0xf00000000000
	b	.LBB16_157
.LBB16_194:
	mov	x0, #63050394783186944
	cmp	x23, x0
	b.ne	.LBB16_204
	and	x0, x7, #0xff00ffffffffffff
	orr	x5, x5, #0x1000000000000
	orr	x7, x0, #0xf0000000000000
	b	.LBB16_162
.LBB16_196:
	mov	x0, #-1152921504606846976
	orr	x5, x5, #0x100000000000000
	bfxil	x0, x7, #0, #56
	mov	x7, x0
	b	.LBB16_126
.LBB16_197:
	and	x0, x7, #0xffffffffffffff
	orr	x7, x0, x21
	b	.LBB16_126
.LBB16_198:
	and	x7, x7, #0xffffffffffffff00
	mov	x20, xzr
	orr	x7, x23, x7
	b	.LBB16_132
.LBB16_199:
	orr	x7, x0, x23
	b	.LBB16_137
.LBB16_200:
	orr	x7, x0, x23
	b	.LBB16_142
.LBB16_201:
	and	x0, x7, #0xffffffff00ffffff
	orr	x7, x0, x23
	b	.LBB16_147
.LBB16_202:
	and	x0, x7, #0xffffff00ffffffff
	orr	x7, x0, x23
	b	.LBB16_152
.LBB16_203:
	and	x0, x7, #0xffff00ffffffffff
	orr	x7, x0, x23
	b	.LBB16_157
.LBB16_204:
	and	x0, x7, #0xff00ffffffffffff
	orr	x7, x0, x23
	b	.LBB16_162
.LBB16_205:
	mov	x0, x19
	mov	w1, #1
	mov	w2, wzr
	str	w28, [x19, #284]
	bl	ebc_lut_update
	ldr	w9, [x19, #812]
	ldr	w8, [x19, #336]
	cmp	w9, #1
	strh	w8, [x19, #288]
	b.ge	.LBB16_401
.LBB16_206:
	mov	x0, x19
	bl	ebc_frame_start
	ldr	x0, [x19, #456]
	cbnz	x0, .LBB16_118
	b	.LBB16_119
.LBB16_207:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_3
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_3
.LBB16_209:
	mov	x0, x19
	mov	w1, wzr
	bl	ebc_power_set
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_20
.LBB16_210:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_211:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_411
	cbnz	x0, .LBB16_20
	bl	schedule
	b	.LBB16_211
.LBB16_214:
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_221
	ldr	w8, [x19, #784]
	cbz	w8, .LBB16_221
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_442
.LBB16_217:
	ldr	w8, [x19, #260]
	ldr	x1, [x19, #384]
	cmp	w8, #1
	b.lt	.LBB16_402
	ldr	x9, [x19, #448]
	ldr	x9, [x9, #16]
.LBB16_219:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_219
	ldr	x1, [x19, #384]
	ldr	w8, [x19, #260]
	b	.LBB16_403
.LBB16_221:
	ldr	x8, [x19, #440]
	ldr	x0, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_222:
	mov	w8, #4
	ldr	x20, [sp, #48]
	ldp	x0, x1, [x19, #368]
	ldp	x4, x5, [x19, #392]
	str	w8, [x19, #472]
	str	x20, [x19, #448]
	ldr	x2, [x19, #248]
	ldr	x3, [x20, #16]
	ldr	x6, [sp, #24]
	bl	refresh_new_image
	ldr	w8, [x19, #284]
	cbz	w8, .LBB16_226
	ldr	x8, [x19, #440]
	ldr	w1, [x20, #40]
	ldr	w8, [x8, #40]
	cmp	w1, w8
	b.ne	.LBB16_231
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_349
	ldr	x8, [x19, #448]
	adrp	x1, .L.str.83
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.83
	ldrb	w3, [x19, #288]
	ldr	w2, [x8, #40]
	b	.LBB16_233
.LBB16_226:
	str	w28, [x19, #284]
	mov	x0, x19
	ldr	w1, [x20, #40]
	mov	w2, wzr
	bl	ebc_lut_update
	ldr	w9, [x19, #812]
	ldr	w8, [x19, #336]
	cmp	w9, #1
	strh	w8, [x19, #288]
	b.ge	.LBB16_404
.LBB16_227:
	ldp	x4, x0, [x19, #400]
	ldp	x1, x2, [x19, #368]
	ldr	w8, [x19, #204]
	ldr	x3, [x19, #392]
	cbz	w8, .LBB16_234
	ldr	x5, [sp, #24]
	mov	w6, #1
	bl	get_overlay_image2
	ldr	w8, [x19, #292]
	cbz	w8, .LBB16_235
.LBB16_229:
	ldp	x1, x2, [x19, #368]
	ldp	x3, x4, [x19, #392]
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #416]
	cbz	w8, .LBB16_347
	ldr	x20, [sp, #24]
	mov	w6, #1
	mov	x5, x20
	bl	get_overlay_image2
	b	.LBB16_348
.LBB16_231:
	mov	x0, x19
	mov	w2, wzr
	bl	ebc_lut_update
	ldr	w9, [x19, #812]
	ldr	w8, [x19, #336]
	cmp	w9, #1
	strb	w8, [x19, #288]
	b.lt	.LBB16_349
	ldr	x9, [x19, #448]
	adrp	x1, .L.str.82
	ldr	x0, [x19, #328]
	and	w3, w8, #0xff
	add	x1, x1, :lo12:.L.str.82
	ldr	w2, [x9, #40]
.LBB16_233:
	bl	_dev_info
	b	.LBB16_349
.LBB16_234:
	ldr	x5, [sp, #24]
	mov	w6, #1
	bl	get_overlay_image
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB16_229
.LBB16_235:
	ldr	w8, [x19, #812]
	str	wzr, [x19, #284]
	str	w28, [x19, #772]
	cmp	w8, #1
	b.lt	.LBB16_349
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.111
	adrp	x2, .L__func__.ebc_overlay_bg_frame_start
	add	x1, x1, :lo12:.L.str.111
	add	x2, x2, :lo12:.L__func__.ebc_overlay_bg_frame_start
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_349
.LBB16_237:
	ldr	w8, [x19, #796]
	cbz	w8, .LBB16_377
	ldr	x8, [x19, #440]
	ldr	x1, [x8, #16]
	ldr	w8, [x19, #260]
.LBB16_239:
	ldr	x0, [x19, #376]
	sxtw	x2, w8
.LBB16_240:
	bl	memcpy
	ldr	w8, [x19, #796]
	cbnz	w8, .LBB16_242
	ldr	x0, [x19, #384]
	mov	w1, wzr
	ldrsw	x2, [x19, #260]
	bl	memset
.LBB16_242:
	mov	w20, #5
	str	w28, [x19, #796]
	b	.LBB16_245
.LBB16_243:
	mov	w8, #9
	ldr	x9, [sp, #48]
	str	w8, [x9, #40]
.LBB16_244:
	str	wzr, [x19, #796]
	str	wzr, [x19, #784]
.LBB16_245:
	ldr	x8, [sp, #48]
	cmp	w20, #2
	cset	w2, eq
	mov	x0, x19
	str	w20, [sp, #44]
	str	x8, [x19, #448]
	mov	x20, x8
	ldr	w1, [x8, #40]
	bl	ebc_lut_update
	ldr	w8, [x20, #40]
	cmp	w8, #12
	b.eq	.LBB16_250
	cmp	w8, #14
	b.eq	.LBB16_250
	cmp	w8, #13
	b.ne	.LBB16_252
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_252
	ldrb	w8, [x19, #336]
	mov	w9, #2
	lsr	w8, w8, #1
	strb	w9, [x19, #288]
	strb	w8, [x19, #880]
	b	.LBB16_255
.LBB16_250:
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_252
	ldrb	w8, [x19, #336]
	lsr	w8, w8, #1
	strb	w8, [x19, #288]
	mov	w8, #2
	strb	w8, [x19, #880]
	b	.LBB16_255
.LBB16_252:
	ldr	w8, [x19, #336]
	strb	w8, [x19, #288]
	b	.LBB16_255
.LBB16_253:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #0
	b.gt	.LBB16_311
.LBB16_254:
	ldr	x8, [x19, #440]
	ldr	x1, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
.LBB16_255:
	ldr	x8, [sp, #56]
	ldr	w9, [sp, #44]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_309
.LBB16_256:
	mov	x0, x19
	str	w28, [x19, #284]
	str	w9, [x19, #472]
	bl	ebc_frame_start
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #32]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_283
	ldr	x8, [sp, #48]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_283
	ldr	w8, [x19, #796]
	cbz	w8, .LBB16_283
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_314
.LBB16_260:
	ldr	w8, [x19, #792]
	ldrb	w10, [x19, #288]
	ldr	w9, [x19, #312]
	cmp	w8, #0
	csel	w10, wzr, w10, eq
	cmp	w9, #1
	b.lt	.LBB16_281
	ldr	x16, [x19, #448]
	mov	w11, wzr
	ldrsb	w15, [x19, #880]
	mov	w12, wzr
	ldrsb	w17, [x19, #336]
	mov	w14, wzr
	ldp	x2, x0, [x19, #376]
	neg	w1, w15
	ldr	w13, [x19, #316]
	neg	w3, w17
	ldr	x16, [x16, #16]
	ldr	x4, [x19, #368]
	b	.LBB16_263
.LBB16_262:
	add	w12, w12, #1
	add	w11, w11, w13
	cmp	w12, w9
	b.eq	.LBB16_282
.LBB16_263:
	cmp	w13, #1
	b.lt	.LBB16_262
	mov	w6, w11
	mov	x5, x13
	b	.LBB16_266
.LBB16_265:
	subs	x5, x5, #1
	add	w6, w6, #1
	b.eq	.LBB16_262
.LBB16_266:
	sxtw	x6, w6
	ldrb	w27, [x16, x6]
	ldrb	w30, [x2, x6]
	cmp	w30, w27
	b.eq	.LBB16_265
	cbz	w8, .LBB16_269
	ldrb	w7, [x4, x6]
	b	.LBB16_270
.LBB16_269:
	mov	w7, wzr
.LBB16_270:
	ldrsb	w21, [x0, x6]
	and	w23, w30, #0xf
	cmp	w27, #240
	b.ne	.LBB16_275
	cmp	w21, #0
	add	w7, w7, w10
	csinc	w21, w28, w21, lt
	sxtb	w21, w21
	cmp	w21, w15
	b.ge	.LBB16_279
	sxtb	w20, w7
	cmp	w17, w20
	b.lt	.LBB16_279
	cbz	w23, .LBB16_278
.LBB16_274:
	mov	w14, #1
	strb	w21, [x0, x6]
	cbnz	w8, .LBB16_280
	b	.LBB16_265
.LBB16_275:
	sub	w20, w21, #1
	cmp	w21, #0
	csinv	w21, w20, wzr, le
	sub	w7, w7, w10
	cmp	w1, w21, sxtb
	b.ge	.LBB16_279
	sxtb	w20, w7
	cmp	w20, w3
	b.lt	.LBB16_279
	cbnz	w23, .LBB16_274
.LBB16_278:
	orr	w27, w30, #0x1
	mov	w14, #1
.LBB16_279:
	strb	w27, [x2, x6]
	strb	w21, [x0, x6]
	cbz	w8, .LBB16_265
.LBB16_280:
	strb	w7, [x4, x6]
	b	.LBB16_265
.LBB16_281:
	mov	w14, wzr
.LBB16_282:
	str	w14, [x19, #784]
.LBB16_283:
	ldur	x8, [x29, #-48]
	ldr	w9, [x8]
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cbz	w9, .LBB16_290
	cmp	w8, #1
	b.ge	.LBB16_310
.LBB16_285:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_286:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_289
	cbnz	x0, .LBB16_291
	bl	schedule
	b	.LBB16_286
.LBB16_289:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB16_291
.LBB16_290:
	tbz	w8, #31, .LBB16_313
.LBB16_291:
	ldr	w8, [x19, #304]
	cbnz	w8, .LBB16_315
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_430
	ldr	x8, [sp, #48]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_430
	ldr	w8, [x19, #784]
	cbz	w8, .LBB16_321
	bl	ebc_get_dsp_list_enum_num
	cbz	w0, .LBB16_298
	bl	ebc_dsp_buf_next_mode
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_253
	sub	w8, w0, #12
	cmp	w8, #3
	b.hs	.LBB16_253
	b	.LBB16_430
.LBB16_298:
	sub	x0, x29, #40
	mov	w1, wzr
	str	wzr, [x19, #320]
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x19, #320]
	cbz	w8, .LBB16_305
.LBB16_299:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_300:
	bl	ebc_get_dsp_list_enum_num
	cbz	w0, .LBB16_303
	bl	ebc_dsp_buf_next_mode
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_303
	sub	w8, w0, #12
	cmp	w8, #3
	b.lo	.LBB16_430
.LBB16_303:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_254
	adrp	x1, .L.str.97
	add	x1, x1, :lo12:.L.str.97
	b	.LBB16_312
.LBB16_305:
	mov	w8, #3
.LBB16_306:
	cbnz	x0, .LBB16_300
	mov	x0, x8
	bl	schedule_timeout
	mov	x21, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x19, #320]
	cmp	x21, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x21, xzr, eq
	cbnz	w9, .LBB16_299
	cbnz	x8, .LBB16_306
	b	.LBB16_299
.LBB16_309:
	ldr	x8, [x19, #448]
	adrp	x1, .L.str.92
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.92
	ldrb	w3, [x19, #288]
	ldr	w2, [x8, #40]
	ldrb	w4, [x19, #336]
	bl	_dev_info
	ldr	w9, [sp, #44]
	b	.LBB16_256
.LBB16_310:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_285
	b	.LBB16_291
.LBB16_311:
	adrp	x1, .L.str.98
	add	x1, x1, :lo12:.L.str.98
.LBB16_312:
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_254
.LBB16_313:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.95
	add	x1, x1, :lo12:.L.str.95
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_291
.LBB16_314:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.93
	add	x1, x1, :lo12:.L.str.93
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_260
.LBB16_315:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_414
.LBB16_316:
	ldr	x8, [x19, #440]
	ldr	x0, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x0, [x19, #392]
	mov	w1, wzr
	ldrsw	x2, [x19, #260]
	bl	memset
	ldr	x0, [x19, #400]
	mov	w1, wzr
	ldrsw	x2, [x19, #260]
	bl	memset
	ldr	w8, [x19, #260]
	cmp	w8, #1
	b.lt	.LBB16_430
	ldrb	w11, [x19, #288]
	ldrb	w12, [x19, #304]
	ldr	x9, [x19, #392]
	sub	w11, w11, w12
	ldp	x12, x10, [x19, #368]
	b	.LBB16_319
.LBB16_318:
	add	x9, x9, #1
	add	x10, x10, #1
	add	x12, x12, #1
	subs	w8, w8, #1
	b.eq	.LBB16_430
.LBB16_319:
	ldrb	w13, [x10]
	ldrb	w14, [x12]
	cmp	w13, w14
	b.eq	.LBB16_318
	strb	w11, [x9]
	b	.LBB16_318
.LBB16_321:
	ldr	w8, [x19, #796]
	cbz	w8, .LBB16_430
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_430
	sub	x0, x29, #40
	mov	w1, wzr
	str	wzr, [x19, #320]
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x19, #320]
	cbz	w8, .LBB16_407
.LBB16_324:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_325:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_430
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_447
.LBB16_327:
	ldr	w8, [x19, #312]
	ldr	x1, [x19, #376]
	sub	w8, w8, #1
	cmp	w8, #1
	b.le	.LBB16_417
	ldr	w10, [x19, #316]
	mov	x9, xzr
	ldrsb	w11, [x19, #336]
	mov	w2, #1
	ldr	x12, [x19, #384]
	sub	w14, w10, #1
	lsl	w0, w10, #1
	ldr	x13, [x19, #368]
	neg	w15, w11
	ldr	w16, [x19, #792]
	sub	x17, x14, #1
	orr	x0, x0, #0x1
	mov	x3, x10
	b	.LBB16_330
.LBB16_329:
	add	w2, w2, #1
	add	x3, x3, x10
	add	x0, x0, x10
	add	x9, x9, x10
	cmp	w2, w8
	b.eq	.LBB16_416
.LBB16_330:
	cmp	w14, #2
	b.lt	.LBB16_329
	mov	x4, xzr
	b	.LBB16_335
.LBB16_332:
	mov	w6, #248
.LBB16_333:
	strb	w6, [x1, x5]
.LBB16_334:
	add	x4, x4, #1
	cmp	x17, x4
	b.eq	.LBB16_329
.LBB16_335:
	add	w5, w3, w4
	add	w5, w5, #1
	sxtw	x5, w5
	cbz	w16, .LBB16_339
	ldrb	w6, [x13, x5]
	ldrb	w7, [x12, x5]
	cbz	w7, .LBB16_340
.LBB16_337:
	sxtb	w6, w6
	cmp	w11, w6
	b.le	.LBB16_334
	cmp	w6, w15
	b.gt	.LBB16_332
	b	.LBB16_334
.LBB16_339:
	mov	w6, wzr
	ldrb	w7, [x12, x5]
	cbnz	w7, .LBB16_337
.LBB16_340:
	add	w7, w9, w4
	add	w7, w7, #1
	ldrb	w7, [x12, w7, sxtw]
	cbnz	w7, .LBB16_344
	add	w7, w0, w4
	ldrb	w7, [x12, w7, sxtw]
	cbnz	w7, .LBB16_344
	add	w7, w3, w4
	ldrb	w7, [x12, w7, sxtw]
	cbnz	w7, .LBB16_344
	add	w7, w3, w4
	add	w7, w7, #2
	ldrb	w7, [x12, w7, sxtw]
	cbz	w7, .LBB16_334
.LBB16_344:
	sxtb	w6, w6
	cmp	w11, w6
	b.le	.LBB16_334
	cmp	w6, w15
	b.le	.LBB16_334
	mov	w6, #232
	b	.LBB16_333
.LBB16_347:
	ldr	x20, [sp, #24]
	mov	w6, #1
	mov	x5, x20
	bl	get_overlay_image
.LBB16_348:
	mov	x1, x20
	ldr	x0, [sp]
	str	wzr, [x19, #112]
	bl	flip
.LBB16_349:
	ldr	x8, [x19, #448]
	ldr	w8, [x8, #40]
	cmp	w8, #23
	b.hi	.LBB16_351
	mov	w9, #1
	lsl	w8, w28, w8
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.ne	.LBB16_432
.LBB16_351:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_432
	ldr	w8, [x19, #812]
	str	wzr, [x19, #772]
	cmp	w8, #1
	b.ge	.LBB16_415
.LBB16_353:
	adrp	x8, jiffies
	ldr	x20, [x8, :lo12:jiffies]
	ldrb	w8, [x19, #288]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	add	x1, x0, x20
	ldr	x0, [sp, #8]
	b	.LBB16_431
.LBB16_354:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_31
	b	.LBB16_48
.LBB16_355:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_49
.LBB16_356:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_362
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_444
.LBB16_358:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_359:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_392
	cbnz	x0, .LBB16_393
	bl	schedule
	b	.LBB16_359
.LBB16_362:
	ldr	x8, [x19, #440]
	ldr	x9, [sp, #48]
	ldr	w8, [x8, #40]
	ldr	w9, [x9, #40]
	cmp	w9, w8
	b.eq	.LBB16_369
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_369
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_446
.LBB16_365:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_366:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_392
	cbnz	x0, .LBB16_393
	bl	schedule
	b	.LBB16_366
.LBB16_369:
	ldr	w8, [x19, #316]
	mov	w3, #255
	ldr	w9, [x19, #312]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w13, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB16_395
	ldr	x12, [sp, #48]
	mov	w10, wzr
	ldr	x11, [x19, #392]
	asr	w13, w13, #3
	ldr	x14, [x19, #368]
	ldr	x12, [x12, #16]
	b	.LBB16_372
.LBB16_371:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB16_395
.LBB16_372:
	cmp	w8, #8
	b.lt	.LBB16_371
	mov	w15, w13
	b	.LBB16_375
.LBB16_374:
	add	x14, x14, #8
	subs	w15, w15, #1
	b.eq	.LBB16_371
.LBB16_375:
	ldr	x16, [x12], #8
	ldr	x17, [x14]
	ldr	x0, [x11], #8
	cmp	x16, x17
	b.eq	.LBB16_374
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
	b	.LBB16_374
.LBB16_377:
	ldr	w8, [x19, #260]
	add	w9, w8, #7
	cmp	w8, #0
	csel	w9, w9, w8, lt
	cmp	w8, #8
	b.lt	.LBB16_381
	ldr	x10, [x19, #440]
	asr	w9, w9, #3
	ldr	x1, [x10, #16]
	ldr	x10, [sp, #48]
	mov	x11, x1
	ldr	x10, [x10, #16]
.LBB16_379:
	ldr	x12, [x10]
	ldr	x13, [x11]
	cmp	x12, x13
	b.ne	.LBB16_239
	add	x11, x11, #8
	add	x10, x10, #8
	subs	w9, w9, #1
	b.ne	.LBB16_379
.LBB16_381:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_445
.LBB16_382:
	ldr	x0, [sp, #48]
	bl	ebc_buf_release
	b	.LBB16_3
.LBB16_383:
	ldr	w8, [x19, #788]
	cbz	w8, .LBB16_390
	ldr	w8, [x19, #784]
	cbz	w8, .LBB16_390
	ldp	x9, x8, [sp, #48]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_450
.LBB16_386:
	ldr	w8, [x19, #260]
	ldr	x1, [x19, #384]
	cmp	w8, #1
	b.lt	.LBB16_436
	ldr	x9, [x9, #16]
.LBB16_388:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_388
	ldr	x1, [x19, #384]
	ldr	w8, [x19, #260]
	b	.LBB16_437
.LBB16_390:
	ldr	x8, [x19, #440]
	ldr	x0, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_394
.LBB16_391:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_77
.LBB16_392:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_393:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_443
.LBB16_394:
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_395:
	ldr	w8, [x19, #284]
	mov	w9, #3
	str	w9, [x19, #472]
	cbnz	w8, .LBB16_432
	ldr	x8, [sp, #48]
	str	w28, [x19, #284]
	mov	x0, x19
	mov	w2, wzr
	ldr	w1, [x8, #40]
	bl	ebc_lut_update
	ldr	w9, [x19, #812]
	ldr	w8, [x19, #336]
	cmp	w9, #1
	strh	w8, [x19, #288]
	b.ge	.LBB16_435
.LBB16_397:
	mov	x0, x19
	bl	ebc_frame_start
	b	.LBB16_432
.LBB16_398:
.LBB16_399:
	ldr	x0, [x19, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	w8, [x19, #812]
	str	wzr, [x19, #796]
	str	wzr, [x19, #784]
	str	wzr, [x19, #772]
	cmp	w8, #1
	b.ge	.LBB16_440
.LBB16_400:
	adrp	x8, jiffies
	ldr	x21, [x8, :lo12:jiffies]
	ldrb	w8, [x19, #336]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	add	x1, x0, x21
	ldr	x0, [sp, #8]
	bl	mod_timer
	b	.LBB16_115
.LBB16_401:
	ldr	x9, [sp, #16]
	adrp	x1, .L.str.80
	and	w2, w8, #0xff
	ubfx	w3, w8, #8, #8
	add	x1, x1, :lo12:.L.str.80
	ldr	x0, [x9]
	bl	_dev_info
	b	.LBB16_206
.LBB16_402:
.LBB16_403:
	ldr	x0, [x19, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x19, #796]
	str	wzr, [x19, #784]
	b	.LBB16_222
.LBB16_404:
	ldr	x9, [x19, #448]
	adrp	x1, .L.str.81
	ldr	x0, [x19, #328]
	and	w3, w8, #0xff
	add	x1, x1, :lo12:.L.str.81
	ldr	w2, [x9, #40]
	bl	_dev_info
	b	.LBB16_227
.LBB16_405:
	adrp	x1, .L.str.77
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.77
	bl	_dev_info
	ldr	w8, [x19, #812]
	str	wzr, [x19, #772]
	cmp	w8, #1
	b.lt	.LBB16_81
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_81
.LBB16_407:
	mov	w8, #3
.LBB16_408:
	cbnz	x0, .LBB16_325
	mov	x0, x8
	bl	schedule_timeout
	mov	x20, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x19, #320]
	cmp	x20, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x20, xzr, eq
	cbnz	w9, .LBB16_324
	cbnz	x8, .LBB16_408
	b	.LBB16_324
.LBB16_411:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB16_20
.LBB16_412:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_95
.LBB16_413:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.87
	add	x1, x1, :lo12:.L.str.87
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_54
.LBB16_414:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.96
	add	x1, x1, :lo12:.L.str.96
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_316
.LBB16_415:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_353
.LBB16_416:
	ldr	x1, [x19, #376]
.LBB16_417:
	ldr	x8, [x19, #440]
	ldrsw	x2, [x19, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
	ldr	w8, [x19, #788]
	mov	w9, #10
	orr	w10, wzr, #0x2
	str	w28, [x19, #284]
	str	w28, [x19, #472]
	madd	w9, w8, w9, w10
	cmp	w8, #7
	ldr	w10, [x19, #812]
	mov	w8, #72
	csel	w8, w8, w9, gt
	cmp	w10, #1
	strb	w8, [x19, #288]
	b.ge	.LBB16_448
.LBB16_418:
	mov	x0, x19
	bl	ebc_frame_start
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #32]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x19, #812]
	cmp	w8, #1
	b.ge	.LBB16_449
.LBB16_419:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_426
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_421:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_425
	cbnz	x0, .LBB16_426
	bl	schedule
	b	.LBB16_421
.LBB16_424:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.89
	add	x1, x1, :lo12:.L.str.89
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_73
.LBB16_425:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_426:
	ldr	w2, [x19, #304]
	cmp	w2, #10
	b.gt	.LBB16_428
	str	wzr, [x19, #796]
	b	.LBB16_429
.LBB16_428:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_451
.LBB16_429:
	str	wzr, [x19, #304]
.LBB16_430:
	adrp	x8, jiffies
	mov	w9, #335544320
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #32]
	add	x1, x8, x9
.LBB16_431:
	bl	mod_timer
.LBB16_432:
	ldr	w8, [x19, #676]
	cbnz	w8, .LBB16_1
	str	w28, [x19, #676]
	b	.LBB16_2
.LBB16_434:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.91
	add	x1, x1, :lo12:.L.str.91
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_86
.LBB16_435:
	ldr	x9, [sp, #16]
	adrp	x1, .L.str.86
	and	w2, w8, #0xff
	add	x1, x1, :lo12:.L.str.86
	ldr	x0, [x9]
	bl	_dev_info
	b	.LBB16_397
.LBB16_436:
.LBB16_437:
	ldr	x0, [x19, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x19, #796]
	str	wzr, [x19, #784]
	b	.LBB16_395
.LBB16_438:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.102
	add	x1, x1, :lo12:.L.str.102
	ldr	x0, [x8]
	bl	_dev_err
	b	.LBB16_382
.LBB16_439:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_110
.LBB16_440:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_400
.LBB16_441:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_106
.LBB16_442:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_217
.LBB16_443:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_394
.LBB16_444:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_358
	b	.LBB16_393
.LBB16_445:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.90
	add	x1, x1, :lo12:.L.str.90
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_382
.LBB16_446:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_365
	b	.LBB16_393
.LBB16_447:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.99
	add	x1, x1, :lo12:.L.str.99
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_327
.LBB16_448:
	ldr	x9, [x19, #448]
	adrp	x1, .L.str.100
	ldr	x0, [x19, #328]
	and	w3, w8, #0xff
	add	x1, x1, :lo12:.L.str.100
	ldr	w2, [x9, #40]
	bl	_dev_info
	b	.LBB16_418
.LBB16_449:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_419
.LBB16_450:
	adrp	x1, .L.str.79
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.79
	bl	_dev_info
	ldr	x9, [x19, #448]
	b	.LBB16_386
.LBB16_451:
	ldr	x8, [sp, #16]
	adrp	x1, .L.str.101
	add	x1, x1, :lo12:.L.str.101
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_429
.Lfunc_end16:
	.size	ebc_thread, .Lfunc_end16-ebc_thread
	.section	.rodata,"a",@progbits
	.p2align	1
.LJTI16_0:
	.hword	(.LBB16_104-.LBB16_104)>>2
	.hword	(.LBB16_390-.LBB16_104)>>2
	.hword	(.LBB16_362-.LBB16_104)>>2
	.hword	(.LBB16_356-.LBB16_104)>>2
	.hword	(.LBB16_104-.LBB16_104)>>2

	.text
	.p2align	2
	.type	flip,@function
flip:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	stp	x22, x21, [sp, #64]
	ldrsw	x22, [x0, #72]
	mov	w8, #24
	stp	x24, x23, [sp, #48]
	ldp	w23, w24, [x0, #132]
	madd	x9, x22, x8, x0
	stp	x26, x25, [sp, #32]
	stp	x20, x19, [sp, #80]
	mov	x20, x1
	mov	x19, x0
	ldr	w8, [x0, #172]
	add	x26, x9, #24
	ldr	w25, [x0, #140]
	str	x27, [sp, #16]
	mov	x29, sp
	cbz	w8, .LBB17_2
	ldp	w9, w10, [x19, #76]
	ldr	w11, [x19, #168]
	mul	w12, w9, w8
	add	w8, w11, w8
	sub	w10, w10, w11
	mul	w13, w11, w9
	ldr	x11, [x26]
	mul	w8, w8, w9
	mul	w10, w10, w9
	lsr	w27, w13, #2
	lsr	w8, w8, #2
	lsr	w21, w12, #2
	lsr	w2, w10, #2
	add	x0, x11, x8
	add	x1, x11, x27
	bl	memmove
	ldr	x8, [x26]
	mov	w1, wzr
	mov	x2, x21
	add	x0, x8, x27
	bl	memset
.LBB17_2:
	ldr	w8, [x20, #680]
	tbnz	w8, #31, .LBB17_7
	ldr	w9, [x20, #80]
	cmp	w8, w9
	b.ge	.LBB17_7
	ldr	w9, [x20, #676]
	tbnz	w9, #31, .LBB17_7
	ldr	w10, [x20, #84]
	cmp	w9, w10
	b.ge	.LBB17_7
	mul	w8, w10, w8
	ldr	x10, [x26]
	lsr	x8, x8, #2
	add	x8, x8, x9, lsr #2
	ubfiz	w9, w9, #1, #2
	ldrb	w8, [x10, x8]
	ldrb	w10, [x20, #684]
	lsr	w8, w8, w9
	mov	w9, #48
	add	w11, w10, #1
	bfxil	w9, w8, #0, #2
	add	x8, x20, x10
	strb	w11, [x20, #684]
	strb	w9, [x8, #685]
.LBB17_7:
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
	ldr	x9, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #96]
	stp	x20, x19, [sp, #112]
	mov	x19, x5
	mov	x22, x4
	mov	x21, x3
	ldp	w25, w11, [x9, #116]
	mov	x24, x1
	ldr	x8, [x5, #216]
	cmp	w6, #3
	stp	x28, x27, [sp, #48]
	stur	x0, [x29, #-8]
	lsr	w10, w25, #3
	str	w10, [sp, #16]
	b.eq	.LBB18_3
	add	x9, x19, #60
	cmp	w6, #2
	str	x9, [sp, #8]
	b.ne	.LBB18_4
	cmp	w11, #0
	mov	w27, wzr
	cinc	w9, w11, lt
	asr	w11, w9, #1
	b	.LBB18_5
.LBB18_3:
	cmp	w11, #0
	cinc	w9, w11, lt
	asr	w27, w9, #1
	mul	w9, w27, w10
	mul	w10, w27, w25
	sbfiz	x9, x9, #3, #32
	add	x21, x21, x10
	add	x24, x24, x9
	add	x23, x23, x9
	add	x22, x22, x10
	add	x9, x19, #64
	str	x9, [sp, #8]
	b	.LBB18_5
.LBB18_4:
	mov	w27, wzr
.LBB18_5:
	lsr	w26, w25, #2
	subs	w9, w11, w27
	ldr	w20, [x8, #40]
	mov	w1, wzr
	mul	w28, w27, w26
	ldur	x8, [x29, #-8]
	mul	w9, w9, w26
	stur	w11, [x29, #-12]
	add	x0, x8, w28, sxtw
	sxtw	x2, w9
	bl	memset
	ldur	w9, [x29, #-12]
	mov	w3, wzr
	cmp	w9, w27
	b.le	.LBB18_59
	ldr	w10, [sp, #16]
	mov	w3, wzr
	sub	w8, w20, #7
	lsl	w12, w26, #1
	mov	w11, #56
	cmp	w10, #1
	csinc	w10, w10, wzr, hi
	str	w12, [sp, #16]
	lsl	x10, x10, #3
	b	.LBB18_10
.LBB18_7:
	add	x9, x24, x12
	add	x13, x23, x12
	add	x24, x9, x0
	add	x9, x22, x12
	add	x12, x21, x12
	add	x23, x13, x0
	add	x22, x9, x0
	add	x21, x12, x0
.LBB18_8:
	ldur	w9, [x29, #-12]
	ldr	w12, [sp, #16]
.LBB18_9:
	add	w27, w27, #2
	add	w28, w28, w12
	cmp	w27, w9
	b.ge	.LBB18_59
.LBB18_10:
	cmp	w25, #8
	b.lo	.LBB18_9
	ldur	x9, [x29, #-8]
	mov	x12, xzr
	add	x13, x9, w28, sxtw
	mov	x14, x13
	b	.LBB18_15
.LBB18_12:
	str	x15, [x23, x12]
.LBB18_13:
	mov	w3, #1
	str	w17, [x14]
.LBB18_14:
	add	x14, x14, #4
	add	x12, x12, #8
	cmp	x10, x12
	b.eq	.LBB18_34
.LBB18_15:
	ldr	x16, [x24, x12]
	cmp	w8, #5
	ldr	x15, [x23, x12]
	and	x17, x16, #0xf8f8f8f8f8f8f8f8
	and	x0, x15, #0xf8f8f8f8f8f8f8f8
	csel	x16, x17, x16, lo
	csel	x15, x0, x15, lo
	cmp	x16, x15
	b.eq	.LBB18_14
	eor	x1, x15, x16
	tst	x1, #0xff
	b.eq	.LBB18_18
	ldrb	w17, [x22, x12]
	lsl	w3, w15, #2
	ldrb	w2, [x21, x12]
	and	x3, x3, #0x3e0
	bfxil	x3, x16, #3, #5
	mov	x4, x15
	bfxil	x4, x16, #0, #8
	add	x0, x19, x17, lsl #3
	cmp	w17, #0
	cinc	x17, x11, ne
	add	w5, w2, #1
	ldr	x0, [x0, #120]
	ldrb	w17, [x19, x17]
	add	x0, x0, x2, lsl #10
	cmp	w17, w5, uxtb
	ldrb	w17, [x0, x3]
	cset	w0, eq
	csel	x15, x4, x15, eq
	csinc	w2, wzr, w2, eq
	strb	w2, [x21, x12]
	b	.LBB18_19
.LBB18_18:
	mov	w17, wzr
	mov	w0, wzr
.LBB18_19:
	add	x2, x21, x12
	tst	x1, #0xff00
	b.eq	.LBB18_21
	add	x3, x22, x12
	ldrb	w5, [x2, #1]
	lsr	x6, x15, #6
	lsr	x7, x16, #8
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #1]
	bfxil	x6, x16, #11, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x11, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #8, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w17, w17, w4, lsl #4
	csel	x15, x3, x15, eq
	strb	w5, [x2, #1]
.LBB18_21:
	tst	x1, #0xff0000
	b.eq	.LBB18_23
	add	x3, x22, x12
	ldrb	w5, [x2, #2]
	lsr	x6, x15, #14
	lsr	x7, x16, #16
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #2]
	bfxil	x6, x16, #19, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x11, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #16, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w17, w17, w4, lsl #8
	csel	x15, x3, x15, eq
	strb	w5, [x2, #2]
.LBB18_23:
	add	x2, x21, x12
	tst	x1, #0xff000000
	b.eq	.LBB18_25
	add	x3, x22, x12
	ldrb	w5, [x2, #3]
	lsr	x6, x15, #22
	lsr	x7, x16, #24
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #3]
	bfxil	x6, x16, #27, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x11, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #24, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w17, w17, w4, lsl #12
	csel	x15, x3, x15, eq
	strb	w5, [x2, #3]
.LBB18_25:
	tst	x1, #0xff00000000
	b.eq	.LBB18_27
	add	x3, x22, x12
	ldrb	w5, [x2, #4]
	lsr	x6, x15, #30
	lsr	x7, x16, #32
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #4]
	bfxil	x6, x16, #35, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x11, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #32, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w17, w17, w4, lsl #16
	csel	x15, x3, x15, eq
	strb	w5, [x2, #4]
.LBB18_27:
	add	x2, x21, x12
	tst	x1, #0xff0000000000
	b.eq	.LBB18_29
	add	x3, x22, x12
	ldrb	w5, [x2, #5]
	lsr	x6, x15, #38
	lsr	x7, x16, #40
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #5]
	bfxil	x6, x16, #43, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x11, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #40, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w17, w17, w4, lsl #20
	csel	x15, x3, x15, eq
	strb	w5, [x2, #5]
.LBB18_29:
	tst	x1, #0xff000000000000
	b.eq	.LBB18_31
	add	x3, x22, x12
	ldrb	w5, [x2, #6]
	lsr	x6, x15, #46
	lsr	x7, x16, #48
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #6]
	bfxil	x6, x16, #51, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x11, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #48, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w17, w17, w4, lsl #24
	csel	x15, x3, x15, eq
	strb	w5, [x2, #6]
.LBB18_31:
	lsr	x1, x1, #56
	cbnz	x1, .LBB18_33
	cbnz	w0, .LBB18_12
	b	.LBB18_13
.LBB18_33:
	add	x1, x22, x12
	add	x2, x21, x12
	lsr	x5, x15, #54
	and	x5, x5, #0x3e0
	ldrb	w1, [x1, #7]
	bfxil	x5, x16, #59, #5
	bfxil	x16, x15, #0, #56
	add	x3, x19, x1, lsl #3
	cmp	w1, #0
	ldrb	w1, [x2, #7]
	cinc	x4, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w4, [x19, x4]
	add	x3, x3, x1, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w1, #1
	cmp	w4, w5, uxtb
	cset	w4, eq
	csinc	w1, wzr, w1, eq
	orr	w0, w4, w0
	csel	x15, x16, x15, eq
	orr	w17, w17, w3, lsl #28
	strb	w1, [x2, #7]
	tbnz	w0, #0, .LBB18_12
	b	.LBB18_13
.LBB18_34:
	add	x14, x24, x12
	add	x15, x23, x12
	add	x16, x22, x12
	add	x17, x21, x12
	cmp	w25, #8
	b.hs	.LBB18_36
	mov	x22, x16
	mov	x21, x17
	mov	x23, x15
	mov	x24, x14
	b	.LBB18_8
.LBB18_36:
	mov	x0, xzr
	b	.LBB18_40
.LBB18_37:
	str	x1, [x15, x0]
.LBB18_38:
	ldr	w9, [x13]
	orr	w9, w9, w3
	mov	w3, #1
	str	w9, [x13]
.LBB18_39:
	add	x13, x13, #4
	add	x0, x0, #8
	cmp	x10, x0
	b.eq	.LBB18_7
.LBB18_40:
	ldr	x2, [x14, x0]
	ldr	x1, [x15, x0]
	cmp	x2, x1
	b.eq	.LBB18_39
	eor	x5, x1, x2
	tst	x5, #0xff
	b.eq	.LBB18_43
	ldrb	w3, [x16, x0]
	lsl	w7, w1, #2
	ldrb	w6, [x17, x0]
	mov	x20, x1
	bfxil	x20, x2, #0, #8
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	ldr	x3, [x4, #120]
	and	x4, x7, #0x3e0
	cinc	x7, x11, ne
	bfxil	x4, x2, #3, #5
	add	x3, x3, x6, lsl #10
	ldrb	w7, [x19, x7]
	ldrb	w3, [x3, x4]
	add	w4, w6, #1
	cmp	w7, w4, uxtb
	cset	w4, eq
	lsl	w3, w3, #2
	csel	x1, x20, x1, eq
	csinc	w6, wzr, w6, eq
	strb	w6, [x17, x0]
	b	.LBB18_44
.LBB18_43:
	mov	w4, wzr
	mov	w3, wzr
.LBB18_44:
	add	x6, x17, x0
	tst	x5, #0xff00
	b.eq	.LBB18_46
	add	x7, x16, x0
	ldrb	w26, [x6, #1]
	lsr	x30, x1, #6
	lsr	x9, x2, #8
	and	x30, x30, #0x3e0
	ldrb	w7, [x7, #1]
	bfxil	x30, x2, #11, #5
	add	x20, x19, x7, lsl #3
	cmp	w7, #0
	cinc	x7, x11, ne
	ldr	x20, [x20, #120]
	ldrb	w7, [x19, x7]
	add	x20, x20, x26, lsl #10
	ldrb	w20, [x20, x30]
	add	w30, w26, #1
	cmp	w7, w30, uxtb
	mov	x7, x1
	bfi	x7, x9, #8, #8
	cset	w9, eq
	csinc	w26, wzr, w26, eq
	csel	x1, x7, x1, eq
	orr	w3, w3, w20, lsl #6
	orr	w4, w9, w4
	strb	w26, [x6, #1]
.LBB18_46:
	tst	x5, #0xff0000
	b.eq	.LBB18_48
	add	x9, x16, x0
	ldrb	w20, [x6, #2]
	lsr	x26, x1, #14
	lsr	x30, x2, #16
	and	x26, x26, #0x3e0
	ldrb	w9, [x9, #2]
	bfxil	x26, x2, #19, #5
	add	x7, x19, x9, lsl #3
	cmp	w9, #0
	cinc	x9, x11, ne
	ldr	x7, [x7, #120]
	ldrb	w9, [x19, x9]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w9, w26, uxtb
	mov	x9, x1
	bfi	x9, x30, #16, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x1, x9, x1, eq
	orr	w3, w3, w7, lsl #10
	orr	w4, w26, w4
	strb	w20, [x6, #2]
.LBB18_48:
	add	x6, x17, x0
	tst	x5, #0xff000000
	b.eq	.LBB18_50
	add	x9, x16, x0
	ldrb	w20, [x6, #3]
	lsr	x26, x1, #22
	lsr	x30, x2, #24
	and	x26, x26, #0x3e0
	ldrb	w9, [x9, #3]
	bfxil	x26, x2, #27, #5
	add	x7, x19, x9, lsl #3
	cmp	w9, #0
	cinc	x9, x11, ne
	ldr	x7, [x7, #120]
	ldrb	w9, [x19, x9]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w9, w26, uxtb
	mov	x9, x1
	bfi	x9, x30, #24, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x1, x9, x1, eq
	orr	w3, w3, w7, lsl #14
	orr	w4, w26, w4
	strb	w20, [x6, #3]
.LBB18_50:
	tst	x5, #0xff00000000
	b.eq	.LBB18_52
	add	x9, x16, x0
	ldrb	w20, [x6, #4]
	lsr	x26, x1, #30
	lsr	x30, x2, #32
	and	x26, x26, #0x3e0
	ldrb	w9, [x9, #4]
	bfxil	x26, x2, #35, #5
	add	x7, x19, x9, lsl #3
	cmp	w9, #0
	cinc	x9, x11, ne
	ldr	x7, [x7, #120]
	ldrb	w9, [x19, x9]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w9, w26, uxtb
	mov	x9, x1
	bfi	x9, x30, #32, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x1, x9, x1, eq
	orr	w3, w3, w7, lsl #18
	orr	w4, w26, w4
	strb	w20, [x6, #4]
.LBB18_52:
	add	x6, x17, x0
	tst	x5, #0xff0000000000
	b.eq	.LBB18_54
	add	x9, x16, x0
	ldrb	w20, [x6, #5]
	lsr	x26, x1, #38
	lsr	x30, x2, #40
	and	x26, x26, #0x3e0
	ldrb	w9, [x9, #5]
	bfxil	x26, x2, #43, #5
	add	x7, x19, x9, lsl #3
	cmp	w9, #0
	cinc	x9, x11, ne
	ldr	x7, [x7, #120]
	ldrb	w9, [x19, x9]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w9, w26, uxtb
	mov	x9, x1
	bfi	x9, x30, #40, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x1, x9, x1, eq
	orr	w3, w3, w7, lsl #22
	orr	w4, w26, w4
	strb	w20, [x6, #5]
.LBB18_54:
	tst	x5, #0xff000000000000
	b.eq	.LBB18_56
	add	x9, x16, x0
	ldrb	w20, [x6, #6]
	lsr	x26, x1, #46
	lsr	x30, x2, #48
	and	x26, x26, #0x3e0
	ldrb	w9, [x9, #6]
	bfxil	x26, x2, #51, #5
	add	x7, x19, x9, lsl #3
	cmp	w9, #0
	cinc	x9, x11, ne
	ldr	x7, [x7, #120]
	ldrb	w9, [x19, x9]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w9, w26, uxtb
	mov	x9, x1
	bfi	x9, x30, #48, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x1, x9, x1, eq
	orr	w3, w3, w7, lsl #26
	orr	w4, w26, w4
	strb	w20, [x6, #6]
.LBB18_56:
	lsr	x9, x5, #56
	cbnz	x9, .LBB18_58
	cbnz	w4, .LBB18_37
	b	.LBB18_38
.LBB18_58:
	add	x9, x16, x0
	add	x5, x17, x0
	lsr	x20, x1, #54
	and	x20, x20, #0x3e0
	ldrb	w9, [x9, #7]
	bfxil	x20, x2, #59, #5
	bfxil	x2, x1, #0, #56
	add	x6, x19, x9, lsl #3
	cmp	w9, #0
	ldrb	w9, [x5, #7]
	cinc	x7, x11, ne
	ldr	x6, [x6, #120]
	ldrb	w7, [x19, x7]
	add	x6, x6, x9, lsl #10
	ldrb	w6, [x6, x20]
	add	w20, w9, #1
	cmp	w7, w20, uxtb
	cset	w7, eq
	csinc	w9, wzr, w9, eq
	orr	w4, w7, w4
	csel	x1, x2, x1, eq
	orr	w3, w3, w6, lsl #30
	strb	w9, [x5, #7]
	tbnz	w4, #0, .LBB18_37
	b	.LBB18_38
.LBB18_59:
	ldr	x8, [sp, #8]
	ldp	x20, x19, [sp, #112]
	ldp	x22, x21, [sp, #96]
	str	w3, [x8]
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
	sub	sp, sp, #128
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x28, x27, [sp, #48]
	stp	x24, x23, [sp, #80]
	mov	x23, x1
	stp	x22, x21, [sp, #96]
	mov	x21, x3
	ldr	x27, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #112]
	mov	x19, x5
	mov	x20, x4
	mov	x22, x2
	mov	x24, x0
	ldp	w12, w8, [x27, #116]
	ldr	x9, [x5, #216]
	cmp	w6, #3
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x26, x25, [sp, #64]
	lsr	w13, w12, #3
	b.eq	.LBB19_3
	add	x10, x19, #60
	cmp	w6, #2
	stur	x10, [x29, #-8]
	b.ne	.LBB19_4
	cmp	w8, #0
	mov	w26, wzr
	cinc	w10, w8, lt
	asr	w28, w10, #1
	b	.LBB19_6
.LBB19_3:
	cmp	w8, #0
	cinc	w10, w8, lt
	asr	w26, w10, #1
	mul	w10, w26, w13
	mul	w11, w26, w12
	sbfiz	x10, x10, #3, #32
	add	x21, x21, x11
	add	x20, x20, x11
	add	x23, x23, x10
	add	x22, x22, x10
	add	x10, x19, #64
	stur	x10, [x29, #-8]
	b	.LBB19_5
.LBB19_4:
	mov	w26, wzr
.LBB19_5:
	mov	w28, w8
.LBB19_6:
	ldr	w10, [x27, #196]
	lsr	w25, w12, #2
	ldr	w9, [x9, #40]
	str	w13, [sp, #16]
	stur	w12, [x29, #-12]
	str	w9, [sp, #12]
	cbz	w10, .LBB19_36
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
	ldp	w8, w10, [sp, #12]
	mov	w17, wzr
	sxtw	x9, w25
	mov	w12, #56
	cmp	w10, #1
	sub	w8, w8, #7
	csinc	w11, w10, wzr, hi
	add	x10, x24, #1
	lsl	x11, x11, #3
	ldur	w24, [x29, #-12]
	b	.LBB19_11
.LBB19_9:
	add	x20, x20, x13
	add	x23, x23, x13
	add	x22, x22, x13
	add	x21, x21, x13
.LBB19_10:
	add	w26, w26, #1
	add	x10, x10, x9
	cmp	w26, w28
	b.eq	.LBB19_38
.LBB19_11:
	cmp	w24, #8
	b.lo	.LBB19_10
	mov	x13, xzr
	mov	x14, x10
	b	.LBB19_16
.LBB19_13:
	str	x15, [x22, x13]
.LBB19_14:
	mov	w17, #1
	strb	w1, [x14]
.LBB19_15:
	add	x13, x13, #8
	add	x14, x14, #2
	cmp	x11, x13
	b.eq	.LBB19_9
.LBB19_16:
	ldr	x16, [x23, x13]
	cmp	w8, #5
	ldr	x15, [x22, x13]
	and	x0, x16, #0xf8f8f8f8f8f8f8f8
	and	x1, x15, #0xf8f8f8f8f8f8f8f8
	csel	x16, x0, x16, lo
	csel	x15, x1, x15, lo
	cmp	x16, x15
	b.eq	.LBB19_15
	eor	x17, x15, x16
	tst	x17, #0xff
	b.eq	.LBB19_19
	ldrb	w0, [x20, x13]
	lsl	w3, w15, #2
	ldrb	w2, [x21, x13]
	and	x3, x3, #0x3e0
	bfxil	x3, x16, #3, #5
	mov	x4, x15
	bfxil	x4, x16, #0, #8
	add	x1, x19, x0, lsl #3
	cmp	w0, #0
	cinc	x0, x12, ne
	add	w5, w2, #1
	ldr	x1, [x1, #120]
	ldrb	w0, [x19, x0]
	add	x1, x1, x2, lsl #10
	cmp	w0, w5, uxtb
	ldrb	w1, [x1, x3]
	cset	w0, eq
	csel	x15, x4, x15, eq
	csinc	w2, wzr, w2, eq
	strb	w2, [x21, x13]
	b	.LBB19_20
.LBB19_19:
	mov	w1, wzr
	mov	w0, wzr
.LBB19_20:
	add	x2, x21, x13
	tst	x17, #0xff00
	b.eq	.LBB19_22
	add	x3, x20, x13
	ldrb	w5, [x2, #1]
	lsr	x6, x15, #6
	lsr	x7, x16, #8
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #1]
	bfxil	x6, x16, #11, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x12, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #8, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w1, w1, w4, lsl #2
	csel	x15, x3, x15, eq
	strb	w5, [x2, #1]
.LBB19_22:
	tst	x17, #0xff0000
	b.eq	.LBB19_24
	add	x3, x20, x13
	ldrb	w5, [x2, #2]
	lsr	x6, x15, #14
	lsr	x7, x16, #16
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #2]
	bfxil	x6, x16, #19, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x12, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #16, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w1, w1, w4, lsl #4
	csel	x15, x3, x15, eq
	strb	w5, [x2, #2]
.LBB19_24:
	add	x2, x21, x13
	tst	x17, #0xff000000
	b.eq	.LBB19_26
	add	x3, x20, x13
	ldrb	w5, [x2, #3]
	lsr	x6, x15, #22
	lsr	x7, x16, #24
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #3]
	bfxil	x6, x16, #27, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x12, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #24, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w1, w1, w4, lsl #6
	csel	x15, x3, x15, eq
	strb	w5, [x2, #3]
.LBB19_26:
	tst	x17, #0xff00000000
	sturb	w1, [x14, #-1]
	b.eq	.LBB19_28
	add	x1, x20, x13
	ldrb	w4, [x2, #4]
	lsr	x5, x15, #30
	lsr	x6, x16, #32
	and	x5, x5, #0x3e0
	ldrb	w1, [x1, #4]
	bfxil	x5, x16, #35, #5
	add	w7, w4, #1
	cmp	w1, #0
	add	x3, x19, x1, lsl #3
	cinc	x1, x12, ne
	ldr	x3, [x3, #120]
	ldrb	w1, [x19, x1]
	add	x3, x3, x4, lsl #10
	cmp	w1, w7, uxtb
	mov	x7, x15
	ldrb	w1, [x3, x5]
	cset	w3, eq
	bfi	x7, x6, #32, #8
	csinc	w4, wzr, w4, eq
	orr	w0, w3, w0
	csel	x15, x7, x15, eq
	strb	w4, [x2, #4]
	b	.LBB19_29
.LBB19_28:
	mov	w1, wzr
.LBB19_29:
	add	x2, x21, x13
	tst	x17, #0xff0000000000
	b.eq	.LBB19_31
	add	x3, x20, x13
	ldrb	w5, [x2, #5]
	lsr	x6, x15, #38
	lsr	x7, x16, #40
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #5]
	bfxil	x6, x16, #43, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x12, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #40, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w1, w1, w4, lsl #2
	csel	x15, x3, x15, eq
	strb	w5, [x2, #5]
.LBB19_31:
	tst	x17, #0xff000000000000
	b.eq	.LBB19_33
	add	x3, x20, x13
	ldrb	w5, [x2, #6]
	lsr	x6, x15, #46
	lsr	x7, x16, #48
	and	x6, x6, #0x3e0
	ldrb	w3, [x3, #6]
	bfxil	x6, x16, #51, #5
	add	x4, x19, x3, lsl #3
	cmp	w3, #0
	cinc	x3, x12, ne
	ldr	x4, [x4, #120]
	ldrb	w3, [x19, x3]
	add	x4, x4, x5, lsl #10
	ldrb	w4, [x4, x6]
	add	w6, w5, #1
	cmp	w3, w6, uxtb
	mov	x3, x15
	bfi	x3, x7, #48, #8
	cset	w6, eq
	csinc	w5, wzr, w5, eq
	orr	w0, w6, w0
	orr	w1, w1, w4, lsl #4
	csel	x15, x3, x15, eq
	strb	w5, [x2, #6]
.LBB19_33:
	lsr	x17, x17, #56
	cbnz	x17, .LBB19_35
	cbnz	w0, .LBB19_13
	b	.LBB19_14
.LBB19_35:
	add	x17, x20, x13
	add	x2, x21, x13
	lsr	x5, x15, #54
	and	x5, x5, #0x3e0
	ldrb	w17, [x17, #7]
	bfxil	x5, x16, #59, #5
	bfxil	x16, x15, #0, #56
	add	x3, x19, x17, lsl #3
	cmp	w17, #0
	ldrb	w17, [x2, #7]
	cinc	x4, x12, ne
	ldr	x3, [x3, #120]
	ldrb	w4, [x19, x4]
	add	x3, x3, x17, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w17, #1
	cmp	w4, w5, uxtb
	cset	w4, eq
	csinc	w17, wzr, w17, eq
	orr	w0, w4, w0
	csel	x15, x16, x15, eq
	orr	w1, w1, w3, lsl #6
	strb	w17, [x2, #7]
	tbnz	w0, #0, .LBB19_13
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
	mov	w17, wzr
.LBB19_38:
	ldur	x8, [x29, #-8]
	ldp	x20, x19, [sp, #112]
	ldp	x22, x21, [sp, #96]
	str	w17, [x8]
	ldp	x24, x23, [sp, #80]
	ldp	x26, x25, [sp, #64]
	ldp	x28, x27, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #128
	ret
.Lfunc_end19:
	.size	get_overlay_image, .Lfunc_end19-get_overlay_image

	.p2align	2
	.type	get_overlay_image_area2,@function
get_overlay_image_area2:
	sub	sp, sp, #176
	str	x30, [x18], #8
	ldr	x9, [x5, #232]
	stp	x29, x30, [sp, #80]
	ldp	w11, w10, [x5, #80]
	stp	x28, x27, [sp, #96]
	ldp	w12, w8, [x9, #48]
	ldp	w13, w14, [x9, #56]
	add	w15, w10, #7
	stp	x26, x25, [sp, #112]
	stp	x24, x23, [sp, #128]
	add	w9, w12, #7
	cmp	w12, #0
	csel	w12, w9, w12, lt
	add	w9, w13, #7
	cmp	w13, #0
	stp	x22, x21, [sp, #144]
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
	stp	x20, x19, [sp, #160]
	csel	w11, w14, w13, lt
	stp	x3, x0, [sp, #56]
	cmp	w8, w11
	str	w10, [sp, #76]
	b.le	.LBB20_2
.LBB20_1:
	ldp	x20, x19, [sp, #160]
	ldp	x22, x21, [sp, #144]
	ldp	x24, x23, [sp, #128]
	ldp	x26, x25, [sp, #112]
	ldp	x28, x27, [sp, #96]
	ldp	x29, x30, [sp, #80]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #176
	ret
.LBB20_2:
	adrp	x13, global_ebc
	ldr	w10, [sp, #76]
	ldr	x15, [x5, #216]
	mul	w14, w8, w9
	mov	w7, #1
	ldr	x16, [x13, :lo12:global_ebc]
	asr	w13, w12, #3
	add	w12, w10, #1
	sbfiz	x10, x13, #2, #32
	sbfiz	x0, x13, #3, #32
	ldr	w15, [x15, #40]
	str	x16, [sp, #48]
	ldr	w16, [x16, #116]
	str	x10, [sp, #40]
	add	x10, x1, x0
	sxtw	x17, w13
	sxtw	x12, w12
	mul	w16, w16, w8
	str	x10, [sp, #32]
	add	x10, x2, x0
	lsr	w16, w16, #2
	sub	w2, w15, #7
	str	x10, [sp, #24]
	lsl	w10, w13, #3
	str	w10, [sp, #20]
	ldr	x10, [sp, #64]
	add	x6, x10, x16
	sub	x10, x12, x17
	str	x10, [sp, #8]
	b	.LBB20_4
.LBB20_3:
	add	w8, w8, #1
	add	w14, w14, w9
	cmp	w8, w11
	b.gt	.LBB20_1
.LBB20_4:
	tbnz	w8, #0, .LBB20_6
	ldr	x10, [sp, #48]
	ldr	w15, [x10, #116]
	ldr	x10, [sp, #64]
	mul	w15, w15, w8
	lsr	w15, w15, #2
	add	x6, x10, x15
.LBB20_6:
	ldr	w10, [sp, #76]
	cmp	w13, w10
	b.gt	.LBB20_3
	ldr	x10, [sp, #32]
	sbfiz	x15, x14, #3, #32
	ldr	w16, [x5, #84]
	mov	w22, #4
	mov	w23, #8
	mov	w24, #12
	add	x19, x10, x15
	ldr	x10, [sp, #24]
	mul	w16, w16, w8
	mov	w26, #16
	mov	w27, #20
	mov	w28, #24
	add	x20, x10, x15
	ldr	x10, [sp, #56]
	and	w15, w8, #0x1
	mov	w29, #28
	lsl	w21, w15, #1
	ldr	x4, [sp, #8]
	add	x25, x10, w16, sxtw
	ldr	x10, [sp, #40]
	bfi	w22, w15, #1, #1
	bfi	w23, w15, #1, #1
	bfi	w24, w15, #1, #1
	bfi	w26, w15, #1, #1
	bfi	w27, w15, #1, #1
	bfi	w28, w15, #1, #1
	bfi	w29, w15, #1, #1
	add	x30, x6, x10
	ldr	w1, [sp, #20]
	b	.LBB20_10
.LBB20_8:
	ldr	w10, [x30]
	orr	w10, w10, w17
	str	w10, [x30]
.LBB20_9:
	add	x19, x19, #8
	add	x20, x20, #8
	add	x30, x30, #4
	add	w1, w1, #8
	subs	x4, x4, #1
	b.eq	.LBB20_3
.LBB20_10:
	ldr	x15, [x19]
	cmp	w2, #5
	ldr	x16, [x20]
	and	x17, x15, #0xf8f8f8f8f8f8f8f8
	and	x0, x16, #0xf8f8f8f8f8f8f8f8
	csel	x15, x17, x15, lo
	csel	x16, x0, x16, lo
	cmp	x15, x16
	b.eq	.LBB20_9
	add	x0, x25, w1, sxtw
	str	w7, [x5, #60]
	eor	x3, x16, x15
	and	x12, x3, #0xff
	ldrb	w17, [x0]
	cmp	x12, #0
	ccmp	w17, #0, #0, ne
	b.eq	.LBB20_13
	mov	w17, wzr
	b	.LBB20_14
.LBB20_13:
	lsl	w12, w16, #2
	ldr	x17, [x5, #120]
	and	x12, x12, #0x3e0
	bfxil	x12, x15, #3, #5
	ldrb	w12, [x17, x12]
	strb	w7, [x0]
	lsl	w17, w12, w21
.LBB20_14:
	ldrb	w12, [x0, #1]
	and	x10, x3, #0xff00
	cmp	x10, #0
	ccmp	w12, #0, #0, ne
	b.ne	.LBB20_16
	lsr	x10, x16, #6
	ldr	x12, [x5, #120]
	and	x10, x10, #0x3e0
	bfxil	x10, x15, #11, #5
	ldrb	w10, [x12, x10]
	strb	w7, [x0, #1]
	lsl	w10, w10, w22
	orr	w17, w10, w17
.LBB20_16:
	tst	x3, #0xff0000
	b.eq	.LBB20_19
	ldrb	w10, [x0, #2]
	cbnz	w10, .LBB20_19
	lsr	x10, x16, #14
	ldr	x12, [x5, #120]
	and	x10, x10, #0x3e0
	bfxil	x10, x15, #19, #5
	ldrb	w10, [x12, x10]
	strb	w7, [x0, #2]
	lsl	w10, w10, w23
	orr	w17, w10, w17
.LBB20_19:
	tst	x3, #0xff000000
	b.eq	.LBB20_22
	ldrb	w10, [x0, #3]
	cbnz	w10, .LBB20_22
	lsr	x10, x16, #22
	ldr	x12, [x5, #120]
	and	x10, x10, #0x3e0
	bfxil	x10, x15, #27, #5
	ldrb	w10, [x12, x10]
	strb	w7, [x0, #3]
	lsl	w10, w10, w24
	orr	w17, w10, w17
.LBB20_22:
	tst	x3, #0xff00000000
	b.eq	.LBB20_25
	ldrb	w10, [x0, #4]
	cbnz	w10, .LBB20_25
	lsr	x10, x16, #30
	ldr	x12, [x5, #120]
	and	x10, x10, #0x3e0
	bfxil	x10, x15, #35, #5
	ldrb	w10, [x12, x10]
	strb	w7, [x0, #4]
	lsl	w10, w10, w26
	orr	w17, w10, w17
.LBB20_25:
	tst	x3, #0xff0000000000
	b.eq	.LBB20_28
	ldrb	w10, [x0, #5]
	cbnz	w10, .LBB20_28
	lsr	x10, x16, #38
	ldr	x12, [x5, #120]
	and	x10, x10, #0x3e0
	bfxil	x10, x15, #43, #5
	ldrb	w10, [x12, x10]
	strb	w7, [x0, #5]
	lsl	w10, w10, w27
	orr	w17, w10, w17
.LBB20_28:
	tst	x3, #0xff000000000000
	b.eq	.LBB20_31
	ldrb	w10, [x0, #6]
	cbnz	w10, .LBB20_31
	lsr	x10, x16, #46
	ldr	x12, [x5, #120]
	and	x10, x10, #0x3e0
	bfxil	x10, x15, #51, #5
	ldrb	w10, [x12, x10]
	strb	w7, [x0, #6]
	lsl	w10, w10, w28
	orr	w17, w10, w17
.LBB20_31:
	lsr	x10, x3, #56
	cbz	x10, .LBB20_8
	ldrb	w10, [x0, #7]
	cbnz	w10, .LBB20_8
	lsr	x10, x16, #54
	ldr	x12, [x5, #120]
	and	x10, x10, #0x3e0
	bfxil	x10, x15, #59, #5
	ldrb	w10, [x12, x10]
	strb	w7, [x0, #7]
	lsl	w10, w10, w29
	orr	w17, w10, w17
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
	adrp	x13, global_ebc
	ldr	x14, [x5, #216]
	asr	w12, w12, #3
	add	w15, w10, #1
	sbfiz	x3, x12, #3, #32
	sxtw	x0, w15
	ldr	x13, [x13, :lo12:global_ebc]
	lsl	w15, w12, #3
	ldr	w14, [x14, #40]
	add	x17, x1, x3
	sxtw	x16, w12
	mul	w6, w8, w9
	str	w15, [sp, #20]
	lsl	w15, w12, #1
	str	x17, [sp, #8]
	ldr	w17, [x13, #196]
	sub	w1, w14, #7
	add	x14, x2, x3
	sub	x7, x0, x16
	mov	w19, #1
	str	x14, [sp]
	b	.LBB21_4
.LBB21_3:
	add	w8, w8, #1
	add	w6, w6, w9
	cmp	w8, w11
	b.gt	.LBB21_1
.LBB21_4:
	cbz	w17, .LBB21_6
	ldp	w16, w14, [x13, #116]
	mvn	w0, w8
	add	w14, w14, w0
	cmp	w12, w10
	b.gt	.LBB21_3
	b	.LBB21_7
.LBB21_6:
	ldr	w14, [x13, #116]
	mov	w16, w8
	cmp	w12, w10
	b.gt	.LBB21_3
.LBB21_7:
	ldr	w0, [x5, #84]
	mul	w14, w14, w16
	sbfiz	x3, x6, #3, #32
	mov	x20, x7
	mov	w26, w15
	ldr	w27, [sp, #20]
	mul	w16, w0, w8
	ldr	x0, [sp, #8]
	add	x21, x0, x3
	ldr	x0, [sp]
	add	x22, x0, x3
	ldr	x0, [sp, #24]
	add	x23, x0, x14, lsr #2
	sxtw	x14, w16
	ldr	x16, [sp, #32]
	add	x24, x16, x14
	ldr	x16, [sp, #40]
	add	x25, x16, x14
	b	.LBB21_10
.LBB21_8:
	strb	w16, [x28, #1]
.LBB21_9:
	add	w27, w27, #8
	add	w26, w26, #2
	add	x21, x21, #8
	add	x22, x22, #8
	subs	x20, x20, #1
	b.eq	.LBB21_3
.LBB21_10:
	ldr	x14, [x21]
	cmp	w1, #5
	ldr	x16, [x22]
	and	x0, x14, #0xf8f8f8f8f8f8f8f8
	and	x3, x16, #0xf8f8f8f8f8f8f8f8
	csel	x29, x0, x14, lo
	csel	x30, x3, x16, lo
	cmp	x29, x30
	b.eq	.LBB21_9
	add	x28, x23, w26, sxtw
	sxtw	x16, w27
	add	x14, x24, x16
	add	x4, x25, x16
	eor	x3, x30, x29
	ldrb	w0, [x28]
	tst	x3, #0xff
	str	w19, [x5, #60]
	b.eq	.LBB21_14
	ldrb	w16, [x14]
	cbnz	w16, .LBB21_14
	ldrb	w16, [x4]
	lsl	w2, w30, #2
	and	x2, x2, #0x3e0
	bfxil	x2, x29, #3, #5
	add	x16, x5, x16, lsl #3
	ldr	x16, [x16, #120]
	ldrb	w16, [x16, x2]
	strb	w19, [x14]
	orr	w0, w16, w0
.LBB21_14:
	tst	x3, #0xff00
	b.eq	.LBB21_17
	ldrb	w16, [x14, #1]
	cbnz	w16, .LBB21_17
	ldrb	w16, [x4, #1]
	lsr	x2, x30, #6
	and	x2, x2, #0x3e0
	bfxil	x2, x29, #11, #5
	add	x16, x5, x16, lsl #3
	ldr	x16, [x16, #120]
	ldrb	w16, [x16, x2]
	strb	w19, [x14, #1]
	orr	w0, w0, w16, lsl #2
.LBB21_17:
	tst	x3, #0xff0000
	b.eq	.LBB21_20
	ldrb	w16, [x14, #2]
	cbnz	w16, .LBB21_20
	ldrb	w16, [x4, #2]
	lsr	x2, x30, #14
	and	x2, x2, #0x3e0
	bfxil	x2, x29, #19, #5
	add	x16, x5, x16, lsl #3
	ldr	x16, [x16, #120]
	ldrb	w16, [x16, x2]
	strb	w19, [x14, #2]
	orr	w0, w0, w16, lsl #4
.LBB21_20:
	tst	x3, #0xff000000
	b.eq	.LBB21_23
	ldrb	w16, [x14, #3]
	cbnz	w16, .LBB21_23
	ldrb	w16, [x4, #3]
	lsr	x2, x30, #22
	and	x2, x2, #0x3e0
	bfxil	x2, x29, #27, #5
	add	x16, x5, x16, lsl #3
	ldr	x16, [x16, #120]
	ldrb	w16, [x16, x2]
	strb	w19, [x14, #3]
	orr	w0, w0, w16, lsl #6
.LBB21_23:
	ldrb	w16, [x28, #1]
	tst	x3, #0xff00000000
	strb	w0, [x28]
	b.eq	.LBB21_26
	ldrb	w0, [x14, #4]
	cbnz	w0, .LBB21_26
	ldrb	w0, [x4, #4]
	lsr	x2, x30, #30
	and	x2, x2, #0x3e0
	bfxil	x2, x29, #35, #5
	add	x0, x5, x0, lsl #3
	ldr	x0, [x0, #120]
	ldrb	w0, [x0, x2]
	strb	w19, [x14, #4]
	orr	w16, w0, w16
.LBB21_26:
	tst	x3, #0xff0000000000
	b.eq	.LBB21_29
	ldrb	w0, [x14, #5]
	cbnz	w0, .LBB21_29
	ldrb	w0, [x4, #5]
	lsr	x2, x30, #38
	and	x2, x2, #0x3e0
	bfxil	x2, x29, #43, #5
	add	x0, x5, x0, lsl #3
	ldr	x0, [x0, #120]
	ldrb	w0, [x0, x2]
	strb	w19, [x14, #5]
	orr	w16, w16, w0, lsl #2
.LBB21_29:
	tst	x3, #0xff000000000000
	b.eq	.LBB21_32
	ldrb	w0, [x14, #6]
	cbnz	w0, .LBB21_32
	ldrb	w0, [x4, #6]
	lsr	x2, x30, #46
	and	x2, x2, #0x3e0
	bfxil	x2, x29, #51, #5
	add	x0, x5, x0, lsl #3
	ldr	x0, [x0, #120]
	ldrb	w0, [x0, x2]
	strb	w19, [x14, #6]
	orr	w16, w16, w0, lsl #4
.LBB21_32:
	lsr	x0, x3, #56
	cbz	x0, .LBB21_8
	ldrb	w0, [x14, #7]
	cbnz	w0, .LBB21_8
	ldrb	w0, [x4, #7]
	lsr	x2, x30, #54
	and	x2, x2, #0x3e0
	bfxil	x2, x29, #59, #5
	add	x0, x5, x0, lsl #3
	ldr	x0, [x0, #120]
	ldrb	w0, [x0, x2]
	strb	w19, [x14, #7]
	orr	w16, w16, w0, lsl #6
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
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	stp	x24, x23, [sp, #96]
	cmp	w5, #3
	ldr	x9, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #112]
	stp	x20, x19, [sp, #128]
	mov	x19, x4
	mov	x20, x3
	mov	x21, x2
	ldp	w25, w26, [x9, #116]
	mov	x22, x1
	ldr	x8, [x4, #216]
	stp	x28, x27, [sp, #64]
	stp	x9, x0, [x29, #-16]
	lsr	w24, w25, #3
	b.eq	.LBB22_3
	add	x9, x19, #60
	cmp	w5, #2
	str	x9, [sp, #8]
	b.ne	.LBB22_4
	cmp	w26, #0
	mov	w27, wzr
	cinc	w9, w26, lt
	asr	w26, w9, #1
	b	.LBB22_5
.LBB22_3:
	cmp	w26, #0
	cinc	w9, w26, lt
	asr	w27, w9, #1
	mul	w9, w27, w24
	mul	w10, w27, w25
	sbfiz	x9, x9, #3, #32
	add	x22, x22, x9
	add	x21, x21, x9
	add	x20, x20, x10
	add	x9, x19, #64
	str	x9, [sp, #8]
	b	.LBB22_5
.LBB22_4:
	mov	w27, wzr
.LBB22_5:
	mul	w10, w27, w25
	subs	w9, w26, w27
	ldr	w23, [x8, #40]
	mov	w1, wzr
	lsr	w8, w10, #2
	ldur	x10, [x29, #-8]
	mul	w9, w9, w25
	add	x0, x10, x8
	lsr	w2, w9, #2
	bl	memset
	mov	w8, wzr
	cmp	w26, w27
	b.le	.LBB22_20
	cmp	w24, #1
	mov	w8, wzr
	csinc	w9, w24, wzr, hi
	sub	w24, w23, #7
	lsl	x28, x9, #3
	stur	w25, [x29, #-20]
	str	w26, [sp, #24]
	str	x9, [sp, #16]
	b	.LBB22_10
.LBB22_7:
	add	x22, x22, x26
	add	x21, x21, x26
	add	x20, x20, x26
.LBB22_8:
	ldr	w26, [sp, #24]
.LBB22_9:
	add	w27, w27, #2
	cmp	w27, w26
	b.ge	.LBB22_20
.LBB22_10:
	cmp	w25, #8
	b.lo	.LBB22_9
	ldur	x9, [x29, #-16]
	ldr	x25, [sp, #16]
	ldr	w9, [x9, #116]
	mul	w23, w9, w27
	ldur	x9, [x29, #-8]
	add	x26, x9, x23, lsr #2
	b	.LBB22_13
.LBB22_12:
	add	x21, x21, #8
	add	x22, x22, #8
	add	x20, x20, #8
	add	x26, x26, #4
	subs	x25, x25, #1
	b.eq	.LBB22_15
.LBB22_13:
	ldr	x9, [x22]
	cmp	w24, #5
	ldr	x10, [x21]
	and	x11, x9, #0xf8f8f8f8f8f8f8f8
	and	x12, x10, #0xf8f8f8f8f8f8f8f8
	csel	x9, x11, x9, lo
	csel	x10, x12, x10, lo
	cmp	x9, x10
	b.eq	.LBB22_12
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	mov	x3, x19
	mov	w4, wzr
	bl	get_one_auto_image2
	mov	w8, #1
	str	w0, [x26]
	b	.LBB22_12
.LBB22_15:
	ldur	w25, [x29, #-20]
	cmp	w25, #8
	b.lo	.LBB22_8
	ldur	x9, [x29, #-8]
	mov	x26, xzr
	add	x23, x9, x23, lsr #2
	b	.LBB22_18
.LBB22_17:
	add	x23, x23, #4
	add	x26, x26, #8
	cmp	x28, x26
	b.eq	.LBB22_7
.LBB22_18:
	add	x0, x22, x26
	add	x1, x21, x26
	cmp	w24, #5
	ldr	x9, [x0]
	ldr	x10, [x1]
	and	x11, x9, #0xf8f8f8f8f8f8f8f8
	and	x12, x10, #0xf8f8f8f8f8f8f8f8
	csel	x9, x11, x9, lo
	csel	x10, x12, x10, lo
	cmp	x9, x10
	b.eq	.LBB22_17
	add	x2, x20, x26
	mov	x3, x19
	mov	w4, #2
	bl	get_one_auto_image2
	ldr	w8, [x23]
	orr	w9, w8, w0
	mov	w8, #1
	str	w9, [x23]
	b	.LBB22_17
.LBB22_20:
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
	str	x27, [sp, #-80]!
	adrp	x8, global_ebc
	cmp	w5, #3
	stp	x26, x25, [sp, #16]
	stp	x24, x23, [sp, #32]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	ldp	w9, w10, [x8, #116]
	lsr	w16, w9, #3
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
	mul	w11, w12, w16
	mul	w13, w12, w9
	sbfiz	x11, x11, #3, #32
	add	x1, x1, x11
	add	x2, x2, x11
	add	x3, x3, x13
	add	x11, x4, #64
	cmp	w12, w10
	b.lt	.LBB23_7
.LBB23_4:
	mov	w20, wzr
.LBB23_5:
	str	w20, [x11]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldr	x27, [sp], #80
	ret
.LBB23_6:
	mov	w12, wzr
	cmp	w12, w10
	b.ge	.LBB23_4
.LBB23_7:
	ldr	x13, [x4, #216]
	cmp	w16, #1
	mov	w20, wzr
	ldr	w14, [x8, #196]
	csinc	w16, w16, wzr, hi
	add	x17, x0, #1
	ldr	w15, [x13, #40]
	ldrb	w13, [x4, #56]
	sub	w15, w15, #7
	b	.LBB23_10
.LBB23_8:
	add	x3, x3, x0
	add	x1, x1, x0
	add	x2, x2, x0
.LBB23_9:
	add	w12, w12, #1
	cmp	w12, w10
	b.eq	.LBB23_5
.LBB23_10:
	cbz	w14, .LBB23_12
	ldp	w6, w0, [x8, #116]
	mvn	w5, w12
	add	w5, w0, w5
	cmp	w9, #8
	b.lo	.LBB23_9
	b	.LBB23_13
.LBB23_12:
	ldr	w5, [x8, #116]
	mov	w6, w12
	cmp	w9, #8
	b.lo	.LBB23_9
.LBB23_13:
	mul	w5, w5, w6
	mov	x0, xzr
	mov	w6, w16
	lsr	w5, w5, #2
	add	x5, x17, x5
	b	.LBB23_16
.LBB23_14:
	sturh	wzr, [x5, #-1]
.LBB23_15:
	add	x0, x0, #8
	add	x5, x5, #2
	subs	w6, w6, #1
	b.eq	.LBB23_8
.LBB23_16:
	ldr	x19, [x1, x0]
	cmp	w15, #5
	ldr	x7, [x2, x0]
	and	x21, x19, #0xf8f8f8f8f8f8f8f8
	and	x22, x7, #0xf8f8f8f8f8f8f8f8
	csel	x19, x21, x19, lo
	csel	x7, x22, x7, lo
	cmp	x19, x7
	b.eq	.LBB23_14
	eor	x20, x7, x19
	tst	x20, #0xff
	b.eq	.LBB23_19
	ldrb	w22, [x3, x0]
	lsl	w23, w7, #2
	ldr	x21, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x19, #3, #5
	mov	x24, x7
	bfxil	x24, x19, #0, #8
	add	x21, x21, x22, lsl #10
	add	w25, w22, #1
	cmp	w13, w25, uxtb
	ldrb	w21, [x21, x23]
	csel	x7, x24, x7, eq
	csinc	w22, wzr, w22, eq
	strb	w22, [x3, x0]
	b	.LBB23_20
.LBB23_19:
	mov	w21, wzr
.LBB23_20:
	add	x22, x3, x0
	tst	x20, #0xff00
	b.eq	.LBB23_22
	ldrb	w23, [x22, #1]
	lsr	x24, x7, #6
	ldr	x25, [x4, #120]
	and	x24, x24, #0x3e0
	bfxil	x24, x19, #11, #5
	add	w26, w23, #1
	add	x25, x25, x23, lsl #10
	cmp	w13, w26, uxtb
	mov	x26, x7
	csinc	w23, wzr, w23, eq
	ldrb	w24, [x25, x24]
	lsr	x25, x19, #8
	strb	w23, [x22, #1]
	bfi	x26, x25, #8, #8
	orr	w21, w21, w24, lsl #2
	csel	x7, x26, x7, eq
.LBB23_22:
	tst	x20, #0xff0000
	b.eq	.LBB23_24
	ldrb	w23, [x22, #2]
	lsr	x24, x7, #14
	ldr	x25, [x4, #120]
	and	x24, x24, #0x3e0
	bfxil	x24, x19, #19, #5
	add	w26, w23, #1
	add	x25, x25, x23, lsl #10
	cmp	w13, w26, uxtb
	mov	x26, x7
	csinc	w23, wzr, w23, eq
	ldrb	w24, [x25, x24]
	lsr	x25, x19, #16
	strb	w23, [x22, #2]
	bfi	x26, x25, #16, #8
	orr	w21, w21, w24, lsl #4
	csel	x7, x26, x7, eq
.LBB23_24:
	add	x22, x3, x0
	tst	x20, #0xff000000
	b.eq	.LBB23_26
	ldrb	w23, [x22, #3]
	lsr	x24, x7, #22
	ldr	x25, [x4, #120]
	and	x24, x24, #0x3e0
	bfxil	x24, x19, #27, #5
	add	w26, w23, #1
	add	x25, x25, x23, lsl #10
	cmp	w13, w26, uxtb
	mov	x26, x7
	csinc	w23, wzr, w23, eq
	ldrb	w24, [x25, x24]
	lsr	x25, x19, #24
	strb	w23, [x22, #3]
	bfi	x26, x25, #24, #8
	orr	w21, w21, w24, lsl #6
	csel	x7, x26, x7, eq
.LBB23_26:
	tst	x20, #0xff00000000
	sturb	w21, [x5, #-1]
	b.eq	.LBB23_28
	ldrb	w23, [x22, #4]
	lsr	x21, x7, #30
	ldr	x24, [x4, #120]
	and	x21, x21, #0x3e0
	bfxil	x21, x19, #35, #5
	lsr	x25, x19, #32
	mov	x26, x7
	add	w27, w23, #1
	add	x24, x24, x23, lsl #10
	cmp	w13, w27, uxtb
	bfi	x26, x25, #32, #8
	csinc	w23, wzr, w23, eq
	ldrb	w21, [x24, x21]
	csel	x7, x26, x7, eq
	strb	w23, [x22, #4]
	b	.LBB23_29
.LBB23_28:
	mov	w21, wzr
.LBB23_29:
	add	x22, x3, x0
	tst	x20, #0xff0000000000
	b.eq	.LBB23_31
	ldrb	w23, [x22, #5]
	lsr	x24, x7, #38
	ldr	x25, [x4, #120]
	and	x24, x24, #0x3e0
	bfxil	x24, x19, #43, #5
	add	w26, w23, #1
	add	x25, x25, x23, lsl #10
	cmp	w13, w26, uxtb
	mov	x26, x7
	csinc	w23, wzr, w23, eq
	ldrb	w24, [x25, x24]
	lsr	x25, x19, #40
	strb	w23, [x22, #5]
	bfi	x26, x25, #40, #8
	orr	w21, w21, w24, lsl #2
	csel	x7, x26, x7, eq
.LBB23_31:
	tst	x20, #0xff000000000000
	b.eq	.LBB23_33
	ldrb	w23, [x22, #6]
	lsr	x24, x7, #46
	ldr	x25, [x4, #120]
	and	x24, x24, #0x3e0
	bfxil	x24, x19, #51, #5
	add	w26, w23, #1
	add	x25, x25, x23, lsl #10
	cmp	w13, w26, uxtb
	mov	x26, x7
	csinc	w23, wzr, w23, eq
	ldrb	w24, [x25, x24]
	lsr	x25, x19, #48
	strb	w23, [x22, #6]
	bfi	x26, x25, #48, #8
	orr	w21, w21, w24, lsl #4
	csel	x7, x26, x7, eq
.LBB23_33:
	lsr	x20, x20, #56
	cbz	x20, .LBB23_35
	add	x20, x3, x0
	ldr	x23, [x4, #120]
	lsr	x24, x7, #54
	and	x24, x24, #0x3e0
	ldrb	w22, [x20, #7]
	bfxil	x24, x19, #59, #5
	bfxil	x19, x7, #0, #56
	add	x23, x23, x22, lsl #10
	ldrb	w23, [x23, x24]
	add	w24, w22, #1
	cmp	w13, w24, uxtb
	csinc	w22, wzr, w22, eq
	csel	x7, x19, x7, eq
	orr	w21, w21, w23, lsl #6
	strb	w22, [x20, #7]
.LBB23_35:
	mov	w20, #1
	str	x7, [x2, x0]
	strb	w21, [x5]
	b	.LBB23_15
.Lfunc_end23:
	.size	get_auto_image, .Lfunc_end23-get_auto_image

	.p2align	2
	.type	direct_mode_data_change_part2,@function
direct_mode_data_change_part2:
	sub	sp, sp, #160
	str	x30, [x18], #8
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	stp	x28, x27, [sp, #80]
	adrp	x9, global_ebc
	stp	x26, x25, [sp, #96]
	mov	x10, #1538
	stp	x24, x23, [sp, #112]
	movk	x10, #3594, lsl #16
	stp	x22, x21, [sp, #128]
	movk	x10, #5650, lsl #32
	stp	x20, x19, [sp, #144]
	mov	x19, x3
	str	x0, [sp, #24]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x2
	mov	x21, x1
	movk	x10, #7706, lsl #48
	cmp	w4, #3
	stur	x8, [x29, #-8]
	ldr	x8, [x9, :lo12:global_ebc]
	mov	x9, #1024
	movk	x9, #3080, lsl #16
	ldrb	w22, [x3, #56]
	movk	x9, #5136, lsl #32
	ldr	w28, [x3, #72]
	ldp	w11, w12, [x8, #116]
	movk	x9, #7192, lsl #48
	ldr	x23, [x3, #120]
	lsr	w25, w11, #3
	stp	x10, x9, [x29, #-24]
	b.eq	.LBB24_3
	cmp	w4, #2
	b.ne	.LBB24_4
	cmp	w12, #0
	mov	w26, wzr
	cinc	w8, w12, lt
	asr	w12, w8, #1
	b	.LBB24_5
.LBB24_3:
	cmp	w12, #0
	cinc	w8, w12, lt
	asr	w26, w8, #1
	mul	w8, w26, w25
	sbfiz	x8, x8, #3, #32
	add	x21, x21, x8
	add	x20, x20, x8
	b	.LBB24_5
.LBB24_4:
	mov	w26, wzr
.LBB24_5:
	lsr	w24, w11, #2
	subs	w8, w12, w26
	ldr	x9, [sp, #24]
	mov	w1, wzr
	mul	w27, w26, w24
	str	w12, [sp, #20]
	mul	w8, w8, w24
	stur	w11, [x29, #-28]
	add	x0, x9, w27, sxtw
	sxtw	x2, w8
	bl	memset
	ldr	w10, [sp, #20]
	ldur	w9, [x29, #-28]
	cmp	w10, w26
	b.le	.LBB24_20
	sub	w8, w22, w28
	cmp	w25, #1
	lsl	w8, w8, #10
	csinc	w11, w25, wzr, hi
	lsl	x28, x11, #3
	add	x23, x23, w8, sxtw
	lsl	w8, w24, #1
	str	x11, [sp, #8]
	str	w8, [sp, #4]
	b	.LBB24_10
.LBB24_7:
	add	x21, x21, x22
	add	x20, x20, x22
	ldur	w9, [x29, #-28]
.LBB24_8:
	ldr	w10, [sp, #20]
	ldr	w8, [sp, #4]
.LBB24_9:
	add	w26, w26, #2
	add	w27, w27, w8
	cmp	w26, w10
	b.ge	.LBB24_20
.LBB24_10:
	cmp	w9, #8
	b.lo	.LBB24_9
	ldr	x8, [sp, #24]
	ldr	x22, [sp, #8]
	add	x24, x8, w27, sxtw
	mov	x25, x24
	b	.LBB24_13
.LBB24_12:
	add	x25, x25, #4
	subs	x22, x22, #1
	b.eq	.LBB24_15
.LBB24_13:
	ldr	x2, [x21], #8
	ldr	x1, [x20], #8
	cmp	x2, x1
	b.eq	.LBB24_12
	ldr	x8, [x19, #216]
	sub	x3, x29, #16
	mov	x0, x23
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	str	w0, [x25]
	b	.LBB24_12
.LBB24_15:
	ldur	w9, [x29, #-28]
	cmp	w9, #8
	b.lo	.LBB24_8
	mov	x22, xzr
	b	.LBB24_18
.LBB24_17:
	add	x24, x24, #4
	add	x22, x22, #8
	cmp	x28, x22
	b.eq	.LBB24_7
.LBB24_18:
	ldr	x2, [x21, x22]
	ldr	x1, [x20, x22]
	cmp	x2, x1
	b.eq	.LBB24_17
	ldr	x8, [x19, #216]
	sub	x3, x29, #24
	mov	x0, x23
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	ldr	w8, [x24]
	orr	w8, w8, w0
	str	w8, [x24]
	b	.LBB24_17
.LBB24_20:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB24_22
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB24_22:
	bl	__stack_chk_fail
.Lfunc_end24:
	.size	direct_mode_data_change_part2, .Lfunc_end24-direct_mode_data_change_part2

	.p2align	2
	.type	direct_mode_data_change_part,@function
direct_mode_data_change_part:
	sub	sp, sp, #144
	str	x30, [x18], #8
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	stp	x28, x27, [sp, #64]
	adrp	x9, global_ebc
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	mov	x21, x1
	stp	x20, x19, [sp, #128]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x3
	mov	x20, x2
	mov	x22, x0
	cmp	w4, #3
	stur	x8, [x29, #-8]
	ldr	x27, [x9, :lo12:global_ebc]
	mov	x9, #512
	movk	x9, #1540, lsl #16
	ldrb	w24, [x3, #56]
	movk	x9, #2568, lsl #32
	ldr	w12, [x3, #72]
	ldp	w10, w8, [x27, #116]
	ldr	x11, [x3, #120]
	movk	x9, #3596, lsl #48
	str	w12, [sp, #12]
	lsr	w23, w10, #3
	stur	w10, [x29, #-20]
	stur	x9, [x29, #-16]
	str	x11, [sp, #16]
	b.eq	.LBB25_3
	cmp	w4, #2
	b.ne	.LBB25_4
	cmp	w8, #0
	mov	w25, wzr
	cinc	w9, w8, lt
	asr	w26, w9, #1
	b	.LBB25_6
.LBB25_3:
	cmp	w8, #0
	cinc	w9, w8, lt
	asr	w25, w9, #1
	mul	w9, w25, w23
	sbfiz	x9, x9, #3, #32
	add	x21, x21, x9
	add	x20, x20, x9
	b	.LBB25_5
.LBB25_4:
	mov	w25, wzr
.LBB25_5:
	mov	w26, w8
.LBB25_6:
	ldur	w10, [x29, #-20]
	ldr	w9, [x27, #196]
	lsr	w28, w10, #2
	cbz	w9, .LBB25_8
	sub	w8, w8, w26
	sub	w9, w26, w25
	mov	w1, wzr
	mul	w8, w8, w28
	mul	w9, w9, w28
	add	x0, x22, x8
	sxtw	x2, w9
	bl	memset
	ldr	w8, [x27, #120]
	mvn	w9, w25
	add	w8, w8, w9
	mul	w8, w8, w28
	neg	w28, w28
	add	x22, x22, x8
	cmp	w26, w25
	b.gt	.LBB25_9
	b	.LBB25_16
.LBB25_8:
	sub	w8, w26, w25
	mul	w9, w25, w28
	mov	w1, wzr
	mul	w8, w8, w28
	add	x22, x22, w9, sxtw
	sxtw	x2, w8
	mov	x0, x22
	bl	memset
	cmp	w26, w25
	b.le	.LBB25_16
.LBB25_9:
	ldr	w8, [sp, #12]
	cmp	w23, #1
	ldr	x10, [sp, #16]
	csinc	w9, w23, wzr, hi
	sxtw	x27, w28
	lsl	x28, x9, #1
	sub	w8, w24, w8
	lsl	w8, w8, #10
	add	x23, x10, w8, sxtw
	b	.LBB25_11
.LBB25_10:
	add	w25, w25, #1
	add	x22, x22, x27
	cmp	w25, w26
	b.eq	.LBB25_16
.LBB25_11:
	ldur	w8, [x29, #-20]
	cmp	w8, #8
	b.lo	.LBB25_10
	mov	x24, xzr
	b	.LBB25_14
.LBB25_13:
	add	x24, x24, #2
	cmp	x28, x24
	b.eq	.LBB25_10
.LBB25_14:
	ldr	x2, [x21], #8
	ldr	x1, [x20], #8
	cmp	x2, x1
	b.eq	.LBB25_13
	ldr	x8, [x19, #216]
	sub	x3, x29, #16
	mov	x0, x23
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	strh	w0, [x22, x24]
	b	.LBB25_13
.LBB25_16:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB25_18
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.LBB25_18:
	bl	__stack_chk_fail
.Lfunc_end25:
	.size	direct_mode_data_change_part, .Lfunc_end25-direct_mode_data_change_part

	.p2align	2
	.type	is_full_refresh_done,@function
is_full_refresh_done:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	ldp	w10, w9, [x0, #80]
	ldr	w13, [x0, #628]
	mov	x8, x0
	ldr	x0, [x0, #160]
	mov	x29, sp
	add	w11, w9, #7
	cmp	w9, #0
	csel	w11, w11, w9, lt
	add	w12, w9, #15
	asr	w11, w11, #3
	csel	w12, w12, w9, lt
	cmp	w13, #3
	b.eq	.LBB26_6
	cmp	w13, #5
	b.ne	.LBB26_9
	cmp	w9, #8
	b.lt	.LBB26_11
	cmp	w11, #1
	ldrb	w8, [x8, #56]
	csinc	w11, w11, wzr, gt
	mov	w13, w10
	add	w12, w11, #1
	sub	x11, x0, #8
	sub	x12, x12, #1
.LBB26_4:
	sbfiz	x14, x13, #3, #32
	ldrb	w14, [x11, x14]
	cmp	x14, #255
	ccmp	x14, x8, #0, ne
	b.lo	.LBB26_10
	add	w13, w13, w10
	subs	x12, x12, #1
	b.ne	.LBB26_4
	b	.LBB26_11
.LBB26_6:
	cmp	w10, #0
	cinc	w13, w10, lt
	asr	w13, w13, #1
	mul	w13, w13, w11
	sbfiz	x13, x13, #3, #32
	ldrb	w14, [x0, x13]
	ldrb	w13, [x8, #56]
	cmp	x14, #255
	ccmp	x14, x13, #0, ne
	b.lo	.LBB26_10
	mul	w8, w10, w11
	neg	w11, w12, asr #4
	sbfiz	x11, x11, #3, #32
	add	x8, x0, w8, sxtw #3
	ldrb	w11, [x8, x11]
	mov	w8, wzr
	cmp	x11, x13
	b.lo	.LBB26_12
	cmp	x11, #255
	b.ne	.LBB26_11
	b	.LBB26_12
.LBB26_9:
	mul	w11, w10, w11
	ldrb	w8, [x8, #56]
	add	x11, x0, w11, sxtw #3
	ldurb	w11, [x11, #-8]
	cmp	x11, #255
	ccmp	x11, x8, #0, ne
	b.hs	.LBB26_11
.LBB26_10:
	mov	w8, wzr
	b	.LBB26_12
.LBB26_11:
	mul	w8, w10, w9
	mov	w1, wzr
	sxtw	x2, w8
	bl	memset
	mov	w8, #1
.LBB26_12:
	mov	w0, w8
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end26:
	.size	is_full_refresh_done, .Lfunc_end26-is_full_refresh_done

	.p2align	2
	.type	direct_mode_data_change_full2,@function
direct_mode_data_change_full2:
	sub	sp, sp, #160
	str	x30, [x18], #8
	adrp	x8, global_ebc
	ldr	x9, [x3, #160]
	stp	x22, x21, [sp, #128]
	stp	x28, x27, [sp, #80]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #144]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	stp	x26, x25, [sp, #96]
	ldp	w15, w10, [x8, #116]
	stp	x24, x23, [sp, #112]
	str	x0, [sp, #16]
	cmp	w10, #0
	lsr	w8, w15, #3
	cinc	w11, w10, lt
	cmp	w10, #0
	asr	w11, w11, #1
	cinc	w12, w10, lt
	cmp	w4, #2
	asr	w12, w12, #1
	mul	w13, w11, w8
	csel	w14, wzr, wzr, ne
	csel	w12, w10, w12, ne
	cmp	w4, #3
	sbfiz	x13, x13, #3, #32
	csel	w21, w11, w14, eq
	add	x11, x1, x13
	add	x14, x2, x13
	add	x13, x9, x13
	csel	x28, x14, x2, eq
	csel	x20, x11, x1, eq
	csel	w10, w10, w12, eq
	csel	x27, x13, x9, eq
	cmp	w21, w10
	b.ge	.LBB27_24
	lsr	w9, w15, #2
	cmp	w8, #1
	csinc	w8, w8, wzr, hi
	mov	x19, x3
	mul	w11, w21, w9
	lsl	w9, w9, #1
	lsl	x8, x8, #3
	str	w15, [sp, #24]
	stp	w9, w10, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB27_5
.LBB27_2:
	add	x8, x27, x22
	add	x9, x20, x22
	add	x10, x28, x22
	add	x27, x8, x23
	ldp	w15, w11, [sp, #24]
	add	x20, x9, x23
	add	x28, x10, x23
	ldr	w10, [sp, #12]
	ldur	w21, [x29, #-12]
.LBB27_3:
	ldr	w9, [sp, #8]
.LBB27_4:
	add	w21, w21, #2
	add	w11, w11, w9
	cmp	w21, w10
	b.ge	.LBB27_24
.LBB27_5:
	cmp	w15, #8
	b.lo	.LBB27_4
	ldr	x8, [sp, #16]
	mov	x22, xzr
	str	w11, [sp, #28]
	add	x24, x8, w11, sxtw
	mov	x23, x24
	b	.LBB27_9
.LBB27_7:
	ldr	x9, [x19, #120]
	lsl	w10, w26, #2
	lsr	x11, x26, #6
	and	x10, x10, #0x3e0
	and	x11, x11, #0x3e0
	bfxil	x10, x25, #3, #5
	add	x8, x9, x8, lsl #10
	lsr	x9, x26, #14
	bfxil	x11, x25, #11, #5
	and	x9, x9, #0x3e0
	lsr	x12, x26, #22
	bfxil	x9, x25, #19, #5
	and	x12, x12, #0x3e0
	lsr	x13, x26, #30
	bfxil	x12, x25, #27, #5
	and	x13, x13, #0x3e0
	lsr	x14, x26, #38
	ldrb	w10, [x8, x10]
	ldrb	w11, [x8, x11]
	bfxil	x13, x25, #35, #5
	and	x14, x14, #0x3e0
	lsr	x15, x26, #46
	ldrb	w9, [x8, x9]
	bfxil	x14, x25, #43, #5
	and	x15, x15, #0x3e0
	lsr	x16, x26, #54
	ldrb	w12, [x8, x12]
	bfxil	x15, x25, #51, #5
	and	x16, x16, #0x3e0
	ldrb	w13, [x8, x13]
	bfxil	x16, x25, #59, #5
	orr	w10, w10, w11, lsl #4
	ldrb	w11, [x8, x14]
	orr	w9, w10, w9, lsl #8
	ldrb	w10, [x8, x15]
	orr	w9, w9, w12, lsl #12
	ldrb	w8, [x8, x16]
	orr	w9, w9, w13, lsl #16
	orr	w9, w9, w11, lsl #20
	orr	w9, w9, w10, lsl #24
	orr	w8, w9, w8, lsl #28
	str	w8, [x23]
	ldr	x8, [x27, x22]
	add	x8, x8, #1
	str	x8, [x27, x22]
.LBB27_8:
	ldur	x8, [x29, #-8]
	add	x22, x22, #8
	add	x23, x23, #4
	cmp	x8, x22
	b.eq	.LBB27_14
.LBB27_9:
	ldr	x25, [x20, x22]
	mov	x0, x19
	ldr	x26, [x28, x22]
	mov	w1, w21
	mov	w2, w22
	bl	is_full_refresh_area
	ldr	x8, [x27, x22]
	tbz	w0, #0, .LBB27_12
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB27_12
	mov	x8, xzr
	str	xzr, [x27, x22]
.LBB27_12:
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB27_7
	str	wzr, [x23]
	b	.LBB27_8
.LBB27_14:
	ldr	w15, [sp, #24]
	add	x25, x27, x22
	add	x9, x20, x22
	add	x10, x28, x22
	cmp	w15, #8
	b.hs	.LBB27_16
	mov	x28, x10
	ldr	w10, [sp, #12]
	ldr	w11, [sp, #28]
	mov	x20, x9
	mov	x27, x25
	b	.LBB27_3
.LBB27_16:
	mov	x23, xzr
	stur	w21, [x29, #-12]
	stur	x9, [x29, #-24]
	str	x20, [sp, #32]
	b	.LBB27_19
.LBB27_17:
	ldr	x9, [x19, #120]
	lsr	x11, x26, #6
	lsl	w10, w26, #2
	and	x11, x11, #0x3e0
	lsr	x12, x26, #14
	and	x10, x10, #0x3e0
	bfxil	x11, x28, #11, #5
	bfxil	x10, x28, #3, #5
	add	x8, x9, x8, lsl #10
	and	x9, x12, #0x3e0
	lsr	x12, x26, #22
	bfxil	x9, x28, #19, #5
	and	x12, x12, #0x3e0
	lsr	x13, x26, #30
	ldrb	w11, [x8, x11]
	bfxil	x12, x28, #27, #5
	and	x13, x13, #0x3e0
	lsr	x14, x26, #38
	ldrb	w10, [x8, x10]
	bfxil	x13, x28, #35, #5
	and	x14, x14, #0x3e0
	lsr	x15, x26, #46
	ldrb	w9, [x8, x9]
	bfxil	x14, x28, #43, #5
	and	x15, x15, #0x3e0
	lsr	x16, x26, #54
	bfxil	x15, x28, #51, #5
	ldrb	w12, [x8, x12]
	and	x16, x16, #0x3e0
	lsl	w11, w11, #6
	ldrb	w13, [x8, x13]
	bfxil	x16, x28, #59, #5
	orr	w10, w11, w10, lsl #2
	ldrb	w11, [x8, x14]
	orr	w9, w10, w9, lsl #10
	ldrb	w10, [x8, x15]
	orr	w9, w9, w12, lsl #14
	ldrb	w8, [x8, x16]
	orr	w9, w9, w13, lsl #18
	ldr	w12, [x24]
	orr	w9, w9, w11, lsl #22
	orr	w9, w9, w10, lsl #26
	orr	w9, w9, w12
	orr	w8, w9, w8, lsl #30
	str	w8, [x24]
	ldr	x8, [x25, x23]
	add	x8, x8, #1
	str	x8, [x25, x23]
.LBB27_18:
	ldur	x8, [x29, #-8]
	mov	x28, x20
	ldr	x20, [sp, #32]
	mov	x10, x21
	ldur	x9, [x29, #-24]
	add	x23, x23, #8
	add	x24, x24, #4
	cmp	x8, x23
	b.eq	.LBB27_2
.LBB27_19:
	mov	x20, x28
	ldr	x28, [x9, x23]
	ldr	x26, [x10, x23]
	mov	x0, x19
	ldur	w1, [x29, #-12]
	mov	w2, w23
	mov	x21, x10
	bl	is_full_refresh_area
	ldr	x8, [x25, x23]
	tbz	w0, #0, .LBB27_22
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB27_22
	mov	x8, xzr
	str	xzr, [x25, x23]
.LBB27_22:
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB27_17
	str	wzr, [x24]
	b	.LBB27_18
.LBB27_24:
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.Lfunc_end27:
	.size	direct_mode_data_change_full2, .Lfunc_end27-direct_mode_data_change_full2

	.p2align	2
	.type	direct_mode_data_change_full,@function
direct_mode_data_change_full:
	sub	sp, sp, #128
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #112]
	mov	x19, x3
	ldr	x9, [x3, #160]
	stp	x26, x25, [sp, #64]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #80]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]
	ldp	w3, w10, [x8, #116]
	ldr	w11, [x8, #196]
	stp	x22, x21, [sp, #96]
	cmp	w10, #0
	lsr	w8, w3, #3
	cinc	w12, w10, lt
	cmp	w10, #0
	cinc	w13, w10, lt
	asr	w12, w12, #1
	cmp	w4, #2
	asr	w13, w13, #1
	csel	w14, wzr, wzr, ne
	csel	w13, w10, w13, ne
	cmp	w4, #3
	mul	w15, w12, w8
	csel	w20, w12, w14, eq
	lsr	w16, w3, #2
	mvn	w14, w20
	sbfiz	x12, x15, #3, #32
	add	w14, w10, w14
	add	x15, x1, x12
	add	x17, x2, x12
	add	x12, x9, x12
	csel	w13, w10, w13, eq
	mul	w10, w20, w16
	csel	x26, x12, x9, eq
	mul	w9, w14, w16
	csel	x23, x17, x2, eq
	csel	x24, x15, x1, eq
	sxtw	x10, w10
	cmp	w11, #0
	csel	x9, x10, x9, eq
	cneg	w10, w16, ne
	cmp	w20, w13
	b.ge	.LBB28_13
	cmp	w8, #1
	sxtw	x10, w10
	csinc	w8, w8, wzr, hi
	add	x28, x0, x9
	lsl	x22, x8, #3
	stur	w3, [x29, #-12]
	str	w13, [sp, #16]
	str	x10, [sp, #8]
	b	.LBB28_4
.LBB28_2:
	add	x26, x26, x21
	add	x24, x24, x21
	add	x23, x23, x21
	ldur	w3, [x29, #-12]
	ldr	w13, [sp, #16]
	ldr	x10, [sp, #8]
	ldur	x28, [x29, #-8]
.LBB28_3:
	add	w20, w20, #1
	add	x28, x28, x10
	cmp	w20, w13
	b.eq	.LBB28_13
.LBB28_4:
	cmp	w3, #8
	b.lo	.LBB28_3
	mov	x21, xzr
	stur	x28, [x29, #-8]
	b	.LBB28_8
.LBB28_6:
	ldr	x9, [x19, #120]
	lsl	w10, w27, #2
	lsr	x11, x27, #6
	and	x10, x10, #0x3e0
	and	x11, x11, #0x3e0
	bfxil	x10, x25, #3, #5
	add	x8, x9, x8, lsl #10
	lsr	x9, x27, #14
	bfxil	x11, x25, #11, #5
	and	x9, x9, #0x3e0
	lsr	x12, x27, #22
	bfxil	x9, x25, #19, #5
	and	x12, x12, #0x3e0
	lsr	x13, x27, #30
	bfxil	x12, x25, #27, #5
	and	x13, x13, #0x3e0
	lsr	x14, x27, #38
	ldrb	w10, [x8, x10]
	ldrb	w11, [x8, x11]
	bfxil	x13, x25, #35, #5
	and	x14, x14, #0x3e0
	lsr	x15, x27, #46
	ldrb	w9, [x8, x9]
	bfxil	x14, x25, #43, #5
	and	x15, x15, #0x3e0
	lsr	x16, x27, #54
	ldrb	w12, [x8, x12]
	bfxil	x15, x25, #51, #5
	and	x16, x16, #0x3e0
	ldrb	w13, [x8, x13]
	bfxil	x16, x25, #59, #5
	orr	w10, w10, w11, lsl #2
	ldrb	w11, [x8, x14]
	orr	w9, w10, w9, lsl #4
	ldrb	w10, [x8, x15]
	orr	w9, w9, w12, lsl #6
	ldrb	w8, [x8, x16]
	orr	w9, w9, w13, lsl #8
	orr	w9, w9, w11, lsl #10
	orr	w9, w9, w10, lsl #12
	orr	w8, w9, w8, lsl #14
	strh	w8, [x28]
	ldr	x8, [x26, x21]
	add	x8, x8, #1
	str	x8, [x26, x21]
.LBB28_7:
	add	x21, x21, #8
	add	x28, x28, #2
	cmp	x22, x21
	b.eq	.LBB28_2
.LBB28_8:
	ldr	x25, [x24, x21]
	mov	x0, x19
	ldr	x27, [x23, x21]
	mov	w1, w20
	mov	w2, w21
	bl	is_full_refresh_area
	ldr	x8, [x26, x21]
	tbz	w0, #0, .LBB28_11
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB28_11
	mov	x8, xzr
	str	xzr, [x26, x21]
.LBB28_11:
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB28_6
	strh	wzr, [x28]
	b	.LBB28_7
.LBB28_13:
	ldp	x20, x19, [sp, #112]
	ldp	x22, x21, [sp, #96]
	ldp	x24, x23, [sp, #80]
	ldp	x26, x25, [sp, #64]
	ldp	x28, x27, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #128
	ret
.Lfunc_end28:
	.size	direct_mode_data_change_full, .Lfunc_end28-direct_mode_data_change_full

	.p2align	2
	.type	direct_mode_data_change2,@function
direct_mode_data_change2:
	sub	sp, sp, #160
	str	x30, [x18], #8
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	stp	x28, x27, [sp, #80]
	adrp	x9, global_ebc
	stp	x26, x25, [sp, #96]
	mov	x12, #1024
	stp	x24, x23, [sp, #112]
	mov	x13, #1538
	stp	x22, x21, [sp, #128]
	movk	x12, #3080, lsl #16
	stp	x20, x19, [sp, #144]
	movk	x13, #3594, lsl #16
	str	x0, [sp, #32]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	movk	x12, #5136, lsl #32
	movk	x13, #5650, lsl #32
	mov	x19, x2
	mov	x20, x1
	movk	x12, #7192, lsl #48
	stur	x8, [x29, #-8]
	movk	x13, #7706, lsl #48
	ldr	x10, [x9, :lo12:global_ebc]
	cmp	w4, #3
	ldrb	w9, [x3, #56]
	ldr	w11, [x3, #72]
	stp	x13, x12, [x29, #-24]
	ldp	w23, w14, [x10, #116]
	ldr	x8, [x3, #120]
	lsr	w10, w23, #3
	b.eq	.LBB29_3
	cmp	w4, #2
	b.ne	.LBB29_4
	cmp	w14, #0
	mov	w25, wzr
	cinc	w12, w14, lt
	asr	w14, w12, #1
	cmp	w25, w14
	b.lt	.LBB29_5
	b	.LBB29_15
.LBB29_3:
	cmp	w14, #0
	cinc	w12, w14, lt
	asr	w25, w12, #1
	mul	w12, w25, w10
	sbfiz	x12, x12, #3, #32
	add	x20, x20, x12
	add	x19, x19, x12
	cmp	w25, w14
	b.lt	.LBB29_5
	b	.LBB29_15
.LBB29_4:
	mov	w25, wzr
	cmp	w25, w14
	b.ge	.LBB29_15
.LBB29_5:
	sub	w9, w9, w11
	lsr	w11, w23, #2
	cmp	w10, #1
	lsl	w9, w9, #10
	csinc	w10, w10, wzr, hi
	mul	w27, w25, w11
	add	x22, x8, w9, sxtw
	lsl	w8, w11, #1
	lsl	x21, x10, #3
	str	w14, [sp, #28]
	str	x10, [sp, #16]
	str	w8, [sp, #12]
	b	.LBB29_8
.LBB29_6:
	ldr	w14, [sp, #28]
	ldr	w8, [sp, #12]
.LBB29_7:
	add	w25, w25, #2
	add	w27, w27, w8
	cmp	w25, w14
	b.ge	.LBB29_15
.LBB29_8:
	cmp	w23, #8
	b.lo	.LBB29_7
	ldr	x8, [sp, #32]
	ldr	x24, [sp, #16]
	add	x28, x8, w27, sxtw
	mov	x26, x28
.LBB29_10:
	ldr	x2, [x20], #8
	ldr	x1, [x19], #8
	sub	x3, x29, #16
	mov	x0, x22
	bl	ebc_get_8pix_wf_full
	subs	x24, x24, #1
	str	w0, [x26], #4
	b.ne	.LBB29_10
	cmp	w23, #8
	b.lo	.LBB29_6
	mov	x24, xzr
.LBB29_13:
	ldr	x2, [x20, x24]
	sub	x3, x29, #24
	ldr	x1, [x19, x24]
	mov	x0, x22
	bl	ebc_get_8pix_wf_full
	ldr	w8, [x28]
	add	x24, x24, #8
	cmp	x21, x24
	orr	w8, w8, w0
	str	w8, [x28], #4
	b.ne	.LBB29_13
	add	x20, x20, x24
	add	x19, x19, x24
	b	.LBB29_6
.LBB29_15:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB29_17
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB29_17:
	bl	__stack_chk_fail
.Lfunc_end29:
	.size	direct_mode_data_change2, .Lfunc_end29-direct_mode_data_change2

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
	.type	ebc_get_8pix_wf_part,@function
ebc_get_8pix_wf_part:
	sub	w8, w4, #2
	and	x9, x1, #0xf8f8f8f8f8f8f8f8
	cmp	w8, #10
	csel	x8, x9, x1, lo
	eor	x10, x8, x2
	cbz	x10, .LBB31_15
	tst	x10, #0xff
	b.eq	.LBB31_16
	ldrb	w9, [x3]
	mov	w11, #3
	lsl	w9, w11, w9
	tst	x10, #0xff00
	b.eq	.LBB31_4
.LBB31_3:
	ldrb	w11, [x3, #1]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_4:
	tst	x10, #0xff0000
	b.eq	.LBB31_6
	ldrb	w11, [x3, #2]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_6:
	tst	x10, #0xff000000
	b.eq	.LBB31_8
	ldrb	w11, [x3, #3]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_8:
	tst	x10, #0xff00000000
	b.eq	.LBB31_10
	ldrb	w11, [x3, #4]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_10:
	tst	x10, #0xff0000000000
	b.eq	.LBB31_12
	ldrb	w11, [x3, #5]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_12:
	tst	x10, #0xff000000000000
	b.eq	.LBB31_14
	ldrb	w11, [x3, #6]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_14:
	lsl	w11, w8, #2
	lsr	x12, x8, #6
	and	x13, x11, #0x3e0
	lsr	x15, x8, #14
	bfxil	x13, x2, #3, #5
	and	x12, x12, #0x3e0
	and	x15, x15, #0x3e0
	bfxil	x12, x2, #11, #5
	bfxil	x15, x2, #19, #5
	ldrb	w14, [x3]
	ldrb	w13, [x0, x13]
	lsr	x10, x10, #56
	ldrb	w12, [x0, x12]
	lsr	x17, x8, #22
	ldrb	w15, [x0, x15]
	cmp	x10, #0
	ldrb	w16, [x3, #1]
	ldrb	w10, [x3, #2]
	lsl	w13, w13, w14
	and	x14, x17, #0x3e0
	lsr	x17, x8, #30
	bfxil	x14, x2, #27, #5
	lsl	w12, w12, w16
	and	x16, x17, #0x3e0
	lsl	w10, w15, w10
	lsr	x15, x8, #38
	orr	w12, w12, w13
	bfxil	x16, x2, #35, #5
	ldrb	w13, [x0, x14]
	and	x15, x15, #0x3e0
	lsr	x17, x8, #46
	orr	w10, w12, w10
	ldrb	w12, [x3, #3]
	bfxil	x15, x2, #43, #5
	and	x17, x17, #0x3e0
	lsr	x8, x8, #54
	bfxil	x17, x2, #51, #5
	and	x8, x8, #0x3e0
	ldrb	w14, [x0, x16]
	bfxil	x8, x2, #59, #5
	ldrb	w16, [x3, #4]
	ldrb	w15, [x0, x15]
	lsl	w12, w13, w12
	ldrb	w13, [x3, #5]
	orr	w10, w10, w12
	ldrb	w12, [x0, x17]
	lsl	w14, w14, w16
	ldrb	w11, [x3, #7]
	mov	w16, #3
	ldrb	w8, [x0, x8]
	orr	w10, w10, w14
	ldrb	w17, [x3, #6]
	lsl	w13, w15, w13
	lsl	w14, w16, w11
	orr	w10, w10, w13
	csel	w14, wzr, w14, eq
	lsl	w12, w12, w17
	lsl	w8, w8, w11
	orr	w10, w10, w12
	orr	w9, w9, w14
	orr	w8, w10, w8
	and	w0, w8, w9
	ret
.LBB31_15:
	mov	w0, wzr
	ret
.LBB31_16:
	mov	w9, wzr
	tst	x10, #0xff00
	b.ne	.LBB31_3
	b	.LBB31_4
.Lfunc_end31:
	.size	ebc_get_8pix_wf_part, .Lfunc_end31-ebc_get_8pix_wf_part

	.p2align	2
	.type	is_full_refresh_area,@function
is_full_refresh_area:
	ldp	w9, w11, [x0, #80]
	ldr	w14, [x0, #628]
	cmp	w9, #0
	sub	w14, w14, #1
	cinc	w8, w9, lt
	cmp	w11, #0
	cinc	w10, w11, lt
	sub	w8, w1, w8, asr #1
	sub	w10, w2, w10, asr #1
	cmp	w8, #0
	cneg	w13, w8, mi
	cmp	w10, #0
	cneg	w12, w10, mi
	cmp	w14, #4
	b.hi	.LBB32_5
	adrp	x15, .LJTI32_0
	add	x15, x15, :lo12:.LJTI32_0
	adr	x16, .LBB32_2
	ldrb	w17, [x15, x14]
	add	x16, x16, x17, lsl #2
	br	x16
.LBB32_2:
	ldr	w9, [x0, #636]
	mul	w8, w8, w8
	madd	w8, w10, w10, w8
	mul	w9, w9, w9
	cmp	w8, w9
	cset	w0, le
	ret
.LBB32_3:
	ldr	w9, [x0, #636]
	add	w13, w8, #7
	ldr	w11, [x0, #624]
	sub	w9, w9, w11
	add	w12, w9, #7
	cmp	w9, #0
	csel	w9, w12, w9, lt
	add	w12, w11, #7
	cmp	w11, #0
	csel	w12, w12, w11, lt
	cmp	w8, #0
	csel	w11, w13, w8, lt
	add	w13, w10, #7
	cmp	w10, #0
	asr	w11, w11, #3
	csel	w10, w13, w10, lt
	cmp	w8, #8
	asr	w10, w10, #3
	b.lt	.LBB32_10
	mov	w8, #10000
	mul	w8, w10, w8
	sdiv	w8, w8, w11
	b	.LBB32_12
.LBB32_5:
	ldr	w8, [x0, #636]
	cmp	w8, w2
	cset	w0, gt
	ret
.LBB32_6:
	ldr	w8, [x0, #636]
	add	w10, w12, w13
	mul	w9, w8, w9
	sdiv	w9, w9, w11
	cmp	w10, w9
	cset	w9, le
	cmp	w10, w8
	b	.LBB32_8
.LBB32_7:
	ldr	w8, [x0, #636]
	mul	w9, w8, w9
	sdiv	w9, w9, w11
	cmp	w13, w9
	cset	w9, le
	cmp	w12, w8
.LBB32_8:
	cset	w8, le
	and	w0, w9, w8
	ret
.LBB32_9:
	ldr	w8, [x0, #636]
	cmp	w13, w8
	cset	w9, le
	cmp	w12, w8
	cset	w8, le
	orr	w0, w9, w8
	ret
.LBB32_10:
	cmn	w8, #8
	b.gt	.LBB32_13
	mov	w8, #10000
	mov	w13, #31416
	mul	w8, w10, w8
	sdiv	w8, w8, w11
	add	w8, w8, w13
.LBB32_12:
	asr	w12, w12, #3
	asr	w9, w9, #3
	mul	w11, w11, w11
	mul	w8, w8, w12
	mov	w12, #35757
	movk	w12, #26843, lsl #16
	smull	x8, w8, w12
	lsr	x12, x8, #63
	asr	x8, x8, #43
	add	w8, w8, w12
	add	w8, w8, w9
	madd	w9, w10, w10, w11
	mul	w8, w8, w8
	cmp	w9, w8
	cset	w0, le
	ret
.LBB32_13:
	mov	w0, #1
	ret
.Lfunc_end32:
	.size	is_full_refresh_area, .Lfunc_end32-is_full_refresh_area
	.section	.rodata,"a",@progbits
.LJTI32_0:
	.byte	(.LBB32_2-.LBB32_2)>>2
	.byte	(.LBB32_6-.LBB32_2)>>2
	.byte	(.LBB32_7-.LBB32_2)>>2
	.byte	(.LBB32_9-.LBB32_2)>>2
	.byte	(.LBB32_3-.LBB32_2)>>2

	.text
	.p2align	2
	.type	ebc_get_8pix_wf_full,@function
ebc_get_8pix_wf_full:
	sub	sp, sp, #128
	str	x30, [x18], #8
	stp	x28, x27, [sp, #48]
	lsr	x6, x1, #8
	stp	x26, x25, [sp, #64]
	lsr	x4, x1, #16
	stp	x22, x21, [sp, #96]
	lsr	x17, x1, #24
	stp	x20, x19, [sp, #112]
	lsr	x14, x1, #32
	lsr	x27, x1, #40
	lsr	x25, x1, #48
	lsr	x19, x1, #56
	lsr	x7, x2, #8
	lsr	x5, x2, #16
	lsr	x16, x2, #24
	lsr	x15, x2, #32
	lsr	x13, x2, #40
	lsr	x21, x2, #48
	lsr	x20, x2, #56
	tst	x2, #0x404040404040404
	stp	x29, x30, [sp, #32]
	stp	x24, x23, [sp, #80]
	b.eq	.LBB33_5
	str	x20, [sp]
	ubfx	x20, x1, #48, #8
	mov	w22, #244
	mov	w23, #224
	cmp	w20, #240
	str	x19, [sp, #24]
	csel	x19, x23, x22, eq
	cmp	w20, #240
	ubfx	x20, x2, #48, #8
	ubfx	x24, x1, #40, #8
	ccmp	w20, w22, #0, eq
	mov	x12, x13
	mov	x13, x21
	ubfx	x21, x2, #40, #8
	ubfx	x26, x2, #32, #8
	ubfx	x28, x2, #24, #8
	csel	x25, x23, x25, eq
	cmp	w24, #240
	csel	x24, x23, x22, eq
	ccmp	w21, w22, #0, eq
	ubfx	w29, w1, #16, #8
	ubfx	w30, w2, #16, #8
	str	x25, [sp, #16]
	ubfx	x25, x1, #32, #8
	csel	x27, x23, x27, eq
	cmp	w25, #240
	csel	x25, x23, x22, eq
	ccmp	w26, w22, #0, eq
	ubfx	w8, w1, #8, #8
	ubfx	w10, w2, #8, #8
	str	x27, [sp, #8]
	ubfx	x27, x1, #24, #8
	csel	x14, x23, x14, eq
	cmp	w27, #240
	csel	x27, x23, x22, eq
	ccmp	w28, w22, #0, eq
	and	w9, w1, #0xff
	csel	x17, x23, x17, eq
	cmp	w29, #240
	csel	x29, x23, x22, eq
	ccmp	w30, w22, #0, eq
	csel	x4, x23, x4, eq
	cmp	w8, #240
	csel	x8, x23, x22, eq
	ccmp	w10, w22, #0, eq
	csel	x6, x23, x6, eq
	cmp	w9, #240
	and	w9, w2, #0xff
	csel	x11, x23, x22, eq
	ccmp	w9, w22, #0, eq
	csel	x1, x23, x1, eq
	cmp	w9, #244
	csel	x2, x11, x2, eq
	cmp	w10, #244
	csel	x7, x8, x7, eq
	cmp	w30, #244
	csel	x5, x29, x5, eq
	cmp	w28, #244
	csel	x16, x27, x16, eq
	cmp	w26, #244
	csel	x15, x25, x15, eq
	cmp	w21, #244
	mov	x21, x13
	mov	x13, x12
	csel	x13, x24, x12, eq
	cmp	w20, #244
	ldr	x20, [sp]
	csel	x21, x19, x21, eq
	cmp	x20, #244
	b.ne	.LBB33_3
	ldr	x19, [sp, #24]
	mov	w8, #224
	mov	w9, #244
	cmp	x19, #240
	csel	x19, x8, x19, eq
	csel	x20, x8, x9, eq
	b	.LBB33_4
.LBB33_3:
	ldr	x19, [sp, #24]
.LBB33_4:
	ldp	x27, x25, [sp, #8]
.LBB33_5:
	lsl	w8, w1, #2
	lsl	w9, w6, #2
	and	x8, x8, #0x3e0
	and	x9, x9, #0x3e0
	bfxil	x8, x2, #3, #5
	bfxil	x9, x7, #3, #5
	lsl	w1, w4, #2
	ldrb	w10, [x3]
	and	x1, x1, #0x3e0
	lsl	w17, w17, #2
	ldrb	w8, [x0, x8]
	bfxil	x1, x5, #3, #5
	ldrb	w9, [x0, x9]
	and	x17, x17, #0x3e0
	ldrb	w11, [x3, #1]
	lsl	w14, w14, #2
	bfxil	x17, x16, #3, #5
	lsl	w12, w27, #2
	lsl	w8, w8, w10
	and	x10, x14, #0x3e0
	and	x12, x12, #0x3e0
	ldrb	w1, [x0, x1]
	bfxil	x10, x15, #3, #5
	bfxil	x12, x13, #3, #5
	lsl	w13, w25, #2
	ldrb	w2, [x3, #2]
	lsl	w9, w9, w11
	ldrb	w11, [x0, x17]
	and	x13, x13, #0x3e0
	lsl	w16, w19, #2
	ldrb	w14, [x3, #3]
	bfxil	x13, x21, #3, #5
	and	x16, x16, #0x3e0
	ldrb	w10, [x0, x10]
	orr	x16, x16, x20, lsr #3
	orr	w8, w9, w8
	lsl	w9, w1, w2
	ldrb	w15, [x3, #4]
	ldrb	w12, [x0, x12]
	orr	w8, w8, w9
	ldrb	w17, [x3, #5]
	lsl	w11, w11, w14
	ldrb	w9, [x0, x13]
	orr	w8, w8, w11
	ldrb	w13, [x3, #6]
	lsl	w10, w10, w15
	ldrb	w11, [x0, x16]
	orr	w8, w8, w10
	ldrb	w14, [x3, #7]
	lsl	w10, w12, w17
	ldp	x20, x19, [sp, #112]
	orr	w8, w8, w10
	lsl	w9, w9, w13
	ldp	x22, x21, [sp, #96]
	orr	w8, w8, w9
	lsl	w9, w11, w14
	ldp	x24, x23, [sp, #80]
	orr	w0, w8, w9
	ldp	x26, x25, [sp, #64]
	ldp	x28, x27, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #128
	ret
.Lfunc_end33:
	.size	ebc_get_8pix_wf_full, .Lfunc_end33-ebc_get_8pix_wf_full

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
	ldr	w2, [x19, #892]
	tbnz	w2, #31, .LBB34_5
	str	w2, [sp, #4]
.LBB34_2:
	cmp	w2, #51
	b.lo	.LBB34_8
	ldr	w8, [x19, #812]
	tbz	w8, #31, .LBB34_33
.LBB34_4:
	mov	w8, #50
	str	w8, [sp, #4]
	b	.LBB34_8
.LBB34_5:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB34_12
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	blr	x8
	mov	w2, w0
	cbz	w2, .LBB34_13
.LBB34_7:
	mov	w8, #25
	ldr	w9, [x19, #812]
	str	w8, [sp, #4]
	tbz	w9, #31, .LBB34_34
.LBB34_8:
	ldr	w8, [x19, #812]
	cmp	w8, #1
	b.ge	.LBB34_21
	cmp	w21, #23
	b.hi	.LBB34_22
.LBB34_10:
	adrp	x9, .LJTI34_0
	mov	w8, w21
	add	x9, x9, :lo12:.LJTI34_0
	mov	w1, wzr
	adr	x10, .LBB34_11
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB34_11:
	mov	w1, #1
	b	.LBB34_29
.LBB34_12:
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
	cbnz	w2, .LBB34_7
.LBB34_13:
	ldr	w2, [sp, #4]
	tbz	w2, #31, .LBB34_2
	ldr	w8, [x19, #812]
	tbz	w8, #31, .LBB34_35
.LBB34_15:
	mov	w8, #25
	str	w8, [sp, #4]
	b	.LBB34_8
.LBB34_16:
	mov	w1, #5
	b	.LBB34_29
.LBB34_17:
	mov	w1, #6
	b	.LBB34_29
.LBB34_18:
	mov	w1, #8
	b	.LBB34_29
.LBB34_19:
	mov	w1, #7
	b	.LBB34_29
.LBB34_20:
	mov	w1, #2
	b	.LBB34_29
.LBB34_21:
	adrp	x1, .L.str.106
	ldr	x0, [x19, #328]
	ldr	w2, [sp, #4]
	add	x1, x1, :lo12:.L.str.106
	bl	_dev_info
	cmp	w21, #23
	b.ls	.LBB34_10
.LBB34_22:
	mov	w1, #3
	b	.LBB34_29
.LBB34_23:
	mov	w1, #10
	b	.LBB34_29
.LBB34_24:
	mov	w1, #4
	b	.LBB34_29
.LBB34_25:
	ldr	w8, [x19, #800]
	mov	w9, #3
	cmp	w8, #0
	mov	w8, #14
	csinc	w20, w20, wzr, eq
	b	.LBB34_28
.LBB34_26:
	ldr	w8, [x19, #800]
	mov	w9, #4
	cmp	w8, #0
	mov	w8, #13
	b	.LBB34_28
.LBB34_27:
	ldrb	w8, [x19, #897]
	mov	w9, #3
	cmp	w8, #0
	mov	w8, #15
.LBB34_28:
	csel	w1, w9, w8, eq
.LBB34_29:
	ldr	w2, [sp, #4]
	add	x0, x19, #336
	ldrb	w4, [x19, #896]
	mov	w3, #32
	mov	w5, w20
	bl	epd_lut_get
	cbnz	w0, .LBB34_32
.LBB34_30:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB34_36
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x21, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB34_32:
	adrp	x1, .L.str.107
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.107
	bl	_dev_err
	b	.LBB34_30
.LBB34_33:
	adrp	x1, .L.str.104
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.104
	bl	_dev_info
	b	.LBB34_4
.LBB34_34:
	adrp	x1, .L.str.105
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.105
	bl	_dev_info
	b	.LBB34_8
.LBB34_35:
	adrp	x1, .L.str.103
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.103
	bl	_dev_info
	b	.LBB34_15
.LBB34_36:
	bl	__stack_chk_fail
.Lfunc_end34:
	.size	ebc_lut_update, .Lfunc_end34-ebc_lut_update
	.section	.rodata,"a",@progbits
.LJTI34_0:
	.byte	(.LBB34_22-.LBB34_11)>>2
	.byte	(.LBB34_23-.LBB34_11)>>2
	.byte	(.LBB34_22-.LBB34_11)>>2
	.byte	(.LBB34_24-.LBB34_11)>>2
	.byte	(.LBB34_16-.LBB34_11)>>2
	.byte	(.LBB34_17-.LBB34_11)>>2
	.byte	(.LBB34_18-.LBB34_11)>>2
	.byte	(.LBB34_25-.LBB34_11)>>2
	.byte	(.LBB34_26-.LBB34_11)>>2
	.byte	(.LBB34_16-.LBB34_11)>>2
	.byte	(.LBB34_17-.LBB34_11)>>2
	.byte	(.LBB34_18-.LBB34_11)>>2
	.byte	(.LBB34_19-.LBB34_11)>>2
	.byte	(.LBB34_19-.LBB34_11)>>2
	.byte	(.LBB34_11-.LBB34_11)>>2
	.byte	(.LBB34_20-.LBB34_11)>>2
	.byte	(.LBB34_11-.LBB34_11)>>2
	.byte	(.LBB34_29-.LBB34_11)>>2
	.byte	(.LBB34_22-.LBB34_11)>>2
	.byte	(.LBB34_22-.LBB34_11)>>2
	.byte	(.LBB34_22-.LBB34_11)>>2
	.byte	(.LBB34_27-.LBB34_11)>>2
	.byte	(.LBB34_11-.LBB34_11)>>2
	.byte	(.LBB34_20-.LBB34_11)>>2

	.text
	.p2align	2
	.type	ebc_frame_start,@function
ebc_frame_start:
	sub	sp, sp, #144
	str	x30, [x18], #8
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	stp	x28, x27, [sp, #64]
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	add	x21, x0, #40
	stp	x20, x19, [sp, #128]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x0
	add	x20, x0, #232
	stur	x8, [x29, #-8]
	ldr	w8, [x0, #472]
	sub	w8, w8, #3
	cmp	w8, #1
	b.hi	.LBB35_6
	ldr	w3, [x19, #912]
	tbnz	w3, #31, .LBB35_10
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB35_10
	ldr	w2, [x19, #908]
	tbnz	w2, #31, .LBB35_10
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.ge	.LBB35_10
	ldp	x9, x10, [x19, #368]
	madd	w8, w8, w3, w2
	sxtw	x8, w8
	b	.LBB35_71
.LBB35_6:
	ldr	w3, [x19, #912]
	tbnz	w3, #31, .LBB35_10
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB35_10
	ldr	w2, [x19, #908]
	tbnz	w2, #31, .LBB35_10
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.lt	.LBB35_70
.LBB35_10:
	ldr	w8, [x19, #472]
	sub	w8, w8, #1
	cmp	w8, #4
	b.hi	.LBB35_14
	adrp	x9, .LJTI35_0
	add	x9, x9, :lo12:.LJTI35_0
	adr	x10, .LBB35_12
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB35_12:
	ldp	x11, x10, [x19, #440]
	mov	x3, x20
	mov	w4, #1
	ldrb	w8, [x19, #288]
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #408]
	str	w8, [x19, #304]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB35_33
	bl	direct_mode_data_change_part2
	b	.LBB35_34
.LBB35_14:
	ldr	w3, [x19, #912]
	ldr	x8, [x19, #448]
	tbnz	w3, #31, .LBB35_18
	ldr	w9, [x19, #312]
	cmp	w3, w9
	b.ge	.LBB35_18
	ldr	w2, [x19, #908]
	tbnz	w2, #31, .LBB35_18
	ldr	w9, [x19, #316]
	cmp	w2, w9
	b.lt	.LBB35_74
.LBB35_18:
	ldr	w9, [x8, #40]
	cmp	w9, #21
	b.ne	.LBB35_31
	ldr	w8, [x19, #316]
	mov	w1, #255
	ldr	w9, [x19, #312]
	ldr	x0, [x19, #392]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #876]
	str	wzr, [x19, #872]
	ldr	w9, [x19, #864]
	mov	x3, x20
	ldr	w10, [x19, #316]
	mov	w4, #1
	cmp	w8, #5
	ldr	x0, [x19, #408]
	csel	w8, wzr, w8, hi
	cmp	w9, w10
	ccmp	w9, #1, #8, le
	str	w8, [x19, #860]
	ldp	x11, x8, [x19, #440]
	csel	w9, w10, w9, lt
	ldr	w10, [x19, #204]
	str	w9, [x19, #856]
	str	w9, [x19, #868]
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	cbz	w10, .LBB35_47
	bl	direct_mode_data_change_full2
	b	.LBB35_48
.LBB35_21:
	ldp	x1, x2, [x19, #368]
	mov	x4, x20
	mov	w5, #1
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #408]
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_36
	bl	get_auto_image2
	ldr	w8, [x19, #292]
	cbz	w8, .LBB35_37
.LBB35_23:
	ldp	x1, x2, [x19, #368]
	mov	x4, x20
	mov	w5, #1
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #416]
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_45
	bl	get_auto_image2
	b	.LBB35_67
.LBB35_25:
	ldr	x0, [x19, #408]
	mov	w1, wzr
	ldrsw	x2, [x19, #264]
	bl	memset
	ldp	x4, x0, [x19, #400]
	mov	x5, x20
	ldp	x1, x2, [x19, #368]
	ldr	w8, [x19, #204]
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_39
	bl	get_overlay_image_area2
	ldr	w8, [x19, #292]
	cbz	w8, .LBB35_40
.LBB35_27:
	mov	x0, x21
	mov	x1, x20
	str	wzr, [x19, #112]
	bl	flip
	ldr	x0, [x19, #416]
	mov	w1, wzr
	ldrsw	x2, [x19, #264]
	bl	memset
	ldp	x1, x2, [x19, #368]
	mov	x5, x20
	ldp	x3, x4, [x19, #392]
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #416]
	cbz	w8, .LBB35_46
	bl	get_overlay_image_area2
	b	.LBB35_68
.LBB35_29:
	ldp	x11, x10, [x19, #440]
	mov	x3, x20
	mov	w4, #1
	ldrb	w8, [x19, #288]
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #408]
	str	w8, [x19, #304]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB35_42
	bl	direct_mode_data_change_part2
	b	.LBB35_43
.LBB35_31:
	ldrb	w9, [x19, #288]
	ldr	x11, [x19, #440]
	ldr	w10, [x19, #204]
	str	w9, [x19, #304]
	ldr	x0, [x19, #408]
	ldr	x23, [x8, #16]
	ldr	x22, [x11, #16]
	cbz	w10, .LBB35_50
	mov	x1, x23
	mov	x2, x22
	mov	x3, x20
	mov	w4, #1
	bl	direct_mode_data_change2
	b	.LBB35_58
.LBB35_33:
	bl	direct_mode_data_change_part
.LBB35_34:
	ldr	w8, [x19, #304]
	mov	x3, x20
	ldp	x11, x10, [x19, #440]
	mov	w4, #1
	sub	w8, w8, #1
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #416]
	str	w8, [x19, #304]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB35_44
	bl	direct_mode_data_change_part2
	b	.LBB35_67
.LBB35_36:
	bl	get_auto_image
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB35_23
.LBB35_37:
	ldr	w8, [x19, #812]
	cmp	w8, #1
	b.lt	.LBB35_41
	adrp	x1, .L.str.109
	adrp	x2, .L__func__.ebc_frame_start
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.109
	b	.LBB35_73
.LBB35_39:
	bl	get_overlay_image_area
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB35_27
.LBB35_40:
	ldr	w8, [x19, #812]
	cmp	w8, #1
	b.ge	.LBB35_72
.LBB35_41:
	str	wzr, [x19, #284]
	b	.LBB35_68
.LBB35_42:
	bl	direct_mode_data_change_part
.LBB35_43:
	ldr	w8, [x19, #304]
	ldp	x1, x0, [x19, #408]
	sub	w8, w8, #1
	ldrsw	x2, [x19, #264]
	str	w8, [x19, #304]
	bl	memcpy
	b	.LBB35_67
.LBB35_44:
	bl	direct_mode_data_change_part
	b	.LBB35_67
.LBB35_45:
	bl	get_auto_image
	b	.LBB35_67
.LBB35_46:
	bl	get_overlay_image_area
	b	.LBB35_68
.LBB35_47:
	bl	direct_mode_data_change_full
.LBB35_48:
	ldr	w8, [x19, #856]
	mov	x3, x20
	ldr	w9, [x19, #868]
	mov	w4, #1
	ldr	w10, [x19, #204]
	ldr	x0, [x19, #416]
	add	w8, w9, w8
	ldp	x11, x9, [x19, #440]
	str	w8, [x19, #868]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	cbz	w10, .LBB35_56
	bl	direct_mode_data_change_full2
	b	.LBB35_67
.LBB35_50:
	adrp	x8, global_ebc
	mov	x11, #512
	movk	x11, #1540, lsl #16
	ldr	x24, [x19, #352]
	movk	x11, #2568, lsl #32
	stp	x21, x20, [sp, #8]
	ldr	x8, [x8, :lo12:global_ebc]
	movk	x11, #3596, lsl #48
	ldp	w25, w10, [x8, #116]
	ldr	w9, [x8, #196]
	stur	x11, [x29, #-16]
	lsr	w8, w25, #2
	cmp	w9, #0
	cneg	w8, w8, ne
	stur	w10, [x29, #-20]
	subs	w10, w10, #1
	b.lt	.LBB35_57
	cmp	w9, #0
	sxtw	x28, w8
	csel	w9, wzr, w10, eq
	lsr	w10, w25, #3
	cmp	w10, #1
	mov	w27, wzr
	mul	w9, w9, w25
	lsr	w8, w9, #2
	csinc	w9, w10, wzr, hi
	add	x21, x0, x8
	lsl	x20, x9, #1
	b	.LBB35_53
.LBB35_52:
	ldur	w8, [x29, #-20]
	add	w27, w27, #1
	add	x21, x21, x28
	cmp	w27, w8
	b.eq	.LBB35_57
.LBB35_53:
	cmp	w25, #8
	b.lo	.LBB35_52
	mov	x26, xzr
.LBB35_55:
	ldr	x2, [x23], #8
	ldr	x1, [x22], #8
	sub	x3, x29, #16
	mov	x0, x24
	bl	ebc_get_8pix_wf_full
	strh	w0, [x21, x26]
	add	x26, x26, #2
	cmp	x20, x26
	b.ne	.LBB35_55
	b	.LBB35_52
.LBB35_56:
	bl	direct_mode_data_change_full
	b	.LBB35_67
.LBB35_57:
	ldp	x21, x20, [sp, #8]
.LBB35_58:
	ldr	w8, [x19, #304]
	ldp	x11, x10, [x19, #440]
	sub	w8, w8, #1
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #416]
	str	w8, [x19, #304]
	ldr	x23, [x10, #16]
	ldr	x22, [x11, #16]
	cbz	w9, .LBB35_60
	mov	x1, x23
	mov	x2, x22
	mov	x3, x20
	mov	w4, #1
	bl	direct_mode_data_change2
	b	.LBB35_67
.LBB35_60:
	adrp	x9, global_ebc
	mov	x14, #512
	movk	x14, #1540, lsl #16
	ldrb	w11, [x19, #288]
	movk	x14, #2568, lsl #32
	stp	x21, x20, [sp, #8]
	ldr	x9, [x9, :lo12:global_ebc]
	movk	x14, #3596, lsl #48
	ldp	w25, w13, [x9, #116]
	ldr	w12, [x9, #196]
	stur	x14, [x29, #-16]
	ldr	x9, [x19, #352]
	lsr	w10, w25, #2
	cmp	w12, #0
	cneg	w10, w10, ne
	stur	w13, [x29, #-20]
	subs	w13, w13, #1
	b.lt	.LBB35_66
	sub	w8, w11, w8
	cmp	w12, #0
	lsl	w8, w8, #10
	csel	w11, wzr, w13, eq
	mov	w27, wzr
	sxtw	x28, w10
	add	x24, x9, w8, sxtw
	lsr	w8, w25, #3
	mul	w9, w11, w25
	cmp	w8, #1
	csinc	w8, w8, wzr, hi
	lsr	w9, w9, #2
	lsl	x20, x8, #1
	add	x21, x0, x9
	b	.LBB35_63
.LBB35_62:
	ldur	w8, [x29, #-20]
	add	w27, w27, #1
	add	x21, x21, x28
	cmp	w27, w8
	b.eq	.LBB35_66
.LBB35_63:
	cmp	w25, #8
	b.lo	.LBB35_62
	mov	x26, xzr
.LBB35_65:
	ldr	x2, [x23], #8
	ldr	x1, [x22], #8
	sub	x3, x29, #16
	mov	x0, x24
	bl	ebc_get_8pix_wf_full
	strh	w0, [x21, x26]
	add	x26, x26, #2
	cmp	x20, x26
	b.ne	.LBB35_65
	b	.LBB35_62
.LBB35_66:
	ldp	x21, x20, [sp, #8]
.LBB35_67:
	mov	x0, x21
	mov	x1, x20
	str	wzr, [x19, #112]
	bl	flip
.LBB35_68:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB35_75
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.LBB35_70:
	ldp	x10, x9, [x19, #440]
	madd	w8, w8, w3, w2
	sxtw	x8, w8
	ldr	x10, [x10, #16]
	ldr	x9, [x9, #16]
.LBB35_71:
	strb	wzr, [x19, #916]
	adrp	x1, .L.str.110
	ldrb	w5, [x9, x8]
	add	x1, x1, :lo12:.L.str.110
	ldrb	w4, [x10, x8]
	ldr	x0, [x19, #328]
	bl	_dev_info
	b	.LBB35_10
.LBB35_72:
	adrp	x1, .L.str.108
	adrp	x2, .L__func__.ebc_frame_start
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.108
.LBB35_73:
	add	x2, x2, :lo12:.L__func__.ebc_frame_start
	bl	_dev_info
	b	.LBB35_41
.LBB35_74:
	madd	w9, w9, w3, w2
	ldr	x10, [x19, #440]
	ldr	x8, [x8, #16]
	adrp	x1, .L.str.110
	sxtw	x9, w9
	ldr	x0, [x19, #328]
	ldr	x10, [x10, #16]
	add	x1, x1, :lo12:.L.str.110
	ldrb	w5, [x8, x9]
	ldrb	w4, [x10, x9]
	bl	_dev_info
	ldr	x8, [x19, #448]
	b	.LBB35_18
.LBB35_75:
	bl	__stack_chk_fail
.Lfunc_end35:
	.size	ebc_frame_start, .Lfunc_end35-ebc_frame_start
	.section	.rodata,"a",@progbits
.LJTI35_0:
	.byte	(.LBB35_12-.LBB35_12)>>2
	.byte	(.LBB35_14-.LBB35_12)>>2
	.byte	(.LBB35_21-.LBB35_12)>>2
	.byte	(.LBB35_25-.LBB35_12)>>2
	.byte	(.LBB35_29-.LBB35_12)>>2

	.text
	.p2align	2
	.type	ebc_power_set,@function
ebc_power_set:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	ldr	w8, [x0, #424]
	str	x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	mov	x29, sp
	cmp	w8, w1
	b.eq	.LBB36_19
	mov	x19, x0
	ldr	w8, [x0, #808]
	cmp	w1, #1
	b.ne	.LBB36_13
	cbz	w8, .LBB36_4
	mov	w0, #1
	bl	ebc_notify
.LBB36_4:
	ldr	w8, [x19, #672]
	add	x20, x19, #40
	cbnz	w8, .LBB36_6
	mov	w8, #1
	add	x0, x19, #480
	str	w8, [x19, #672]
	bl	__pm_stay_awake
.LBB36_6:
	mov	w8, #1
	ldrb	w9, [x19, #224]
	str	w8, [x19, #424]
	cbz	w9, .LBB36_8
	ldr	x0, [x19, #8]
	mov	x1, x20
	ldr	x8, [x0, #72]
	blr	x8
.LBB36_8:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB36_20
	ldr	x8, [x0, #32]
	mov	w1, #1
	blr	x8
	mov	w21, wzr
	ldrb	w8, [x19, #224]
	cbnz	w8, .LBB36_11
.LBB36_10:
	ldr	x0, [x19, #8]
	mov	x1, x20
	ldr	x8, [x0, #72]
	blr	x8
.LBB36_11:
	ldr	w8, [x19, #812]
	cmp	w8, #1
	b.lt	.LBB36_19
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.112
	add	x1, x1, :lo12:.L.str.112
	mov	w2, w21
	b	.LBB36_23
.LBB36_13:
	cbz	w8, .LBB36_15
	mov	x0, xzr
	bl	ebc_notify
.LBB36_15:
	ldr	x0, [x19, #8]
	str	wzr, [x19, #424]
	ldr	x8, [x0, #80]
	blr	x8
	ldr	x0, [x19, #16]
	cbz	x0, .LBB36_21
	ldr	x8, [x0, #32]
	mov	w1, wzr
	blr	x8
	mov	w20, wzr
	ldr	w8, [x19, #672]
	cbz	w8, .LBB36_18
.LBB36_17:
	add	x0, x19, #480
	str	wzr, [x19, #672]
	bl	__pm_relax
.LBB36_18:
	ldr	w8, [x19, #812]
	cmp	w8, #1
	b.ge	.LBB36_22
.LBB36_19:
	ldp	x20, x19, [sp, #32]
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB36_20:
	ldr	x0, [x19, #24]
	bl	regulator_enable
	mov	w21, w0
	ldrb	w8, [x19, #224]
	cbnz	w8, .LBB36_11
	b	.LBB36_10
.LBB36_21:
	ldr	x0, [x19, #24]
	bl	regulator_disable
	mov	w20, w0
	ldr	w8, [x19, #672]
	cbnz	w8, .LBB36_17
	b	.LBB36_18
.LBB36_22:
	adrp	x1, .L.str.113
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.113
	mov	w2, w20
.LBB36_23:
	bl	_dev_info
	b	.LBB36_19
.Lfunc_end36:
	.size	ebc_power_set, .Lfunc_end36-ebc_power_set

	.p2align	2
	.type	ebc_frame_control_timeout,@function
ebc_frame_control_timeout:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	mov	w10, #1
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #812]
	str	w10, [x8, #772]
	cmp	w9, #1
	b.ge	.LBB37_2
.LBB37_1:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.LBB37_2:
	adrp	x1, .L.str.115
	ldr	x0, [x8, #328]
	add	x1, x1, :lo12:.L.str.115
	bl	_dev_info
	b	.LBB37_1
.Lfunc_end37:
	.size	ebc_frame_control_timeout, .Lfunc_end37-ebc_frame_control_timeout

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
.Lfunc_end38:
	.size	ebc_frame_timeout, .Lfunc_end38-ebc_frame_timeout

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
	cmp	w8, #33
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	stp	xzr, xzr, [sp, #16]
	b.hi	.LBB39_85
	adrp	x9, .LJTI39_0
	mov	x0, xzr
	add	x9, x9, :lo12:.LJTI39_0
	adr	x10, .LBB39_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB39_2:
	mov	x19, x2
	cbz	x2, .LBB39_24
	cmp	w8, #33
	b.hi	.LBB39_85
	adrp	x9, .LJTI39_1
	mov	x0, xzr
	add	x9, x9, :lo12:.LJTI39_1
	adr	x10, .LBB39_5
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB39_5:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	add	x20, sp, #16
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	add	x0, x20, #48
	bl	ebc_empty_buf_get
	cbz	x0, .LBB39_78
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
	cbz	w0, .LBB39_86
	mov	x0, x20
	bl	ebc_buf_release
	mov	x0, #-14
	b	.LBB39_88
.LBB39_9:
	mov	w8, #1
	ldr	w9, [x21, #812]
	str	w8, [x21, #768]
	tbnz	w9, #31, .LBB39_86
	adrp	x1, .L.str.131
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.131
	bl	_dev_info
	b	.LBB39_86
.LBB39_11:
	ldr	w8, [x21, #812]
	str	wzr, [x21, #768]
	tbnz	w8, #31, .LBB39_86
	adrp	x1, .L.str.132
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.132
	bl	_dev_info
	b	.LBB39_86
.LBB39_13:
	mov	w8, #1
	ldr	w9, [x21, #812]
	str	w8, [x21, #776]
	tbnz	w9, #31, .LBB39_86
	adrp	x1, .L.str.129
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.129
	bl	_dev_info
	b	.LBB39_86
.LBB39_15:
	ldr	w8, [x21, #812]
	str	wzr, [x21, #776]
	tbnz	w8, #31, .LBB39_86
	adrp	x1, .L.str.130
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.130
	bl	_dev_info
	b	.LBB39_86
.LBB39_17:
	bl	ebc_drop_one_dsp_buf
	cbnz	w0, .LBB39_77
	b	.LBB39_86
.LBB39_18:
	ldr	w8, [x21, #812]
	tbz	w8, #31, .LBB39_90
.LBB39_19:
	mov	w0, #2
	bl	ebc_notify
	mov	w8, #1
	mov	x0, xzr
	str	w8, [x21, #760]
	str	w8, [x21, #780]
	b	.LBB39_87
.LBB39_20:
	ldr	w8, [x21, #812]
	tbz	w8, #31, .LBB39_91
	ldr	w8, [x21, #760]
	cbz	w8, .LBB39_23
.LBB39_22:
	mov	w0, #3
	bl	ebc_notify
.LBB39_23:
	mov	x0, xzr
	str	wzr, [x21, #760]
	str	wzr, [x21, #780]
	b	.LBB39_87
.LBB39_24:
	adrp	x1, .L.str.128
	adrp	x2, .L__func__.ebc_io_ctl
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.128
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	mov	x0, #-14
	b	.LBB39_88
.LBB39_25:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	x0, .LBB39_77
	bl	ebc_phy_buf_base_get
	ldrsw	x8, [sp, #16]
	add	x0, x0, x8
	bl	ebc_find_buf_by_phy_addr
	cbz	x0, .LBB39_87
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
	b	.LBB39_36
.LBB39_28:
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
	cbz	x0, .LBB39_87
	adrp	x1, .L.str.133
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.133
	bl	_dev_err
	b	.LBB39_77
.LBB39_30:
	bl	ebc_empty_osd_buf_get
	cbz	x0, .LBB39_78
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
	b	.LBB39_87
.LBB39_32:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	x0, .LBB39_77
	bl	ebc_osd_buf_clone
	cbz	x0, .LBB39_87
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	ldr	x10, [sp, #40]
	ldr	w11, [sp, #48]
	str	w8, [x0, #40]
	str	w9, [x0, #48]
	stur	x10, [x0, #52]
	str	w11, [x0, #60]
	bl	ebc_add_to_osd_buf_list
	ldr	w8, [x21, #324]
	cbnz	w8, .LBB39_36
	mov	w8, #1
	str	w8, [x21, #324]
.LBB39_36:
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB39_86
	adrp	x0, ebc_thread_wq
	mov	w8, #1
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1
	str	w8, [x21, #320]
	bl	__wake_up_sync
	b	.LBB39_86
.LBB39_38:
	mov	w8, #-1
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	w8, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w2, [sp, #12]
	ldr	w8, [x21, #812]
	str	w2, [x21, #904]
	tbnz	w8, #31, .LBB39_86
	adrp	x1, .L.str.134
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.134
	bl	_dev_info
	b	.LBB39_86
.LBB39_41:
	add	x1, x21, #768
	b	.LBB39_82
.LBB39_42:
	add	x1, x21, #672
	b	.LBB39_82
.LBB39_43:
	ldr	w8, [x21, #884]
	str	wzr, [sp, #12]
	cmp	w8, #3576
	b.eq	.LBB39_45
	ldr	w8, [x21, #888]
	cmp	w8, #3576
	b.ne	.LBB39_86
.LBB39_45:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w8, [x21, #812]
	tbz	w8, #31, .LBB39_93
.LBB39_47:
	ldr	w8, [sp, #12]
	str	w8, [x21, #788]
	b	.LBB39_86
.LBB39_48:
	ldr	w8, [x21, #884]
	cmp	w8, #3576
	b.ne	.LBB39_79
.LBB39_49:
	mov	w8, #1
	b	.LBB39_81
.LBB39_50:
	add	x0, x21, #864
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w8, [x21, #812]
	tbnz	w8, #31, .LBB39_86
	adrp	x1, .L.str.139
	ldr	x0, [x21, #328]
	ldr	w2, [x21, #864]
	add	x1, x1, :lo12:.L.str.139
	bl	_dev_info
	b	.LBB39_86
.LBB39_53:
	add	x0, x21, #876
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w8, [x21, #812]
	tbnz	w8, #31, .LBB39_86
	adrp	x1, .L.str.140
	ldr	x0, [x21, #328]
	ldr	w2, [x21, #876]
	add	x1, x1, :lo12:.L.str.140
	bl	_dev_info
	b	.LBB39_86
.LBB39_56:
	mov	w8, #-1
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	w8, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w2, [sp, #12]
	ldr	w8, [x21, #812]
	str	w2, [x21, #892]
	tbnz	w8, #31, .LBB39_86
	adrp	x1, .L.str.141
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.141
	bl	_dev_info
	b	.LBB39_86
.LBB39_59:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	wzr, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w8, [sp, #12]
	ldr	w10, [x21, #812]
	cmp	w8, #0
	cset	w9, ne
	strb	w9, [x21, #896]
	tbnz	w10, #31, .LBB39_86
	cmp	w8, #0
	adrp	x1, .L.str.142
	cset	w2, ne
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.142
	bl	_dev_info
	b	.LBB39_86
.LBB39_62:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	wzr, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w2, [sp, #12]
	ldr	w8, [x21, #812]
	str	w2, [x21, #900]
	tbnz	w8, #31, .LBB39_86
	adrp	x1, .L.str.143
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.143
	bl	_dev_info
	b	.LBB39_86
.LBB39_65:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	wzr, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w8, [sp, #12]
	ldr	w10, [x21, #812]
	cmp	w8, #0
	cset	w9, ne
	strb	w9, [x21, #897]
	tbnz	w10, #31, .LBB39_86
	cmp	w8, #0
	adrp	x1, .L.str.144
	cset	w2, ne
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.144
	bl	_dev_info
	b	.LBB39_86
.LBB39_68:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	x8, [x21, #448]
	cbz	x8, .LBB39_78
	ldr	x20, [x8, #8]
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
	cbnz	w0, .LBB39_77
	b	.LBB39_86
.LBB39_71:
	bl	epd_lut_get_wf_bit
	cmp	w0, #32
	b	.LBB39_80
.LBB39_72:
	ldr	w8, [x21, #884]
	mov	w9, #1
	cmp	w8, #3576
	str	w9, [sp, #12]
	b.eq	.LBB39_74
	ldr	w8, [x21, #888]
	cmp	w8, #3576
	b.ne	.LBB39_86
.LBB39_74:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB39_77
	ldr	w8, [sp, #12]
	str	w8, [x21, #800]
	b	.LBB39_86
.LBB39_76:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	wzr, [sp, #12]
	bl	_copy_from_user
	cbz	w0, .LBB39_83
.LBB39_77:
	mov	x0, #-14
	b	.LBB39_88
.LBB39_78:
	mov	x0, #-1
	b	.LBB39_88
.LBB39_79:
	ldr	w8, [x21, #888]
	cmp	w8, #3576
.LBB39_80:
	cset	w8, eq
.LBB39_81:
	str	w8, [sp, #12]
	add	x1, sp, #12
.LBB39_82:
	mov	x0, x19
	mov	w2, #4
	bl	_copy_to_user
	b	.LBB39_87
.LBB39_83:
	ldr	w8, [x21, #812]
	tbz	w8, #31, .LBB39_92
.LBB39_84:
	ldr	w8, [sp, #12]
	mov	x0, xzr
	str	w8, [x21, #792]
	b	.LBB39_87
.LBB39_85:
	adrp	x1, .L.str.145
	adrp	x2, .L__func__.ebc_io_ctl
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.145
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
.LBB39_86:
	mov	x0, xzr
.LBB39_87:
	sxtw	x0, w0
.LBB39_88:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB39_94
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x29, x30, [sp, #96]
	ldr	x23, [sp, #112]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB39_90:
	adrp	x1, .L.str.135
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.135
	bl	_dev_info
	b	.LBB39_19
.LBB39_91:
	adrp	x1, .L.str.136
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.136
	bl	_dev_info
	ldr	w8, [x21, #760]
	cbnz	w8, .LBB39_22
	b	.LBB39_23
.LBB39_92:
	adrp	x1, .L.str.138
	ldr	x0, [x21, #328]
	ldr	w2, [sp, #12]
	add	x1, x1, :lo12:.L.str.138
	bl	_dev_info
	b	.LBB39_84
.LBB39_93:
	adrp	x1, .L.str.137
	ldr	x0, [x21, #328]
	ldr	w2, [sp, #12]
	add	x1, x1, :lo12:.L.str.137
	bl	_dev_info
	b	.LBB39_47
.LBB39_94:
	bl	__stack_chk_fail
.Lfunc_end39:
	.size	ebc_io_ctl, .Lfunc_end39-ebc_io_ctl
	.section	.rodata,"a",@progbits
	.p2align	1
.LJTI39_0:
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_9-.LBB39_2)>>2
	.hword	(.LBB39_11-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_87-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_13-.LBB39_2)>>2
	.hword	(.LBB39_15-.LBB39_2)>>2
	.hword	(.LBB39_87-.LBB39_2)>>2
	.hword	(.LBB39_87-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_17-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_18-.LBB39_2)>>2
	.hword	(.LBB39_20-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_85-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.hword	(.LBB39_2-.LBB39_2)>>2
	.p2align	1
.LJTI39_1:
	.hword	(.LBB39_5-.LBB39_5)>>2
	.hword	(.LBB39_25-.LBB39_5)>>2
	.hword	(.LBB39_28-.LBB39_5)>>2
	.hword	(.LBB39_87-.LBB39_5)>>2
	.hword	(.LBB39_9-.LBB39_5)>>2
	.hword	(.LBB39_11-.LBB39_5)>>2
	.hword	(.LBB39_30-.LBB39_5)>>2
	.hword	(.LBB39_32-.LBB39_5)>>2
	.hword	(.LBB39_87-.LBB39_5)>>2
	.hword	(.LBB39_38-.LBB39_5)>>2
	.hword	(.LBB39_87-.LBB39_5)>>2
	.hword	(.LBB39_41-.LBB39_5)>>2
	.hword	(.LBB39_13-.LBB39_5)>>2
	.hword	(.LBB39_15-.LBB39_5)>>2
	.hword	(.LBB39_87-.LBB39_5)>>2
	.hword	(.LBB39_87-.LBB39_5)>>2
	.hword	(.LBB39_49-.LBB39_5)>>2
	.hword	(.LBB39_17-.LBB39_5)>>2
	.hword	(.LBB39_42-.LBB39_5)>>2
	.hword	(.LBB39_18-.LBB39_5)>>2
	.hword	(.LBB39_20-.LBB39_5)>>2
	.hword	(.LBB39_43-.LBB39_5)>>2
	.hword	(.LBB39_85-.LBB39_5)>>2
	.hword	(.LBB39_48-.LBB39_5)>>2
	.hword	(.LBB39_50-.LBB39_5)>>2
	.hword	(.LBB39_53-.LBB39_5)>>2
	.hword	(.LBB39_56-.LBB39_5)>>2
	.hword	(.LBB39_59-.LBB39_5)>>2
	.hword	(.LBB39_62-.LBB39_5)>>2
	.hword	(.LBB39_65-.LBB39_5)>>2
	.hword	(.LBB39_68-.LBB39_5)>>2
	.hword	(.LBB39_71-.LBB39_5)>>2
	.hword	(.LBB39_72-.LBB39_5)>>2
	.hword	(.LBB39_76-.LBB39_5)>>2

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
	b.eq	.LBB40_2
	ldr	x0, [x19, #48]
	bl	down_write
	str	w21, [x19, #40]
	ldr	x0, [x19, #48]
	bl	up_write
.LBB40_2:
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
.Lfunc_end40:
	.size	ebc_mmap, .Lfunc_end40-ebc_mmap

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
	cbz	x0, .LBB41_7
	mov	x20, x0
	mov	x21, xzr
	add	x22, x22, #816
	mov	w23, #1
.LBB41_2:
	ldr	x0, [x22, x21, lsl #3]
	ldr	x8, [x0, #8]
	//APP
.Ltmp28:
	b	.Ltmp27
.Ltmp29:
	.section	.altinstructions,"a",@progbits
.Ltmp30:
	.word	.Ltmp28-.Ltmp30
.Ltmp31:
	.word	alt_cb_patch_nops-.Ltmp31
	.hword	32794
	.byte	.Ltmp29-.Ltmp28
	.byte	.Ltmp32-.Ltmp33
	.text

.Ltmp33:
.Ltmp32:

	//NO_APP
	add	x8, x8, #56
	//APP
	stadd	x23, [x8]

	//NO_APP
.LBB41_4:
	mov	w1, #524288
	bl	dma_buf_fd
	str	w0, [x20, x21, lsl #2]
	add	x21, x21, #1
	cmp	x21, #5
	b.ne	.LBB41_2
	b	.LBB41_6
.Ltmp27:
.LBB41_5:
	add	x8, x8, #56
	//APP
	// atomic64_add
	prfm	pstl1strm, [x8]
.Ltmp34:
	ldxr	x9, [x8]
	add	x9, x9, #1
	stxr	w10, x9, [x8]
	cbnz	w10, .Ltmp34
	//NO_APP
	b	.LBB41_4
.LBB41_6:
	mov	w0, wzr
	str	x20, [x19, #200]
	str	xzr, [x19, #104]
	b	.LBB41_8
.LBB41_7:
	mov	w0, #-12
.LBB41_8:
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldr	x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end41:
	.size	ebc_open, .Lfunc_end41-ebc_open

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
.Lfunc_end42:
	.size	ebc_release, .Lfunc_end42-ebc_release

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
	tbnz	w9, #5, .LBB43_2
	ldr	x10, [x8]
	mov	x9, x0
	tbz	w10, #26, .LBB43_3
.LBB43_2:
	lsl	x9, x0, #8
	and	x9, x0, x9, asr #8
.LBB43_3:
	mov	x10, #549755813888
	sub	x10, x10, x2
	cmp	x10, x9
	b.lo	.LBB43_18
	//APP
.Ltmp36:
	b	.Ltmp35
.Ltmp37:
	.section	.altinstructions,"a",@progbits
.Ltmp38:
	.word	.Ltmp36-.Ltmp38
.Ltmp39:
	.word	alt_cb_patch_nops-.Ltmp39
	.hword	32769
	.byte	.Ltmp37-.Ltmp36
	.byte	.Ltmp40-.Ltmp41
	.text

.Ltmp41:
.Ltmp40:

	//NO_APP
	//APP
.Ltmp43:
	nop
.Ltmp44:
	.section	.altinstructions,"a",@progbits
.Ltmp45:
	.word	.Ltmp43-.Ltmp45
.Ltmp47:
	.word	.Ltmp46-.Ltmp47
	.hword	29
	.byte	.Ltmp44-.Ltmp43
	.byte	.Ltmp48-.Ltmp46
	.text

	.text	1
.Ltmp46:
	b	.Ltmp42
.Ltmp48:
.Ltmp49:
.org (.Ltmp49-(.Ltmp48-.Ltmp46))+(.Ltmp44-.Ltmp43), 0
.Ltmp50:
.org (.Ltmp50-(.Ltmp44-.Ltmp43))+(.Ltmp48-.Ltmp46), 0
	.text


	//NO_APP
.LBB43_6:
	//APP
.Ltmp51:
	mrs	x9, DAIF
.Ltmp52:
	.section	.altinstructions,"a",@progbits
.Ltmp53:
	.word	.Ltmp51-.Ltmp53
.Ltmp55:
	.word	.Ltmp54-.Ltmp55
	.hword	24
	.byte	.Ltmp52-.Ltmp51
	.byte	.Ltmp56-.Ltmp54
	.text

	.text	1
.Ltmp54:
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


.Ltmp56:
.Ltmp57:
.org (.Ltmp57-(.Ltmp56-.Ltmp54))+(.Ltmp52-.Ltmp51), 0
.Ltmp58:
.org (.Ltmp58-(.Ltmp52-.Ltmp51))+(.Ltmp56-.Ltmp54), 0
	.text


	//NO_APP
	//APP
.Ltmp59:
	and	w10, w9, #0x80
.Ltmp60:
	.section	.altinstructions,"a",@progbits
.Ltmp61:
	.word	.Ltmp59-.Ltmp61
.Ltmp63:
	.word	.Ltmp62-.Ltmp63
	.hword	24
	.byte	.Ltmp60-.Ltmp59
	.byte	.Ltmp64-.Ltmp62
	.text

	.text	1
.Ltmp62:
	eor	w10, w9, #0xe0
.Ltmp64:
.Ltmp65:
.org (.Ltmp65-(.Ltmp64-.Ltmp62))+(.Ltmp60-.Ltmp59), 0
.Ltmp66:
.org (.Ltmp66-(.Ltmp60-.Ltmp59))+(.Ltmp64-.Ltmp62), 0
	.text


	//NO_APP
	cbnz	w10, .LBB43_10
	//APP
.Ltmp68:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp69:
	.word	.Ltmp68-.Ltmp69
.Ltmp70:
	.word	.Ltmp67-.Ltmp70
.Ltmp71:
	.xword	gic_nonsecure_priorities-.Ltmp71
	.text


	//NO_APP
	mov	w10, #96
.LBB43_9:
	//APP
.Ltmp72:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp73:
	.section	.altinstructions,"a",@progbits
.Ltmp74:
	.word	.Ltmp72-.Ltmp74
.Ltmp76:
	.word	.Ltmp75-.Ltmp76
	.hword	24
	.byte	.Ltmp73-.Ltmp72
	.byte	.Ltmp77-.Ltmp75
	.text

	.text	1
.Ltmp75:
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


.Ltmp77:
.Ltmp78:
.org (.Ltmp78-(.Ltmp77-.Ltmp75))+(.Ltmp73-.Ltmp72), 0
.Ltmp79:
.org (.Ltmp79-(.Ltmp73-.Ltmp72))+(.Ltmp77-.Ltmp75), 0
	.text


	//NO_APP
.LBB43_10:
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
.Ltmp80:
	msr	DAIF, x9
.Ltmp81:
	.section	.altinstructions,"a",@progbits
.Ltmp82:
	.word	.Ltmp80-.Ltmp82
.Ltmp84:
	.word	.Ltmp83-.Ltmp84
	.hword	24
	.byte	.Ltmp81-.Ltmp80
	.byte	.Ltmp85-.Ltmp83
	.text

	.text	1
.Ltmp83:
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


.Ltmp85:
.Ltmp86:
.org (.Ltmp86-(.Ltmp85-.Ltmp83))+(.Ltmp81-.Ltmp80), 0
.Ltmp87:
.org (.Ltmp87-(.Ltmp81-.Ltmp80))+(.Ltmp85-.Ltmp83), 0
	.text


	//NO_APP
	//APP
.Ltmp89:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp90:
	.word	.Ltmp89-.Ltmp90
.Ltmp91:
	.word	.Ltmp88-.Ltmp91
.Ltmp92:
	.xword	gic_pmr_sync-.Ltmp92
	.text


	//NO_APP
.Ltmp42:
.LBB43_11:
	//APP
	and	x0, x0, #0xff7fffffffffffff

	//NO_APP
	bl	__arch_copy_to_user
	mov	x2, x0
	//APP
.Ltmp94:
	b	.Ltmp93
.Ltmp95:
	.section	.altinstructions,"a",@progbits
.Ltmp96:
	.word	.Ltmp94-.Ltmp96
.Ltmp97:
	.word	alt_cb_patch_nops-.Ltmp97
	.hword	32769
	.byte	.Ltmp95-.Ltmp94
	.byte	.Ltmp98-.Ltmp99
	.text

.Ltmp99:
.Ltmp98:

	//NO_APP
	//APP
.Ltmp101:
	nop
.Ltmp102:
	.section	.altinstructions,"a",@progbits
.Ltmp103:
	.word	.Ltmp101-.Ltmp103
.Ltmp105:
	.word	.Ltmp104-.Ltmp105
	.hword	29
	.byte	.Ltmp102-.Ltmp101
	.byte	.Ltmp106-.Ltmp104
	.text

	.text	1
.Ltmp104:
	b	.Ltmp100
.Ltmp106:
.Ltmp107:
.org (.Ltmp107-(.Ltmp106-.Ltmp104))+(.Ltmp102-.Ltmp101), 0
.Ltmp108:
.org (.Ltmp108-(.Ltmp102-.Ltmp101))+(.Ltmp106-.Ltmp104), 0
	.text


	//NO_APP
.LBB43_13:
	//APP
.Ltmp109:
	mrs	x8, DAIF
.Ltmp110:
	.section	.altinstructions,"a",@progbits
.Ltmp111:
	.word	.Ltmp109-.Ltmp111
.Ltmp113:
	.word	.Ltmp112-.Ltmp113
	.hword	24
	.byte	.Ltmp110-.Ltmp109
	.byte	.Ltmp114-.Ltmp112
	.text

	.text	1
.Ltmp112:
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


.Ltmp114:
.Ltmp115:
.org (.Ltmp115-(.Ltmp114-.Ltmp112))+(.Ltmp110-.Ltmp109), 0
.Ltmp116:
.org (.Ltmp116-(.Ltmp110-.Ltmp109))+(.Ltmp114-.Ltmp112), 0
	.text


	//NO_APP
	//APP
.Ltmp117:
	and	w9, w8, #0x80
.Ltmp118:
	.section	.altinstructions,"a",@progbits
.Ltmp119:
	.word	.Ltmp117-.Ltmp119
.Ltmp121:
	.word	.Ltmp120-.Ltmp121
	.hword	24
	.byte	.Ltmp118-.Ltmp117
	.byte	.Ltmp122-.Ltmp120
	.text

	.text	1
.Ltmp120:
	eor	w9, w8, #0xe0
.Ltmp122:
.Ltmp123:
.org (.Ltmp123-(.Ltmp122-.Ltmp120))+(.Ltmp118-.Ltmp117), 0
.Ltmp124:
.org (.Ltmp124-(.Ltmp118-.Ltmp117))+(.Ltmp122-.Ltmp120), 0
	.text


	//NO_APP
	cbnz	w9, .LBB43_17
	//APP
.Ltmp126:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp127:
	.word	.Ltmp126-.Ltmp127
.Ltmp128:
	.word	.Ltmp125-.Ltmp128
.Ltmp129:
	.xword	gic_nonsecure_priorities-.Ltmp129
	.text


	//NO_APP
	mov	w9, #96
.LBB43_16:
	//APP
.Ltmp130:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp131:
	.section	.altinstructions,"a",@progbits
.Ltmp132:
	.word	.Ltmp130-.Ltmp132
.Ltmp134:
	.word	.Ltmp133-.Ltmp134
	.hword	24
	.byte	.Ltmp131-.Ltmp130
	.byte	.Ltmp135-.Ltmp133
	.text

	.text	1
.Ltmp133:
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


.Ltmp135:
.Ltmp136:
.org (.Ltmp136-(.Ltmp135-.Ltmp133))+(.Ltmp131-.Ltmp130), 0
.Ltmp137:
.org (.Ltmp137-(.Ltmp131-.Ltmp130))+(.Ltmp135-.Ltmp133), 0
	.text


	//NO_APP
.LBB43_17:
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
.Ltmp138:
	msr	DAIF, x8
.Ltmp139:
	.section	.altinstructions,"a",@progbits
.Ltmp140:
	.word	.Ltmp138-.Ltmp140
.Ltmp142:
	.word	.Ltmp141-.Ltmp142
	.hword	24
	.byte	.Ltmp139-.Ltmp138
	.byte	.Ltmp143-.Ltmp141
	.text

	.text	1
.Ltmp141:
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


.Ltmp143:
.Ltmp144:
.org (.Ltmp144-(.Ltmp143-.Ltmp141))+(.Ltmp139-.Ltmp138), 0
.Ltmp145:
.org (.Ltmp145-(.Ltmp139-.Ltmp138))+(.Ltmp143-.Ltmp141), 0
	.text


	//NO_APP
	//APP
.Ltmp147:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp148:
	.word	.Ltmp147-.Ltmp148
.Ltmp149:
	.word	.Ltmp146-.Ltmp149
.Ltmp150:
	.xword	gic_pmr_sync-.Ltmp150
	.text


	//NO_APP
.Ltmp100:
.LBB43_18:
	mov	x0, x2
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Ltmp35:
.LBB43_19:
	adrp	x9, cpu_hwcaps
	ldr	x9, [x9, :lo12:cpu_hwcaps]
	tbnz	w9, #29, .LBB43_11
	b	.LBB43_6
.Ltmp88:
.LBB43_20:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB43_11
.Ltmp93:
.LBB43_21:
	adrp	x8, cpu_hwcaps
	ldr	x8, [x8, :lo12:cpu_hwcaps]
	tbnz	w8, #29, .LBB43_18
	b	.LBB43_13
.Ltmp146:
.LBB43_22:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB43_18
.Ltmp67:
.LBB43_23:
	mov	w10, #160
	b	.LBB43_9
.Ltmp125:
.LBB43_24:
	mov	w9, #160
	b	.LBB43_16
.Lfunc_end43:
	.size	_copy_to_user, .Lfunc_end43-_copy_to_user

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
	tbnz	w9, #5, .LBB44_2
	ldr	x10, [x8]
	mov	x9, x1
	tbz	w10, #26, .LBB44_3
.LBB44_2:
	lsl	x9, x1, #8
	and	x9, x1, x9, asr #8
.LBB44_3:
	mov	x10, #549755813888
	mov	x21, x19
	sub	x10, x10, x19
	cmp	x10, x9
	b.lo	.LBB44_18
	//APP
.Ltmp152:
	b	.Ltmp151
.Ltmp153:
	.section	.altinstructions,"a",@progbits
.Ltmp154:
	.word	.Ltmp152-.Ltmp154
.Ltmp155:
	.word	alt_cb_patch_nops-.Ltmp155
	.hword	32769
	.byte	.Ltmp153-.Ltmp152
	.byte	.Ltmp156-.Ltmp157
	.text

.Ltmp157:
.Ltmp156:

	//NO_APP
	//APP
.Ltmp159:
	nop
.Ltmp160:
	.section	.altinstructions,"a",@progbits
.Ltmp161:
	.word	.Ltmp159-.Ltmp161
.Ltmp163:
	.word	.Ltmp162-.Ltmp163
	.hword	29
	.byte	.Ltmp160-.Ltmp159
	.byte	.Ltmp164-.Ltmp162
	.text

	.text	1
.Ltmp162:
	b	.Ltmp158
.Ltmp164:
.Ltmp165:
.org (.Ltmp165-(.Ltmp164-.Ltmp162))+(.Ltmp160-.Ltmp159), 0
.Ltmp166:
.org (.Ltmp166-(.Ltmp160-.Ltmp159))+(.Ltmp164-.Ltmp162), 0
	.text


	//NO_APP
.LBB44_6:
	//APP
.Ltmp167:
	mrs	x9, DAIF
.Ltmp168:
	.section	.altinstructions,"a",@progbits
.Ltmp169:
	.word	.Ltmp167-.Ltmp169
.Ltmp171:
	.word	.Ltmp170-.Ltmp171
	.hword	24
	.byte	.Ltmp168-.Ltmp167
	.byte	.Ltmp172-.Ltmp170
	.text

	.text	1
.Ltmp170:
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


.Ltmp172:
.Ltmp173:
.org (.Ltmp173-(.Ltmp172-.Ltmp170))+(.Ltmp168-.Ltmp167), 0
.Ltmp174:
.org (.Ltmp174-(.Ltmp168-.Ltmp167))+(.Ltmp172-.Ltmp170), 0
	.text


	//NO_APP
	//APP
.Ltmp175:
	and	w10, w9, #0x80
.Ltmp176:
	.section	.altinstructions,"a",@progbits
.Ltmp177:
	.word	.Ltmp175-.Ltmp177
.Ltmp179:
	.word	.Ltmp178-.Ltmp179
	.hword	24
	.byte	.Ltmp176-.Ltmp175
	.byte	.Ltmp180-.Ltmp178
	.text

	.text	1
.Ltmp178:
	eor	w10, w9, #0xe0
.Ltmp180:
.Ltmp181:
.org (.Ltmp181-(.Ltmp180-.Ltmp178))+(.Ltmp176-.Ltmp175), 0
.Ltmp182:
.org (.Ltmp182-(.Ltmp176-.Ltmp175))+(.Ltmp180-.Ltmp178), 0
	.text


	//NO_APP
	cbnz	w10, .LBB44_10
	//APP
.Ltmp184:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp185:
	.word	.Ltmp184-.Ltmp185
.Ltmp186:
	.word	.Ltmp183-.Ltmp186
.Ltmp187:
	.xword	gic_nonsecure_priorities-.Ltmp187
	.text


	//NO_APP
	mov	w10, #96
.LBB44_9:
	//APP
.Ltmp188:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp189:
	.section	.altinstructions,"a",@progbits
.Ltmp190:
	.word	.Ltmp188-.Ltmp190
.Ltmp192:
	.word	.Ltmp191-.Ltmp192
	.hword	24
	.byte	.Ltmp189-.Ltmp188
	.byte	.Ltmp193-.Ltmp191
	.text

	.text	1
.Ltmp191:
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


.Ltmp193:
.Ltmp194:
.org (.Ltmp194-(.Ltmp193-.Ltmp191))+(.Ltmp189-.Ltmp188), 0
.Ltmp195:
.org (.Ltmp195-(.Ltmp189-.Ltmp188))+(.Ltmp193-.Ltmp191), 0
	.text


	//NO_APP
.LBB44_10:
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
.Ltmp196:
	msr	DAIF, x9
.Ltmp197:
	.section	.altinstructions,"a",@progbits
.Ltmp198:
	.word	.Ltmp196-.Ltmp198
.Ltmp200:
	.word	.Ltmp199-.Ltmp200
	.hword	24
	.byte	.Ltmp197-.Ltmp196
	.byte	.Ltmp201-.Ltmp199
	.text

	.text	1
.Ltmp199:
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


.Ltmp201:
.Ltmp202:
.org (.Ltmp202-(.Ltmp201-.Ltmp199))+(.Ltmp197-.Ltmp196), 0
.Ltmp203:
.org (.Ltmp203-(.Ltmp197-.Ltmp196))+(.Ltmp201-.Ltmp199), 0
	.text


	//NO_APP
	//APP
.Ltmp205:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp206:
	.word	.Ltmp205-.Ltmp206
.Ltmp207:
	.word	.Ltmp204-.Ltmp207
.Ltmp208:
	.xword	gic_pmr_sync-.Ltmp208
	.text


	//NO_APP
.Ltmp158:
.LBB44_11:
	//APP
	and	x1, x1, #0xff7fffffffffffff

	//NO_APP
	mov	x0, x20
	mov	x2, x19
	bl	__arch_copy_from_user
	mov	x21, x0
	//APP
.Ltmp210:
	b	.Ltmp209
.Ltmp211:
	.section	.altinstructions,"a",@progbits
.Ltmp212:
	.word	.Ltmp210-.Ltmp212
.Ltmp213:
	.word	alt_cb_patch_nops-.Ltmp213
	.hword	32769
	.byte	.Ltmp211-.Ltmp210
	.byte	.Ltmp214-.Ltmp215
	.text

.Ltmp215:
.Ltmp214:

	//NO_APP
	//APP
.Ltmp217:
	nop
.Ltmp218:
	.section	.altinstructions,"a",@progbits
.Ltmp219:
	.word	.Ltmp217-.Ltmp219
.Ltmp221:
	.word	.Ltmp220-.Ltmp221
	.hword	29
	.byte	.Ltmp218-.Ltmp217
	.byte	.Ltmp222-.Ltmp220
	.text

	.text	1
.Ltmp220:
	b	.Ltmp216
.Ltmp222:
.Ltmp223:
.org (.Ltmp223-(.Ltmp222-.Ltmp220))+(.Ltmp218-.Ltmp217), 0
.Ltmp224:
.org (.Ltmp224-(.Ltmp218-.Ltmp217))+(.Ltmp222-.Ltmp220), 0
	.text


	//NO_APP
.LBB44_13:
	//APP
.Ltmp225:
	mrs	x8, DAIF
.Ltmp226:
	.section	.altinstructions,"a",@progbits
.Ltmp227:
	.word	.Ltmp225-.Ltmp227
.Ltmp229:
	.word	.Ltmp228-.Ltmp229
	.hword	24
	.byte	.Ltmp226-.Ltmp225
	.byte	.Ltmp230-.Ltmp228
	.text

	.text	1
.Ltmp228:
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


.Ltmp230:
.Ltmp231:
.org (.Ltmp231-(.Ltmp230-.Ltmp228))+(.Ltmp226-.Ltmp225), 0
.Ltmp232:
.org (.Ltmp232-(.Ltmp226-.Ltmp225))+(.Ltmp230-.Ltmp228), 0
	.text


	//NO_APP
	//APP
.Ltmp233:
	and	w9, w8, #0x80
.Ltmp234:
	.section	.altinstructions,"a",@progbits
.Ltmp235:
	.word	.Ltmp233-.Ltmp235
.Ltmp237:
	.word	.Ltmp236-.Ltmp237
	.hword	24
	.byte	.Ltmp234-.Ltmp233
	.byte	.Ltmp238-.Ltmp236
	.text

	.text	1
.Ltmp236:
	eor	w9, w8, #0xe0
.Ltmp238:
.Ltmp239:
.org (.Ltmp239-(.Ltmp238-.Ltmp236))+(.Ltmp234-.Ltmp233), 0
.Ltmp240:
.org (.Ltmp240-(.Ltmp234-.Ltmp233))+(.Ltmp238-.Ltmp236), 0
	.text


	//NO_APP
	cbnz	w9, .LBB44_17
	//APP
.Ltmp242:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp243:
	.word	.Ltmp242-.Ltmp243
.Ltmp244:
	.word	.Ltmp241-.Ltmp244
.Ltmp245:
	.xword	gic_nonsecure_priorities-.Ltmp245
	.text


	//NO_APP
	mov	w9, #96
.LBB44_16:
	//APP
.Ltmp246:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp247:
	.section	.altinstructions,"a",@progbits
.Ltmp248:
	.word	.Ltmp246-.Ltmp248
.Ltmp250:
	.word	.Ltmp249-.Ltmp250
	.hword	24
	.byte	.Ltmp247-.Ltmp246
	.byte	.Ltmp251-.Ltmp249
	.text

	.text	1
.Ltmp249:
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


.Ltmp251:
.Ltmp252:
.org (.Ltmp252-(.Ltmp251-.Ltmp249))+(.Ltmp247-.Ltmp246), 0
.Ltmp253:
.org (.Ltmp253-(.Ltmp247-.Ltmp246))+(.Ltmp251-.Ltmp249), 0
	.text


	//NO_APP
.LBB44_17:
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
.Ltmp254:
	msr	DAIF, x8
.Ltmp255:
	.section	.altinstructions,"a",@progbits
.Ltmp256:
	.word	.Ltmp254-.Ltmp256
.Ltmp258:
	.word	.Ltmp257-.Ltmp258
	.hword	24
	.byte	.Ltmp255-.Ltmp254
	.byte	.Ltmp259-.Ltmp257
	.text

	.text	1
.Ltmp257:
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


.Ltmp259:
.Ltmp260:
.org (.Ltmp260-(.Ltmp259-.Ltmp257))+(.Ltmp255-.Ltmp254), 0
.Ltmp261:
.org (.Ltmp261-(.Ltmp255-.Ltmp254))+(.Ltmp259-.Ltmp257), 0
	.text


	//NO_APP
	//APP
.Ltmp263:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp264:
	.word	.Ltmp263-.Ltmp264
.Ltmp265:
	.word	.Ltmp262-.Ltmp265
.Ltmp266:
	.xword	gic_pmr_sync-.Ltmp266
	.text


	//NO_APP
.Ltmp216:
.LBB44_18:
	cbnz	x21, .LBB44_20
.LBB44_19:
	ldp	x20, x19, [sp, #32]
	mov	x0, x21
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB44_20:
	sub	x8, x19, x21
	mov	w1, wzr
	add	x0, x20, x8
	mov	x2, x21
	bl	memset
	b	.LBB44_19
.Ltmp151:
.LBB44_21:
	adrp	x9, cpu_hwcaps
	ldr	x9, [x9, :lo12:cpu_hwcaps]
	tbnz	w9, #29, .LBB44_11
	b	.LBB44_6
.Ltmp204:
.LBB44_22:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB44_11
.Ltmp209:
.LBB44_23:
	adrp	x8, cpu_hwcaps
	ldr	x8, [x8, :lo12:cpu_hwcaps]
	tbnz	w8, #29, .LBB44_18
	b	.LBB44_13
.Ltmp262:
.LBB44_24:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB44_18
.Ltmp183:
.LBB44_25:
	mov	w10, #160
	b	.LBB44_9
.Ltmp241:
.LBB44_26:
	mov	w9, #160
	b	.LBB44_16
.Lfunc_end44:
	.size	_copy_from_user, .Lfunc_end44-_copy_from_user

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
	ldr	x20, [x8, #272]
	cmp	w9, w21
	b.eq	.LBB45_2
	ldr	x0, [x19, #48]
	bl	down_write
	str	w21, [x19, #40]
	ldr	x0, [x19, #48]
	bl	up_write
.LBB45_2:
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
.Lfunc_end45:
	.size	waveform_mmap, .Lfunc_end45-waveform_mmap

	.p2align	2
	.type	waveform_open,@function
waveform_open:
	mov	w0, wzr
	str	xzr, [x1, #104]
	ret
.Lfunc_end46:
	.size	waveform_open, .Lfunc_end46-waveform_open

	.p2align	2
	.type	waveform_version_read,@function
waveform_version_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	mov	x29, sp
	mov	x19, x2
	bl	epd_lut_get_wf_version
	adrp	x1, .L.str.149
	mov	x2, x0
	add	x1, x1, :lo12:.L.str.149
	mov	x0, x19
	bl	sprintf
	ldr	x19, [sp, #16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end47:
	.size	waveform_version_read, .Lfunc_end47-waveform_version_read

	.p2align	2
	.type	pmic_name_read,@function
pmic_name_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.149
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.149
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x8, [x8, #16]
	add	x2, x8, #8
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end48:
	.size	pmic_name_read, .Lfunc_end48-pmic_name_read

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
	cbz	x0, .LBB49_2
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	blr	x8
	b	.LBB49_3
.LBB49_2:
	ldr	x0, [x8, #32]
	add	x1, sp, #4
	bl	thermal_zone_get_temp
.LBB49_3:
	adrp	x1, .L.str.152
	ldr	w2, [sp, #4]
	add	x1, x1, :lo12:.L.str.152
	mov	x0, x19
	bl	sprintf
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB49_5
	ldp	x29, x30, [sp, #16]
	sxtw	x0, w0
	ldr	x19, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #48
	ret
.LBB49_5:
	bl	__stack_chk_fail
.Lfunc_end49:
	.size	pmic_temp_read, .Lfunc_end49-pmic_temp_read

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
	cbz	x0, .LBB50_2
	ldr	x8, [x0, #64]
	blr	x8
	mov	w2, w0
	b	.LBB50_3
.LBB50_2:
	ldr	x0, [x8, #24]
	bl	regulator_get_voltage
	mov	w8, #19923
	movk	w8, #4194, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w2, w8, w9
.LBB50_3:
	adrp	x1, .L.str.152
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.152
	bl	sprintf
	ldr	x19, [sp, #16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end50:
	.size	pmic_vcom_read, .Lfunc_end50-pmic_vcom_read

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
	cbnz	w0, .LBB51_5
	ldr	x0, [x21, #16]
	cbz	x0, .LBB51_3
	ldr	w1, [sp, #4]
	bl	ebc_pmic_set_vcom
	cbz	w0, .LBB51_7
	b	.LBB51_4
.LBB51_3:
	ldr	x0, [x21, #24]
	ldr	w1, [sp, #4]
	bl	ebc_regulator_set_vcom
	cbz	w0, .LBB51_7
.LBB51_4:
	adrp	x1, .L.str.155
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.155
	bl	_dev_err
	b	.LBB51_6
.LBB51_5:
	adrp	x1, .L.str.154
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.154
	mov	x2, x20
	bl	_dev_err
.LBB51_6:
	mov	x19, #-1
.LBB51_7:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB51_9
	mov	x0, x19
	ldr	x21, [sp, #32]
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB51_9:
	bl	__stack_chk_fail
.Lfunc_end51:
	.size	pmic_vcom_write, .Lfunc_end51-pmic_vcom_write

	.p2align	2
	.type	ebc_version_read,@function
ebc_version_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	mov	x0, x2
	adrp	x1, .L.str.149
	adrp	x2, .L.str.2
	add	x1, x1, :lo12:.L.str.149
	add	x2, x2, :lo12:.L.str.2
	mov	x29, sp
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end52:
	.size	ebc_version_read, .Lfunc_end52-ebc_version_read

	.p2align	2
	.type	ebc_state_read,@function
ebc_state_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.152
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.152
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w2, [x8, #672]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end53:
	.size	ebc_state_read, .Lfunc_end53-ebc_state_read

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
.Lfunc_end54:
	.size	ebc_buf_state_read, .Lfunc_end54-ebc_buf_state_read

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
	cbz	w9, .LBB55_4
	ldr	x11, [x8, #392]
	mov	w10, wzr
.LBB55_2:
	ldrb	w8, [x11, w10, sxtw]
	cbnz	w8, .LBB55_5
	add	w10, w10, #1
	cmp	w9, w10
	b.ne	.LBB55_2
.LBB55_4:
	mov	w8, #2608
	mov	w0, #2
	strb	wzr, [x2, #2]
	strh	w8, [x2]
	b	.LBB55_6
.LBB55_5:
	adrp	x1, .L.str.152
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.152
	mov	w2, w8
	bl	sprintf
	sxtw	x0, w0
.LBB55_6:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end55:
	.size	auto_frame_state_read, .Lfunc_end55-auto_frame_state_read

	.p2align	2
	.type	ebc_debug_level_read,@function
ebc_debug_level_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.152
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.152
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w2, [x8, #812]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end56:
	.size	ebc_debug_level_read, .Lfunc_end56-ebc_debug_level_read

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
	cbnz	w0, .LBB57_4
	ldr	w8, [sp, #4]
	str	w8, [x21, #812]
.LBB57_2:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB57_5
	mov	x0, x19
	ldr	x21, [sp, #32]
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB57_4:
	adrp	x1, .L.str.154
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.154
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1
	b	.LBB57_2
.LBB57_5:
	bl	__stack_chk_fail
.Lfunc_end57:
	.size	ebc_debug_level_write, .Lfunc_end57-ebc_debug_level_write

	.p2align	2
	.type	wf_data_write,@function
wf_data_write:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.163
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.163
	stp	x26, x25, [sp, #32]
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #80]
	stp	x28, x27, [sp, #16]
	mov	x19, x3
	stp	x24, x23, [sp, #48]
	ldr	x25, [x8, #352]
	stp	x22, x21, [sp, #64]
	ldrb	w20, [x8, #336]
	bl	strstr
	cbnz	x0, .LBB58_2
.LBB58_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.LBB58_2:
	adrp	x0, .L.str.164
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.164
	bl	_printk
	adrp	x22, .L.str.165
	adrp	x23, .L.str.166
	mov	x21, xzr
	add	x22, x22, :lo12:.L.str.165
	add	x23, x23, :lo12:.L.str.166
.LBB58_3:
	mov	x24, xzr
	mov	x26, x25
.LBB58_4:
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB58_7
	mov	x27, x20
	mov	x28, x26
.LBB58_6:
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	add	x28, x28, #1024
	subs	x27, x27, #1
	b.ne	.LBB58_6
.LBB58_7:
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB58_4
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB58_3
	b	.LBB58_1
.Lfunc_end58:
	.size	wf_data_write, .Lfunc_end58-wf_data_write

	.p2align	2
	.type	overlay_wf_data_write,@function
overlay_wf_data_write:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.163
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.163
	stp	x26, x25, [sp, #32]
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #80]
	stp	x28, x27, [sp, #16]
	mov	x19, x3
	stp	x24, x23, [sp, #48]
	ldr	x25, [x8, #360]
	stp	x22, x21, [sp, #64]
	ldrb	w20, [x8, #337]
	bl	strstr
	cbnz	x0, .LBB59_2
.LBB59_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.LBB59_2:
	adrp	x0, .L.str.164
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.164
	bl	_printk
	adrp	x22, .L.str.165
	adrp	x23, .L.str.166
	mov	x21, xzr
	add	x22, x22, :lo12:.L.str.165
	add	x23, x23, :lo12:.L.str.166
.LBB59_3:
	mov	x24, xzr
	mov	x26, x25
.LBB59_4:
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB59_7
	mov	x27, x20
	mov	x28, x26
.LBB59_6:
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	add	x28, x28, #1024
	subs	x27, x27, #1
	b.ne	.LBB59_6
.LBB59_7:
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB59_4
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB59_3
	b	.LBB59_1
.Lfunc_end59:
	.size	overlay_wf_data_write, .Lfunc_end59-overlay_wf_data_write

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
	cbnz	x0, .LBB60_2
	adrp	x0, .L.str.169
	add	x0, x0, :lo12:.L.str.169
	bl	_printk
	b	.LBB60_17
.LBB60_2:
	adrp	x1, .L.str.163
	mov	x19, x0
	str	x0, [sp, #40]
	add	x1, x1, :lo12:.L.str.163
	mov	x0, x21
	bl	strstr
	cbnz	x0, .LBB60_4
	adrp	x0, .L.str.172
	add	x0, x0, :lo12:.L.str.172
	b	.LBB60_16
.LBB60_4:
	adrp	x1, .L.str.170
	add	x2, sp, #20
	add	x1, x1, :lo12:.L.str.170
	add	x3, sp, #16
	mov	x0, x21
	bl	sscanf
	ldp	w3, w2, [sp, #16]
	adrp	x0, .L.str.171
	adrp	x1, .L__func__.ori_wf_data_write
	add	x0, x0, :lo12:.L.str.171
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
	ldr	w1, [sp, #20]
	cmp	w1, #8
	b.hi	.LBB60_15
	ldr	w2, [sp, #16]
	tbnz	w2, #31, .LBB60_15
	cmp	w2, #50
	b.gt	.LBB60_15
	add	x0, sp, #24
	mov	w3, #32
	str	x20, [sp, #8]
	bl	epd_lut_get_original
	ldrb	w21, [sp, #24]
	adrp	x0, .L.str.164
	add	x0, x0, :lo12:.L.str.164
	mov	w1, w21
	bl	_printk
	adrp	x23, .L.str.165
	adrp	x24, .L.str.166
	mov	x22, xzr
	mov	x20, x19
	add	x23, x23, :lo12:.L.str.165
	add	x24, x24, :lo12:.L.str.166
.LBB60_8:
	mov	x25, xzr
	mov	x26, x20
.LBB60_9:
	mov	x0, x23
	mov	w1, w25
	mov	w2, w22
	bl	_printk
	cbz	w21, .LBB60_12
	mov	x28, x21
	mov	x27, x26
.LBB60_11:
	ldrb	w1, [x27]
	mov	x0, x24
	bl	_printk
	add	x27, x27, #1024
	subs	x28, x28, #1
	b.ne	.LBB60_11
.LBB60_12:
	add	x25, x25, #1
	add	x26, x26, #32
	cmp	x25, #32
	b.ne	.LBB60_9
	add	x22, x22, #1
	add	x20, x20, #1
	cmp	x22, #32
	b.ne	.LBB60_8
	mov	x0, x19
	bl	kfree
	ldr	x20, [sp, #8]
	b	.LBB60_17
.LBB60_15:
	adrp	x0, .L.str.173
	add	x0, x0, :lo12:.L.str.173
.LBB60_16:
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
.LBB60_17:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB60_19
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
.LBB60_19:
	bl	__stack_chk_fail
.Lfunc_end60:
	.size	ori_wf_data_write, .Lfunc_end60-ori_wf_data_write

	.p2align	2
	.type	record_pix_wf_write,@function
record_pix_wf_write:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	adrp	x9, global_ebc
	adrp	x1, .L.str.175
	mov	x19, x3
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.175
	stur	x8, [x29, #-8]
	sub	x2, x29, #12
	add	x3, sp, #16
	add	x4, sp, #12
	ldr	x20, [x9, :lo12:global_ebc]
	stur	wzr, [x29, #-12]
	stp	wzr, wzr, [sp, #12]
	bl	sscanf
	cmp	w0, #2
	b.ne	.LBB61_2
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #16]
	str	w8, [x20, #908]
	str	w9, [x20, #912]
	b	.LBB61_3
.LBB61_2:
	mov	x19, #-22
.LBB61_3:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB61_5
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB61_5:
	bl	__stack_chk_fail
.Lfunc_end61:
	.size	record_pix_wf_write, .Lfunc_end61-record_pix_wf_write

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
	str	w8, [x19, #764]
	cbz	x0, .LBB62_2
	ldr	x8, [x0, #40]
	blr	x8
.LBB62_2:
	adrp	x1, .L.str.176
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.176
	bl	_dev_info
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end62:
	.size	ebc_suspend, .Lfunc_end62-ebc_suspend

	.p2align	2
	.type	ebc_resume,@function
ebc_resume:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	ldr	x19, [x0, #120]
	mov	x29, sp
	ldr	x0, [x19, #16]
	cbz	x0, .LBB63_2
	ldr	x8, [x0, #48]
	blr	x8
.LBB63_2:
	adrp	x1, .L.str.177
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.177
	str	wzr, [x19, #764]
	bl	_dev_info
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end63:
	.size	ebc_resume, .Lfunc_end63-ebc_resume

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
	.asciz	"8.02_y8"
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
	.asciz	"ebc-repair-enable"
	.size	.L.str.20, 18

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"ebc-dmc-notify-enable"
	.size	.L.str.21, 22

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"failed to probe panel: %d\n"
	.size	.L.str.22, 27

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"buffer manage init failed\n"
	.size	.L.str.23, 27

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"lut table init failed\n"
	.size	.L.str.24, 23

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"task init failed\n"
	.size	.L.str.25, 18

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"rockchip ebc driver %s probe success\n"
	.size	.L.str.26, 38

	.type	ebc_auto_task,@object
	.local	ebc_auto_task
	.comm	ebc_auto_task,8,8
	.type	.L.str.27,@object
.L.str.27:
	.asciz	"overlay frame done\n"
	.size	.L.str.27, 20

	.type	ebc_thread_wq,@object
	.data
	.p2align	3
ebc_thread_wq:
	.zero	4
	.zero	4
	.xword	ebc_thread_wq+8
	.xword	ebc_thread_wq+8
	.size	ebc_thread_wq, 24

	.type	.L.str.28,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"auto task break\n"
	.size	.L.str.28, 17

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"auto frame done\n"
	.size	.L.str.29, 17

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"part task break\n"
	.size	.L.str.30, 17

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"frame done\n"
	.size	.L.str.31, 12

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"record pix pos wf: [%d, %d]: [%s]\n"
	.size	.L.str.32, 35

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"panel,width"
	.size	.L.str.33, 12

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"panel,height"
	.size	.L.str.34, 13

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"panel,vir_width"
	.size	.L.str.35, 16

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"panel,vir_height"
	.size	.L.str.36, 17

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"panel,sdck"
	.size	.L.str.37, 11

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"panel,lsl"
	.size	.L.str.38, 10

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"panel,lbl"
	.size	.L.str.39, 10

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"panel,ldl"
	.size	.L.str.40, 10

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"panel,lel"
	.size	.L.str.41, 10

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"panel,gdck-sta"
	.size	.L.str.42, 15

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"panel,lgonl"
	.size	.L.str.43, 12

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"panel,fsl"
	.size	.L.str.44, 10

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"panel,fbl"
	.size	.L.str.45, 10

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"panel,fdl"
	.size	.L.str.46, 10

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"panel,fel"
	.size	.L.str.47, 10

	.type	.L.str.48,@object
.L.str.48:
	.asciz	"panel,panel_16bit"
	.size	.L.str.48, 18

	.type	.L.str.49,@object
.L.str.49:
	.asciz	"panel,panel_color"
	.size	.L.str.49, 18

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"panel,mirror"
	.size	.L.str.50, 13

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"panel,width-mm"
	.size	.L.str.51, 15

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"panel,height-mm"
	.size	.L.str.52, 16

	.type	.L.str.53,@object
.L.str.53:
	.asciz	"panel,disable_logo"
	.size	.L.str.53, 19

	.type	.L.str.54,@object
.L.str.54:
	.asciz	"panel,rearrange"
	.size	.L.str.54, 16

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"panel,sdoe_mode"
	.size	.L.str.55, 16

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"panel,sdce_width"
	.size	.L.str.56, 17

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"panel,gds"
	.size	.L.str.57, 10

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"panel,gdl"
	.size	.L.str.58, 10

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"pmic-early-power-on"
	.size	.L.str.59, 20

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"too large resolution, not support\n"
	.size	.L.str.60, 35

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"memory-region"
	.size	.L.str.61, 14

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"Couldn't address to resource for reserved memory\n"
	.size	.L.str.62, 50

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"reserved memory not enough, need 0x%x\n"
	.size	.L.str.63, 39

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"Couldn't remap for reserved memory\n"
	.size	.L.str.64, 36

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"waveform-region"
	.size	.L.str.65, 16

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"wf,mode_table"
	.size	.L.str.66, 14

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"%s:%d: failed to get mem from reserved\n"
	.size	.L.str.67, 40

	.type	.L__func__.ebc_lut_table_init,@object
.L__func__.ebc_lut_table_init:
	.asciz	"ebc_lut_table_init"
	.size	.L__func__.ebc_lut_table_init, 19

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.size	.L.str.68, 81

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"Failed to read waveform file from kernel, no waveform!!!\n"
	.size	.L.str.69, 58

	.type	.L.str.70,@object
.L.str.70:
	.asciz	"ebc_task"
	.size	.L.str.70, 9

	.type	.L.str.71,@object
.L.str.71:
	.asciz	"failed to create ebc_task thread\n"
	.size	.L.str.71, 34

	.type	.L.str.72,@object
.L.str.72:
	.asciz	"ebc_taskup"
	.size	.L.str.72, 11

	.type	ebc_auto_assist_task,@object
	.local	ebc_auto_assist_task
	.comm	ebc_auto_assist_task,8,8
	.type	.L.str.73,@object
.L.str.73:
	.asciz	"failed to create ebc_taskup thread\n"
	.size	.L.str.73, 36

	.type	.L.str.74,@object
.L.str.74:
	.asciz	"ebc_thread"
	.size	.L.str.74, 11

	.type	ebc_task,@object
	.local	ebc_task
	.comm	ebc_task,8,8
	.type	.L.str.75,@object
.L.str.75:
	.asciz	"failed to run ebc thread\n"
	.size	.L.str.75, 26

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

	.type	.L.str.76,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"ebc suspend, drop osd buf\n"
	.size	.L.str.76, 27

	.type	.L.str.77,@object
.L.str.77:
	.asciz	"break from part work, frame left = %d\n"
	.size	.L.str.77, 39

	.type	.L.str.78,@object
.L.str.78:
	.asciz	"control bg update under overlay mode, overlay_bg_update=0\n"
	.size	.L.str.78, 59

	.type	.L.str.79,@object
.L.str.79:
	.asciz	"break from fast mode, process it\n"
	.size	.L.str.79, 34

	.type	.L.str.80,@object
.L.str.80:
	.asciz	"overlay mode start, frame_total=%d, bw_frame = %d\n"
	.size	.L.str.80, 51

	.type	.L.str.81,@object
.L.str.81:
	.asciz	"frame start under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.81, 55

	.type	.L.str.82,@object
.L.str.82:
	.asciz	"mode change, force update lut, mode = %d, framecount = %d\n"
	.size	.L.str.82, 59

	.type	.L.str.83,@object
.L.str.83:
	.asciz	"update frame under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.83, 56

	.type	.L.str.84,@object
.L.str.84:
	.asciz	"ebc is busy now, waiting prev mode end...\n"
	.size	.L.str.84, 43

	.type	.L.str.85,@object
.L.str.85:
	.asciz	"prev refresh mode end\n"
	.size	.L.str.85, 23

	.type	.L.str.86,@object
.L.str.86:
	.asciz	"auto mode start, frame_total=%d\n"
	.size	.L.str.86, 33

	.type	.L.str.87,@object
.L.str.87:
	.asciz	"last frame not complete, left = %d, change to force full\n"
	.size	.L.str.87, 58

	.type	.L.str.88,@object
.L.str.88:
	.asciz	"check_part_mode==0, no need refresh\n"
	.size	.L.str.88, 37

	.type	.L.str.89,@object
.L.str.89:
	.asciz	"enter fast mode, init framecount\n"
	.size	.L.str.89, 34

	.type	.L.str.90,@object
.L.str.90:
	.asciz	"check difference is 0, no need refresh\n"
	.size	.L.str.90, 40

	.type	.L.str.91,@object
.L.str.91:
	.asciz	"change from fast mode\n"
	.size	.L.str.91, 23

	.type	.L.str.92,@object
.L.str.92:
	.asciz	"frame start, mode = %d, framecount = %d vs %d\n"
	.size	.L.str.92, 47

	.type	.L.str.93,@object
.L.str.93:
	.asciz	"update repair buf\n"
	.size	.L.str.93, 19

	.type	.L.str.94,@object
.L.str.94:
	.asciz	"waiting frame done\n"
	.size	.L.str.94, 20

	.type	.L.str.95,@object
.L.str.95:
	.asciz	"----update repair buf timeout----\n"
	.size	.L.str.95, 35

	.type	.L.str.96,@object
.L.str.96:
	.asciz	"break from part work, do something before turn to overlay work\n"
	.size	.L.str.96, 64

	.type	.L.str.97,@object
.L.str.97:
	.asciz	"no buffer or next not fast mode, do repair..........\n"
	.size	.L.str.97, 54

	.type	.L.str.98,@object
.L.str.98:
	.asciz	"next not fast mode, do repair..........\n"
	.size	.L.str.98, 41

	.type	.L.str.99,@object
.L.str.99:
	.asciz	"no buffer, do last ghost remove..........\n"
	.size	.L.str.99, 43

	.type	.L.str.100,@object
.L.str.100:
	.asciz	"frame start, mode = %d, framecount = %d\n"
	.size	.L.str.100, 41

	.type	.L.str.101,@object
.L.str.101:
	.asciz	"ghost remove break, frame_left %d\n"
	.size	.L.str.101, 35

	.type	.L.str.102,@object
.L.str.102:
	.asciz	"ebc buffer mode %d error!!!\n"
	.size	.L.str.102, 29

	.type	.L.str.103,@object
.L.str.103:
	.asciz	"temperature = %d, out of range0~50 ,use 25 \n"
	.size	.L.str.103, 45

	.type	.L.str.104,@object
.L.str.104:
	.asciz	"temperature = %d, out of range0~50 ,use 50 \n"
	.size	.L.str.104, 45

	.type	.L.str.105,@object
.L.str.105:
	.asciz	"ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.size	.L.str.105, 46

	.type	.L.str.106,@object
.L.str.106:
	.asciz	"lut update use temperature = %d\n"
	.size	.L.str.106, 33

	.type	.L.str.107,@object
.L.str.107:
	.asciz	"get lut data failed\n"
	.size	.L.str.107, 21

	.type	.L.str.108,@object
.L.str.108:
	.asciz	"%s: overlay no need to update\n"
	.size	.L.str.108, 31

	.type	.L__func__.ebc_frame_start,@object
.L__func__.ebc_frame_start:
	.asciz	"ebc_frame_start"
	.size	.L__func__.ebc_frame_start, 16

	.type	.L.str.109,@object
.L.str.109:
	.asciz	"%s: auto no need to update\n"
	.size	.L.str.109, 28

	.type	.L.str.110,@object
.L.str.110:
	.asciz	"record pix pos wf: [%d, %d]: [%02x --> %02x]\n"
	.size	.L.str.110, 46

	.type	.L.str.111,@object
.L.str.111:
	.asciz	"%s: overlay bg no need to update, overlay_bg_update=1\n"
	.size	.L.str.111, 55

	.type	.L__func__.ebc_overlay_bg_frame_start,@object
.L__func__.ebc_overlay_bg_frame_start:
	.asciz	"ebc_overlay_bg_frame_start"
	.size	.L__func__.ebc_overlay_bg_frame_start, 27

	.type	.L.str.112,@object
.L.str.112:
	.asciz	"ebc hw power on res:%d\n"
	.size	.L.str.112, 24

	.type	.L.str.113,@object
.L.str.113:
	.asciz	"ebc hw power off res:%d\n"
	.size	.L.str.113, 25

	.type	.L.str.114,@object
.L.str.114:
	.asciz	"ebc"
	.size	.L.str.114, 4

	.type	.L.str.115,@object
.L.str.115:
	.asciz	"ebc_frame_control_timeout, overlay_bg_update=1\n"
	.size	.L.str.115, 48

	.type	.L.str.116,@object
.L.str.116:
	.asciz	"ulogo_addr="
	.size	.L.str.116, 12

	.type	.L.str.117,@object
.L.str.117:
	.asciz	"klogo_addr="
	.size	.L.str.117, 12

	.type	.L.str.118,@object
.L.str.118:
	.asciz	"ulogo_addr=0x%x"
	.size	.L.str.118, 16

	.type	.L.str.119,@object
.L.str.119:
	.asciz	"have ulogo display, ulogo addr = 0x%x\n"
	.size	.L.str.119, 39

	.type	.L.str.120,@object
.L.str.120:
	.asciz	"malloc ulogo buffer failed\n"
	.size	.L.str.120, 28

	.type	.L.str.121,@object
.L.str.121:
	.asciz	"klogo_addr=0x%x"
	.size	.L.str.121, 16

	.type	.L.str.122,@object
.L.str.122:
	.asciz	"need show klogo, klogo addr = 0x%x\n"
	.size	.L.str.122, 36

	.type	.L.str.123,@object
.L.str.123:
	.asciz	"malloc klogo buffer failed\n"
	.size	.L.str.123, 28

	.type	.L.str.124,@object
.L.str.124:
	.asciz	"no uboot logo, panel init\n"
	.size	.L.str.124, 27

	.type	.L.str.125,@object
.L.str.125:
	.asciz	"ebc_dev_logo"
	.size	.L.str.125, 13

	.type	.L.str.126,@object
.L.str.126:
	.asciz	"ebc_dev_reset"
	.size	.L.str.126, 14

	.type	ebc_misc,@object
	.data
	.p2align	3
ebc_misc:
	.word	243
	.zero	4
	.xword	.L.str.114
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
	.xword	.L.str.146
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
	.xword	.L.str.148
	.hword	292
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.size	dev_attr_waveform_version, 32

	.type	dev_attr_pmic_name,@object
	.p2align	3
dev_attr_pmic_name:
	.xword	.L.str.150
	.hword	292
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.size	dev_attr_pmic_name, 32

	.type	dev_attr_pmic_temp,@object
	.p2align	3
dev_attr_pmic_temp:
	.xword	.L.str.151
	.hword	292
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.size	dev_attr_pmic_temp, 32

	.type	dev_attr_pmic_vcom,@object
	.p2align	3
dev_attr_pmic_vcom:
	.xword	.L.str.153
	.hword	420
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.size	dev_attr_pmic_vcom, 32

	.type	dev_attr_ebc_version,@object
	.p2align	3
dev_attr_ebc_version:
	.xword	.L.str.156
	.hword	292
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.size	dev_attr_ebc_version, 32

	.type	dev_attr_ebc_state,@object
	.p2align	3
dev_attr_ebc_state:
	.xword	.L.str.157
	.hword	292
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.size	dev_attr_ebc_state, 32

	.type	dev_attr_ebc_buf_state,@object
	.p2align	3
dev_attr_ebc_buf_state:
	.xword	.L.str.158
	.hword	292
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.size	dev_attr_ebc_buf_state, 32

	.type	dev_attr_auto_frame_state,@object
	.p2align	3
dev_attr_auto_frame_state:
	.xword	.L.str.159
	.hword	292
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.size	dev_attr_auto_frame_state, 32

	.type	dev_attr_ebc_debug_level,@object
	.p2align	3
dev_attr_ebc_debug_level:
	.xword	.L.str.161
	.hword	420
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.size	dev_attr_ebc_debug_level, 32

	.type	dev_attr_wf_data,@object
	.p2align	3
dev_attr_wf_data:
	.xword	.L.str.162
	.hword	128
	.zero	6
	.xword	0
	.xword	wf_data_write
	.size	dev_attr_wf_data, 32

	.type	dev_attr_overlay_wf_data,@object
	.p2align	3
dev_attr_overlay_wf_data:
	.xword	.L.str.167
	.hword	128
	.zero	6
	.xword	0
	.xword	overlay_wf_data_write
	.size	dev_attr_overlay_wf_data, 32

	.type	dev_attr_ori_wf_data,@object
	.p2align	3
dev_attr_ori_wf_data:
	.xword	.L.str.168
	.hword	128
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.size	dev_attr_ori_wf_data, 32

	.type	dev_attr_record_pix_wf,@object
	.p2align	3
dev_attr_record_pix_wf:
	.xword	.L.str.174
	.hword	128
	.zero	6
	.xword	0
	.xword	record_pix_wf_write
	.size	dev_attr_record_pix_wf, 32

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

	.type	.L.str.128,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"%s: argp NULL\n"
	.size	.L.str.128, 15

	.type	.L__func__.ebc_io_ctl,@object
.L__func__.ebc_io_ctl:
	.asciz	"ebc_io_ctl"
	.size	.L__func__.ebc_io_ctl, 11

	.type	.L.str.129,@object
.L.str.129:
	.asciz	"enable bg control\n"
	.size	.L.str.129, 19

	.type	.L.str.130,@object
.L.str.130:
	.asciz	"disable bg control\n"
	.size	.L.str.130, 20

	.type	.L.str.131,@object
.L.str.131:
	.asciz	"enable ebc overlay, you can use osd buf to show something over the system display\n"
	.size	.L.str.131, 83

	.type	.L.str.132,@object
.L.str.132:
	.asciz	"disable ebc overlay\n"
	.size	.L.str.132, 21

	.type	.L.str.133,@object
.L.str.133:
	.asciz	"EBC_GET_BUFFER_INFO failed\n"
	.size	.L.str.133, 28

	.type	.L.str.134,@object
.L.str.134:
	.asciz	"EBC_SET_DIFF_PERCENT = %d\n"
	.size	.L.str.134, 27

	.type	.L.str.135,@object
.L.str.135:
	.asciz	"EBC_FB_BLANK\n"
	.size	.L.str.135, 14

	.type	.L.str.136,@object
.L.str.136:
	.asciz	"EBC_FB_UNBLANK\n"
	.size	.L.str.136, 16

	.type	.L.str.137,@object
.L.str.137:
	.asciz	"EBC_ENABLE_REPAIR = %d\n"
	.size	.L.str.137, 24

	.type	.L.str.138,@object
.L.str.138:
	.asciz	"EBC_BALANCE_CTL = %d\n"
	.size	.L.str.138, 22

	.type	.L.str.139,@object
.L.str.139:
	.asciz	"EBC_SET_FULL_REFRESH_WIDTH = %d\n"
	.size	.L.str.139, 33

	.type	.L.str.140,@object
.L.str.140:
	.asciz	"EBC_SET_FULL_REFRESH_TYPE = %d\n"
	.size	.L.str.140, 32

	.type	.L.str.141,@object
.L.str.141:
	.asciz	"EBC_SET_FORCE_TEMPERATURE = %d\n"
	.size	.L.str.141, 32

	.type	.L.str.142,@object
.L.str.142:
	.asciz	"EBC_ENABLE_WAVEFORM_FIX = %d\n"
	.size	.L.str.142, 30

	.type	.L.str.143,@object
.L.str.143:
	.asciz	"EBC_SET_REGAL_TYPE = %d\n"
	.size	.L.str.143, 25

	.type	.L.str.144,@object
.L.str.144:
	.asciz	"EBC_FORCE_FULL_USE_REGAL = %d\n"
	.size	.L.str.144, 31

	.type	.L.str.145,@object
.L.str.145:
	.asciz	"%s: unknown cmd\n"
	.size	.L.str.145, 17

	.type	.L.str.146,@object
.L.str.146:
	.asciz	"waveform"
	.size	.L.str.146, 9

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

	.type	.L.str.148,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.148:
	.asciz	"waveform_version"
	.size	.L.str.148, 17

	.type	.L.str.149,@object
.L.str.149:
	.asciz	"%s\n"
	.size	.L.str.149, 4

	.type	.L.str.150,@object
.L.str.150:
	.asciz	"pmic_name"
	.size	.L.str.150, 10

	.type	.L.str.151,@object
.L.str.151:
	.asciz	"pmic_temp"
	.size	.L.str.151, 10

	.type	.L.str.152,@object
.L.str.152:
	.asciz	"%d\n"
	.size	.L.str.152, 4

	.type	.L.str.153,@object
.L.str.153:
	.asciz	"pmic_vcom"
	.size	.L.str.153, 10

	.type	.L.str.154,@object
.L.str.154:
	.asciz	"invalid value = %s\n"
	.size	.L.str.154, 20

	.type	.L.str.155,@object
.L.str.155:
	.asciz	"set vcom value failed\n"
	.size	.L.str.155, 23

	.type	.L.str.156,@object
.L.str.156:
	.asciz	"ebc_version"
	.size	.L.str.156, 12

	.type	.L.str.157,@object
.L.str.157:
	.asciz	"ebc_state"
	.size	.L.str.157, 10

	.type	.L.str.158,@object
.L.str.158:
	.asciz	"ebc_buf_state"
	.size	.L.str.158, 14

	.type	.L.str.159,@object
.L.str.159:
	.asciz	"auto_frame_state"
	.size	.L.str.159, 17

	.type	.L.str.160,@object
.L.str.160:
	.asciz	"0\n"
	.size	.L.str.160, 3

	.type	.L.str.161,@object
.L.str.161:
	.asciz	"ebc_debug_level"
	.size	.L.str.161, 16

	.type	.L.str.162,@object
.L.str.162:
	.asciz	"wf_data"
	.size	.L.str.162, 8

	.type	.L.str.163,@object
.L.str.163:
	.asciz	"603893"
	.size	.L.str.163, 7

	.type	.L.str.164,@object
.L.str.164:
	.asciz	"lutdata: %d frames\n"
	.size	.L.str.164, 20

	.type	.L.str.165,@object
.L.str.165:
	.asciz	"[%d-->%d]: \n"
	.size	.L.str.165, 13

	.type	.L.str.166,@object
.L.str.166:
	.asciz	"\001c\0017%d, "
	.size	.L.str.166, 9

	.type	.L.str.167,@object
.L.str.167:
	.asciz	"overlay_wf_data"
	.size	.L.str.167, 16

	.type	.L.str.168,@object
.L.str.168:
	.asciz	"ori_wf_data"
	.size	.L.str.168, 12

	.type	.L.str.169,@object
.L.str.169:
	.asciz	"malloc wf_table buffer failed\n"
	.size	.L.str.169, 31

	.type	.L.str.170,@object
.L.str.170:
	.asciz	"603893 %d %d"
	.size	.L.str.170, 13

	.type	.L.str.171,@object
.L.str.171:
	.asciz	"%s: wf mode %d on temp %d\n"
	.size	.L.str.171, 27

	.type	.L__func__.ori_wf_data_write,@object
.L__func__.ori_wf_data_write:
	.asciz	"ori_wf_data_write"
	.size	.L__func__.ori_wf_data_write, 18

	.type	.L.str.172,@object
.L.str.172:
	.asciz	"%s: err code\n"
	.size	.L.str.172, 14

	.type	.L.str.173,@object
.L.str.173:
	.asciz	"%s: err lut_type or temp\n"
	.size	.L.str.173, 26

	.type	.L.str.174,@object
.L.str.174:
	.asciz	"record_pix_wf"
	.size	.L.str.174, 14

	.type	.L.str.175,@object
.L.str.175:
	.asciz	"%d,%d%n"
	.size	.L.str.175, 8

	.type	.L.str.176,@object
.L.str.176:
	.asciz	"device suspend\n"
	.size	.L.str.176, 16

	.type	.L.str.177,@object
.L.str.177:
	.asciz	"device resume\n"
	.size	.L.str.177, 15

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
	.addrsig_sym overlay_wf_data_write
	.addrsig_sym ori_wf_data_write
	.addrsig_sym record_pix_wf_write
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
	.addrsig_sym dev_attr_overlay_wf_data
	.addrsig_sym dev_attr_ori_wf_data
	.addrsig_sym dev_attr_record_pix_wf
	.addrsig_sym ebc_ops
	.addrsig_sym cpu_hwcaps
	.addrsig_sym gic_nonsecure_priorities
	.addrsig_sym gic_pmr_sync
	.addrsig_sym waveform_ops
