	.align 4
	.data
_oat_string1882.str.:
	.ascii "1234967890\0"
_oat_string1882:
	.long _oat_string1882.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh678:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $132, %esp
__fresh673:
	leal -128(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -124(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string1882, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -16(%ebp)
	jE __array_of_string679
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	leal -120(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -116(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -112(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond669
__cond669:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $10, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body668
	jmp __post667
__fresh674:
	jmp __body668
__body668:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check680
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	movl -56(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -52(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond669
__fresh675:
	jmp __post667
__post667:
	leal -132(%ebp), %eax
	movl %eax, -64(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond672
__cond672:
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl $10, %eax
	cmpl %eax, %ecx
	setL -68(%ebp)
	andl $1, -68(%ebp)
	movl -68(%ebp), %eax
	cmpl $0, %eax
	jNE __body671
	jmp __post670
__fresh676:
	jmp __body671
__body671:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check681
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	movl -96(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -92(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -104(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond672
__fresh677:
	jmp __post670
__post670:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
