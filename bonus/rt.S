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
    ; rdx => objs
    ; rcx => nb_objs
    mov     rbx, rcx
    imul    rbx, 20
    mov     rcx, rsi
    imul    rcx, rsi    ; rcx =>  fullSize
loop_s:
    dec     rcx
    cmp     rcx, 0      ; loop on all img
    je      end
calc_color:
    ; init vecs
    mov     r8d, 500     ;vecsX
    mov     r9d, 500     ;vecsY
    mov     r10d, 2144   ;vecsZ
    push    rbx
    push    rdx
    xor     edx, edx
    mov     eax, ecx
    mov     ebx, esi
    idiv    ebx         ; qot = rax && ret = rdx
    sub     r8d, edx     ; final vecsX
    sub     r9d, eax     ; final vecsY
    xor     eax, eax
    pop     rdx
    pop     rbx
    push    rbx

loop_objs:
    cmp     ebx, 0
    je      put_color
    sub     ebx, 20
    push    r8
    push    r9
    push    r10
    sub     r8d, [rdx + rbx]
    sub     r9d, [rdx + rbx + 4]
    sub     r10d, [rdx + rbx + 8]
    ;a[0] = vecs.x * vecs.x + vecs.y * vecs.y + vecs.z * vecs.z;
    mov     r11d, r8d
    imul    r11d, r11d
    mov     r12d, r9d
    imul    r12d, r12d
    mov     r13d, r10d
    imul    r13d, r13d
    add     r11d, r12d
    add     r11d, r13d
    ;a[1] = 2.0 * (CAMPX * vecs.x + CAMPY * vecs.y + CAMPZ * vecs.z);
    mov     r12, campx
    imul    r12, r8
    mov     r13, campy
    imul    r13, r9
    mov     r14, campz
    imul    r14, r10
    add     r12, r13
    add     r12, r14
    imul    r12, 2
    ;a[2] = CAMPX * CAMPX + CAMPY * CAMPY + CAMPZ * CAMPZ - obj.r * obj.r;
    mov     r13d, total_cam
    mov     r14d, dword [rdx + rbx + 12]
    imul    r14d, r14d
    sub     r13d, r14d
    ;a[3] = a[1] * a[1] - 4.0 * a[0] * a[2];
    mov     r14, r12
    imul    r14, r12
    mov     r15, 4
    imul    r15, r11
    imul    r15, r13
    sub     r14, r15
    pop     r10
    pop     r9
    pop     r8
    cmp     r14, 0
    jl      loop_objs
    mov     eax, [rdx + rbx + 16]
    jmp     loop_objs
put_color:
    push    rdx
    mov     rdx, rcx
    imul    rdx, 4
    mov     dword [rdi + rdx], eax
    pop     rdx
    pop     rbx
    jmp     loop_s

end:
    ret 0
