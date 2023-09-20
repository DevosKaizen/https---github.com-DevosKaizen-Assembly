;%INCLUDE "io.inc"
;SECTION .text
;global CMAIN
;CMAIN:
;    MOV EAX, [num]     ; Mova o valor de n para EAX
;    MOV ECX, 0          ; Inicialize o contador com 0
    
;imprime_impares:
;    CMP ECX, EAX        ; Compara o contador com n
;    JG fim              ; Se o contador for maior que n, sair
;
;    TEST ECX, 1         ; Testa o bit menos significativo para verificar se é ímpar
;    JNZ nao_impar       ; Se for ímpar, imprima
;    INC ECX             ; Incrementa o contador
;    JMP imprime_impares
;
;nao_impar:
;    INC ECX             ; Incrementa o contador
;    JMP imprime_impares
;
;fim:
;    RET

;SECTION .data
;num DD 0   ; Número (n) = 0