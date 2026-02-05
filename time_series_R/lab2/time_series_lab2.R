setwd("C:\\Mtech\\Projects\\anomaly_detection_end_to_end\\time_series_R\\lab2")
dev.off()
uspop = read.table("uspop.txt", header = TRUE)

plot(uspop$V1 / 1e6,
     type = "o",
     main = "US Population from 1970 to 1990",
     xlab = "Year",
     ylab = "Population (in millions)",
     lwd = 2,
     xaxt = "n")

axis(1, seq(1, 21, 2), seq(1970, 1990, 2))

pdf(file="uspop.pdf")
plot(uspop$V1 / 1e6,
     type = "o",
     main = "US Population from 1970 to 1990",
     xlab = "Year",
     ylab = "Population (in millions)",
     lwd = 2,
     xaxt = "n")

axis(1, seq(1, 21, 2), seq(1970, 1990, 2))
dev.off()

root.uspop = sqrt(uspop$V1/1e6)
plot(root.uspop / 1e6,
     type = "o",
     main = "US Population from 1970 to 1990",
     xlab = "Year",
     ylab = "Population (in millions)",
     lwd = 2,
     xaxt = "n")

axis(1, seq(1, 21, 2), seq(1970, 1990, 2))

#Calculate linear trend
nt = length(root.uspop)
fit <- lm(root.uspop ~ as.numeric(1:nt))
summary(fit)

abline(fit)

y <- root.uspop - fitted(fit)
ts.plot(y)

mean(y)
sd(y)
var(y)

y = y - mean(y)
ts.plot(y)
abline(h=mean(y), col ="red")
