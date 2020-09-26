# lower.tail   logical; if TRUE (default), probabilities are P[X≤x] otherwise, P[X>x]

result1 <- 100 * pnorm(80, mean = 70, sd = 10, lower.tail = FALSE)
result2 <- 100 * pnorm(60, mean = 70, sd = 10, lower.tail = FALSE)
result3 <- 100 * pnorm(60, mean = 70, sd = 10)

cat(round(result1,2),'\n')
cat(round(result2,2),'\n')
cat(round(result3,2))

-------------------------------------------------------------------------------------

result1 <- 100 * (1 - pnorm(80, mean = 70, sd = 10))
result2 <- 100 * (1 - pnorm(60, mean = 70, sd = 10))
result3 <- 100 * pnorm(60, mean = 70, sd = 10)

cat(round(result1,2),'\n')
cat(round(result2,2),'\n')
cat(round(result3,2))
