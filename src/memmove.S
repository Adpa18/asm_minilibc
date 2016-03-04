[BITS 64]

    global memmove:function
section .text

memmove:
    xor rcx, rcx    ; init rcx = 0
    cmp rdi, rsi
    je loop_end

loop_s:
    cmp rcx, rdx
    je loop_end
    mov [rdi + rcx], sil
    inc rcx
    inc sil
    jmp loop_s

loop_end:
    mov rax, rdi    ; return count
    ret 0
