# Enter your code here. Read input from STDIN. Print output to STDOUT

data<- scan("/dev/stdin")
#print(data) 10 64630 11735 14216 99233 14470  4978 73429 38120 51135 67060

Length <- data[1] 
Y <- Length +1
#print(Y) 11
X <- data[c(2:Y)]
#print(X) 64630 11735 14216 99233 14470  4978 73429 38120 51135 67060

mean <- mean(X)
median <- median(X)

getmode <- function(x){
  library('plyr')
  count<- count(x)
  max_freq <- max(count[,2])
  position <- which(count[,2]== max_freq)
  list_mode <- count[position[1]:position[length(position)],1]
  min(list_mode)
}

mod <- getmode(X)

cat(mean,median,mod,sep = "\n")


#library('plyr')
#count <- count(X)
#print(count)
#       x freq
#1   4978    1
#2  11735    1
#3  14216    1
#4  14470    1
#5  38120    1
#6  51135    1
#7  64630    1
#8  67060    1
#9  73429    1
#10 99233    1

#max_freq <- max(count[,2])
#print(max_freq)
#[1]  1

#position <- which(count[,2]== max_freq)
#print(position)
#[1]  1  2  3  4  5  6  7  8  9 10

#list_mode <- count[position[1]:position[length(position)],1]
#print(list_mode)
# [1]  4978 11735 14216 14470 38120 51135 64630 67060 73429 99233
