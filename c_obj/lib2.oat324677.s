	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh763:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $144, %esp
__fresh762:
	leal -144(%ebp), %eax
	movl %eax, -128(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	movl %ecx, (%eax)
	leal -140(%ebp), %eax
	movl %eax, -124(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -120(%ebp)
	jE __oat_alloc_array769
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -116(%ebp)
	movl -120(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -112(%ebp)
	jE __oat_alloc_array768
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -108(%ebp)
	movl -112(%ebp), %eax
	movl -108(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl -108(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -100(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -92(%ebp)
	jE __oat_alloc_array767
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -88(%ebp)
	movl -92(%ebp), %eax
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -80(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -76(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -72(%ebp)
	jE __oat_alloc_array766
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -60(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -56(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -52(%ebp)
	jE __oat_alloc_array765
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -40(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -36(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	leal -136(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check764
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -28(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -132(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
