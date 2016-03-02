[BITS 64]

    global strlen:function
section .text

strlen:
    push rbp        ; prologue
    mov rsp, rbp
    xor rcx, rcx    ; init rcx = 0

loop_s:
    cmp rdi, 0
    je loop_end     ; if s[i] == 0 loop_end
    inc rdi
    inc rcx
    jmp loop_s

loop_end:
    mov rax, rcx    ; return count
    mov rbp, rsp    ; epilogue
    pop rbp
    ret 0
