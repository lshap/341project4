	.align 4
	.data
_oat_string2104.str.:
	.ascii "\n\0"
_oat_string2104:
	.long _oat_string2104.str.

_oat_string2099.str.:
	.ascii "\n\0"
_oat_string2099:
	.long _oat_string2099.str.

_oat_string2095.str.:
	.ascii "\n\0"
_oat_string2095:
	.long _oat_string2095.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh919:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $100, %esp
__fresh918:
	leal -100(%ebp), %eax
	movl %eax, -88(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -84(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -80(%ebp)
	jE __oat_alloc_array928
	pushl %eax
	movl $9, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -76(%ebp)
	movl -80(%ebp), %eax
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl $107, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -68(%ebp)
	movl $112, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -64(%ebp)
	movl $121, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -60(%ebp)
	movl $102, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -56(%ebp)
	movl $123, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -52(%ebp)
	movl $115, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -48(%ebp)
	movl $104, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -44(%ebp)
	movl $111, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $32, %eax
	movl %eax, -40(%ebp)
	movl $109, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string2095, %eax
	movl %eax, -32(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string927
	pushl %eax
	movl -32(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -24(%ebp)
	jE __string_of_array926
	pushl %eax
	movl -28(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string925
	pushl %eax
	movl -24(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl _oat_string2099, %eax
	movl %eax, -20(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string924
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __quick_sort923
	pushl %eax
	movl $8, %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -16(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -8(%ebp)
	jE __string_of_array922
	pushl %eax
	movl -12(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string921
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl _oat_string2104, %eax
	movl %eax, -4(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string920
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $255, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _partition
_partition:
	pushl %ebp
	movl %esp, %ebp
	subl $340, %esp
__fresh907:
	leal -340(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	leal -336(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	leal -332(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check929
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -40(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	leal -328(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	leal -324(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -16(%ebp)
	leal -320(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -316(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -312(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond894
__cond894:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -64(%ebp)
	andl $1, -64(%ebp)
	movl -64(%ebp), %eax
	cmpl $0, %eax
	jNE __body893
	jmp __post892
__fresh908:
	jmp __body893
__body893:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond897
__cond897:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check930
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	movl -112(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -108(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	cmpl %eax, %ecx
	setLE -96(%ebp)
	andl $1, -96(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	cmpl %eax, %ecx
	setLE -84(%ebp)
	andl $1, -84(%ebp)
	movl -96(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __body896
	jmp __post895
__fresh909:
	jmp __body896
__body896:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -120(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond897
__fresh910:
	jmp __post895
__post895:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, -128(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond900
__cond900:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check931
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	movl -152(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -156(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -148(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -140(%ebp), %eax
	cmpl %eax, %ecx
	setG -136(%ebp)
	andl $1, -136(%ebp)
	movl -136(%ebp), %eax
	cmpl $0, %eax
	jNE __body899
	jmp __post898
__fresh911:
	jmp __body899
__body899:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	movl %eax, -160(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -160(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond900
__fresh912:
	jmp __post898
__post898:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -176(%ebp), %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	cmpl %eax, %ecx
	setGE -168(%ebp)
	andl $1, -168(%ebp)
	movl -168(%ebp), %eax
	cmpl $0, %eax
	jNE __then903
	jmp __else902
__fresh913:
	jmp __then903
__then903:
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge901
__fresh914:
	jmp __else902
__else902:
	jmp __merge901
__merge901:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -180(%ebp)
	andl $1, -180(%ebp)
	movl -180(%ebp), %eax
	cmpl $0, %eax
	jNE __then906
	jmp __else905
__fresh915:
	jmp __then906
__then906:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -240(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check935
	pushl %eax
	movl -244(%ebp), %eax
	pushl %eax
	movl -240(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -244(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -236(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check934
	pushl %eax
	movl -228(%ebp), %eax
	pushl %eax
	movl -224(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -228(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -220(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -212(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check933
	pushl %eax
	movl -216(%ebp), %eax
	pushl %eax
	movl -212(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -208(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -196(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check932
	pushl %eax
	movl -200(%ebp), %eax
	pushl %eax
	movl -196(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -192(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge904
__fresh916:
	jmp __else905
__else905:
	jmp __merge904
__merge904:
	jmp __cond894
__fresh917:
	jmp __post892
__post892:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -304(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check939
	pushl %eax
	movl -308(%ebp), %eax
	pushl %eax
	movl -304(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -308(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -300(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -292(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -288(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check938
	pushl %eax
	movl -292(%ebp), %eax
	pushl %eax
	movl -288(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -292(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -284(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -276(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check937
	pushl %eax
	movl -280(%ebp), %eax
	pushl %eax
	movl -276(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -280(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -272(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -268(%ebp)
	movl -268(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -260(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check936
	pushl %eax
	movl -264(%ebp), %eax
	pushl %eax
	movl -260(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -256(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -252(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -248(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _quick_sort
_quick_sort:
	pushl %ebp
	movl %esp, %ebp
	subl $92, %esp
__fresh889:
	leal -92(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -88(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -84(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -80(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	cmpl %eax, %ecx
	setL -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then888
	jmp __else887
__fresh890:
	jmp __then888
__then888:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	movl %eax, -64(%ebp)
	jE __partition942
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	movl -68(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -56(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __quick_sort941
	pushl %eax
	movl -56(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	movl -48(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __quick_sort940
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	jmp __merge886
__fresh891:
	jmp __else887
__else887:
	jmp __merge886
__merge886:
	movl %ebp, %esp
	popl %ebp
	ret
