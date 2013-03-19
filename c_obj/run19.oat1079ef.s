	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh32:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $76, %esp
__fresh31:
	leal -76(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	leal -72(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	leal -68(%ebp), %eax
	movl %eax, -52(%ebp)
	movl $999, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -48(%ebp)
	jE __oat_alloc_array34
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl $0, %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -40(%ebp)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -32(%ebp)
	movl $100, %eax
	movl %eax, %ecx
	subl %ecx, -32(%ebp)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -64(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check33
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
