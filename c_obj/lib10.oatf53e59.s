	.align 4
	.data
_oat_string1874.str.:
	.ascii "Hello?\0"
_oat_string1874:
	.long _oat_string1874.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh664:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh663:
	leal -24(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string1874, %eax
	movl %eax, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __my_length_of_string665
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _my_length_of_string
_my_length_of_string:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh662:
	leal -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -12(%ebp)
	jE __array_of_string666
	pushl %eax
	movl -16(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
