# the probability of boy
p <- 1.09/(1.09 + 1)

# dbinom(x, size, prob)
# x is a vector of numbers.
# size is the number of trials.
# prob is the probability of success of each trial.

result <- 1 - dbinom(2, 6, p) - dbinom(1, 6, p) - dbinom(0, 6, p)
# result <- sum(dbinom(3:6,size =6, prob =p))

cat(round(result, 3))
