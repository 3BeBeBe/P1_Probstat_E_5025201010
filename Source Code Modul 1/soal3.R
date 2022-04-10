mean = 4.5
p = 6
n = 365

#3a
dpois(x, mean)

#3b
peluang = dpois(p, mean)
data = data.frame(y = c(peluang), x = c(1:365))
barplot(data$y, names.arg=data$x, ylab="peluang", xlab="hari ke-", ylim=0:1)

#3c
#Dari data dan perhitungan diatas dapat dikatakan bahwa distribusi poisson pada kelahiran bayi dari hari pertama hingga terakhir adalah sama

#3d
varian = mean
mean
varian