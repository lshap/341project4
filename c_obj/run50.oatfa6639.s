	.align 4
	.data
_oat_string439.str.:
	.ascii "abcde\0"
_oat_string439:
	.long _oat_string439.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh186:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh185:
	leal -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -16(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string439, %eax
	movl %eax, -4(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string187
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
