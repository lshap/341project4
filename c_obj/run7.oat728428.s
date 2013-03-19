	.align 4
	.data
arr3141:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1287:
	popl %ebp
	movl 0(%esp), %esp
	jE __arr3141.init1288
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
__fresh1286:
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
	movl arr3141, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1290
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl arr3141, %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl arr3141, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1289
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl arr3141, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl arr3141, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr3141.init
_arr3141.init:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh1285:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -48(%ebp)
	jE __oat_alloc_array1293
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -40(%ebp)
	jE __oat_alloc_array1292
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
	jE __oat_alloc_array1291
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
	movl %eax, arr3141
	movl %ebp, %esp
	popl %ebp
	ret
