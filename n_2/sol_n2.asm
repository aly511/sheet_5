.586
.MODEL FLAT
INCLUDE io.h    
.STACK 4096
.DATA
p1 BYTE "Enter x",0
p2 BYTE "Enter y",0
p3 BYTE "Enter z",0
n BYTE 40 DUP(?)
value BYTE 11 DUP(?),0
res BYTE "the result is",0
.CODE
_MainProc PROC
input p1,n,40
atod n
mov ecx,eax         ;x=ecx

input p2,n,40
atod n
mov ebx,eax              ;y=ebx

input p3,n,40
atod n          ;z=eax

;2(x+y) + z

add  ecx , ebx       ;x +y
imul  ecx , 2        ;2(x+y)
add  eax , ecx
dtoa value,eax
output res,value
ret
_MainProc ENDP
END          