; Comparisons for flowcontrol
; code flow control in x86 assembly 
mov ecx, 10
mov edx, 10

cmp ecx, edx
je equal

equal:
	mov eax, 15

; there are more oprators like je
; jg : jump if greater 
; jl : jump if lesser
; jne : jump if not equal
; ja : jump if above
; jz : jump if zero
; js : jump if signed
; jcxz : jump if counter register is zero

; more at here https://en.wikibooks.org/wiki/X86_Assembly/Control_Flow

; --------------------
; Function Calls 
; Pushes the address of the instruction that follows the call call,
; i.e. usually the next line in your source code, onto the top of the stack,
; and then jumps to the specified location. This is used mostly for subroutines

; eg 
fun: 
	mov eax, 1231
	
call fun

; ret [val]
; return the value and pushed to the stack
call fun
fun: 
	mov eax, 1231
	ret 12 ; I am not sure if it works, I tried and failed, I will try to figure it out later

; loop : repeats a process
mov ecx, 5

head:
	mov eax, ecx 
	loop head ; repeats the process 5 times

;loope loop if equal
;loopne loop if not equal
;loopnz loop if not zero
;loopz loop if zero


