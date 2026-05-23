.data
_str_0:
    .asciz "overlap"
_str_0_len:
    .quad 7
_str_1:
    .asciz "separate"
_str_1_len:
    .quad 8

.text
.globl main

.globl _start
_start:
    movq (%rsp), %rdi
    leaq 8(%rsp), %rsi
    call main
    movq %rax, %rdi
    movq $60, %rax
    syscall

aabb_check:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    ## function aabb_check
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    movq 16(%rbp), %r10
    movq %r10, -72(%rbp)
    movq -72(%rbp), %r10
    movq %r10, -56(%rbp)
    movq 24(%rbp), %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -88(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -96(%rbp)
    movq -88(%rbp), %r10
    movq -96(%rbp), %r11
    addq %r11, %r10
    movq %r10, -104(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -112(%rbp)
    movq -104(%rbp), %r10
    movq -112(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -120(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -128(%rbp)
    movq -56(%rbp), %r10
    movq %r10, -136(%rbp)
    movq -128(%rbp), %r10
    movq -136(%rbp), %r11
    addq %r11, %r10
    movq %r10, -144(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -152(%rbp)
    movq -144(%rbp), %r10
    movq -152(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -160(%rbp)
    movq -120(%rbp), %r10
    movq -160(%rbp), %r11
    orq %r11, %r10
    movq %r10, -168(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -176(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -184(%rbp)
    movq -176(%rbp), %r10
    movq -184(%rbp), %r11
    addq %r11, %r10
    movq %r10, -192(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -200(%rbp)
    movq -192(%rbp), %r10
    movq -200(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -208(%rbp)
    movq -168(%rbp), %r10
    movq -208(%rbp), %r11
    orq %r11, %r10
    movq %r10, -216(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -224(%rbp)
    movq -64(%rbp), %r10
    movq %r10, -232(%rbp)
    movq -224(%rbp), %r10
    movq -232(%rbp), %r11
    addq %r11, %r10
    movq %r10, -240(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -248(%rbp)
    movq -240(%rbp), %r10
    movq -248(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -256(%rbp)
    movq -216(%rbp), %r10
    movq -256(%rbp), %r11
    orq %r11, %r10
    movq %r10, -264(%rbp)
    movq -264(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_1
    movq $0, %r10
    movq %r10, %rax
    addq $304, %rsp
    popq %rbp
    ret
.Lendif_1:
    movq $1, %r10
    movq %r10, %rax
    addq $304, %rsp
    popq %rbp
    ret

expect_eq:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    ## function expect_eq
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -40(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -48(%rbp)
    movq -40(%rbp), %r10
    movq -48(%rbp), %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_3
    movq -32(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -64(%rbp), %r10
    movq %r10, %rax
    addq $112, %rsp
    popq %rbp
    ret
.Lendif_3:
    movq -32(%rbp), %r10
    movq %r10, -72(%rbp)
    movq -72(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq %r10, %rax
    addq $112, %rsp
    popq %rbp
    ret

main:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    ## function main
    movq $0, %r10
    movq %r10, -8(%rbp)
    movq $16, %r10
    pushq %r10
    movq $16, %r10
    pushq %r10
    movq $0, %r10
    movq %r10, %rdi
    movq $0, %r10
    movq %r10, %rsi
    movq $16, %r10
    movq %r10, %rdx
    movq $16, %r10
    movq %r10, %rcx
    movq $8, %r10
    movq %r10, %r8
    movq $8, %r10
    movq %r10, %r9
    call aabb_check
    addq $16, %rsp
    movq %rax, -32(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -40(%rbp)
    leaq _str_0(%rip), %r10
    movq %r10, %rdi
    movq -32(%rbp), %r10
    movq %r10, %rsi
    movq $1, %r10
    movq %r10, %rdx
    movq -40(%rbp), %r10
    movq %r10, %rcx
    call expect_eq
    movq %rax, -48(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -16(%rbp)
    movq $16, %r10
    pushq %r10
    movq $16, %r10
    pushq %r10
    movq $0, %r10
    movq %r10, %rdi
    movq $0, %r10
    movq %r10, %rsi
    movq $16, %r10
    movq %r10, %rdx
    movq $16, %r10
    movq %r10, %rcx
    movq $64, %r10
    movq %r10, %r8
    movq $64, %r10
    movq %r10, %r9
    call aabb_check
    addq $16, %rsp
    movq %rax, -56(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -64(%rbp)
    leaq _str_1(%rip), %r10
    movq %r10, %rdi
    movq -56(%rbp), %r10
    movq %r10, %rsi
    movq $0, %r10
    movq %r10, %rdx
    movq -64(%rbp), %r10
    movq %r10, %rcx
    call expect_eq
    movq %rax, -72(%rbp)
    movq -72(%rbp), %r10
    movq %r10, -24(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setg %r10b
    movzbq %r10b, %r10
    movq %r10, -88(%rbp)
    movq -88(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_5
    movq $1, %r10
    movq %r10, %rax
    addq $128, %rsp
    popq %rbp
    ret
.Lendif_5:
    movq $0, %r10
    movq %r10, %rax
    addq $128, %rsp
    popq %rbp
    ret

