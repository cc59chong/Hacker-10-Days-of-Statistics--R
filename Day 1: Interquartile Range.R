f <- file("stdin")
t <- lapply(strsplit(readLines(f), " "), as.numeric)

Element <- t[[2]]
Frequency <- t[[3]]
S <- sort(rep(Element, times = Frequency))

position1 <- floor(length(S)/2)
position2 <- ceiling(length(S)/2) +1 
lowerhalf <- S[1:position1]
upperhalf <- S[position2:length(S)]

Q1 <- median(lowerhalf)
Q3 <- median(upperhalf)

IQR <- Q3 -Q1

cat(format(round(IQR, 1), nsmall=1))
