	.align 4
	.data
garr493:
	.long 0
i480:
	.long 42
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh226:
	popl %ebp
	movl 0(%esp), %esp
	jE __garr493.init227
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $168, %esp
__fresh223:
	leal -168(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	leal -164(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -36(%ebp)
	jE __oat_alloc_array228
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -20(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -160(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -156(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -152(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond222
__cond222:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl $100, %eax
	cmpl %eax, %ecx
	setL -48(%ebp)
	andl $1, -48(%ebp)
	movl -48(%ebp), %eax
	cmpl $0, %eax
	jNE __body221
	jmp __post220
__fresh224:
	jmp __body221
__body221:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -64(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond222
__fresh225:
	jmp __post220
__post220:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -144(%ebp)
	jE __g236
	pushl %eax
	movl -148(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl i480, %eax
	movl %eax, -140(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -136(%ebp)
	jE __f235
	pushl %eax
	movl -140(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -144(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -132(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check234
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -128(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -124(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -116(%ebp)
	jE __f233
	pushl %eax
	movl -120(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -132(%ebp), %eax
	movl %eax, -112(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -112(%ebp)
	movl garr493, %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check232
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -108(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl garr493, %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -104(%ebp)
	movl garr493, %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check231
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -100(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl garr493, %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -96(%ebp)
	movl garr493, %eax
	movl %eax, -92(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -88(%ebp)
	jE __f230
	pushl %eax
	movl -92(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -112(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -84(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -76(%ebp)
	jE __f229
	pushl %eax
	movl -80(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -84(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _g
_g:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh219:
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
	jE __oat_array_bounds_check237
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
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
	subl $12, %esp
__fresh218:
	leal -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 8(%ebp), %eax
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
.globl _garr493.init
_garr493.init:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh217:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -48(%ebp)
	jE __oat_alloc_array240
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -40(%ebp)
	jE __oat_alloc_array239
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
	jE __oat_alloc_array238
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
	movl %eax, garr493
	movl %ebp, %esp
	popl %ebp
	ret
