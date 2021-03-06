[BITS 64]

    global memmove:function
section .text

memmove:
    push    rbp
    mov     rbp, rsp
    cmp     rdi, rsi
    je      loop_end
    cmp     rdi, 0      ; check if NULL
    je      loop_end
    cmp     rsi, 0      ; check if NULL
    je      loop_end
    cmp     rdi, rsi
    jg      loop_reverse
    xor     rcx, rcx

loop_normal:
    cmp     rcx, rdx
    je      loop_end
    mov     r8b, [rsi + rcx]
    mov     [rdi + rcx], r8b     ; cpy
    inc     rcx
    jmp     loop_normal

loop_reverse:
    sub     rdx, 1
    cmp     rdx, -1
    je      loop_end
    mov     r8b, [rsi + rdx]
    mov     [rdi + rdx], r8b     ; cpy
    jmp     loop_reverse

loop_end:
    mov     rsp, rbp
    pop     rbp
    mov     rax, rdi    ; return count
    ret     0
