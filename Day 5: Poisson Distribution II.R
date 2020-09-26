lamda1 <- 0.88
lamda2 <- 1.55

cost1 <- 160 + 40 * (lamda1 + lamda1^2)
cost2 <- 128 + 40 * (lamda2 + lamda2^2)
cat(round(cost1,3),'\n')
cat(round(cost2,3))
