; Stack Operations
push eax
pop eax


; Push all registers onto the stack
pusha ; push all registers onto the stack (16-bit)
pushad ; push all registers onto the stack (32-bit)
; Pop all registers from the stack
popa ; pop all registers from the stack (16-bit)
popad ; pop all registers from the stack (32-bit)