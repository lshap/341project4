	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh659:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $64, %esp
__fresh656:
	leal -64(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -60(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -56(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond655
__cond655:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	cmpl %eax, %ecx
	setL -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __body654
	jmp __post653
__fresh657:
	jmp __body654
__body654:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -8(%ebp), %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check661
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -8(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -40(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string660
	pushl %eax
	movl -36(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond655
__fresh658:
	jmp __post653
__post653:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
