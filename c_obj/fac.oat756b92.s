	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh694:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh693:
	leal -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -16(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	jE __f695
	pushl %eax
	movl $5, %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh690:
	leal -48(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -44(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then689
	jmp __else688
__fresh691:
	jmp __then689
__then689:
	movl $1, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge687
__fresh692:
	jmp __else688
__else688:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -28(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __f696
	pushl %eax
	movl -28(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -36(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge687
__merge687:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
