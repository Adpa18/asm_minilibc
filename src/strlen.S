[BITS 64]

    global strlen:function
section .text

strlen:
    xor rcx, rcx    ; init rcx = 0
    cmp rdi, 0
    je loop_end

loop_s:
    mov al, [rdi + rcx]
    cmp al, 0
    je loop_end     ; if s[i] == 0 loop_end
    inc rcx
    jmp loop_s

loop_end:
    mov rax, rcx    ; return count
    ret 0
