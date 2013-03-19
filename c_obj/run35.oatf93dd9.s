	.align 4
	.data
a244:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh92:
	popl %ebp
	movl 0(%esp), %esp
	jE __a244.init93
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $112, %esp
__fresh87:
	leal -108(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -104(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -100(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond83
__cond83:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body82
	jmp __post81
__fresh88:
	jmp __body82
__body82:
	leal -112(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond86
__cond86:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body85
	jmp __post84
__fresh89:
	jmp __body85
__body85:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl a244, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check95
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	movl -68(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a244, %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -64(%ebp)
	movl a244, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check94
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a244, %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -56(%ebp)
	movl a244, %eax
	movl %eax, -52(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond86
__fresh90:
	jmp __post84
__post84:
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
	jmp __cond83
__fresh91:
	jmp __post81
__post81:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a244.init
_a244.init:
	pushl %ebp
	movl %esp, %ebp
	subl $92, %esp
__fresh80:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -92(%ebp)
	jE __oat_alloc_array99
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -88(%ebp)
	movl -92(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -84(%ebp)
	jE __oat_alloc_array98
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -80(%ebp)
	movl -84(%ebp), %eax
	movl -80(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -80(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -72(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -80(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -68(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -80(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -64(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -56(%ebp)
	jE __oat_alloc_array97
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -44(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -40(%ebp)
	movl $6, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -36(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -32(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -28(%ebp)
	jE __oat_alloc_array96
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -24(%ebp)
	movl -28(%ebp), %eax
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $8, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $9, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl $11, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	movl %eax, a244
	movl %ebp, %esp
	popl %ebp
	ret
