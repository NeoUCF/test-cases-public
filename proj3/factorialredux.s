	.file "stdin"
	.text
	.globl print
	.type print, @function
print:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	printf
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl factorialrecursive
	.type factorialrecursive, @function
factorialrecursive:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl mult
	.type mult, @function
mult:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl factorialiterative
	.type factorialiterative, @function
factorialiterative:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl main
	.type main, @function
main:
	push	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	push	%rbx
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	print
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	print
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
