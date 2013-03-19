	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh817:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $144, %esp
__fresh814:
	leal -144(%ebp), %eax
	movl %eax, -72(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	leal -140(%ebp), %eax
	movl %eax, -68(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -64(%ebp)
	jE __oat_alloc_array820
	pushl %eax
	movl $5, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl $111, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -52(%ebp)
	movl $112, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -48(%ebp)
	movl $113, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -44(%ebp)
	movl $114, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -40(%ebp)
	movl $115, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -136(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -28(%ebp)
	jE __string_of_array819
	pushl %eax
	movl -32(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	leal -132(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -16(%ebp)
	jE __array_of_string818
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	leal -128(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -124(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -120(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond813
__cond813:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl $5, %eax
	cmpl %eax, %ecx
	setL -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __body812
	jmp __post811
__fresh815:
	jmp __body812
__body812:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check821
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	movl -104(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -100(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -84(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond813
__fresh816:
	jmp __post811
__post811:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
