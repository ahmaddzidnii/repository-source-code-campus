org 0100H 

MOV AX, 10H ;Memuat nilai 10H ke dalam register AX (A).
MOV BX, 20H ;Memuat nilai 20H ke dalam register BX (B).
               
MOV CX, AX  ;Menyalin nilai dari register AX (A) ke register CX (C).
ADD CX,BX   ;Menambahkan nilai register BX (B) ke dalam register CX (C).

RET
