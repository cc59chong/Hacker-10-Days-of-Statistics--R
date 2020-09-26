p <- 12/100

result1 <- dbinom(0, 10, p) + dbinom(1, 10, p) + dbinom(2, 10, p)
# result1 <- sum(dbinom(0:2, size = 10, prob = p))
result2 <- 1 - dbinom(1, 10, p) - dbinom(0, 10, p)
# result2 <- sum (dbinom(2:10,size=10, prob = p))

cat(round(result1, 3), sep = "\n")
cat(round(result2, 3))
