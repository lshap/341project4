	.align 4
	.data
arr3119:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1278:
	popl %ebp
	movl 0(%esp), %esp
	jE __arr3119.init1279
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
__fresh1277:
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
	movl arr3119, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1281
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl arr3119, %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl arr3119, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1280
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl arr3119, %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl arr3119, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr3119.init
_arr3119.init:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh1276:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -48(%ebp)
	jE __oat_alloc_array1284
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -40(%ebp)
	jE __oat_alloc_array1283
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -20(%ebp)
	jE __oat_alloc_array1282
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -4(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl %eax, arr3119
	movl %ebp, %esp
	popl %ebp
	ret
