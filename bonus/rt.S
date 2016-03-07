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
    mov     r8, 500     ;vecsX
    mov     r9, 500     ;vecsY
    mov     r10, 2144   ;vecsZ
    push    rbx
    push    rdx
    xor     rdx, rdx
    mov     rax, rcx
    mov     rbx, rsi
    idiv    rbx         ; qot = rax && ret = rdx
    sub     r8, rdx     ; final vecsX
    sub     r9, rax     ; final vecsY
    xor     eax, eax
    pop     rdx
    pop     rbx
    push    rbx

loop_objs:
    cmp     rbx, 0
    je      put_color
    sub     rbx, 20
    ;a[0] = vecs.x * vecs.x + vecs.y * vecs.y + vecs.z * vecs.z;
    mov     r11, r8
    imul    r11, r11
    mov     r12, r9
    imul    r12, r12
    mov     r13, r10
    imul    r13, r13
    add     r11, r12
    add     r11, r13
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
    mov     r13, total_cam
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
