[BITS 64]

    global strchr:function
section .text

strchr:
    xor rax, rax    ; init rax = 0

loop_s:
    cmp rdi, rsi
    je loop_end
    inc rdi
    jmp loop_s

loop_end:
    mov rax, rdi    ; return ptr
    ret 0
