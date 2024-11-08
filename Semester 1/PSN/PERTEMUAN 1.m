clear
clc

% membuat grafik 

disp( "buat grafik" )
x = 1 : 2 : 10;
y = [1 6 7 5 7];

% plot adalah function untuk membuat grafik
plot(x,y);


clear
clc


% buat grafik kurva
disp("Grafik Kurva")
x = -6 : 1 : 6;
y = -4*x.^2 + -5*x-7;
plot (x,y)
xlabel("sumbu x")
ylabel("sumbu y")
title("plot grafik kurva ")
grid


clear
clc

disp("Buat gambar candi")
x = linspace (-40,10,40); y = x;
[X, Y ] = meshgrid(x,y);
R = sqrt(X.^2 + Y.^2);
Z = sin(R) ./ (R+eps);
surf(X,Y,Z)


clear
clc

disp("buat plot cylinder")

t = 0 : pi/10 : 2 * pi;
[X, Y, Z] = cylinder (3 + sin(t));
surf(X,Y ,Z)
axis square