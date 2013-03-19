	.align 4
	.data
strs971:
	.long 0
_oat_string967.str.:
	.ascii "123\0"
_oat_string967:
	.long _oat_string967.str.

_oat_string964.str.:
	.ascii "789\0"
_oat_string964:
	.long _oat_string964.str.

_oat_string958.str.:
	.ascii "def\0"
_oat_string958:
	.long _oat_string958.str.

_oat_string955.str.:
	.ascii "abc\0"
_oat_string955:
	.long _oat_string955.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh419:
	popl %ebp
	movl 0(%esp), %esp
	jE __strs971.init420
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh418:
	leal -36(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -32(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl strs971, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check423
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl strs971, %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl strs971, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check422
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl strs971, %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl strs971, %eax
	movl %eax, -4(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string421
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _strs971.init
_strs971.init:
	pushl %ebp
	movl %esp, %ebp
	subl $64, %esp
__fresh417:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -64(%ebp)
	jE __oat_alloc_array426
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -56(%ebp)
	jE __oat_alloc_array425
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl _oat_string955, %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string958, %eax
	movl %eax, -40(%ebp)
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -28(%ebp)
	jE __oat_alloc_array424
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -24(%ebp)
	movl -28(%ebp), %eax
	movl _oat_string964, %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string967, %eax
	movl %eax, -12(%ebp)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -4(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl %eax, strs971
	movl %ebp, %esp
	popl %ebp
	ret
