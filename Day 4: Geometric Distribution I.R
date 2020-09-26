p <- 1/3

#p(X=r) = pq^(r-1)

result <- p * (1-p)^4

cat(round(result,3))


-----------------------------------------
#R function dgeom(x, prob) is the probability of x failures prior to the first success (note the difference) when the probability of success is prob.

p <- 1/3
x <- 5 - 1
result <- dgeom(x, p)
cat(round(result,3))
