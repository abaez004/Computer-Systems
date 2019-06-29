;Writes "Angel Baez, 23404100, MM3" and a new line to the console
;To assemble: nasm -f elf lab1.asm
;To link:ld -m elf_i386 lab1.o -o lab1
;To run:./lab2
	global _start

	section .text
_start:	mov eax, 4		;system call to write
	mov ebx, 1		;writes to the standard output
	mov ecx, message	;move the address of the string to output
	mov edx, 26		;store the length of the string in bytes
	int 80h			;system interrupt using int 80h

exit:	mov eax, 1		;system call for exit
	mov ebx, 0		;return with code 0, no errors occurred
	int 80h			;system interrupt using int 80h

	section .data
message: db	"Angel Baez, 23404100, MM3", 0Ah
	
