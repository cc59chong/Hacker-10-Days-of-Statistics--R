f <- file("stdin")
T <- lapply(strsplit(readLines(f), " "), as.numeric)
#T
#[[1]]
#[1] 9
#[[2]]
#[1]  3  7  8  5 12 14 21 13 18

n <- T[[1]][1]
X <- T[[2]]
#X
#[1]  3  7  8  5 12 14 21 13 18

X <- sort(X)
position1 <- floor(n/2)
position2 <- ceiling(n/2) +1 
lowerhalf <- X[1:position1]
upperhalf <- X[position2:n]


Q1 <- median(lowerhalf)
Q2 <- median(X)
Q3 <- median(upperhalf)

cat(Q1,Q2,Q3,sep = "\n")
