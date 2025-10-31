x <-c(2,4,5,-4,8,9,-5)
res <-mean(x)
print(res)
#trim
#x <-c(2,4,5,-4,7,8,9,-5)
res <-mean(x,trim=0.4)
print(res)
#an option true
x <-c(2,4,5,-4,7,8,9,-5,NA)
res <-mean(x,na.rm=TRUE)
print(res)
#an option FALSE
x <-c(2,4,5,-4,7,8,9,-5,NA)
res <-mean(x,na.rm=FALSE)
print(res)

x <-c(2,4,5,-4,8,9,-5)
res <-median(x)
print(res)
#trim
x <-c(2,4,5,-4,8,9,-5)
res <-median(x,trim=0.4)
print(res)
#an option true
x <-c(2,4,5,-4,7,8,9,-5,NA)
res <-median(x,na.rm=TRUE)
print(res)
#an option FALSE
x <-c(2,4,5,-4,7,8,9,-5,NA)
res <-median(x,na.rm=FALSE)
print(res)


Mode
# Create the function.
v <-c("mango","berry","mango")
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
result <-getmode(v)
print(result)

