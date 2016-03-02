[BITS 64]

    global strncmp:function
section .text

strncmp:
    xor rax, rax    ; init rax = 0
    cmp rdx, 0
    je end          ; if n == 0

loop_s:
    cmp rdi, rsi
    jne loop_end    ; if s1[i] != s2[i] loop_end
    cmp rdi, 0
    je loop_end     ; if s1[i] == 0
    cmp rsi, 0
    je loop_end     ; if s2[i] == 0
    inc rdi
    inc rsi
    dec rdx
    cmp rdx, 0
    je loop_end     ; if n = 0
    jmp loop_s

loop_end:
    sub rdi, rsi
    mov rax, rdi    ; return count

end:
    ret 0
