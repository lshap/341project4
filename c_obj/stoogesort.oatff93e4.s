	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1140:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $188, %esp
__fresh1137:
	leal -188(%ebp), %eax
	movl %eax, -128(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	movl %ecx, (%eax)
	leal -184(%ebp), %eax
	movl %eax, -124(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -120(%ebp)
	jE __oat_alloc_array1142
	pushl %eax
	movl $15, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -116(%ebp)
	movl -120(%ebp), %eax
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -108(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -104(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -100(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -96(%ebp)
	movl $6, %eax
	movl %eax, %ecx
	subl %ecx, -96(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -88(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -84(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -80(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -76(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	subl %ecx, -76(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $32, %eax
	movl %eax, -72(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -68(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	subl %ecx, -68(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $36, %eax
	movl %eax, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $40, %eax
	movl %eax, -60(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $44, %eax
	movl %eax, -56(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $48, %eax
	movl %eax, -52(%ebp)
	movl $9, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -48(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	subl %ecx, -48(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $52, %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $56, %eax
	movl %eax, -40(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -180(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	leal -176(%ebp), %eax
	movl %eax, -32(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	leal -172(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -8(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __stoogeSort1141
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $0, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1136
__cond1136:
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -136(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -136(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	cmpl %eax, %ecx
	setLE -132(%ebp)
	andl $1, -132(%ebp)
	movl -132(%ebp), %eax
	cmpl $0, %eax
	jNE __body1135
	jmp __post1134
__fresh1138:
	jmp __body1135
__body1135:
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1144
	pushl %eax
	movl -168(%ebp), %eax
	pushl %eax
	movl -164(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -36(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -160(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_int1143
	pushl %eax
	movl -156(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	movl %eax, -148(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1136
__fresh1139:
	jmp __post1134
__post1134:
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _stoogeSort
_stoogeSort:
	pushl %ebp
	movl %esp, %ebp
	subl $224, %esp
__fresh1129:
	leal -224(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	leal -220(%ebp), %eax
	movl %eax, -48(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	leal -216(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	leal -212(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -52(%ebp), %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1146
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -52(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -28(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -52(%ebp), %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1145
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -52(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -12(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	cmpl %eax, %ecx
	setL -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then1125
	jmp __else1124
__fresh1130:
	jmp __then1125
__then1125:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -52(%ebp), %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1150
	pushl %eax
	movl -112(%ebp), %eax
	pushl %eax
	movl -108(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -52(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -104(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -52(%ebp), %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1149
	pushl %eax
	movl -96(%ebp), %eax
	pushl %eax
	movl -92(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -52(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -88(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -52(%ebp), %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1148
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	movl -80(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -52(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -76(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -52(%ebp), %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1147
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	movl -64(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -52(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -60(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1123
__fresh1131:
	jmp __else1124
__else1124:
	jmp __merge1123
__merge1123:
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -128(%ebp), %eax
	movl %eax, -120(%ebp)
	movl -124(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setG -116(%ebp)
	andl $1, -116(%ebp)
	movl -116(%ebp), %eax
	cmpl $0, %eax
	jNE __then1128
	jmp __else1127
__fresh1132:
	jmp __then1128
__then1128:
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -208(%ebp), %eax
	movl %eax, -200(%ebp)
	movl -204(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -200(%ebp)
	movl -200(%ebp), %eax
	movl %eax, -196(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	movl %eax, -192(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -192(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -188(%ebp), %eax
	movl %eax, -180(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -180(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __stoogeSort1153
	pushl %eax
	movl -180(%ebp), %eax
	pushl %eax
	movl -176(%ebp), %eax
	pushl %eax
	movl -172(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -164(%ebp), %eax
	movl %eax, -156(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -156(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __stoogeSort1152
	pushl %eax
	movl -168(%ebp), %eax
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	movl -152(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -140(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -140(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __stoogeSort1151
	pushl %eax
	movl -140(%ebp), %eax
	pushl %eax
	movl -136(%ebp), %eax
	pushl %eax
	movl -132(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	jmp __merge1126
__fresh1133:
	jmp __else1127
__else1127:
	jmp __merge1126
__merge1126:
	movl %ebp, %esp
	popl %ebp
	ret
