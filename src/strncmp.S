[BITS 64]

    global strncmp:function
section .text

strncmp:
    push    rbp
    mov     rbp, rsp
    xor rax, rax    ; init rax = 0
    cmp rdx, 0
    je end          ; if n == 0

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
    dec     rdx
    cmp     rdx, 0
    je      loop_end     ; if n = 0
    jmp     loop_s

loop_end:
    sub     r8b, r9b
    movsx   rax, r8b    ; return count

end:
    mov     rsp, rbp
    pop     rbp
    ret 0
