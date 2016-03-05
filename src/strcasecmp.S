[BITS 64]

    global strcasecmp:function
section .text

strcasecmp:
    xor rax, rax    ; init rax = 0

loop_s:
    mov al, [rdi]   ; mov char1
    mov r9b, [rsi]  ; mov char2
    ;lowers1
    cmp al, 64      ; if < 'A'
    jl lowers2
    cmp al, 90      ; if > 'Z'
    jg lowers2
    add al, 32      ; then add 32
lowers2:
    cmp r9b, 64     ; if < 'A'
    jl compare
    cmp r9b, 90     ; if > 'Z'
    jg compare
    add r9b, 32     ; then add 32
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
    ret 0
