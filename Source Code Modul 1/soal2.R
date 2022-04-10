n = 20
P = 0.2
sF = 1 - p
sT = 4

#2a
dbinom(sT, n, p)

#2b
peluang = dbinom(1:20, n, p)
data = data.frame(y = c(peluang), x = c(1:20))
barplot(data$y, names.arg = data$x, ylab = "Peluang Kemungkinan", xlab = "Jumlah Pasien")

#2c
mean = n * p
mean

varian = n * p * sF
varian