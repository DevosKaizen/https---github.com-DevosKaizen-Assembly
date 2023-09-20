%INCLUDE "io.inc"

SECTION .text
global CMAIN
CMAIN:
   MOV EAX, 10       ; Dividendo
   MOV ECX, 7        ; Divisor

   XOR EDX, EDX      ; Limpe o registrador EDX (será usado para armazenar o resto)
   DIV ECX           ; Divida EAX por ECX, o resultado será armazenado em EAX e o resto em EDX

   MOV [resto], EDX  ; Armazene o resto em uma variável chamada 'resto'

   PRINT_UDEC 4, EDX ; Imprima o resto
   RET

SECTION .data
resto DD 0           ; Variável para armazenar o resto
