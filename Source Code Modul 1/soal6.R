x1 = 0
x2 = 0
n = 100
mean = 50
sd = 8
breaks = 50

#6a
par(mfrow = c(2,1))
data = rnorm(n, mean, sd)
z_score = c()
for (d in data){
  z = (d - mean)/sd
  z_score = append(z_score, z)
  if (d < mean){
    x1 = x1 + 1
  }else{
    x2 = x2 + 1
  }
}
result = plot(z_score, type='l')
paste("Mean = ", mean)
paste("x1 = ", x1)
paste("x2 = ", x2)

#6b
#hist(rnorm(n, mean, sd), breaks, main="5025201010_I Putu Bagus Adhi Pradana_E_DNhistogram")

#6c
varian = `^`(sd, 2)
varian