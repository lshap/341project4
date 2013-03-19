	.align 4
	.data
a1088:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh441:
	popl %ebp
	movl 0(%esp), %esp
	jE __a1088.init442
	movl %esp, %ebp
	pushl %ebp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $260, %esp
__fresh440:
	leal -260(%ebp), %eax
	movl %eax, -252(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -252(%ebp), %eax
	movl %ecx, (%eax)
	leal -256(%ebp), %eax
	movl %eax, -248(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -248(%ebp), %eax
	movl %ecx, (%eax)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -244(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check472
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -244(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -240(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -236(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check471
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -236(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -232(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -228(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check470
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -228(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -220(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check469
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -220(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -212(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check468
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -212(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -208(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -204(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check467
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -204(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -200(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -196(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check466
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -196(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -192(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -188(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check465
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -188(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -184(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -180(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check464
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -180(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -176(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check463
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -172(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -168(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check462
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -164(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -160(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -156(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check461
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -156(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -148(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check460
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -148(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -144(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check459
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -140(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -136(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -132(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check458
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -132(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check457
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -124(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check456
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -116(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check455
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -108(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check454
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -100(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check453
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -92(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check452
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -84(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check451
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -76(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check450
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -68(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check449
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -60(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check448
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -52(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check447
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -44(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check446
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -36(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check445
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -28(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check444
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl a1088, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check443
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1088, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl a1088, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a1088.init
_a1088.init:
	pushl %ebp
	movl %esp, %ebp
	subl $360, %esp
__fresh439:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -360(%ebp)
	jE __oat_alloc_array502
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -356(%ebp)
	movl -360(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -352(%ebp)
	jE __oat_alloc_array501
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -348(%ebp)
	movl -352(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -344(%ebp)
	jE __oat_alloc_array500
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -340(%ebp)
	movl -344(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -336(%ebp)
	jE __oat_alloc_array499
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -332(%ebp)
	movl -336(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -328(%ebp)
	jE __oat_alloc_array498
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -324(%ebp)
	movl -328(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -320(%ebp)
	jE __oat_alloc_array497
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -316(%ebp)
	movl -320(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -312(%ebp)
	jE __oat_alloc_array496
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -308(%ebp)
	movl -312(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -304(%ebp)
	jE __oat_alloc_array495
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -300(%ebp)
	movl -304(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -296(%ebp)
	jE __oat_alloc_array494
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -292(%ebp)
	movl -296(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -288(%ebp)
	jE __oat_alloc_array493
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -284(%ebp)
	movl -288(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -280(%ebp)
	jE __oat_alloc_array492
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -276(%ebp)
	movl -280(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -272(%ebp)
	jE __oat_alloc_array491
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -268(%ebp)
	movl -272(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -264(%ebp)
	jE __oat_alloc_array490
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -260(%ebp)
	movl -264(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -256(%ebp)
	jE __oat_alloc_array489
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -252(%ebp)
	movl -256(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -248(%ebp)
	jE __oat_alloc_array488
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -244(%ebp)
	movl -248(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -240(%ebp)
	jE __oat_alloc_array487
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -236(%ebp)
	movl -240(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -232(%ebp)
	jE __oat_alloc_array486
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -228(%ebp)
	movl -232(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -224(%ebp)
	jE __oat_alloc_array485
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -220(%ebp)
	movl -224(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -216(%ebp)
	jE __oat_alloc_array484
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -212(%ebp)
	movl -216(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -208(%ebp)
	jE __oat_alloc_array483
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -204(%ebp)
	movl -208(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -200(%ebp)
	jE __oat_alloc_array482
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -196(%ebp)
	movl -200(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -192(%ebp)
	jE __oat_alloc_array481
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -188(%ebp)
	movl -192(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -184(%ebp)
	jE __oat_alloc_array480
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -180(%ebp)
	movl -184(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -176(%ebp)
	jE __oat_alloc_array479
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -172(%ebp)
	movl -176(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -168(%ebp)
	jE __oat_alloc_array478
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -164(%ebp)
	movl -168(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -160(%ebp)
	jE __oat_alloc_array477
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -156(%ebp)
	movl -160(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -152(%ebp)
	jE __oat_alloc_array476
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -148(%ebp)
	movl -152(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -144(%ebp)
	jE __oat_alloc_array475
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -140(%ebp)
	movl -144(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -136(%ebp)
	jE __oat_alloc_array474
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -132(%ebp)
	movl -136(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -128(%ebp)
	jE __oat_alloc_array473
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -124(%ebp)
	movl -128(%ebp), %eax
	movl -124(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl $42, %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	movl %ecx, (%eax)
	movl -132(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl -140(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -148(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	movl -140(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -148(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl -164(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl -172(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	movl %ecx, (%eax)
	movl -180(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	movl -172(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	movl -188(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -180(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -196(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -204(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl -196(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -212(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	movl -204(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -220(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -212(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -228(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -220(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -236(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -228(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -244(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl -236(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -252(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -260(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl -252(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -268(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl -260(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -276(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -268(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -284(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl -276(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -292(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl -284(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -300(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -292(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -308(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl -300(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -316(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -308(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -324(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl -316(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -332(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -324(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -340(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl -332(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -348(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl -340(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -356(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl -348(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -356(%ebp), %eax
	movl %eax, a1088
	movl %ebp, %esp
	popl %ebp
	ret
