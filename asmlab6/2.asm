extern MessageBoxA, ExitProcess
%include "MB_CONST.inc"
%include "invoke.inc"
global start

section .data
	msg db "Hello, world!", 0
	caption db "HW",0
section .code
	start:
	invoke MessageBoxA, 0, msg, caption, MB_ICONASTERISK+MB_OK
	invoke ExitProcess, 0