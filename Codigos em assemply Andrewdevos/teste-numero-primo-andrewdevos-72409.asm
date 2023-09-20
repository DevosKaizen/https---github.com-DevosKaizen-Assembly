%INCLUDE "io.inc"   ; Codigo desenvolvido por AndrewDevos 72409 e HenriqueStrieder 157642

SECTION .text
global CMAIN
CMAIN:
    MOV EAX, [num]    ; Carrega o valor de n em EAX
    CMP EAX, 2         ; Verifica se n é igual a 2
    JE prime           ; Se n for igual a 2, é primo
    
    CMP EAX, 1         ; Verifica se n é igual a 1
    JE not_prime       ; Se n for igual a 1, não é primo

    MOV ECX, 2         ; Inicializa o divisor com 2

check_prime:
    MOV EDX, 0         ; Limpa EDX para evitar erros de divisão
    DIV ECX            ; Divide EAX pelo divisor (ECX)
    CMP EDX, 0         ; Verifica se o resto da divisão é zero
    JE not_prime       ; Se o resto for zero, não é primo
    INC ECX            ; Incrementa o divisor
    CMP ECX, EAX       ; Compara o divisor com n
    JAE prime          ; Se o divisor for maior ou igual a n, é primo
    JMP check_prime

prime:
    PRINT_STRING "sim e primo"
    JMP done

not_prime:
    PRINT_STRING "Nao e primo"

done:
    MOV EAX, 0          ; Atribui 0 a EAX
    RET

SECTION .data
num DD 8   ; Valor de n