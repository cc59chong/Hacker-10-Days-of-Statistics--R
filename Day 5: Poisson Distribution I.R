

# dpois(x, lambda, log = FALSE)
# x vector of (non-negative integer) quantiles.
# lambda vector of (non-negative) means.
# log, log.p logical; if TRUE, probabilities p are given as log(p).


result <- dpois(5, lambda=2.5)
cat(round(result,3))
