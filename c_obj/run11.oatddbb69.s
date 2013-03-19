	.align 4
	.data
arr2694:
	.long 0
arr1673:
	.long 0
i667:
	.long 1
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh293:
	popl %ebp
	movl 0(%esp), %esp
	jE __arr1673.init295
	movl %esp, %ebp
	pushl %ebp
	popl %ebp
	movl 0(%esp), %esp
	jE __arr2694.init294
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $188, %esp
__fresh292:
	leal -188(%ebp), %eax
	movl %eax, -168(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	movl %ecx, (%eax)
	leal -184(%ebp), %eax
	movl %eax, -164(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -164(%ebp), %eax
	movl %ecx, (%eax)
	leal -180(%ebp), %eax
	movl %eax, -160(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -156(%ebp)
	jE __g303
	movl %esp, %ebp
	pushl %ebp
	leal -176(%ebp), %eax
	movl %eax, -152(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -148(%ebp)
	jE __oat_alloc_array302
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -144(%ebp)
	movl -148(%ebp), %eax
	movl -144(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -140(%ebp), %eax
	movl %ecx, (%eax)
	movl -144(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -136(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -144(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -132(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	movl %ecx, (%eax)
	movl -144(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -128(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	movl %ecx, (%eax)
	leal -172(%ebp), %eax
	movl %eax, -124(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl i667, %eax
	movl %eax, -116(%ebp)
	movl -120(%ebp), %eax
	movl %eax, -112(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl arr1673, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check301
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -104(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl arr1673, %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -100(%ebp)
	movl arr1673, %eax
	movl %eax, -96(%ebp)
	movl -108(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl arr2694, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check300
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -84(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl arr2694, %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -80(%ebp)
	movl arr2694, %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check299
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -76(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl arr2694, %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -72(%ebp)
	movl arr2694, %eax
	movl %eax, -68(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -124(%ebp), %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check298
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -56(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -124(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -52(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -32(%ebp)
	jE __f297
	pushl %eax
	movl -36(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -40(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -152(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check296
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -152(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _g
_g:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh291:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -32(%ebp)
	jE __oat_alloc_array304
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -20(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -12(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -36(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -28(%ebp), %eax
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
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh290:
	leal -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check305
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr2694.init
_arr2694.init:
	pushl %ebp
	movl %esp, %ebp
	subl $80, %esp
__fresh289:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -80(%ebp)
	jE __oat_alloc_array309
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -76(%ebp)
	movl -80(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -72(%ebp)
	jE __oat_alloc_array308
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -60(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -56(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -48(%ebp)
	jE __oat_alloc_array307
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -32(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -24(%ebp)
	jE __oat_alloc_array306
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	movl %eax, arr2694
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr1673.init
_arr1673.init:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh288:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -20(%ebp)
	jE __oat_alloc_array310
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl %eax, arr1673
	movl %ebp, %esp
	popl %ebp
	ret
