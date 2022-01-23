; Hello World in x86 assembly.
section .text

	global _start ;must be diclared for the linker (ld)
	
_start:			  ; tells the linker the entry point
	mov edx, len  ; message length
	mov ecx, msg  ; message to write
	mov ebx, 1   ; file descriptor (stdout)
	mov eax, 4   ; system call number (sys_write)
	int 0x80     ; call kernel
	
	mov eax, 1   ; system call number (sys_exit)
	int 0x80     ; call kernel
	
section .data

msg db 'Hello world, I am Poonam', 0xa ; our dear string
len equ $ - msg     ; length of the string

; add two numbers in x86 assembly

mov eax, 1
mov ebx, 2
add eax, ebx

; swap two numbers in x86 assembly using xchg and stack
mov eax, 1
mov ebx, 2
; using xchg
xchg eax, ebx
; using stack
push eax
push ebx
pop eax 
pop ebx

; store a number in memory
mov eax, 1
mov [0x100], eax

; reverse the array using loop
db 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10

; printing an array of items
section .text
	global _start		; required for the linker (ld)
_start:                 ; start of the main program

mov edx, 10             ; size of the array
mov ecx, stars          ; declaring what is the name of the variable
mov ebx, 1              ; file descriptor (stdout)
mov eax, 4              ; system call number for writing
int 0x80                ; calling the kernel

mov eax, 1              ; for exiting the system
int 0x80                ; calling the kernel again

section .data
stars times 10 db '*'
