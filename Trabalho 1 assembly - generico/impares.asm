%INCLUDE "io.inc"       
SECTION .text
global CMAIN
CMAIN:
   MOV EAX, 1        ; Inicializa EAX com 1 (primeiro número ímpar)

print_loop:
   CMP EAX, 19        ; Compara EAX com 9 (limite)
   JG done           ; Se EAX > 9, sair do loop

   PRINT_UDEC 4, EAX ; Imprime o valor de EAX

   ADD EAX, 2        ; Incrementa EAX em 2 para o próximo número ímpar
   JMP print_loop

done:
   RET