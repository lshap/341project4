	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh7:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $56, %esp
__fresh3:
	leal -52(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -48(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -8(%ebp)
	jE __oat_alloc_array8
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl $1, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare0
__fresh4:
	jmp __compare0
__compare0:
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body1
	jmp __end2
__fresh5:
	jmp __body1
__body1:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -24(%ebp)
	jmp __compare0
__fresh6:
	jmp __end2
__end2:
	leal -56(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check9
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -40(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
