; I will only be using Intel Syntex of Assembly Futher on
; first move instruction again

; it's simple 
mov eax, 123


; eg : 
mov eax, 10
mov ebx, 20
xchg eax, ebx ; xchg means exchange, it swaps both registers

; we can evan swap lower size register with each other
mov ah, 2
mov al, 3
xchg al, ah

; in gas we actually have to specify the size of data
; eg : movb for move byte

; --------
; cmpxchg - data swap based on comparison
; https://en.wikibooks.org/wiki/X86_Assembly/Data_Transfer <- this link for more info
mov al, 12
mov bl, 14
mov dl, 13

cmpxchg dl, bl

; movzx Move with zero extend
; copy from src to dist but fill remaining bits with zero : usually used while copying
; small register to bigger one

mov eax, 2242567
mov bl, 10
movzx eax, bl

; movsx : move with signed extend
; The movsx instruction copies the src operand in the
; dest operand and pads the remaining bits not provided by src with the sign bit (the MSB) of src.

mov eax, 2242567
mov bl, -10
movsx eax, bl

; movsb : move string
; moves a single byte

section .text
  ; copy mystr into mystr2
  mov esi, mystr    ; loads address of mystr into esi
  mov edi, mystr2   ; loads address of mystr2 into edi
  cld               ; clear direction flag (forward)
  mov ecx,6
  rep movsb         ; copy six times
 
section .bss
  mystr2: resb 6
 
section .data
  mystr db "Hello", 0x0

; more at https://en.wikibooks.org/wiki/X86_Assembly/Data_Transfer