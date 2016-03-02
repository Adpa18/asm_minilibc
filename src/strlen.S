[BITS 64]

    global strlen:function
section .text

strlen:
    xor rcx, rcx    ; init rcx = 0

loop_s:
    mov al, [rdi]
    cmp al, 0
    je loop_end     ; if s[i] == 0 loop_end
    inc rdi
    inc rcx
    jmp loop_s

loop_end:
    mov rax, rcx    ; return count
    ret 0
