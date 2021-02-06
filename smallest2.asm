mbrseg         equ    7c0h

jmp   start
message:       db 'hello,world','$'

start:
mov   ax,mbrseg
mov   ds,ax
mov   si,message
call  printstr
jmp   $

printstr:                 
      mov al,[si]
      cmp al,'$'
      je disover
      mov ah,0eh
      int 10h
      inc si
      jmp printstr
disover:
      ret


times 510-($-$$) db 0
db 0x55,0xaa

times 1474560-($-$$) db 0
