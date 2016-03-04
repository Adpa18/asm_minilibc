[BITS 64]

    global strcspn:function
section .text

strcspn:
    xor rcx, rcx    ; init rcx = 0

loop_s:
    mov al, [rdi + rcx]
    cmp al, 0
    je loop_end
    mov r8, rsi
loop_s2:
    mov r9b, [r8]
    cmp al, r9b
    je loop_end
    inc r8
    cmp r9b, 0
    jne loop_s2
    inc rcx
    jmp loop_s

loop_end:
    mov rax, rcx    ; return ptr
    ret 0
