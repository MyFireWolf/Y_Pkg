extern printf
 
section .text
global main
main:
 
	push 	rbp
	mov 	rbp, rsp
 
	
	mov 	rdi, format
	mov 	rsi, 5
	mov 	rdx, 7
 
	
 
	call 	printf
 
	mov 	eax, 0
 
	leave
	ret
 
section .data
 format  	db "%d == %d",0xa,0
 
 ;编译方法   ： nasm -f elf64 文件名
;                       gcc 文件名.o
