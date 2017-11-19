;Program prompts for 4 grades and a final exam grade, then displays the sum and average.
;Calvin Perkey
;10/7/09
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
g1 BYTE    "Grade 1?",0
w1 BYTE    "weight 1?",0
g2 BYTE    "Grade 2?",0
w2 BYTE    "weight 2?",0
g3 BYTE    "Grade 3?",0
w3 BYTE    "weight 3?",0
g4 BYTE    "Grade 4?",0
w4 BYTE    "weight 4?",0

n  BYTE    11 DUP (?)
sumtextg BYTE    " weighted sum: ", 13, 10
sumtextw BYTE    " sum of weights:",0
avgtext BYTE    " weighted average:",0
sumg     DWORD   ?
sumw     DWORD   ?
aver    DWORD   ?
.CODE
_MainProc       PROC
mov edx,0
mov ecx,0
	   input g1,n,11
	   atod n
	   add edx,eax
	   input w1,n,11
	   atod n
	   add ecx,eax
	   
	   input g2,n,11
	   atod n
	   add edx,eax
	   input w2,n,11
	   atod n
	   add ecx,eax

	   input g3,n,11
	   atod n
	   add edx,eax
	   input w3,n,11
	   atod n
	   add ecx,eax

	   input g4,n,11
	   atod n
	   add edx,eax
	   input w4,n,11
	   atod n
	   add ecx,eax

	   add edx,ecx
	   dtoa sumg,edx
	   output sumtextg,sumg

	   dtoa sumw,ecx
	   output sumtextw,sumw

	   mov eax,edx
	   div ecx
	   dtoa aver,eax
	   output avgtext,aver
        ret
_MainProc ENDP
END                                    ; end of source code