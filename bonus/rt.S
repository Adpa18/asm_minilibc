[BITS 64]

  extern printf
	global rt:function

section .data
    filename:   db 	'rendu.bmp'
    campx:      equ 0
    campy:      equ 0
    campz:      equ -512
    total_cam   equ 262144
    spx:        equ 0
    spy:        equ 0
    spz:        equ 0
    spr:        equ 100
    spr_pow:    equ 10000
    spcolor:    equ 0xFFF34F00
    LC0:      db	"%d", 10, 0
section .text
rt:
    ;rt(void *img, uint size);
    ; rdi => img ptr
    ; rsi => size
    mov rcx, rsi
    mov rbx, 1000000
    imul rcx, rsi
    imul rcx, 4
loop_s:
    sub rcx, 4
    cmp rcx, 0
    je end
    dec rbx
calc_color:
    mov r8, 500     ;vecsX
    mov r9, 500     ;vecsY
    mov r10, 2144   ;vecsZ
    xor rdx, rdx
    mov r15, rbx
    mov rax, rbx
    mov rbx, rsi
    idiv rbx         ; qot = rax && ret = rdx
    sub r8, rdx
    sub r9, rax
    mov rbx, r15
    ;a[0] = vecs.x * vecs.x + vecs.y * vecs.y + vecs.z * vecs.z;
    mov r11, r8
    imul r11, r11
    mov r12, r9
    imul r12, r12
    mov r13, r10
    imul r13, r13
    add r11, r12
    add r11, r13
    ;a[1] = 2.0 * (CAMPX * vecs.x + CAMPY * vecs.y + CAMPZ * vecs.z);
    mov r12, campx
    imul r12, r8
    mov r13, campy
    imul r13, r9
    mov r14, campz
    imul r14, r10
    add r12, r13
    add r12, r14
    imul r12, 2
    ;a[2] = CAMPX * CAMPX + CAMPY * CAMPY + CAMPZ * CAMPZ - obj.r * obj.r;
    mov r13, total_cam
    sub r13, spr_pow
    ;a[3] = a[1] * a[1] - 4.0 * a[0] * a[2];
    mov r14, r12
    imul r14, r12
    mov r15, 4
    imul r15, r11
    imul r15, r13
    sub r14, r15
    xor eax, eax
    cmp r14, 0
    jl put_color
    mov eax, spcolor
put_color:
    mov dword [rdi + rcx], eax
    jmp loop_s

end:
    ret 0
