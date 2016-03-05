[BITS 64]

    global strstr:function
section .text

strstr:
    xor rax, rax    ; init rax = 0
    cmp rdi, rsi    ; if (s1 == s1)
    je loop_end
    cmp rdi, 0      ; if s1 == NULL
    je end
    cmp rsi, 0      ; if s2 == NULL
    je end

loop_s:
    mov al, [rdi]
    cmp al, 0       ; if end
    je end
    mov r8, rdi     ; mov s1 in r8
    mov r9, rsi     ; mov s2 in r9
loop_s2:
    mov r10b, [r8]   ; get current char s1
    mov r11b, [r9]   ; get current char s2
    cmp r11b, 0      ; if s2[j] == 0
    je loop_end
    inc r8
    inc r9
    cmp r10b, r11b     ; if s1[i] == s2[j]
    je loop_s2
    inc rdi
    jmp loop_s

loop_end:
    mov rax, rdi    ; return ptr
end:
    ret 0
