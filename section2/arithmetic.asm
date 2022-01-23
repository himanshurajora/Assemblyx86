; Now we are gonna learn about some arithmetic operations.
;---------------

; Addition
mov eax, 1
mov ebx, 2
add eax, ebx ; eax = 3
; Subtraction
mov eax, 2
mov ebx, 1
sub eax, ebx ; eax = 1
; Multiplication
mov eax, 2
mov ebx, 3
mul ebx ; eax = 6

; IMul  
mov eax, 2
mov ebx, -6
imul ebx ; eax = -12

;Div, IDiv, Neg, Adc, Sbb, Inc, Dec are here : https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic
; And for logical operations : https://en.wikibooks.org/wiki/X86_Assembly/Logic
