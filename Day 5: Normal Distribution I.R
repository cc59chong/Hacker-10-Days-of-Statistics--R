
# pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)

# x,q    vector of numbers.
# mean   vector of means.
# sd     vector of standard deviations.
# log, log.p   logical; if TRUE, probabilities p are given as log(p).
# lower.tail   logical; if TRUE (default), probabilities are P[X≤x] otherwise, P[X>x]



result1 <- pnorm(19.5, mean = 20, sd = 2)
result2 <- pnorm(22, mean = 20, sd = 2) - pnorm(20, mean = 20, sd =2)

cat(round(result1,3),'\n')
cat(round(result2,3))
