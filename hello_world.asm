section .text
	global _start
_start:
	mov rax, 1	;	sys_write
	mov rdi, 1	;	fd = 1
	mov rsi, msg	;	buf = msg
	mov rdx, 14		; count = 14
	syscall
	mov rax, 60	;	sys_exit
	mov rdi, 0	;	return 0
	syscall

section .data
	msg db  "Hello, world!"
