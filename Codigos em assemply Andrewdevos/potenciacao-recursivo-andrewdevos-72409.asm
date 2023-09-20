%INCLUDE "io.inc"

SECTION .text
global CMAIN
CMAIN:
   MOV EAX, [base]   ; Mova o valor de base para o registrador EAX
   MOV EBX, [expoente]  ; Mova o valor de expoente para o registrador EBX

   MOV ECX, 1         ; Inicialize ECX com 1 (inicializador do resultado)
   
   CALL calcula_potencia  ; Chame a função para calcular a potência

   MOV [resultado], ECX  ; Armazene o resultado em [resultado]
   PRINT_UDEC 4, ECX     ; Imprima o resultado (potência)
   RET

calcula_potencia:
   CMP EBX, 0          ; Compare o expoente com 0
   JLE fim             ; Se o expoente for menor ou igual a 1, termine a função
   IMUL ECX, EAX      ; Multiplique ECX pelo valor de base
   DEC EBX            ; Decrementa o expoente
   CALL calcula_potencia  ; Chame recursivamente a função
   RET

fim:
   RET

SECTION .data
base DD 2              ; Valor da base (2)
expoente DD 3          ; Valor do expoente (3)
resultado DD 0         ; Variável para armazenar o resultado