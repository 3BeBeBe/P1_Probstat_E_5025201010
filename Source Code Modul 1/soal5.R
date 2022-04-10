lmbd = 3

#5a
dexp(lmbd)

#5b
par(mfrow = c(2,2))
set.seed(1)
hist(rexp(10))
set.seed(1)
hist(rexp(100))
set.seed(1)
hist(rexp(1000))
set.seed(1)
hist(rexp(10000))

#5c
mean = lmbd
mean

varian = `^`(lmbd, 2)
varian