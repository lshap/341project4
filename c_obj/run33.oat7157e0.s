	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh59:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $64, %esp
__fresh56:
	leal -64(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	leal -60(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -36(%ebp)
	jE __oat_alloc_array61
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -56(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -52(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check60
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then55
	jmp __else54
__fresh57:
	jmp __then55
__then55:
	movl $1, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge53
__fresh58:
	jmp __else54
__else54:
	jmp __merge53
__merge53:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
