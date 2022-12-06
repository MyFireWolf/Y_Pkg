extern _printf
SECTION .data
 msg db 'Hello World!2', 0Ah 
 
SECTION .text
global _WinMain@16
 
_WinMain@16:
 push msg
 call _printf
 add esp, 4
 ret

 ;Win11  编译 32位 可执行程序
 ;nasm -f win32 aa.asm
 ;gcc -m32 aa.obj
 ;a.exe

 ;nasm -f win32 --prefix _ aa.asm

 ;MinGW-w64下载地址：https://sourceforge.net/projects/mingw-w64/files/

;选择合适的版本

;   i686纯32位版供32位win系统使用    x86_64是64位系统用的版本   
; seh结尾是纯64位编译    sjlj结尾是32 64两种编译，需加-m32或-m64参数    posix通常用于跨平台，比win32兼容性好一些

;下载的是：x86_64-posix-sjlj(这个已经编译好了解压完就能用）
;假设我这里将下载的压缩包解压到：E:\mingw 目录下

;配置环境变量：
;右击“计算机” -->属性 -->高级系统设置 -->环境环境 -->系统变量 -->“Path”变量 -->编辑，追加 ;E:\mingw\bin 