[org 0x0100]

mov bx, 0
mov cx, 0
mov dx,1
mov ax,0
start:
add ax,dx
mov [array1+bx],ax
mov dx, [array1+bx]
add cx,1
cmp cx,[stoper]
jne start 

mov ax,0x4c00
int 0x21

array1: dw 0,0,0,0,0,0,0,0,0,0
stoper: dw 10