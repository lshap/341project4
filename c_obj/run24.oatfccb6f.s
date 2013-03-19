	.align 4
	.data
a150:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh49:
	popl %ebp
	movl 0(%esp), %esp
	jE __a150.init50
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh48:
	leal -28(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -24(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl a150, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check51
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a150, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl a150, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a150.init
_a150.init:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
__fresh47:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -40(%ebp)
	jE __oat_alloc_array52
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl $12, %eax
	movl %eax, -32(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $13, %eax
	movl %eax, %ecx
	addl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	sarl %cl, -24(%ebp)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl $9, %eax
	movl %eax, -16(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	subl %ecx, -16(%ebp)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl $5, %eax
	movl %eax, -8(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	addl %ecx, -8(%ebp)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl %eax, a150
	movl %ebp, %esp
	popl %ebp
	ret
