[BITS 64]

    global memset:function
section .text

memset:
    push    rbp
    mov     rbp, rsp
    xor     rcx, rcx    ; init rcx = 0

loop_s:
    cmp     rcx, rdx
    je      loop_end
    mov     [rdi + rcx], sil
    inc     rcx
    jmp     loop_s

loop_end:
    mov     rsp, rbp
    pop     rbp
    mov     rax, rdi    ; return ptr
    ret     0
