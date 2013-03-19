	.align 4
	.data
i541:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh217:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $52, %esp
__fresh216:
	leal -52(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	leal -48(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	leal -44(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -40(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	movl %eax, -12(%ebp)
	jE __f218
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl i541, %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $68, %esp
__fresh213:
	leal -68(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -64(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -60(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setGE -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then212
	jmp __else211
__fresh214:
	jmp __then212
__then212:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -32(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	movl %eax, -28(%ebp)
	jE __f219
	pushl %eax
	movl -40(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $1, %eax
	movl %eax, -24(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge210
__fresh215:
	jmp __else211
__else211:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge210
__merge210:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
