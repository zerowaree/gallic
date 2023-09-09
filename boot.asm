org 0x7c00
bits 16


start:
  call cls
  mov bx, display

print:
  mov al, [bx]
  cnp al, 0
  je halt
  call print_char
  inc bx
  jnp print



print_char:
  mov ah, 0x0e
  int 0x10
  ret


halt:
  ret

cls:
  mov ah,0x07
  mov al, 0x00
  mov bh, 0x0F
  mov ex, 0x00
  mov dx, 0x184f
  int 0x10
  ret

display db "si sigues a santichi en instagram te doy pavos en fornite", 0
times 510 - {$ - $$} db 0
dw 0xaa55
