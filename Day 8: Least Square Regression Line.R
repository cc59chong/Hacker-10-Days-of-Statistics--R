x <- c(95,85,80,70,60)
y <- c(85,95,70,65,70)

m = lm(y~x)
py <- predict(m, newdata = data.frame(x=80))[[1]]
cat(round(y,3))
