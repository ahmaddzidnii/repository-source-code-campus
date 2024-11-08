# IMPORT DATA DAN UKURAN DATA

# Import data
getwd()
setwd("D:/Kuliah/Semester 7/Praktikum Metode Statistika 2023")

Penjualan = scan("Penjualan.txt") #membaca file Penjualan.txt
Penjualan #print variabel penjualan
A = matrix(Penjualan,10,5)
A

Data1 = read.csv("Sensus.CSV",header = TRUE,sep = ";")
Data1

Data2 = read.table("Sensus.txt",header = TRUE)
Data2

# Ringkasan numerik data
summary(Penjualan)
mean(Penjualan) #menampilkan rata-rata Penjualan
median(Penjualan) #menampilkan median Penjualan
var(Penjualan) #menampilkan variansi Penjualan
sd(Penjualan) 
min(Penjualan) #menampilkan nilai minimum data Penjualan
max(Penjualan) #menampilkan nilai maksimum data Penjualan
quantile(Penjualan) #menampilkan nilai kuantil data Penjualan

help(summary)
attenu #menampilkan isi data attenu
mag = attenu[,2] #mengambil data pada kolom ke-2 dari attenu
distance = attenu[,4] #mengambil data pada kolom ke-4 dari attenu
accel = attenu[,5] #mengambil data pada kolom ke-5 dari attenu
data3 = cbind(mag,distance,accel) #menggabungkan mag, distance, dan accel
data3 #print data3
summary(data3) #menampilkan ringkasan numerik data3

# LATIHAN 2.3
# 1
data1 = c(31,27,31,30,30,33,32,32,32,30,30,31,30,31,34,10)
summary(data1)
var(data1)
sd(data1)

# 2
penjualan = read.csv("DataLatihan2.3.2.CSV",header = TRUE,sep = ";")
penjualan = penjualan[,2:3]
summary(penjualan)
var(penjualan$A)
var(penjualan$B)
sd(penjualan$A)
sd(penjualan$B)

# 3
ekspor = read.csv("DataLatihan2.3.3.CSV",header = TRUE,sep = ";")
ekspor = ekspor[,2:3]
summary(ekspor)
var(ekspor$Migas)
var(ekspor$Non.Migas)
sd(ekspor$Migas)
sd(ekspor$Non.Migas)
