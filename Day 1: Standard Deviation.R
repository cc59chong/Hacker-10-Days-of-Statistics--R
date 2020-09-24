f <- file("stdin")
t <- lapply(strsplit(readLines(f), " "), as.numeric)

n <- t[[1]][1]
x <- t[[2]]

mean <- mean(x)
X <- sum((x-mean)^2)
sd <- sqrt(X/n)

cat(format(round(sd, 1), nsmall=1))
