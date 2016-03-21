[BITS 64]

    global strpbrk:function
section .text

strpbrk:
    push    rdi
    push    r8
    push    r9
    xor     rax, rax    ; init rax = 0
    cmp     rdi, 0      ; if s1 == NULL
    je      end
    cmp     rsi, 0      ; if s2 == NULL
    je      end

loop_s:
    mov     al, [rdi]
    cmp     al, 0       ; if end
    je      end
    mov     r8, rsi     ; mov s2 in r8
loop_s2:
    mov     r9b, [r8]   ; get current char
    cmp     al, r9b     ; if s1[i] == s2[j]
    je      loop_end
    inc     r8
    cmp     r9b, 0      ; if s2[j] != 0
    jne     loop_s2
    inc     rdi
    jmp     loop_s

loop_end:
    mov     rax, rdi    ; return ptr
end:
    pop     r9
    pop     r8
    pop     rdi
    ret     0
