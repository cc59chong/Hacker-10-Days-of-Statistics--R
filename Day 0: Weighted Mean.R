data<- scan("/dev/stdin")
#print(data) 5 10 40 30 50 20 1 2 3 4 5 

Length <- data[1] 
X <- data[c(2:(Length +1))]
#print(X) 10 40 30 50 20 

W <- data[c((Length +2):(Length*2 +1))]
#print(W) 1 2 3 4 5

sum <- 0
for (i in 1:Length)
{
  XW <- X[i] * W[i]
  sum <- sum + XW 
}

weight_mean <- (sum/sum(W))
cat(format(round(weight_mean,1), nsmall = 1))

#--------------------------------------------------------------------

library(dplyr)

f <- file("stdin")
on.exit(close(f))

T <- readLines(f) %>%
    strsplit(" ") %>%
    lapply(as.numeric)
	
#％>％来自dplyr包的管道函数，其作用是将前一步的结果直接传参给下一步的函数，
#从而省略了中间的赋值步骤，可以大量减少内存中的对象，节省内存。

#以上代码等于
#T <- lapply(strsplit(readLines(f), " "), as.numeric)

#[[1]]
#[1] 5
#[[2]]
#[1] 10 40 30 50 20
#[[3]]
#[1] 1 2 3 4 5

n <- T[[1]][1]
x <- T[[2]]
w <- T[[3]]

wm <- weighted.mean(x, w)
cat(format(round(wm,1), nsmall=1), sep = "\n")

#--------------------------------------------------------------------
con <- file('stdin', open='r')

inputs <- readLines(con)

# We don't need the first input 
data <- inputs[[2]]
weights <- inputs[[3]]

# Converts string to vector
stringToVector <- function(string){
    return (as.numeric(unlist(strsplit(string, " "))))
}

result <- sum(stringToVector(data) * stringToVector(weights)) / sum(stringToVector(weights)) 

# Formatting result 
cat(format(round(result, 1), nsmall=1))

