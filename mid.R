library(dplyr)
num1 <- c(1,2,3,4,5)
num2 <- c(6,7,8,9,11)
label <- c(0,1,1,1,0)
image <- c("normal","abnormal","normal","ab","ab")
df <- data.frame(num1,num2,image,label)
df
x_test <- model.matrix(~ ., select(df, -image, -label))
x_test <- x_test[,-1]
y_test <- df$label

row1 <- c(4,3,6,11,5,99,20,10,50,332)
row2 <- c(43,55,62,74,12,44,23,89,45,78)
df2 <- data.frame(row1)
max_probs <- apply(df2, 1, FUN = max)
