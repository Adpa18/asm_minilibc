[BITS 64]

    global rindex:function
    extern strlen
section .text

rindex:
    push    rbp
    mov     rbp, rsp
    mov     al, [rdi]
    cmp     al, 0       ; if first char == 0
    je      error
    xor     rcx, rcx
len:
    mov     al, [rdi + rcx] ; mov current char
    cmp     al, 0
    je      loop_s
    inc     rcx
    jmp     len

loop_s:
    dec     rcx
    mov     al, [rdi + rcx] ; mov current char
    cmp     al, sil     ; 8bits register of rsi
    je      loop_end
    cmp     rcx, 0      ; end
    je      error
    cmp     al, 0       ; error
    je      error
    jmp     loop_s

error:
    mov     rax, 0
    jmp     end

loop_end:
    add     rdi, rcx
    mov     rax, rdi    ; return ptr

end:
    mov     rsp, rbp
    pop     rbp
    ret     0
