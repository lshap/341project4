	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh111:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh110:
	leal -24(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f1112
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f9
_f9:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh109:
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
.globl _f8
_f8:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh108:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f9113
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f7
_f7:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh107:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f8114
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f6
_f6:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh106:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f7115
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f5
_f5:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh105:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f6116
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f4
_f4:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh104:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f5117
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f3
_f3:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh103:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f4118
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f2
_f2:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh102:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f3119
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f1
_f1:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh101:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	popl %ebp
	movl 4(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f2120
	pushl %eax
	movl -8(%ebp), %eax
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
