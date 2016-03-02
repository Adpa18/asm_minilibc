[BITS 64]

    global memcpy:function
section .text

memcpy:
    xor rcx, rcx    ; init rcx = 0
    mov r8, rdi
    mov r9, rsi

loop_s:
    cmp rcx, rdx
    je loop_end
    cmp r8, 0
    je loop_end
    cmp r9, 0
    je loop_end
    mov [r8], r9
    inc rcx
    inc r8
    inc r9
    jmp loop_s

loop_end:
    mov rax, rdi    ; return ptr
    ret 0
