	.align 4
	.data
str1732:
	.long 0
_oat_string1730.str.:
	.ascii "hello\0"
_oat_string1730:
	.long _oat_string1730.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh616:
	popl %ebp
	movl 0(%esp), %esp
	jE __str1732.init617
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $92, %esp
__fresh613:
	leal -92(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -88(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl str1732, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -16(%ebp)
	jE __array_of_string618
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	leal -84(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -80(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -76(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond612
__cond612:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $5, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body611
	jmp __post610
__fresh614:
	jmp __body611
__body611:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check619
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -56(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
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
	jmp __cond612
__fresh615:
	jmp __post610
__post610:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _str1732.init
_str1732.init:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh609:
	movl _oat_string1730, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, str1732
	movl %ebp, %esp
	popl %ebp
	ret
