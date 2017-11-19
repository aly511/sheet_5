.586
.MODEL FLAT
INCLUDE io.h    
.STACK 4096
.DATA
pen byte "enter number of pennies",0
nick byte "enter number of nickels",0
dim byte "enter number of dimes",0
quar byte "enter number of quarters",0
cent1 byte "enter number of fifty-cent pieces",0
cent2 byte "enter number of dollar coins",0
n byte 40 dup (?)
totalm byte "total value of the coins in cents is ",0
numberm byte "the number of  coins is ",0
total byte 40 dup (?)
count byte 40 dup (?)

   ; byte "dollars" 0
.CODE
_MainProc PROC
mov edx,0    ; total
mov ebx,0      ;count

; pennies         //
input pen,n,40
atod n
add ebx,eax   ;count
add edx,eax     ;pennies(1)=cents(1)

; nickels                //
input nick,n,40
atod n
add ebx,eax   ;count
imul eax,5
add edx,eax     ;nickels(1)=cents(5)

; dimes            //
input dim,n,40
atod n
add ebx,eax   ;count
imul eax,10
add edx,eax     ;dimes(1)=cents(10)

; quarters          //
input quar,n,40
atod n
add ebx,eax   ;count
imul eax,25
add edx,eax     ;quarters(1)=cents(25)

; fifty-cent pieces   //
input cent1,n,40
atod n
add ebx,eax   ;count
imul eax,50
add edx,eax     ;fifty-cent pieces(1)=cents(50)

; dollar   //
input cent2,n,40
atod n
add ebx,eax   ;count
imul eax,100
add edx,eax     ;dollar(1)=cents(100)

dtoa total,edx
dtoa count,ebx
output totalm,total
output numberm,count
ret
_MainProc ENDP
END  