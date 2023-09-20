%INCLUDE "io.inc"   ; Codigo desenvolvido por AndrewDevos 72409 e HenriqueStrieder 157642

SECTION .text
global CMAIN
CMAIN:
   MOV EAX, [base]   ; Mova o valor de base para o registrador EAX
   MOV EBX, [expoente]  ; Mova o valor de expoente para o registrador EBX

   MOV ECX, 2         ; Inicialize ECX com 1 (inicializador do resultado)
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
base DD 2              ; Valor da base (2)
expoente DD 3          ; Valor do expoente (3)
resultado DD 0         ; Variável para armazenar o resultado