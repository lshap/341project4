	.align 4
	.data
a1367:
	.long 0
_oat_string1335.str.:
	.ascii "42\0"
_oat_string1335:
	.long _oat_string1335.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh610:
	popl %ebp
	movl 0(%esp), %esp
	jE __a1367.init611
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
__fresh609:
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
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -244(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check642
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -244(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -240(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -236(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check641
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -236(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -232(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -228(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check640
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -228(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -220(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check639
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -220(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -212(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check638
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -212(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -208(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -204(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check637
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -204(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -200(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -196(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check636
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -196(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -192(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -188(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check635
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -188(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -184(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -180(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check634
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -180(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -176(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check633
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -172(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -168(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check632
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -164(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -160(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -156(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check631
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -156(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -148(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check630
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -148(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -144(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check629
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -140(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -136(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -132(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check628
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -132(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check627
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -124(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check626
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -116(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check625
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -108(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check624
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -100(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check623
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -92(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check622
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -84(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check621
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -76(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check620
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -68(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check619
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -60(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check618
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -52(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check617
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -44(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check616
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -36(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check615
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -28(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check614
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl a1367, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check613
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl a1367, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl a1367, %eax
	movl %eax, -4(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string612
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a1367.init
_a1367.init:
	pushl %ebp
	movl %esp, %ebp
	subl $364, %esp
__fresh608:
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -364(%ebp)
	jE __oat_alloc_array672
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -360(%ebp)
	movl -364(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -356(%ebp)
	jE __oat_alloc_array671
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -352(%ebp)
	movl -356(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -348(%ebp)
	jE __oat_alloc_array670
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -344(%ebp)
	movl -348(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -340(%ebp)
	jE __oat_alloc_array669
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -336(%ebp)
	movl -340(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -332(%ebp)
	jE __oat_alloc_array668
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -328(%ebp)
	movl -332(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -324(%ebp)
	jE __oat_alloc_array667
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -320(%ebp)
	movl -324(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -316(%ebp)
	jE __oat_alloc_array666
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -312(%ebp)
	movl -316(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -308(%ebp)
	jE __oat_alloc_array665
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -304(%ebp)
	movl -308(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -300(%ebp)
	jE __oat_alloc_array664
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -296(%ebp)
	movl -300(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -292(%ebp)
	jE __oat_alloc_array663
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -288(%ebp)
	movl -292(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -284(%ebp)
	jE __oat_alloc_array662
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -280(%ebp)
	movl -284(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -276(%ebp)
	jE __oat_alloc_array661
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -272(%ebp)
	movl -276(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -268(%ebp)
	jE __oat_alloc_array660
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -264(%ebp)
	movl -268(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -260(%ebp)
	jE __oat_alloc_array659
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -256(%ebp)
	movl -260(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -252(%ebp)
	jE __oat_alloc_array658
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -248(%ebp)
	movl -252(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -244(%ebp)
	jE __oat_alloc_array657
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -240(%ebp)
	movl -244(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -236(%ebp)
	jE __oat_alloc_array656
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -232(%ebp)
	movl -236(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -228(%ebp)
	jE __oat_alloc_array655
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -224(%ebp)
	movl -228(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -220(%ebp)
	jE __oat_alloc_array654
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -216(%ebp)
	movl -220(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -212(%ebp)
	jE __oat_alloc_array653
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -208(%ebp)
	movl -212(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -204(%ebp)
	jE __oat_alloc_array652
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -200(%ebp)
	movl -204(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -196(%ebp)
	jE __oat_alloc_array651
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -192(%ebp)
	movl -196(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -188(%ebp)
	jE __oat_alloc_array650
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -184(%ebp)
	movl -188(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -180(%ebp)
	jE __oat_alloc_array649
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -176(%ebp)
	movl -180(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -172(%ebp)
	jE __oat_alloc_array648
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -168(%ebp)
	movl -172(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -164(%ebp)
	jE __oat_alloc_array647
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -160(%ebp)
	movl -164(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -156(%ebp)
	jE __oat_alloc_array646
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -152(%ebp)
	movl -156(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -148(%ebp)
	jE __oat_alloc_array645
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -144(%ebp)
	movl -148(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -140(%ebp)
	jE __oat_alloc_array644
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -136(%ebp)
	movl -140(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -132(%ebp)
	jE __oat_alloc_array643
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -128(%ebp)
	movl -132(%ebp), %eax
	movl _oat_string1335, %eax
	movl %eax, -124(%ebp)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl -144(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -152(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl -168(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl -176(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -168(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	movl -176(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl -200(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -216(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	movl -208(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -224(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -216(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -232(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -224(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -240(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl -240(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -256(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -248(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -264(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl -256(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -272(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl -264(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -280(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -272(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -288(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl -280(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -296(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl -288(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -304(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -296(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -312(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl -304(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -320(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -312(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -328(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl -320(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -336(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -328(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -344(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl -336(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -352(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl -344(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -360(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl -352(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -360(%ebp), %eax
	movl %eax, a1367
	movl %ebp, %esp
	popl %ebp
	ret
