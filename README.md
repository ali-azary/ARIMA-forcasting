# ARIMA-forcasting
autoregressive integrated moving average (ARIMA) model is a generalization of an autoregressive moving average (ARMA) 
 non-stationarity in the sense of mean (but not variance/autocovariance)
combination of two models, the auto-regressive and the moving average
auto regressive AR(p) component refers to the use of past values in the regression equation
moving average MA(q) component represents the error of the model as a combination of previous error terms
with the differencing variable d, which is used to remove the trend and convert a non-stationary time series to a stationary one
 $1-\sum_{i}^{\prime{p}}$
 augmented Dickey–Fuller test (ADF) tests the null hypothesis that a unit root is present in a time series sample. The alternative hypothesis is different depending on which version of the test is used, but is usually stationarity or trend-stationarity
¬ 
The unit root test  If the calculated test statistic is less (more negative) than the critical value, then the null hypothesis of   is rejected and no unit root is present
 
If p-value less than 0.01 null hyp rejected so time series is stationary.
partial autocorrelation function (PACF) gives the partial correlation of a stationary time series with its own lagged values,
 
  and  are linear combinations of  , …,  that minimize the mean squared error of   and   respectively. For stationary processes,
 
Durbin–Levinson Algorithm
 

The order p and q can be determined using the sample autocorrelation function (ACF), partial autocorrelation function (PACF), and/or extended autocorrelation function (EACF) method
 Akaike information criterion (AIC)h
	

corrected AIC for ARIMA models 
 
Bayesian Information Criterion (BIC) 
 
minimize the AIC, AICc or BIC values for a good model

