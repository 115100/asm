section .data
	firstOperand equ 100
	secondOperand equ 200
	notEqualMsg db  `Strings aren't equal.\n`

section .text
	global _start

_start:
	mov rax, firstOperand
	mov rbx, secondOperand
	cmp rax, rbx
	je .equal
	jmp .notEqual

.equal:
	; sys.exit(0)
	mov rax, 60	;	sys_exit
	mov rdi, 0	;	return 0
	syscall

.notEqual:
	mov rax, 1	;	sys_write
	mov rdi, 2	;	fd = 2 for stderr
	mov rsi, notEqualMsg	;	buf = msg
	mov rdx, 22		; count = 22
	syscall
	mov rax, 60	;	sys_exit
	mov rdi, 1	;	return 1 for error
	syscall
