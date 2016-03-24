[BITS 64]

    global strchr:function
section .text

strchr:
    push    rbp
    mov     rbp, rsp
    xor     rax, rax    ; init rax = 0
    cmp     rdi, 0
    je      error

loop_s:
    mov     al, [rdi]
    cmp     al, sil     ; 8bits register of rsi
    je      loop_end
    cmp     al, 0       ; if end return NULL
    je      error
    inc     rdi
    jmp     loop_s

error:
    mov     rax, 0
    jmp     end

loop_end:
    mov rax, rdi    ; return ptr

end:
    mov     rsp, rbp
    pop     rbp
    ret     0
