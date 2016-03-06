[BITS 64]

    global rt:function

section .data
    filename:   db 'rendu.bmp'
    campx:      equ 0
    campy:      equ 0
    campz:      equ -512
    total_cam   equ 262144
    spx:        equ 0
    spy:        equ 0
    spz:        equ 0
    spr:        equ 100
    spr_pow:    equ 10000
    spcolor:    equ 0xFF00FF00

section .text
rt:
    ;rt(void *img, uint size);
    ; rdi => img ptr
    ; rsi => size
    mov rcx, rsi
    imul rcx, rsi
    imul rcx, 4
loop_s:
    sub rcx, 4
    cmp rcx, 0
    je end
calc_color:
    xor rdx, rdx
    mov rax, rcx
    mov rbx, rsi
    div rbx         ; qot = rax && ret = rdx
    mov r8, 500     ;vecsX
    mov r9, 500     ;vecsY
    mov r10, 2144   ;vecsZ
    sub r8, rax
    sub r9, rdx
    ;a[0]
    mov r11, r8
    imul r11, r8
    mov r12, r9
    imul r12, r9
    mov r13, r10
    imul r13, r10
    add r11, r12
    add r11, r13
    ;a[1]
    mov r12, campx
    imul r12, r8
    mov r13, campy
    imul r13, r9
    mov r14, campz
    imul r14, r10
    add r12, r13
    add r12, r14
    imul r12, 2
    ;a[2]
    mov r13, total_cam
    sub r13, spr_pow
    ;a[3]
    mov r14, r12
    mov r15, 4
    imul r15, r11
    imul r15, r13
    sub r14, r15
    cmp r14, 0
    xor eax, eax
    jl put_color
    mov eax, spcolor
put_color:
    mov dword [rdi + rcx], eax
    jmp loop_s

end:
    ret 0
