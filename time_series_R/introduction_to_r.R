dir.exists("C:/Mtech/Projects/anomaly_detection_end_to_end/time_series_R")
setwd("C:/Mtech/Projects/anomaly_detection_end_to_end/time_series_R")

##Assignment
x <- 12
y = x + 2

(y <- x^2)


##Vector
x <- c(1, 2, 3, 4)
x

###Operations
(x+2)
(x*2)
(x^2)

###list not vectors
y <- c(1, 2, 3, 4, 5, 6, 7, 8)
(x)
(y)
(y*x)
(y+x)

##matrix operations
(x %*% t(x))
(t(x) %*% x)

z1 <- matrix(y, 4)
z1

z2 <- matrix(y, 2, byrow = TRUE)
z2

##extracting values
x[1]
x[2]

x[-2]

x[-(2:3)]

y<-c(1,3)
x[y]
x[-y]

##misc

x<-c(x,y)
x
rev(x)

##logical
1!=1
1==1

##ranges
seq(from = 1, to = 10, by = 1)

