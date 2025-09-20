matmul_3d_vect_omp(float const*, float const*, float*, int, int, int):
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 336
        mov     qword ptr [rsp - 96], rdx
        mov     qword ptr [rsp + 152], rdi
        test    ecx, ecx
        jle     .LBB0_29
        test    r8d, r8d
        jle     .LBB0_29
        test    r9d, r9d
        jle     .LBB0_29
        mov     eax, r9d
        mov     edx, r8d
        mov     qword ptr [rsp + 112], rdx
        mov     rdx, rax
        shl     rdx, 7
        mov     qword ptr [rsp + 56], rdx
        mov     rdx, rax
        shl     rdx, 9
        mov     qword ptr [rsp + 64], rdx
        mov     qword ptr [rsp - 88], rax
        lea     rax, [4*rax]
        mov     qword ptr [rsp - 72], rax
        lea     rax, [rsi + 16]
        mov     qword ptr [rsp + 168], rax
        mov     rax, qword ptr [rsp - 96]
        lea     rdx, [rax + 16]
        mov     qword ptr [rsp - 64], rdx
        xor     edx, edx
        mov     qword ptr [rsp + 48], rdx
        mov     qword ptr [rsp - 112], rax
        xor     edx, edx
        mov     dword ptr [rsp + 40], r9d
        mov     qword ptr [rsp - 120], rsi
        mov     dword ptr [rsp + 36], r8d
        mov     dword ptr [rsp + 32], ecx
        jmp     .LBB0_4
.LBB0_28:
        mov     rdx, qword ptr [rsp - 56]
        sub     rdx, -128
        add     qword ptr [rsp + 48], 1
        mov     rax, qword ptr [rsp + 64]
        add     qword ptr [rsp - 112], rax
        add     qword ptr [rsp - 64], rax
        mov     ecx, dword ptr [rsp + 32]
        cmp     edx, ecx
        jge     .LBB0_29
.LBB0_4:
        lea     eax, [rdx + 128]
        cmp     eax, ecx
        cmovg   eax, ecx
        mov     qword ptr [rsp - 56], rdx
        cmp     eax, edx
        jle     .LBB0_28
        mov     r10, qword ptr [rsp + 56]
        imul    r10, qword ptr [rsp + 48]
        mov     rcx, r10
        or      rcx, 4
        mov     qword ptr [rsp + 176], rcx
        cdqe
        mov     qword ptr [rsp + 120], rax
        mov     rax, qword ptr [rsp + 168]
        mov     qword ptr [rsp - 48], rax
        mov     qword ptr [rsp - 104], rsi
        xor     eax, eax
        mov     qword ptr [rsp + 72], rax
        xor     ecx, ecx
        mov     qword ptr [rsp - 40], r10
        jmp     .LBB0_6
.LBB0_27:
        mov     rcx, qword ptr [rsp - 32]
        sub     rcx, -128
        add     qword ptr [rsp + 72], 1
        mov     rax, qword ptr [rsp + 64]
        add     qword ptr [rsp - 104], rax
        add     qword ptr [rsp - 48], rax
        mov     r8d, dword ptr [rsp + 36]
        cmp     ecx, r8d
        jge     .LBB0_28
.LBB0_6:
        lea     eax, [rcx + 128]
        cmp     eax, r8d
        cmovg   eax, r8d
        mov     qword ptr [rsp - 32], rcx
        cmp     eax, ecx
        jle     .LBB0_27
        mov     r8, qword ptr [rsp + 56]
        imul    r8, qword ptr [rsp + 72]
        mov     rcx, r8
        or      rcx, 4
        mov     qword ptr [rsp + 184], rcx
        cdqe
        mov     qword ptr [rsp + 160], rax
        mov     eax, 4
        mov     qword ptr [rsp - 80], rax
        mov     r14, -4
        mov     edi, 128
        mov     rax, qword ptr [rsp - 64]
        mov     qword ptr [rsp + 88], rax
        mov     rax, qword ptr [rsp - 48]
        mov     qword ptr [rsp + 96], rax
        xor     eax, eax
        mov     qword ptr [rsp + 80], rax
        mov     r11, qword ptr [rsp - 112]
        mov     rax, qword ptr [rsp - 104]
        mov     qword ptr [rsp + 104], rax
        xor     ebp, ebp
        xor     ebx, ebx
        mov     qword ptr [rsp - 24], r8
        jmp     .LBB0_8
.LBB0_26:
        mov     rbx, qword ptr [rsp - 128]
        sub     rbx, -128
        sub     qword ptr [rsp - 80], -128
        mov     rbp, qword ptr [rsp + 192]
        add     rbp, 1
        add     qword ptr [rsp + 104], 512
        mov     r11, qword ptr [rsp + 200]
        add     r11, 512
        mov     r14, qword ptr [rsp + 208]
        add     r14, -128
        mov     edi, dword ptr [rsp + 44]
        sub     edi, -128
        add     qword ptr [rsp + 80], -128
        add     qword ptr [rsp + 96], 512
        add     qword ptr [rsp + 88], 512
        mov     r9d, dword ptr [rsp + 40]
        cmp     ebx, r9d
        mov     rsi, qword ptr [rsp - 120]
        mov     r10, qword ptr [rsp - 40]
        mov     r8, qword ptr [rsp - 24]
        jge     .LBB0_27
.LBB0_8:
        cmp     r9d, edi
        mov     eax, edi
        cmovl   eax, r9d
        movsxd  r15, eax
        mov     rax, rbp
        shl     rax, 7
        lea     esi, [rbx + 128]
        cmp     r9d, esi
        mov     ecx, esi
        cmovl   ecx, r9d
        movsxd  r12, ecx
        lea     rcx, [r10 + rbx]
        mov     qword ptr [rsp + 128], rcx
        lea     rcx, [r8 + rbx]
        mov     qword ptr [rsp + 144], rcx
        mov     ecx, ebp
        shl     ecx, 7
        sub     ecx, -128
        cmp     r9d, ecx
        cmovl   ecx, r9d
        cmp     esi, r9d
        cmovg   esi, r9d
        mov     edx, ebx
        or      edx, 4
        cmp     edx, esi
        mov     qword ptr [rsp - 128], rbx
        mov     qword ptr [rsp + 208], r14
        mov     dword ptr [rsp + 44], edi
        mov     qword ptr [rsp + 200], r11
        mov     qword ptr [rsp + 192], rbp
        jle     .LBB0_9
        cmp     esi, ebx
        jle     .LBB0_26
        mov     rdx, r12
        mov     edi, esi
        mov     rsi, r15
        add     rsi, qword ptr [rsp + 80]
        and     rsi, -8
        mov     qword ptr [rsp - 16], rsi
        mov     rsi, r12
        sub     rsi, rax
        movsxd  r13, ecx
        mov     rax, qword ptr [rsp - 40]
        add     rax, r13
        mov     qword ptr [rsp - 8], rax
        add     r13, qword ptr [rsp - 24]
        movsxd  rdx, edi
        mov     r12, rsi
        and     rsi, -8
        mov     rax, qword ptr [rsp - 128]
        mov     qword ptr [rsp + 24], rsi
        add     rax, rsi
        mov     qword ptr [rsp + 16], rax
        mov     rcx, qword ptr [rsp - 112]
        mov     rdi, qword ptr [rsp + 88]
        xor     esi, esi
        mov     rax, qword ptr [rsp - 56]
        jmp     .LBB0_37
.LBB0_46:
        mov     rax, qword ptr [rsp]
        add     rax, 1
        mov     rsi, qword ptr [rsp + 8]
        add     rsi, 1
        mov     rbp, qword ptr [rsp - 72]
        add     rdi, rbp
        add     rcx, rbp
        cmp     rax, qword ptr [rsp + 120]
        jge     .LBB0_26
.LBB0_37:
        mov     qword ptr [rsp + 8], rsi
        mov     rbx, rsi
        imul    rbx, qword ptr [rsp - 88]
        mov     rsi, qword ptr [rsp + 128]
        add     rsi, rbx
        mov     rbp, qword ptr [rsp - 96]
        lea     r14, [4*rsi]
        add     r14, rbp
        add     rbx, qword ptr [rsp - 8]
        lea     r11, [4*rbx]
        add     r11, rbp
        mov     qword ptr [rsp], rax
        imul    rax, qword ptr [rsp + 112]
        mov     r8, qword ptr [rsp - 104]
        mov     r10, qword ptr [rsp + 96]
        xor     r9d, r9d
        mov     r15, qword ptr [rsp - 32]
        mov     rsi, qword ptr [rsp - 120]
        jmp     .LBB0_38
.LBB0_45:
        add     r15, 1
        add     r9, 1
        mov     rbx, qword ptr [rsp - 72]
        add     r10, rbx
        add     r8, rbx
        cmp     r15, qword ptr [rsp + 160]
        jge     .LBB0_46
.LBB0_38:
        lea     rbx, [r15 + rax]
        mov     rbp, qword ptr [rsp + 152]
        movss   xmm0, dword ptr [rbp + 4*rbx]
        mov     rbx, qword ptr [rsp - 128]
        cmp     r12, 8
        jb      .LBB0_44
        mov     rbx, r9
        imul    rbx, qword ptr [rsp - 88]
        lea     rbp, [rbx + r13]
        lea     rbp, [rsi + 4*rbp]
        cmp     r14, rbp
        jae     .LBB0_41
        add     rbx, qword ptr [rsp + 144]
        lea     rbp, [rsi + 4*rbx]
        mov     rbx, qword ptr [rsp - 128]
        cmp     rbp, r11
        jb      .LBB0_44
.LBB0_41:
        movaps  xmm1, xmm0
        shufps  xmm1, xmm0, 0
        xor     ebx, ebx
        mov     rbp, qword ptr [rsp - 16]
.LBB0_42:
        movups  xmm2, xmmword ptr [r10 + 4*rbx - 16]
        movups  xmm3, xmmword ptr [r10 + 4*rbx]
        movups  xmm4, xmmword ptr [rdi + 4*rbx - 16]
        movups  xmm5, xmmword ptr [rdi + 4*rbx]
        mulps   xmm2, xmm1
        addps   xmm2, xmm4
        mulps   xmm3, xmm1
        addps   xmm3, xmm5
        movups  xmmword ptr [rdi + 4*rbx - 16], xmm2
        movups  xmmword ptr [rdi + 4*rbx], xmm3
        add     rbx, 8
        cmp     rbp, rbx
        jne     .LBB0_42
        mov     rbx, qword ptr [rsp + 16]
        cmp     r12, qword ptr [rsp + 24]
        je      .LBB0_45
.LBB0_44:
        movss   xmm1, dword ptr [r8 + 4*rbx]
        mulss   xmm1, xmm0
        addss   xmm1, dword ptr [rcx + 4*rbx]
        movss   dword ptr [rcx + 4*rbx], xmm1
        add     rbx, 1
        cmp     rbx, rdx
        jl      .LBB0_44
        jmp     .LBB0_45
.LBB0_9:
        mov     qword ptr [rsp - 16], r15
        lea     rcx, [r14 + r15]
        shr     rcx, 2
        add     rcx, 1
        and     rcx, -4
        mov     qword ptr [rsp + 304], rcx
        neg     rax
        lea     rcx, [r12 + rax]
        add     rcx, -4
        mov     rdx, rcx
        shr     rdx, 2
        add     rdx, 1
        mov     rax, qword ptr [rsp + 176]
        add     rax, rbx
        mov     qword ptr [rsp + 8], rcx
        and     rcx, -4
        add     rax, rcx
        mov     qword ptr [rsp + 224], rax
        mov     rax, qword ptr [rsp + 184]
        add     rax, rbx
        add     rcx, rax
        mov     qword ptr [rsp + 328], rcx
        lea     rax, [r10 + r12]
        mov     qword ptr [rsp + 216], rax
        mov     qword ptr [rsp - 8], r12
        lea     rax, [r8 + r12]
        mov     qword ptr [rsp + 256], rax
        mov     dword ptr [rsp + 16], esi
        movsxd  r12, esi
        mov     qword ptr [rsp + 296], rdx
        and     rdx, -4
        lea     rax, [rbx + 4*rdx]
        mov     qword ptr [rsp + 280], rax
        mov     rax, qword ptr [rsp - 80]
        lea     rcx, [rax + 4*rdx]
        mov     qword ptr [rsp + 272], rcx
        mov     qword ptr [rsp + 288], rdx
        lea     rax, [rax + 4*rdx - 4]
        mov     qword ptr [rsp + 264], rax
        mov     rax, qword ptr [rsp - 64]
        mov     qword ptr [rsp + 136], rax
        mov     rdx, qword ptr [rsp - 112]
        mov     r9, r11
        xor     ecx, ecx
        mov     rdi, qword ptr [rsp - 56]
        jmp     .LBB0_10
.LBB0_25:
        mov     rdi, qword ptr [rsp + 232]
        add     rdi, 1
        mov     rcx, qword ptr [rsp + 240]
        add     rcx, 1
        mov     rax, qword ptr [rsp - 72]
        add     r9, rax
        add     rdx, rax
        add     qword ptr [rsp + 136], rax
        cmp     rdi, qword ptr [rsp + 120]
        jge     .LBB0_26
.LBB0_10:
        mov     qword ptr [rsp + 240], rcx
        mov     rax, rcx
        imul    rax, qword ptr [rsp - 88]
        mov     rcx, qword ptr [rsp + 128]
        add     rcx, rax
        mov     rsi, qword ptr [rsp - 96]
        lea     rcx, [rsi + 4*rcx]
        mov     qword ptr [rsp], rcx
        mov     rcx, qword ptr [rsp + 224]
        add     rcx, rax
        lea     rcx, [rsi + 4*rcx]
        mov     qword ptr [rsp + 320], rcx
        mov     rcx, qword ptr [rsp - 40]
        add     rcx, rax
        mov     qword ptr [rsp + 312], rcx
        add     rax, qword ptr [rsp + 216]
        lea     rax, [rsi + 4*rax]
        mov     qword ptr [rsp + 248], rax
        mov     qword ptr [rsp + 232], rdi
        imul    rdi, qword ptr [rsp + 112]
        mov     qword ptr [rsp + 24], rdi
        mov     r8, qword ptr [rsp - 48]
        mov     r10, qword ptr [rsp - 104]
        mov     rbp, qword ptr [rsp + 104]
        xor     r15d, r15d
        mov     r11, qword ptr [rsp - 32]
        mov     r13, qword ptr [rsp - 128]
        jmp     .LBB0_11
.LBB0_24:
        add     r11, 1
        add     r15, 1
        mov     rax, qword ptr [rsp - 72]
        add     rbp, rax
        add     r10, rax
        add     r8, rax
        cmp     r11, qword ptr [rsp + 160]
        jge     .LBB0_25
.LBB0_11:
        mov     r14, r15
        imul    r14, qword ptr [rsp - 88]
        mov     rax, qword ptr [rsp + 24]
        add     rax, r11
        mov     rcx, qword ptr [rsp + 152]
        movss   xmm9, dword ptr [rcx + 4*rax]
        mov     rax, r13
        mov     rsi, qword ptr [rsp - 80]
        cmp     qword ptr [rsp + 8], 12
        jb      .LBB0_17
        mov     rax, qword ptr [rsp + 328]
        add     rax, r14
        mov     rcx, qword ptr [rsp - 120]
        lea     rax, [rcx + 4*rax]
        cmp     qword ptr [rsp], rax
        jae     .LBB0_14
        mov     rax, qword ptr [rsp + 144]
        add     rax, r14
        mov     rcx, qword ptr [rsp - 120]
        lea     rcx, [rcx + 4*rax]
        mov     rax, r13
        mov     rsi, qword ptr [rsp - 80]
        cmp     rcx, qword ptr [rsp + 320]
        jb      .LBB0_17
.LBB0_14:
        movaps  xmm8, xmm9
        shufps  xmm8, xmm9, 0
        mov     r13, qword ptr [rsp + 304]
        xor     esi, esi
.LBB0_15:
        movups  xmm6, xmmword ptr [rbp + rsi]
        movups  xmm2, xmmword ptr [rbp + rsi + 16]
        movups  xmm7, xmmword ptr [rbp + rsi + 32]
        movups  xmm0, xmmword ptr [rbp + rsi + 48]
        movaps  xmm4, xmm0
        movlhps xmm4, xmm7
        movaps  xmm3, xmm6
        unpcklps        xmm3, xmm2
        shufps  xmm3, xmm4, 36
        movaps  xmm5, xmm7
        unpcklps        xmm5, xmm0
        movaps  xmm13, xmm2
        shufps  xmm13, xmm6, 17
        shufps  xmm13, xmm5, 226
        movaps  xmm1, xmm0
        unpckhpd        xmm1, xmm7
        movaps  xmm5, xmm6
        unpckhps        xmm5, xmm2
        shufps  xmm5, xmm1, 36
        unpckhps        xmm7, xmm0
        shufps  xmm2, xmm6, 51
        shufps  xmm2, xmm7, 226
        movups  xmm10, xmmword ptr [r9 + rsi]
        movups  xmm6, xmmword ptr [r9 + rsi + 16]
        movups  xmm1, xmmword ptr [r9 + rsi + 32]
        movups  xmm11, xmmword ptr [r9 + rsi + 48]
        movaps  xmm7, xmm11
        movlhps xmm7, xmm1
        movaps  xmm12, xmm10
        unpcklps        xmm12, xmm6
        shufps  xmm12, xmm7, 36
        movaps  xmm7, xmm1
        unpcklps        xmm7, xmm11
        movaps  xmm0, xmm6
        shufps  xmm0, xmm10, 17
        shufps  xmm0, xmm7, 226
        movaps  xmm7, xmm11
        unpckhpd        xmm7, xmm1
        movaps  xmm4, xmm10
        unpckhps        xmm4, xmm6
        shufps  xmm4, xmm7, 36
        unpckhps        xmm1, xmm11
        shufps  xmm6, xmm10, 51
        shufps  xmm6, xmm1, 226
        mulps   xmm3, xmm8
        addps   xmm3, xmm12
        mulps   xmm13, xmm8
        addps   xmm13, xmm0
        mulps   xmm5, xmm8
        addps   xmm5, xmm4
        mulps   xmm2, xmm8
        addps   xmm2, xmm6
        movaps  xmm0, xmm5
        unpcklps        xmm0, xmm2
        movaps  xmm1, xmm13
        shufps  xmm1, xmm3, 17
        shufps  xmm1, xmm0, 226
        movaps  xmm0, xmm2
        movlhps xmm0, xmm5
        movaps  xmm4, xmm3
        unpcklps        xmm4, xmm13
        shufps  xmm4, xmm0, 36
        movaps  xmm0, xmm5
        unpckhps        xmm0, xmm2
        movaps  xmm6, xmm13
        shufps  xmm6, xmm3, 51
        shufps  xmm6, xmm0, 226
        unpckhpd        xmm2, xmm5
        unpckhps        xmm3, xmm13
        shufps  xmm3, xmm2, 36
        movups  xmmword ptr [r9 + rsi + 32], xmm3
        movups  xmmword ptr [r9 + rsi + 48], xmm6
        movups  xmmword ptr [r9 + rsi], xmm4
        movups  xmmword ptr [r9 + rsi + 16], xmm1
        add     rsi, 64
        add     r13, -4
        jne     .LBB0_15
        mov     rax, qword ptr [rsp + 280]
        mov     rsi, qword ptr [rsp + 272]
        mov     rcx, qword ptr [rsp + 264]
        mov     rdi, qword ptr [rsp + 288]
        cmp     qword ptr [rsp + 296], rdi
        mov     r13, qword ptr [rsp - 128]
        je      .LBB0_20
.LBB0_17:
        lea     rbx, [r10 + 4*rax]
        lea     rax, [rdx + 4*rax]
        mov     edi, 3
.LBB0_18:
        movss   xmm0, dword ptr [rbx + 4*rdi - 12]
        mulss   xmm0, xmm9
        addss   xmm0, dword ptr [rax + 4*rdi - 12]
        movss   dword ptr [rax + 4*rdi - 12], xmm0
        movss   xmm0, dword ptr [rbx + 4*rdi - 8]
        mulss   xmm0, xmm9
        addss   xmm0, dword ptr [rax + 4*rdi - 8]
        movss   dword ptr [rax + 4*rdi - 8], xmm0
        movss   xmm0, dword ptr [rbx + 4*rdi - 4]
        mulss   xmm0, xmm9
        addss   xmm0, dword ptr [rax + 4*rdi - 4]
        movss   dword ptr [rax + 4*rdi - 4], xmm0
        movss   xmm0, dword ptr [rbx + 4*rdi]
        mulss   xmm0, xmm9
        addss   xmm0, dword ptr [rax + 4*rdi]
        movss   dword ptr [rax + 4*rdi], xmm0
        add     rsi, 4
        add     rdi, 4
        cmp     rsi, r12
        jle     .LBB0_18
        add     rsi, -4
        mov     rcx, rsi
.LBB0_20:
        cmp     dword ptr [rsp + 16], ecx
        jle     .LBB0_24
        movsxd  rdi, ecx
        mov     r13, qword ptr [rsp - 8]
        sub     r13, rdi
        cmp     r13, 8
        jb      .LBB0_22
        mov     rax, qword ptr [rsp + 256]
        add     rax, r14
        mov     rbx, qword ptr [rsp - 120]
        lea     rax, [rbx + 4*rax]
        mov     rcx, qword ptr [rsp + 312]
        add     rcx, rdi
        mov     rsi, qword ptr [rsp - 96]
        lea     rcx, [rsi + 4*rcx]
        cmp     rcx, rax
        jae     .LBB0_32
        add     r14, qword ptr [rsp - 24]
        add     r14, rdi
        lea     rax, [rbx + 4*r14]
        cmp     rax, qword ptr [rsp + 248]
        jae     .LBB0_32
.LBB0_22:
        mov     rsi, rdi
        mov     r13, qword ptr [rsp - 128]
.LBB0_23:
        movss   xmm0, dword ptr [r10 + 4*rsi]
        mulss   xmm0, xmm9
        addss   xmm0, dword ptr [rdx + 4*rsi]
        movss   dword ptr [rdx + 4*rsi], xmm0
        add     rsi, 1
        cmp     rsi, r12
        jl      .LBB0_23
        jmp     .LBB0_24
.LBB0_32:
        mov     r14, r13
        and     r14, -8
        lea     rsi, [rdi + r14]
        movaps  xmm1, xmm9
        shufps  xmm1, xmm9, 0
        mov     rax, qword ptr [rsp - 16]
        sub     rax, rdi
        and     rax, -8
        lea     rcx, [r8 + 4*rdi]
        mov     rbx, qword ptr [rsp + 136]
        lea     rdi, [rbx + 4*rdi]
        xor     ebx, ebx
.LBB0_33:
        movups  xmm0, xmmword ptr [rcx + 4*rbx - 16]
        movups  xmm2, xmmword ptr [rcx + 4*rbx]
        movups  xmm3, xmmword ptr [rdi + 4*rbx - 16]
        movups  xmm4, xmmword ptr [rdi + 4*rbx]
        mulps   xmm0, xmm1
        addps   xmm0, xmm3
        mulps   xmm2, xmm1
        addps   xmm2, xmm4
        movups  xmmword ptr [rdi + 4*rbx - 16], xmm0
        movups  xmmword ptr [rdi + 4*rbx], xmm2
        add     rbx, 8
        cmp     rax, rbx
        jne     .LBB0_33
        cmp     r13, r14
        mov     r13, qword ptr [rsp - 128]
        jne     .LBB0_23
        jmp     .LBB0_24
.LBB0_29:
        add     rsp, 336
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
