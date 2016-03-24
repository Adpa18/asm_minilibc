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
    push    rdi        ; save first argv
    push    rsi        ; save second arv
    call    strlen WRT ..plt   ;To call an external routine, you must use another special PIC relocation type, WRT ..plt
    mov     rcx, rax    ; mov len
    dec     rcx
    pop     rsi         ; restore second argv
    pop     rdi         ; restore first argv

loop_s:
    mov     al, [rdi + rcx] ; mov current char
    cmp     al, sil     ; 8bits register of rsi
    je      loop_end
    cmp     rcx, 0      ; end
    je      error
    cmp     al, 0       ; error
    je      error
    dec     rcx
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
