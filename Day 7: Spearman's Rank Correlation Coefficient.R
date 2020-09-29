f <- file("stdin")
T <- lapply(strsplit(readLines(f), " "), as.numeric)

N <- T[[1]][1]
X <- T[[2]]
Y <- T[[3]]

RX <- rank(X)
RY <- rank(Y)
Di <- RX - RY

Di_pwr <- 0
for( i in 1:N)
{
    Di_pwr <- Di[i]^2 + Di_pwr
}
    
RXY <- 1 - (6*Di_pwr)/(N*(N^2-1))
cat(round(RXY,3))
