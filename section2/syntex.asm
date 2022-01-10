; Common Syntex for GAS and Intel
; Instruction
; Instruction arg
; eg :
inc
je loop

; For Gas
; Instruction src, dest
; Instruction aux, src, dest
; eg : 
movl 12, ax

; For Intel 
; Instruction dist, src
; Instruction dist, src, aux
mov ax, 12