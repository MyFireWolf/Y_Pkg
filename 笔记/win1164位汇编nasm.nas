global main
extern printf

section .data
msg                 db "Hello World!", 13, 10, 0

section .text
main:
    sub rsp, 8
    sub rsp, 32
    mov rcx, qword msg
    call    printf
    add rsp, 32

    xor eax, eax
    add rsp, 8
    ret

;nasm.exe -f win64 "C:\Users\52282\Desktop\fstn.nas"
;gcc C:\Users\52282\Desktop\fstn.obj -o fstn.exe