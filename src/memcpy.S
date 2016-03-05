[BITS 64]

    global memcpy:function
section .text

memcpy:
    xor rcx, rcx    ; init rcx = 0
    cmp rdi, 0      ; check if NULL
    je loop_end
    cmp rsi, 0      ; check if NULL
    je loop_end

loop_s:
    cmp rcx, rdx    ; check if i < size
    je loop_end
    mov al, [rdi + rcx]
    cmp al, 0      ; check if end
    je loop_end
    mov r8b, [rsi + rcx]
    cmp r8b, 0      ; check if end
    je loop_end
    mov [rdi + rcx], r8b     ; cpy
    inc rcx
    jmp loop_s

loop_end:
    mov rax, rdi    ; return ptr
    ret 0
