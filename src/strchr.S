[BITS 64]

    global strchr:function
section .text

strchr:
    xor rax, rax    ; init rax = 0

loop_s:
    mov al, [rdi]
    cmp al, sil     ; 8bits register of rsi
    je loop_end
    cmp al, 0
    je loop_end
    inc rdi
    jmp loop_s

loop_end:
    mov rax, rdi    ; return ptr
    ret 0
