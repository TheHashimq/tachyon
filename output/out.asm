global _start
_start:
    ;; let
    mov rax, 0
    push rax
    ;; /let
    mov rax, 5
    push rax
    mov rax, 3
    push rax
    pop rax
    pop rbx
    div rbx
    push rax
    mov rax, 2
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov [rsp + 0], rax
    ;; if
    mov rax, 0
    push rax
    pop rax
    test rax, rax
    jz label0
    mov rax, 5
    push rax
    pop rax
    mov [rsp + 0], rax
    jmp label1
label0:
    ;; else
    mov rax, 20
    push rax
    pop rax
    mov [rsp + 0], rax
label1:
    ;; /if
    ;; exit
    push QWORD [rsp + 0]
    mov rax, 60
    pop rdi
    syscall
    ;; /exit
    mov rax, 60
    mov rdi, 0
    syscall
