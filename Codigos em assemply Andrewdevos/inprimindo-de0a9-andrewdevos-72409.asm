%INCLUDE "io.inc"
SECTION .text
global CMAIN
CMAIN:
   MOV EAX, 0        ; Inicializa EAX com 0 (início)
   
print_loop:
   CMP EAX, 9        ; Compara EAX com 9 (limite)
   JG done           ; Se EAX > 9, sair do loop
   
   
   PRINT_UDEC 4, EAX ; Imprime o valor de EAX
   
   
   INC EAX           ; Incrementa EAX
   JMP print_loop

done:
   RET