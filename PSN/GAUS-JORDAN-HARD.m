clear
clc

disp("Metode Gaus Jordan")

% 2x + y + 2z = 15
% 3x + y = 13
% x + 4y + 3z = 17


a = [2 1 2 ; 3 1 0 ; 1 4 3];
b = [15 ; 13 ; 17];

c = [a b]

c(1,:) = c(1,:)/2

c(2,:) = c(2,:) - c(1,:)*3

c(3,:) = c(3,:) - c(1,:)

c(2,:) = c(2,:)*-2

c(3,:) = c(3,:)*2 - c(2,:)*7

c(3,:) = c(3,:)/-38

c(2,:) = c(2,:) - c(3,:)*6

c(1,:) = c(1,:) - c(2,:)/2

c(1,:) = c(1,:) - c(3,:)
