[BITS 64]

    global memset:function
section .text

memset:
    xor rcx, rcx    ; init rcx = 0

loop_s:
    cmp rcx, rdx
    je loop_end
    ;cmp [rdi + rcx], 0
    ;je loop_end
    mov [rdi + rcx], rsi
    inc rcx
    jmp loop_s

loop_end:
    mov rax, rdi    ; return ptr
    ret 0
