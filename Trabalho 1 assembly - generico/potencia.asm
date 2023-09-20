%INCLUDE "io.inc"   

SECTION .text
global CMAIN
CMAIN:
   MOV EAX, [base]   ; Mova o valor de base para o registrador EAX
   MOV EBX, [expoente]  ; Mova o valor de expoente para o registrador EBX

   ;MOV ECX, 2         ; Inicialize ECX com 1 (inicializador do resultado)
   
   MOV ECX, [expoente]  ;RESOLVER       ; Inicialize ECX com 1 (inicializador do resultado)
   MOV EDX, 1         ; Inicialize EDX com 0 (contador)

calcula_potencia:
   CMP EDX, EBX       ; Compare o contador com o expoente
   JE fim             ; Se forem iguais, termine o loop
   IMUL ECX, EAX      ; Multiplique ECX pelo valor de base
   INC EDX            ; Incrementa o contador
   JMP calcula_potencia

fim:
   
   MOV [resultado], ECX  ; Armazene o resultado em [resultado]
   PRINT_UDEC 4, ECX  ; Imprima o resultado (potência)
   RET

SECTION .data
base DD 5              ; Valor da base 
expoente DD 3          ; Valor do expoente
resultado DD 0         ; valor do resultado