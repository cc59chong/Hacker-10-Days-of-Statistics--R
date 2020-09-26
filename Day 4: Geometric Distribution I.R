p <- 1/3

#p(X=r) = pq^(r-1)

result <- p * (1-p)^4

cat(round(result,3))
