; register addressing
mov ax, bx ; register addressing - mov value of bx to ax

; immidiate addrssing
mov ax, 1 ; immidiate addressing - mov value 1 to ax
; or 
mov ax, 010Ch ; mov the value of address 0x010c into ax

; direct memory addrssing
.data
my_var dw 0abcdh ; myvar = 0xabcd
.code 
mov ax, [my_var] ; copy the value of my_var into ax


; Let's make a simple swapping program using stack
mov ax, 1 ; move 1 to ax
mov bx, 2 ; move 2 to bx

push ax ; push ax in the stack
push bx ; push bx in the stack
; now the value of bx at top of the stack and ax after it
; so if we pop the stack than the first outcome of stack
; will be the value of bx and we will store it in ax
; and than other pop will return the value of ax and we will 
; store the value of it in the bx
; this will give a a simple swapping program
pop ax ; pop the stack and store the value in ax
pop bx ; pop the stack and store the value in bx