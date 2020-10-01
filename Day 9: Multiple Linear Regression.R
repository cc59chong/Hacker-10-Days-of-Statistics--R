
f <- file("stdin")
on.exit(close(f))

T <- lapply(strsplit(readLines(f), " "), as.numeric)

n <- T[[1]][2]
m <- T[[1]][1]

train <- data.frame(t(data.frame(T[2:(n+1)]))) #t() Matrix Transpose

q <- T[[n+2]][1]

test <- data.frame(t(data.frame(T[(n+2+1):(n+q+2)])))


formula <- as.formula(paste(tail(names(train), 1), "~ ."))
model <- lm(formula, train)
predict <- predict(model, test)
cat(format(round(predict, 2), nsmall = 1), sep = "\n")
