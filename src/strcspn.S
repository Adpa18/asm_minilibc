[BITS 64]

    global strcspn:function
section .text

strcspn:
    push    rcx
    push    r8
    push    r9
    xor     rcx, rcx    ; init rcx = 0
    cmp     rdi, 0      ; if s1 == NULL
    je      end
    cmp     rsi, 0      ; if s2 == NULL
    je      end

loop_s:
    mov     al, [rdi + rcx] ; mov current s1 char
    cmp     al, 0
    je      loop_end
    mov     r8, rsi     ; mov s2 in r8
loop_s2:
    mov     r9b, [r8]   ; get current char
    cmp     al, r9b     ; if s1[i] == s2[j]
    je      loop_end
    inc     r8
    cmp     r9b, 0      ; if s2[j] != 0
    jne     loop_s2
    inc     rcx
    jmp     loop_s

loop_end:
    mov     rax, rcx    ; return pos
end:
    pop     r9
    pop     r8
    pop     rcx
    ret     0
