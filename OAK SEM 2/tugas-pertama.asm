;Buat listing program (program assembly beserta kode mesinnya) untuk menukarkan isi dari register A dan B dan menyimpan hasil penjumlahan keduanya ke register C
;Gunakan nilai awal A = 10H dan B = 20H dengan alamat awal program di 0100H
;Gunakan beberapa instruksi yang ada
;Hasil akhir seharusnya A = 20H, B = 10H dan C = 30H
;Untuk memudahkan, buat algoritma atau ilustrasi penyimpanan register

org 0100H 

MOV AX, 10H ;Memuat nilai 10H ke dalam register AX (A).
MOV BX, 20H ;Memuat nilai 20H ke dalam register BX (B).
               
MOV CX, AX  ;Menyalin nilai dari register AX (A) ke register CX (C).
ADD CX,BX   ;Menambahkan nilai register BX (B) ke dalam register CX (C).

RET
