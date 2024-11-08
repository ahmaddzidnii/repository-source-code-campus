# PENGANTAR SOFTWARE R

# Memulai R
# Membuat direktori penyimpanan
setwd("D:/Kuliah/Semester 7/Praktikum Metode Statistika 2023")

# Mengetahui direktori penyimpanan
getwd()

# Mencari bantuan atau help
help(mean)
?mean

# Operasi perhitungan
10 + 25 #penjumlahan
10 * 25 #perkalian
10 - 25 #pengurangan
10 / 25 #pembagian
log(10) #logaritma natural
log10(10) #logaritma basis 10
sqrt(20) #akar 10
10^2 #10 kuadrat
rep(2,5) #mengulang 2 sebanyak 5 kali
rep(5,2) #mengulang 5 sebanyak 2 kali
seq(1,10) #membuat barisan bilangan dari 1 s.d 10
seq(1,10,by = 2) #membuat barisan bilangan dari 1 s.d 10 dengan kenaikan 2

# Penamaan variabel
ipk <- 3.5 #ipk diberi nilai 3.5
ipk #print ipk
ipk = 2.75 #ipk diberi nilai 2.75
ipk #print ipk
IPK #print IPK
Ipk #print Ipk

# Data vektor
X = c(1:10)
X #print X
Y = c("Ani","Siti","Ahmad","Soni")
Y #print Y
length(X) #menampilkan panjang vektor X
length(Y) #menampilkan panjang vektor Y
Y[2] #menampilkan elemen ke-2 dari vektor Y
X[X>6] #menampilkan elemen pada vektor X yang lebih besar dari 6
X[-c(1,8)] #menampilkan semua elemen vektor X kecuali elemen 1 dan 8

# Data matriks
A = matrix(c(1:9),nrow = 3,ncol = 3)
A #print matriks A
dim(A) #menampilkan dimensi matriks A
A[2,] #menampilkan baris ke-2 dari matriks A
A[,3] #menampilkan kolom ke-3 dari matriks A
A[2,3] #menampilkan elemen pada baris ke-2 dan kolom ke-3 dari matriks A
A * A #menampilkan perkalian elemen matriks A dengan matriks A
A %*% A #menampilkan perkalian matriks A dengan matriks A
t(A) #menampilkan transpose matriks A
B = matrix(c(1,10,2,4,5,6,7,3,9),nrow = 3,ncol = 3)
B #print matriks B
solve(B) #menampilkan invers matriks B
