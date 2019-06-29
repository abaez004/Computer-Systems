;Prints the string msg and a new line to the console without having to specify it's length
;To run:nasm -f elf lab2.asm
;To link:ld -m elf_i386 lab2.o -o lab2
;To run:./lab2
section .data
msg     db      'Hello World', 0Ah, 00h

section .text

global _start

; start of the program
_start:
	push eax		;push eax onto the stack
	push msg		;push msg onto the stack
	call strlen		;call to strlen to calculate the length of string msg

	add esp, 4		;remove the argument from the stack

	mov ecx, msg		;move the address of the string to output
	mov edx, eax		;move the length of string into edx
	pop eax			;restore eax		
	

	mov eax,4 		;system call for write
	mov ebx, 1		;writes to standard output
	int 80h			;system interrupt using int80h

; label exit steps
exit:	mov eax, 1		;system call for exit
	mov ebx, 0		;return with code 0, no errors occurred
	int 80h			;system interrupt using int 80h

; label function name
strlen:
	push ebp		;save the old base pointer value
	mov ebp, esp		;set the new base pointer value
	push ebx		;push the value in EBX onto the stack to preserve it

	mov ebx, [ebp+8]	;move the value of parameter 1 into EBX
	mov eax, 0		;initialize the character counter to 0
	
; label main loop in the function
nextchar:
	cmp byte [ebx], 0	;compare the character (1-byte) pointed by EBX with the null terminator '\0'
	jz finished		;stop the loop if a '\0' is found
	inc ebx			;go to the next character in the string
	inc eax			;increment the character counter by 1
	jmp nextchar		;loop by going back to nextchar

; finishing steps of the function
finished:
	pop ebx			;pop the value on the stack back into EBX
	mov esp, ebp		;reset the stack pointer
	pop ebp			;restore the caller's base pointer
	ret			;return to where the function has been called

