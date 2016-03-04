[BITS 64]

    global strcasecmp:function
section .text

strcasecmp:
    xor rax, rax    ; init rax = 0

loop_s:
    mov al, [rdi]
    mov r9b, [rsi]
    ;lowers1
    cmp al, 64
    jl lowers2
    cmp al, 90
    jg lowers2
    add al, 32
lowers2:
    cmp r9b, 64
    jl compare
    cmp r9b, 90
    jg compare
    add r9b, 32
compare:
    cmp al, r9b
    jne loop_end    ; if s1[i] != s2[i] loop_end
    cmp al, 0
    je loop_end     ; if s1[i] == 0
    cmp r9b, 0
    je loop_end     ; if s2[i] == 0
    inc rdi
    inc rsi
    jmp loop_s

loop_end:
    sub rax, r9
    ;movsx rax, al    ; return count
    ret 0
