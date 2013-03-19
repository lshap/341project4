	.align 4
	.data
s452:
	.long 0
_oat_string450.str.:
	.ascii "341\0"
_oat_string450:
	.long _oat_string450.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh193:
	popl %ebp
	movl 0(%esp), %esp
	jE __s452.init194
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh192:
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
	movl s452, %eax
	movl %eax, -4(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string195
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _s452.init
_s452.init:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh191:
	movl _oat_string450, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, s452
	movl %ebp, %esp
	popl %ebp
	ret
