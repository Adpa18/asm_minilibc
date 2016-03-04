[BITS 64]

    global strpbrk:function
section .text

strpbrk:
    xor rax, rax    ; init rax = 0
    cmp rdi, 0
    je end
    cmp rsi, 0
    je end

loop_s:
    mov al, [rdi]
    cmp al, 0
    je end
    mov r8, rsi
loop_s2:
    mov r9b, [r8]
    cmp al, r9b
    je loop_end
    inc r8
    cmp r9b, 0
    jne loop_s2
    inc rdi
    jmp loop_s

loop_end:
    mov rax, rdi    ; return ptr
end:
    ret 0
