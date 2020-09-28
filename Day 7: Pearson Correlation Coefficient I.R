f <- file("stdin")
T <- lapply(strsplit(readLines(f), " "), as.numeric)
X <- T[[2]]
Y <- T[[3]]

out <- cor(X, Y)
cat(round(out,3))

 #The strength of association can be found using the cor.test() function available in base R.
 #I prefer this function over cor() as it provides additional information such as the p-value and confidence intervals.
