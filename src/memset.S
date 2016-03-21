[BITS 64]

    global memset:function
section .text

memset:
    push    rcx
    xor     rcx, rcx    ; init rcx = 0

loop_s:
    cmp     rcx, rdx
    je      loop_end
    mov     [rdi + rcx], sil
    inc     rcx
    jmp     loop_s

loop_end:
    mov     rax, rdi    ; return ptr
    pop     rcx
    ret     0
