section .data
	msg db 'Hello world!', 0xA

section .text
	global _start

_start:
	; sys_write
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 13
	syscall

	; sys_exit
	mov rax, 60
	mov rdi, 0
	syscall
