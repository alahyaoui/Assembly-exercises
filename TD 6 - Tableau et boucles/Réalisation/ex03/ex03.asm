;Exercice 03

global _start

section .data
    array times 100 DQ 0; déclare un tableau de 100 entiers de 8 bytes chacun initialisés à 0
    sizeArray DQ $ - array
    nbElement DQ (sizeArray - array) / 8

section .text
_start:

    nop

    mov r8, [nbElement]
    mov r9, 0
    _for:
	cmp r9, [nbElement]
	jz _endFor

	mov [array + r9 * 8], r8

	dec r8
	inc r9
	jmp _for
    _endFor:

    mov rax, 60
    mov rdi, 0
    syscall
