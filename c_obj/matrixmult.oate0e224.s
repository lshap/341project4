	.align 4
	.data
_oat_string3089.str.:
	.ascii "\n\0"
_oat_string3089:
	.long _oat_string3089.str.

_oat_string3085.str.:
	.ascii " \0"
_oat_string3085:
	.long _oat_string3085.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1235:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _prnNx4
_prnNx4:
	pushl %ebp
	movl %esp, %ebp
	subl $104, %esp
__fresh1230:
	leal -100(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1226
__cond1226:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	cmpl %eax, %ecx
	setL -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __body1225
	jmp __post1224
__fresh1231:
	jmp __body1225
__body1225:
	leal -104(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1229
__cond1229:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1228
	jmp __post1227
__fresh1232:
	jmp __body1228
__body1228:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1239
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	movl -68(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -64(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1238
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -56(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_int1237
	pushl %eax
	movl -52(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl _oat_string3085, %eax
	movl %eax, -48(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string1236
	pushl %eax
	movl -48(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1229
__fresh1233:
	jmp __post1227
__post1227:
	movl _oat_string3089, %eax
	movl %eax, -88(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	jE __print_string1240
	pushl %eax
	movl -88(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %eax, -80(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1226
__fresh1234:
	jmp __post1224
__post1224:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _dot3
_dot3:
	pushl %ebp
	movl %esp, %ebp
	subl $136, %esp
__fresh1221:
	leal -136(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -132(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -128(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -124(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 20(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -120(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -116(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1220
__cond1220:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -28(%ebp)
	andl $1, -28(%ebp)
	movl -28(%ebp), %eax
	cmpl $0, %eax
	jNE __body1219
	jmp __post1218
__fresh1222:
	jmp __body1219
__body1219:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1244
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	movl -96(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -92(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1243
	pushl %eax
	movl -104(%ebp), %eax
	pushl %eax
	movl -88(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -84(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1242
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	movl -68(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -64(%ebp)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1241
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -56(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -48(%ebp)
	movl -108(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1220
__fresh1223:
	jmp __post1218
__post1218:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _matrix_MultAlt
_matrix_MultAlt:
	pushl %ebp
	movl %esp, %ebp
	subl $116, %esp
__fresh1213:
	leal -112(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -108(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -104(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -100(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1209
__cond1209:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $2, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body1208
	jmp __post1207
__fresh1214:
	jmp __body1208
__body1208:
	leal -116(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1212
__cond1212:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1211
	jmp __post1210
__fresh1215:
	jmp __body1211
__body1211:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -8(%ebp), %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1247
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	movl -80(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -8(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -76(%ebp)
	movl -8(%ebp), %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1246
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -8(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -68(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	popl %ebp
	movl 16(%esp), %esp
	movl %eax, -48(%ebp)
	jE __dot31245
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	movl -56(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1212
__fresh1216:
	jmp __post1210
__post1210:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, -92(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1209
__fresh1217:
	jmp __post1207
__post1207:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _matrix_Mult
_matrix_Mult:
	pushl %ebp
	movl %esp, %ebp
	subl $212, %esp
__fresh1200:
	leal -204(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -200(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -196(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -192(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1193
__cond1193:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $2, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body1192
	jmp __post1191
__fresh1201:
	jmp __body1192
__body1192:
	leal -208(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1196
__cond1196:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1195
	jmp __post1194
__fresh1202:
	jmp __body1195
__body1195:
	leal -212(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1199
__cond1199:
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -44(%ebp)
	andl $1, -44(%ebp)
	movl -44(%ebp), %eax
	cmpl $0, %eax
	jNE __body1198
	jmp __post1197
__fresh1203:
	jmp __body1198
__body1198:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -8(%ebp), %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1255
	pushl %eax
	movl -168(%ebp), %eax
	pushl %eax
	movl -164(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -8(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -160(%ebp)
	movl -8(%ebp), %eax
	addl $0, %eax
	movl %eax, -156(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1254
	pushl %eax
	movl -172(%ebp), %eax
	pushl %eax
	movl -156(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -8(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -152(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -8(%ebp), %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1253
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	movl -140(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -8(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -136(%ebp)
	movl -8(%ebp), %eax
	addl $0, %eax
	movl %eax, -132(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1252
	pushl %eax
	movl -148(%ebp), %eax
	pushl %eax
	movl -132(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -8(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -148(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -128(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1251
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	movl -112(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -16(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -108(%ebp)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1250
	pushl %eax
	movl -120(%ebp), %eax
	pushl %eax
	movl -104(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -16(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -100(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1249
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	movl -84(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -80(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __oat_array_bounds_check1248
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	movl -76(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -72(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -96(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -64(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1199
__fresh1204:
	jmp __post1197
__post1197:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	movl %eax, -176(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1196
__fresh1205:
	jmp __post1194
__post1194:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	movl %eax, -184(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -184(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1193
__fresh1206:
	jmp __post1191
__post1191:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $284, %esp
__fresh1190:
	leal -284(%ebp), %eax
	movl %eax, -264(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	movl %ecx, (%eax)
	leal -280(%ebp), %eax
	movl %eax, -260(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -256(%ebp)
	jE __oat_alloc_array1269
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -252(%ebp)
	movl -256(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -248(%ebp)
	jE __oat_alloc_array1268
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -244(%ebp)
	movl -248(%ebp), %eax
	movl -244(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -240(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -240(%ebp), %eax
	movl %ecx, (%eax)
	movl -244(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -236(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	movl %ecx, (%eax)
	movl -244(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -232(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -232(%ebp), %eax
	movl %ecx, (%eax)
	movl -252(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -228(%ebp)
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -228(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -224(%ebp)
	jE __oat_alloc_array1267
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -220(%ebp)
	movl -224(%ebp), %eax
	movl -220(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	movl %ecx, (%eax)
	movl -220(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -212(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -212(%ebp), %eax
	movl %ecx, (%eax)
	movl -220(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -208(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -208(%ebp), %eax
	movl %ecx, (%eax)
	movl -252(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -204(%ebp)
	movl -220(%ebp), %eax
	movl %eax, %ecx
	movl -204(%ebp), %eax
	movl %ecx, (%eax)
	leal -276(%ebp), %eax
	movl %eax, -200(%ebp)
	movl -252(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -196(%ebp)
	jE __oat_alloc_array1266
	pushl %eax
	movl $3, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -192(%ebp)
	movl -196(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -188(%ebp)
	jE __oat_alloc_array1265
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -184(%ebp)
	movl -188(%ebp), %eax
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -180(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -180(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -176(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -172(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -168(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	movl %ecx, (%eax)
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -164(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -160(%ebp)
	jE __oat_alloc_array1264
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -156(%ebp)
	movl -160(%ebp), %eax
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	movl %ecx, (%eax)
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -148(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -148(%ebp), %eax
	movl %ecx, (%eax)
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -144(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	movl %ecx, (%eax)
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -140(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -140(%ebp), %eax
	movl %ecx, (%eax)
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -136(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -132(%ebp)
	jE __oat_alloc_array1263
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -128(%ebp)
	movl -132(%ebp), %eax
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -120(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	movl %ecx, (%eax)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -116(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -112(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -108(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	leal -272(%ebp), %eax
	movl %eax, -104(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -100(%ebp)
	jE __oat_alloc_array1262
	pushl %eax
	movl $2, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -96(%ebp)
	movl -100(%ebp), %eax
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -92(%ebp)
	jE __oat_alloc_array1261
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -88(%ebp)
	movl -92(%ebp), %eax
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -80(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -76(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -72(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -96(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -64(%ebp)
	jE __oat_alloc_array1260
	pushl %eax
	movl $4, %eax
	movl %esp, %ebp
	pushl %ebp
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -52(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -48(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -44(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -96(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -40(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -268(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __matrix_Mult1259
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	movl -24(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __prnNx41258
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -20(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 12(%esp), %esp
	jE __matrix_MultAlt1257
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	popl %ebp
	movl 8(%esp), %esp
	jE __prnNx41256
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -4(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
