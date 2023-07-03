# clear r environment variables
remove(list = ls())

# get time history data
library(quantmod)
symbol='JNJ'
getSymbols(symbol, src="yahoo", from="1997-01-01", to='2020-01-01'
           ,periodicity = "monthly")
df=as.data.frame(get(symbol))
plot(as.Date(rownames(df)),df[,gsub(" ", "",paste(symbol,'.Adjusted'))],'l')

# simple returns
sreturns = (diff(df[,gsub(" ", "",paste(symbol,'.Adjusted'))]) / 
  lag(df[,gsub(" ", "",paste(symbol,'.Adjusted'))], 1) * 100)

# log returns
lreturns = diff(log(df[,gsub(" ", "",paste(symbol,'.Adjusted'))]))

# plot returns
plot(as.Date(rownames(df[-1,])),lreturns,'l')

# test for stationarity
library(tseries)
r = adf.test(lreturns, alternative="stationary", k=0)
if (r$p.value<=0.01) {
  print('p-value<=0.01 reject null hyp so data is stationary')
}

#CAF
acf(lreturns)

# PACF
pacf(lreturns)

# ARIMA model
library(forecast)
mod = auto.arima(lreturns, stationary = FALSE, seasonal = FALSE, ic='aic',
                 trace=TRUE)
mod$coef
confint(mod) # confidence intervals include zero so not significant?!

# plot fitted model
plot(as.Date(rownames(df[-1,])),lreturns,'l')
lines(as.Date(rownames(df[-1,])),fitted(mod),col='red')

# validate the model
tsdiag(mod)
accuracy(mod)

# forecast
predict(mod,n.ahead = 3)
f = forecast(mod, h=3, level=c(99))
plot(forecast(f))
f$mean

