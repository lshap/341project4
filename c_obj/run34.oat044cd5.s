	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh73:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $212, %esp
__fresh68:
	leal -208(%ebp), %eax
	movl %eax, -112(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	leal -204(%ebp), %eax
	movl %eax, -108(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -104(%ebp)
	jE __oat_alloc_array77
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -100(%ebp)
	movl -104(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -96(%ebp)
	jE __oat_alloc_array76
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -84(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -80(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -76(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -100(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -68(%ebp)
	jE __oat_alloc_array75
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -64(%ebp)
	movl -68(%ebp), %eax
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -56(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -52(%ebp)
	movl $6, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -48(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -100(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -44(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -40(%ebp)
	jE __oat_alloc_array74
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl $8, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl $9, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -20(%ebp)
	movl $11, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -100(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -200(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -196(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -192(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond64
__cond64:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -116(%ebp)
	andl $1, -116(%ebp)
	movl -116(%ebp), %eax
	cmpl $0, %eax
	jNE __body63
	jmp __post62
__fresh69:
	jmp __body63
__body63:
	leal -212(%ebp), %eax
	movl %eax, -124(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond67
__cond67:
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -128(%ebp)
	andl $1, -128(%ebp)
	movl -128(%ebp), %eax
	cmpl $0, %eax
	jNE __body66
	jmp __post65
__fresh70:
	jmp __body66
__body66:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check79
	pushl %eax
	movl -168(%ebp), %eax
	pushl %eax
	movl -164(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -160(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -156(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check78
	pushl %eax
	movl -172(%ebp), %eax
	pushl %eax
	movl -156(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -152(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -144(%ebp)
	movl -148(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -136(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond67
__fresh71:
	jmp __post65
__post65:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -184(%ebp), %eax
	movl %eax, -180(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond64
__fresh72:
	jmp __post62
__post62:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
