extern MessageBoxA, ExitProcess
global start
[bits 64]
section .data use64
	msg db "Hello, world!", 0
	caption db "HW", 0
section .code use64
	start:
	and rsp, -10h
	sub rsp, 32
	xor rcx, rcx
	mov rdx, msg
	mov r8, caption
	xor r9, r9
	call MessageBoxA
	xor rcx, rcx
	call ExitProcess