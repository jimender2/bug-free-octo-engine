loop:
    mov ah, 0x0e ; tty mode
    mov al, 'H'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'l'
    int 0x10
    int 0x10 ; 'l' is still on al, remember?
    mov al, 'o'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'W'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'd'
    int 0x10
    mov al, '!'
    int 0x10
    mov al, 0xa
    int 0x10
    mov al, 0xd
    int 0x10

jmp loop ; jump to current address = infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 