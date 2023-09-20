%INCLUDE "io.inc"

SECTION .text
global CMAIN
CMAIN:
   MOV EAX, [base]       ; Mova o valor de base para o registrador EAX
   MOV EBX, [expoente]   ; Mova o valor de expoente para o registrador EBX

   MOV ECX, 1             ; Inicialize ECX com 1 (inicializador do resultado)
   MOV EDX, 0             ; Inicialize EDX com 0 (contador)

   CMP EBX, 0             ; Verifique se o expoente é zero
   JE fim                 ; Se for zero, a potência é 1, então vá para o fim

calcula_potencia:
   IMUL ECX, EAX          ; Multiplique ECX pelo valor de base
   INC EDX                ; Incrementa o contador
   CMP EDX, EBX           ; Compare o contador com o expoente
   JNE calcula_potencia   ; Se não forem iguais, continue multiplicando
                           ; Se forem iguais, vá para o fim

fim:
   MOV [resultado], ECX   ; Armazene o resultado em [resultado]
   PRINT_UDEC 4, ECX      ; Imprima o resultado (potência)
   RET

SECTION .data
base DD 2                ; Valor da base (2)
expoente DD 3            ; Valor do expoente (3)
resultado DD 0           ; Variável para armazenar o resultado