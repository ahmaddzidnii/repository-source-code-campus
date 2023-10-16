#mengetahui direktori
getwd()

#Mencari Bantuan sesuatu yg sesuai
#help(mean)
#?mean

#operasi perhitungan
10+25
10*25
10-25
10/25

#Logaritma
log(10)
log10(10)

#Akar
sqrt(10)

#Pangkat
10^2

#Repetisi
rep(2,5) #Mengulang angka 2 sebanyak 5 kali
rep(5,2) #Mengulang angka 5 sebanyak 2 kali

seq(1,10) #Menulis angka 1 sampai dengan 10

seq(1,10,by=2) #Menulis angka 1 sampai dengan 10 dengan jarak 2 jadi (1 3 5 7 9)
seq(1,20,by=3) #angka 1 sampai dengan 20 dengan jarak 3

#Membuat variabel
ipk=3

#Membuat Vektor
x=c(1:10)
x #Memanggil x outputnya yaitu 1 2 3 4 5 6 7 8 9 10
#Membuat Vektor tapi isinya karakter, vektor atau array anying
y=c("upin","ipin","meimei")

#fungsi mengetahui panjang vektor
z=c(1,2,3)
z #ini manggil vektor z
length(z) #outputnya nanti 3

l=c(1:50)
l #ini manggil vektor l
length(l) #outputnya 50

#Ngambil salah satu elemen vektor
d=c(1:10)
d #menampilkan vektor d
d[2] #mengambil urutan kedua yaitu 2 indeksnya mulai dari 1

d[d>7] #mengambil angka lebih dr 7 outputnya 8 9 10
d[d<6] #mengambil angka kurang dr 6 outputnya 1 2 3 4 5
d[d<=3] #outputnya 1 2 3
d[d<3] #outputnya 1 2

d[-c(1,8)] #menghilangkan elemen urutan ke 1 dan 8

#Membuat Matriks
A = matrix(c(1:9), nrow=3, ncol=3)
b=matrix(c(1:4), nrow=2, ncol=2)
b

dim(b)
dim(A)

#Matriks sesuai dg keinginan kita
A = matrix(c(5,2,7,8,2,7,4,1,0), nrow=3, ncol=3)

A[2,] #Mengambil semua nilai baris ke-2
A[,2] #Mengambil semua nilai kolom ke-2

A[2,3] #Mengambil nilai baris ke-2 kolom ke-3

#Perkalian antar elemen Matriks
A*A

#Perkalian Matriks
A%*%A

#Transpose Matriks
t(A)

#Inverse Matriks
solve(A)

#Import dari file lain (notepad)
#Data di notepad
# 83 67 108 112 56 78 39 60 48 71 28 48 27 136 83 82 72 42 39 29 28 100 73 48 103 78 120 96 78 64 43 62 42 73 64 96 102 43 72 118 39 48 71 63 64 38 26 43 33 74
#trs di save nama terserah

#Import data
getwd()
setwd("lokasi penyimpanan file notepad")
Data = scan("namafilenotepad.txt")
Data #memanggil data notepad tadi

A = matrix(Data,10,5)
A

D1 = read.csv("Sensus.CSV", header = TRUE, sep=":")
D1

D2 = read.table("Sensus.txt", header = TRUE)
D2

#Ringakasan Numerik Data
summary(data)
mean(data) #menampilkan rata rata data
median(data) #menampilkan median data
var(data) #menampilkan variansi data
sd(data) 
min(data) #menampilkan nilai minimum data
max(data) #menampilkan nilai maksimum data
quantile(data) #menampilkan nilai kuantil data