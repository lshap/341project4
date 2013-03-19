	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh110:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh109:
	leal -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -16(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f1111
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
	subl $0, %esp
__fresh108:
	movl $31, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f8
_f8:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh107:
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f9112
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
	subl $4, %esp
__fresh106:
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f8113
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
	subl $4, %esp
__fresh105:
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f7114
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
	subl $4, %esp
__fresh104:
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f6115
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
	subl $4, %esp
__fresh103:
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f5116
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
	subl $4, %esp
__fresh102:
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f4117
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
	subl $4, %esp
__fresh101:
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f3118
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
	subl $4, %esp
__fresh100:
	popl %ebp
	movl 0(%esp), %esp
	movl %eax, -4(%ebp)
	jE __f2119
	movl %esp, %ebp
	pushl %ebp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
