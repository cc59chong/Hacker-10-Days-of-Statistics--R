# the probability of boy
#p <- 1.09/(1.09 + 1)

# dbinom(x, size, prob)
# x is a vector of numbers.
# size is the number of trials.
# prob is the probability of success of each trial.

result <- dbinom(6, 6, p) - dbinom(2, 6, p)

cat(round(result, 3))

--------------------------------------------------------------------------

f <- file("stdin")
T <- lapply(strsplit(readLines(f), " "), as.numeric)

b <- T[[1]][1]
g <- T[[1]][2]

pb <- b/(b+g)
result <- sum(dbinom(3:6,size =6, prob =p))

cat(round(result, 3))
