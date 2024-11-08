clear
clc

A = [1 4 7 ; 2 5 7 ; 3 6 9]

B = [3 1 3 ; 2 1 2]

C = [1 2 ; 1 5 ; 5 2]

A*C

%Transpose
B'


%Invers
clear
clc
A = []
D = inv(A)

%mengalikan

clear
clc

A = [1 4 7 ; 2 5 8 ; 3 6 9]
disp("menampilkan semua data pada baris 2")
C = A(2, :)
D = 2*A(: ,1)