p <- 1/3

result <- 1 - dbinom(0, 5, p)
#result <- sum(dbinom(1:5, 5, p))

cat(round(result,3))
