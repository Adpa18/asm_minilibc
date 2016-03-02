[BITS 64]

    global strcmp:function
section .text

strcmp:
    push rbp        ; prologue
    mov rsp, rbp
    xor rax, rax    ; init rcx = 0

loop_s:
    cmp rdi, rsi
    jne loop_end    ; if s1[i] != s2[i] loop_end
    cmp rdi, 0
    je loop_end     ; if s1[i] == 0
    cmp rsi, 0
    je loop_end     ; if s2[i] == 0
    inc rdi
    inc rsi
    jmp loop_s

loop_end:
    sub rdi, rsi
    mov rax, rdi    ; return count
    mov rbp, rsp    ; epilogue
    pop rbp
    ret 0
