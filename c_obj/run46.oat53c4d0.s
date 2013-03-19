	.align 4
	.data
_oat_string1498.str.:
	.ascii "42\0"
_oat_string1498:
	.long _oat_string1498.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh674:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $632, %esp
__fresh673:
	leal -632(%ebp), %eax
	movl %eax, -620(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -620(%ebp), %eax
	movl %ecx, (%eax)
	leal -628(%ebp), %eax
	movl %eax, -616(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -616(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -612(%ebp)
	jE __oat_alloc_array735
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -608(%ebp)
	movl -612(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -604(%ebp)
	jE __oat_alloc_array734
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -600(%ebp)
	movl -604(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -596(%ebp)
	jE __oat_alloc_array733
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -592(%ebp)
	movl -596(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -588(%ebp)
	jE __oat_alloc_array732
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -584(%ebp)
	movl -588(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -580(%ebp)
	jE __oat_alloc_array731
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -576(%ebp)
	movl -580(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -572(%ebp)
	jE __oat_alloc_array730
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -568(%ebp)
	movl -572(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -564(%ebp)
	jE __oat_alloc_array729
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -560(%ebp)
	movl -564(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -556(%ebp)
	jE __oat_alloc_array728
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -552(%ebp)
	movl -556(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -548(%ebp)
	jE __oat_alloc_array727
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -544(%ebp)
	movl -548(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -540(%ebp)
	jE __oat_alloc_array726
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -536(%ebp)
	movl -540(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -532(%ebp)
	jE __oat_alloc_array725
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -528(%ebp)
	movl -532(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -524(%ebp)
	jE __oat_alloc_array724
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -520(%ebp)
	movl -524(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -516(%ebp)
	jE __oat_alloc_array723
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -512(%ebp)
	movl -516(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -508(%ebp)
	jE __oat_alloc_array722
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -504(%ebp)
	movl -508(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -500(%ebp)
	jE __oat_alloc_array721
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -496(%ebp)
	movl -500(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -492(%ebp)
	jE __oat_alloc_array720
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -488(%ebp)
	movl -492(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -484(%ebp)
	jE __oat_alloc_array719
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -480(%ebp)
	movl -484(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -476(%ebp)
	jE __oat_alloc_array718
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -472(%ebp)
	movl -476(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -468(%ebp)
	jE __oat_alloc_array717
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -464(%ebp)
	movl -468(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -460(%ebp)
	jE __oat_alloc_array716
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -456(%ebp)
	movl -460(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -452(%ebp)
	jE __oat_alloc_array715
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -448(%ebp)
	movl -452(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -444(%ebp)
	jE __oat_alloc_array714
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -440(%ebp)
	movl -444(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -436(%ebp)
	jE __oat_alloc_array713
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -432(%ebp)
	movl -436(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -428(%ebp)
	jE __oat_alloc_array712
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -424(%ebp)
	movl -428(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -420(%ebp)
	jE __oat_alloc_array711
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -416(%ebp)
	movl -420(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -412(%ebp)
	jE __oat_alloc_array710
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -408(%ebp)
	movl -412(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -404(%ebp)
	jE __oat_alloc_array709
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -400(%ebp)
	movl -404(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -396(%ebp)
	jE __oat_alloc_array708
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -392(%ebp)
	movl -396(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -388(%ebp)
	jE __oat_alloc_array707
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -384(%ebp)
	movl -388(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -380(%ebp)
	jE __oat_alloc_array706
	pushl %eax
	movl $1, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -376(%ebp)
	movl -380(%ebp), %eax
	movl _oat_string1498, %eax
	movl %eax, -372(%ebp)
	movl -376(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -368(%ebp)
	movl -372(%ebp), %eax
	movl %eax, %ecx
	movl -368(%ebp), %eax
	movl %ecx, (%eax)
	movl -384(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -364(%ebp)
	movl -376(%ebp), %eax
	movl %eax, %ecx
	movl -364(%ebp), %eax
	movl %ecx, (%eax)
	movl -392(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -360(%ebp)
	movl -384(%ebp), %eax
	movl %eax, %ecx
	movl -360(%ebp), %eax
	movl %ecx, (%eax)
	movl -400(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -356(%ebp)
	movl -392(%ebp), %eax
	movl %eax, %ecx
	movl -356(%ebp), %eax
	movl %ecx, (%eax)
	movl -408(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -352(%ebp)
	movl -400(%ebp), %eax
	movl %eax, %ecx
	movl -352(%ebp), %eax
	movl %ecx, (%eax)
	movl -416(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -348(%ebp)
	movl -408(%ebp), %eax
	movl %eax, %ecx
	movl -348(%ebp), %eax
	movl %ecx, (%eax)
	movl -424(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -344(%ebp)
	movl -416(%ebp), %eax
	movl %eax, %ecx
	movl -344(%ebp), %eax
	movl %ecx, (%eax)
	movl -432(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -340(%ebp)
	movl -424(%ebp), %eax
	movl %eax, %ecx
	movl -340(%ebp), %eax
	movl %ecx, (%eax)
	movl -440(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -336(%ebp)
	movl -432(%ebp), %eax
	movl %eax, %ecx
	movl -336(%ebp), %eax
	movl %ecx, (%eax)
	movl -448(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -332(%ebp)
	movl -440(%ebp), %eax
	movl %eax, %ecx
	movl -332(%ebp), %eax
	movl %ecx, (%eax)
	movl -456(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -328(%ebp)
	movl -448(%ebp), %eax
	movl %eax, %ecx
	movl -328(%ebp), %eax
	movl %ecx, (%eax)
	movl -464(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -324(%ebp)
	movl -456(%ebp), %eax
	movl %eax, %ecx
	movl -324(%ebp), %eax
	movl %ecx, (%eax)
	movl -472(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -320(%ebp)
	movl -464(%ebp), %eax
	movl %eax, %ecx
	movl -320(%ebp), %eax
	movl %ecx, (%eax)
	movl -480(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -316(%ebp)
	movl -472(%ebp), %eax
	movl %eax, %ecx
	movl -316(%ebp), %eax
	movl %ecx, (%eax)
	movl -488(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -312(%ebp)
	movl -480(%ebp), %eax
	movl %eax, %ecx
	movl -312(%ebp), %eax
	movl %ecx, (%eax)
	movl -496(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -308(%ebp)
	movl -488(%ebp), %eax
	movl %eax, %ecx
	movl -308(%ebp), %eax
	movl %ecx, (%eax)
	movl -504(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -304(%ebp)
	movl -496(%ebp), %eax
	movl %eax, %ecx
	movl -304(%ebp), %eax
	movl %ecx, (%eax)
	movl -512(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -300(%ebp)
	movl -504(%ebp), %eax
	movl %eax, %ecx
	movl -300(%ebp), %eax
	movl %ecx, (%eax)
	movl -520(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -296(%ebp)
	movl -512(%ebp), %eax
	movl %eax, %ecx
	movl -296(%ebp), %eax
	movl %ecx, (%eax)
	movl -528(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -292(%ebp)
	movl -520(%ebp), %eax
	movl %eax, %ecx
	movl -292(%ebp), %eax
	movl %ecx, (%eax)
	movl -536(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -288(%ebp)
	movl -528(%ebp), %eax
	movl %eax, %ecx
	movl -288(%ebp), %eax
	movl %ecx, (%eax)
	movl -544(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -284(%ebp)
	movl -536(%ebp), %eax
	movl %eax, %ecx
	movl -284(%ebp), %eax
	movl %ecx, (%eax)
	movl -552(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -280(%ebp)
	movl -544(%ebp), %eax
	movl %eax, %ecx
	movl -280(%ebp), %eax
	movl %ecx, (%eax)
	movl -560(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -276(%ebp)
	movl -552(%ebp), %eax
	movl %eax, %ecx
	movl -276(%ebp), %eax
	movl %ecx, (%eax)
	movl -568(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -272(%ebp)
	movl -560(%ebp), %eax
	movl %eax, %ecx
	movl -272(%ebp), %eax
	movl %ecx, (%eax)
	movl -576(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -268(%ebp)
	movl -568(%ebp), %eax
	movl %eax, %ecx
	movl -268(%ebp), %eax
	movl %ecx, (%eax)
	movl -584(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -264(%ebp)
	movl -576(%ebp), %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	movl %ecx, (%eax)
	movl -592(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -260(%ebp)
	movl -584(%ebp), %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	movl %ecx, (%eax)
	movl -600(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -256(%ebp)
	movl -592(%ebp), %eax
	movl %eax, %ecx
	movl -256(%ebp), %eax
	movl %ecx, (%eax)
	movl -608(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -252(%ebp)
	movl -600(%ebp), %eax
	movl %eax, %ecx
	movl -252(%ebp), %eax
	movl %ecx, (%eax)
	leal -624(%ebp), %eax
	movl %eax, -248(%ebp)
	movl -608(%ebp), %eax
	movl %eax, %ecx
	movl -248(%ebp), %eax
	movl %ecx, (%eax)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -244(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check705
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -244(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -240(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -236(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check704
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -236(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -232(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -228(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check703
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -228(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -220(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check702
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -220(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -212(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check701
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -212(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -208(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -204(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check700
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -204(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -200(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -196(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check699
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -196(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -192(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -188(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check698
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -188(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -184(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -180(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check697
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -180(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -176(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check696
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -172(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -168(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check695
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -164(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -160(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -156(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check694
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -156(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -148(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check693
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -148(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -144(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check692
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -140(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -136(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -132(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check691
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -132(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check690
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -124(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check689
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -116(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check688
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -108(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check687
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -100(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check686
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -92(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check685
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -84(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check684
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -76(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check683
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -68(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check682
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -60(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check681
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -52(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check680
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -44(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check679
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -36(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check678
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -28(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check677
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -248(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check676
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl -248(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string675
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
