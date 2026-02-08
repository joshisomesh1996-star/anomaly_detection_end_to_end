setwd("C:\\Mtech\\Projects\\anomaly_detection_end_to_end\\time_series_R\\lab3")
library(tseries)
library(forecast)

bank_case <- as.ts(scan("bank_case.txt"))
bank_case

par(mfrow=c(1,1))
plot(bank_case, main = "Time Series")
acf(bank_case, main = "ACF of real-time estate loans", lag.max = 10, ylim = c(-1, 1))
pacf(bank_case, main = "PACF of real-time estate loans", lag.max = 10, ylim = c(-1, 1))

adf.test(bank_case)

#Differencing to remove trend
bank_case_d1 <- diff(bank_case)
adf.test(bank_case_d1)

bank_case_d2 <- diff(bank_case_d1)
adf.test(bank_case_d2)

par(mfrow=c(1,1))
plot(bank_case_d2, main = "SOD Time Series")
acf(bank_case_d2, main = "ACF of SOD of real-time estate loans", lag.max = 10, ylim = c(-1, 1))
pacf(bank_case_d2, main = "PACF of SOD of real-time estate loans", lag.max = 10, ylim = c(-1, 1))


#ARIMA fitting
bank_fit = arima(x = bank_case, order = c(0, 2, 1))
bank_fit

fitted(bank_fit)

plot(forecast(bank_fit, h = 24))
