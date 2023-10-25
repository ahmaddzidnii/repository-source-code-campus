clear
clc

disp("Metode Gaus")

% 2x + 3y - z = 6
% x + 2y - 4z = 8
% x + y + 4z = 4

a = [2 3 -1 ; 1 2 -4 ; 1 1 4]

b = [6 ; 8 ; 4]

c = [a b]

c = [1 1 4 4 ; 1 2 -4 8 ; 2 3 -1 6]

c(2,:) = c(2,:)*2 - c(3,:)

c(3,:) = c(3,:) - c(1,:)*2

c(3,:) = c(3,:) - c(2,:)

c(3,:) = c(3,:)*-1/2


disp("tinggal substitusi mundur")