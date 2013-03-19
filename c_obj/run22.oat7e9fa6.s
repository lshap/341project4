	.align 4
	.data
strs941:
	.long 0
_oat_string938.str.:
	.ascii "def\0"
_oat_string938:
	.long _oat_string938.str.

_oat_string935.str.:
	.ascii "abc\0"
_oat_string935:
	.long _oat_string935.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh412:
	popl %ebp
	movl 0(%esp), %esp
	jE __strs941.init413
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh411:
	leal -28(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -24(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl strs941, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check415
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl strs941, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl strs941, %eax
	movl %eax, -4(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string414
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _strs941.init
_strs941.init:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh410:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -24(%ebp)
	jE __oat_alloc_array416
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl _oat_string935, %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string938, %eax
	movl %eax, -8(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl %eax, strs941
	movl %ebp, %esp
	popl %ebp
	ret
