[BITS 64]

    global strcmp:function
section .text

strcmp:
    push    rdi
    push    rsi
    push    r8
    push    r9
    xor     rax, rax    ; init rax = 0

loop_s:
    mov     r8b, [rdi]
    mov     r9b, [rsi]
    cmp     r8b, r9b
    jne     loop_end    ; if s1[i] != s2[i] loop_end
    cmp     r8b, 0
    je      loop_end     ; if s1[i] == 0
    cmp     r9b, 0
    je      loop_end     ; if s2[i] == 0
    inc     rdi
    inc     rsi
    jmp     loop_s

loop_end:
    sub     r8b, r9b
    movsx   rax, r8b    ; return count
    pop     r9
    pop     r8
    pop     rsi
    pop     rdi
    ret     0
