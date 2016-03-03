[BITS 64]

    global rindex:function
    extern strlen
section .text

rindex:
    mov r8b, [rdi]
    cmp r8b, 0
    je error
    push rdi
    push rsi
    call strlen WRT ..plt   ;To call an external routine, you must use another special PIC relocation type, WRT ..plt
    mov rcx, rax
    dec rcx
    pop rsi
    pop rdi

loop_s:
    mov r8b, [rdi + rcx]
    cmp r8b, sil     ; 8bits register of rsi
    je loop_end
    cmp rcx, 0
    je error
    cmp r8b, 0
    je error
    dec rcx
    jmp loop_s

error:
    mov rdi, 0
    jmp end

loop_end:
    add rdi, rcx

end:
    mov rax, rdi    ; return ptr
    ret 0
