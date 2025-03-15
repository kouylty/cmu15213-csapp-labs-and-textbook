	.file	"ch2.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%.2x "
	.text
	.globl	show_bytes
	.type	show_bytes, @function
show_bytes:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	%rsi, %rbp
	movl	$0, %ebx
	jmp	.L2
.L3:
	movzbl	(%r12,%rbx), %edx
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$1, %rbx
.L2:
	cmpq	%rbp, %rbx
	jb	.L3
	movl	$10, %edi
	call	putchar@PLT
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	show_bytes, .-show_bytes
	.globl	show_int
	.type	show_int, @function
show_int:
.LFB38:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 12(%rsp)
	leaq	12(%rsp), %rdi
	movl	$4, %esi
	call	show_bytes
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	show_int, .-show_int
	.globl	show_float
	.type	show_float, @function
show_float:
.LFB39:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movss	%xmm0, 12(%rsp)
	leaq	12(%rsp), %rdi
	movl	$4, %esi
	call	show_bytes
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	show_float, .-show_float
	.globl	show_pointer
	.type	show_pointer, @function
show_pointer:
.LFB40:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	leaq	8(%rsp), %rdi
	movl	$8, %esi
	call	show_bytes
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	show_pointer, .-show_pointer
	.globl	test_show_byte
	.type	test_show_byte, @function
test_show_byte:
.LFB41:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 12(%rsp)
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm1
	movss	%xmm1, 8(%rsp)
	call	show_int
	movss	8(%rsp), %xmm0
	call	show_float
	leaq	12(%rsp), %rdi
	call	show_pointer
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	test_show_byte, .-test_show_byte
	.globl	inplace_swap
	.type	inplace_swap, @function
inplace_swap:
.LFB42:
	.cfi_startproc
	endbr64
	movl	(%rsi), %eax
	xorl	(%rdi), %eax
	movl	%eax, (%rsi)
	xorl	(%rdi), %eax
	movl	%eax, (%rdi)
	xorl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE42:
	.size	inplace_swap, .-inplace_swap
	.globl	bis
	.type	bis, @function
bis:
.LFB43:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	orl	%esi, %eax
	ret
	.cfi_endproc
.LFE43:
	.size	bis, .-bis
	.globl	bic
	.type	bic, @function
bic:
.LFB44:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	notl	%eax
	andl	%edi, %eax
	ret
	.cfi_endproc
.LFE44:
	.size	bic, .-bic
	.globl	bool_or
	.type	bool_or, @function
bool_or:
.LFB45:
	.cfi_startproc
	endbr64
	call	bis
	ret
	.cfi_endproc
.LFE45:
	.size	bool_or, .-bool_or
	.globl	bool_xor
	.type	bool_xor, @function
bool_xor:
.LFB46:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %ebx
	movl	%esi, %ebp
	movl	%edi, %esi
	movl	%ebp, %edi
	call	bic
	movl	%eax, %r12d
	movl	%ebp, %esi
	movl	%ebx, %edi
	call	bic
	movl	%eax, %edi
	movl	%r12d, %esi
	call	bis
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	bool_xor, .-bool_xor
	.globl	tadd_ok
	.type	tadd_ok, @function
tadd_ok:
.LFB47:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rsi), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	movl	%edi, %edx
	notl	%edx
	shrl	$31, %edx
	testb	%cl, %dl
	je	.L22
	testl	%esi, %esi
	js	.L26
	movl	$1, %edx
	jmp	.L20
.L26:
	movl	$0, %edx
	jmp	.L20
.L22:
	movl	$0, %edx
.L20:
	notl	%eax
	shrl	$31, %eax
	shrl	$31, %edi
	testb	%al, %dil
	je	.L24
	testl	%esi, %esi
	js	.L25
	movl	$0, %eax
	jmp	.L21
.L24:
	movl	$0, %eax
.L21:
	orl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	ret
.L25:
	movl	$1, %eax
	jmp	.L21
	.cfi_endproc
.LFE47:
	.size	tadd_ok, .-tadd_ok
	.globl	tsub_ok
	.type	tsub_ok, @function
tsub_ok:
.LFB48:
	.cfi_startproc
	endbr64
	cmpl	$-2147483648, %esi
	je	.L28
	negl	%esi
	call	tadd_ok
	ret
.L28:
	movl	%edi, %eax
	shrl	$31, %eax
	ret
	.cfi_endproc
.LFE48:
	.size	tsub_ok, .-tsub_ok
	.globl	div16
	.type	div16, @function
div16:
.LFB49:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	sarl	$31, %eax
	andl	$15, %eax
	addl	%edi, %eax
	sarl	$4, %eax
	ret
	.cfi_endproc
.LFE49:
	.size	div16, .-div16
	.globl	srl
	.type	srl, @function
srl:
.LFB50:
	.cfi_startproc
	endbr64
	movl	%esi, %ecx
	sarl	%cl, %edi
	movl	$-2147483648, %edx
	shrl	%cl, %edx
	leal	-1(%rdx), %eax
	orl	%edx, %eax
	andl	%edi, %eax
	ret
	.cfi_endproc
.LFE50:
	.size	srl, .-srl
	.globl	sra
	.type	sra, @function
sra:
.LFB51:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	movl	%esi, %ecx
	shrl	%cl, %eax
	shrl	$31, %edi
	sall	%cl, %edi
	subl	$1, %edi
	movl	$32, %ecx
	subl	%esi, %ecx
	sall	%cl, %edi
	orl	%edi, %eax
	ret
	.cfi_endproc
.LFE51:
	.size	sra, .-sra
	.globl	odd_ones
	.type	odd_ones, @function
odd_ones:
.LFB52:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	shrl	$16, %edi
	xorl	%eax, %edi
	movl	%edi, %eax
	shrl	$8, %eax
	xorl	%edi, %eax
	movl	%eax, %edi
	shrl	$4, %edi
	xorl	%eax, %edi
	movl	%edi, %edx
	shrl	$2, %edx
	xorl	%edi, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	%edx, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE52:
	.size	odd_ones, .-odd_ones
	.globl	leftmost_one
	.type	leftmost_one, @function
leftmost_one:
.LFB53:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	shrl	%edi
	orl	%eax, %edi
	movl	%edi, %eax
	shrl	$2, %eax
	orl	%edi, %eax
	movl	%eax, %edi
	shrl	$4, %edi
	orl	%eax, %edi
	movl	%edi, %eax
	shrl	$8, %eax
	orl	%edi, %eax
	movl	%eax, %edx
	shrl	$16, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	%edx, %eax
	ret
	.cfi_endproc
.LFE53:
	.size	leftmost_one, .-leftmost_one
	.globl	rightmost_one
	.type	rightmost_one, @function
rightmost_one:
.LFB54:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	negl	%eax
	andl	%edi, %eax
	ret
	.cfi_endproc
.LFE54:
	.size	rightmost_one, .-rightmost_one
	.globl	rotate_left
	.type	rotate_left, @function
rotate_left:
.LFB55:
	.cfi_startproc
	endbr64
	movl	%edi, %r8d
	movl	$1, %edi
	movl	%esi, %ecx
	sall	%cl, %edi
	subl	$1, %edi
	movl	$32, %edx
	subl	%esi, %edx
	movl	%edx, %ecx
	sall	%cl, %edi
	movl	%r8d, %eax
	movl	%esi, %ecx
	sall	%cl, %eax
	andl	%r8d, %edi
	movl	%edx, %ecx
	shrl	%cl, %edi
	orl	%edi, %eax
	ret
	.cfi_endproc
.LFE55:
	.size	rotate_left, .-rotate_left
	.globl	saturating_add
	.type	saturating_add, @function
saturating_add:
.LFB56:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rsi), %eax
	movl	%edi, %edx
	sarl	$31, %edx
	movl	%esi, %r9d
	sarl	$31, %r9d
	movl	%eax, %r8d
	sarl	$31, %r8d
	xorl	%esi, %edi
	sarl	$31, %edi
	andl	%edi, %eax
	movl	%edx, %ecx
	andl	%r9d, %ecx
	movl	%r8d, %esi
	notl	%esi
	andl	%esi, %ecx
	andl	$-2147483648, %ecx
	addl	%ecx, %eax
	orl	%r9d, %edx
	notl	%edx
	andl	%r8d, %edx
	andl	$-2147483648, %edx
	addl	%edx, %eax
	ret
	.cfi_endproc
.LFE56:
	.size	saturating_add, .-saturating_add
	.globl	mul3div4
	.type	mul3div4, @function
mul3div4:
.LFB57:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rdi,2), %eax
	sarl	$2, %eax
	ret
	.cfi_endproc
.LFE57:
	.size	mul3div4, .-mul3div4
	.globl	threefourths
	.type	threefourths, @function
threefourths:
.LFB58:
	.cfi_startproc
	endbr64
	movl	%edi, %edx
	shrl	$31, %edx
	movl	%edi, %ecx
	andl	$3, %ecx
	sarl	$2, %edi
	leal	(%rdi,%rdi,2), %eax
	leal	(%rcx,%rcx,2), %ecx
	leal	(%rdx,%rdx,2), %edx
	addl	%ecx, %edx
	sarl	$2, %edx
	addl	%edx, %eax
	ret
	.cfi_endproc
.LFE58:
	.size	threefourths, .-threefourths
	.globl	float_half
	.type	float_half, @function
float_half:
.LFB59:
	.cfi_startproc
	endbr64
	movl	%edi, %edx
	shrl	$23, %edx
	movzbl	%dl, %eax
	movl	%edi, %ecx
	andl	$8388607, %ecx
	cmpb	$-1, %dl
	je	.L44
	testl	%eax, %eax
	je	.L45
	cmpl	$1, %eax
	je	.L46
	andl	$-2147483648, %edi
	subl	$1, %eax
	sall	$23, %eax
	orl	%eax, %edi
	movl	%edi, %eax
	orl	%ecx, %eax
	ret
.L45:
	andl	$-2147483648, %edi
	shrl	%ecx
	movl	%edi, %eax
	orl	%ecx, %eax
	ret
.L46:
	andl	$-2147483648, %edi
	shrl	%ecx
	orl	%ecx, %edi
	movl	%edi, %eax
	orl	$4194304, %eax
	ret
.L44:
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE59:
	.size	float_half, .-float_half
	.section	.rodata.str1.1
.LC1:
	.string	"abcdef"
.LC2:
	.string	"%d "
.LC3:
	.string	"%d\n"
.LC4:
	.string	"%x "
.LC5:
	.string	"%x\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB60:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	$-2023406815, 4(%rsp)
	movl	$-2023406815, %edi
	call	test_show_byte
	leaq	4(%rsp), %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	show_bytes
	movl	$2, %esi
	movq	%rbx, %rdi
	call	show_bytes
	movl	$3, %esi
	movq	%rbx, %rdi
	call	show_bytes
	movl	$6, %esi
	leaq	.LC1(%rip), %rdi
	call	show_bytes
	movl	$1, %edx
	leaq	.LC2(%rip), %rbx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$1, %edx
	leaq	.LC3(%rip), %rbp
	movq	%rbp, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$2147483647, %esi
	movl	$0, %edi
	call	tsub_ok
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$-2147483647, %esi
	movl	$0, %edi
	call	tsub_ok
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$-1, %esi
	movl	$2147483647, %edi
	call	tsub_ok
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$-2147483648, %esi
	movl	$0, %edi
	call	tsub_ok
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$-2147483648, %esi
	movl	$-2147483648, %edi
	call	tsub_ok
	movl	%eax, %edx
	movq	%rbp, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$4, %esi
	movl	$-249346713, %edi
	call	srl
	movl	%eax, %edx
	leaq	.LC4(%rip), %rbx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %esi
	movl	$-249346713, %edi
	call	srl
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$31, %esi
	movl	$-249346713, %edi
	call	srl
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$4, %esi
	movl	$-249346713, %edi
	call	sra
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %esi
	movl	$-249346713, %edi
	call	sra
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$31, %esi
	movl	$-249346713, %edi
	call	sra
	movl	%eax, %edx
	leaq	.LC5(%rip), %rbp
	movq	%rbp, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$808464432, %edi
	call	leftmost_one
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$808464432, %edi
	call	rightmost_one
	movl	%eax, %edx
	movq	%rbp, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L50
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L50:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE60:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
