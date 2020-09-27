
z <- 1.96
n <-100
sd <- 80
u <- 500


x <- z * (sd/sqrt(n))

A <- u - x
B <- u + x

cat(round(c(A,B),2),sep='\n')
