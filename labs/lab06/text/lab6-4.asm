;--------------------------------
; Программа вычисления варианта
;--------------------------------
%include 'in_out.asm'

SECTION .data
msg: DB 'Введите X: ',0
rem: DB 'Ответ: ',0 	

SECTION .bss 	
x: 	RESB 10 	

SECTION .text
GLOBAL _start 	
_start:
	mov eax, msg
	call sprintLF

	mov ecx, x              ; x в ecx
        mov edx, 10             ; размер  edx
        call sread              ; ввод в х




	mov eax,x ; вызов подпрограммы преобразования
	call atoi ; ASCII кода в число, `eax=x`


	mov ecx, 12		; ecx = 12
	mul ecx			; eax *= x
	add eax, 3		; eax += 3
	mov ecx, 5		
	mul ecx			; eax *=5


	mov edx, eax
	xor eax, eax

	mov eax,rem		; Запись адресса строки 'Ваш вариант' в eax
	call sprint		; Вызов вывода строки без переноса строки
	mov eax,edx		; перенос вычесленного остатка в eax
	call iprintLF		; Вывод вычесленного остатка с переносом строки

	call quit

