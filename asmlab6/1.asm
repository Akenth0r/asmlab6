extern MessageBoxA, ExitProcess
global start
%include "invoke.inc"

section .data
	msg db "Hello, world!", 0
	caption db "HW", 0
section .code
	start:
	invoke MessageBoxA, 0, msg, caption, 0
	invoke ExitProcess, 0