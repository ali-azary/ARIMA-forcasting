# ARIMA-forcasting
autoregressive integrated moving average (ARIMA) model is a generalization of an autoregressive moving average (ARMA) 
 non-stationarity in the sense of mean (but not variance/autocovariance)
combination of two models, the auto-regressive and the moving average
auto regressive AR(p) component refers to the use of past values in the regression equation
moving average MA(q) component represents the error of the model as a combination of previous error terms
with the differencing variable d, which is used to remove the trend and convert a non-stationary time series to a stationary one
 $$\left(1-\sum_{i=1}^p \alpha_i L^i\right)X_t=\left(1+\sum_{i=1}^q \theta_i L^i \right) \varepsilon_t$$
augmented Dickey–Fuller test (ADF) tests the null hypothesis that a unit root is present in a time series sample. The alternative hypothesis is different depending on which version of the test is used, but is usually stationarity or trend-stationarity
$$\Delta y_t = \alpha + \beta t + \gamma y_{t-1} + \cdots + \delta_{p-1} \Delta y_{t-p+1} +\varepsilon_t$$
The unit root test  If the calculated test statistic is less (more negative) than the critical value, then the null hypothesis of $\gamma=0$ is rejected and no unit root is present
$$DF_\tau = \frac{\hat \gamma}{SE(\hat \gamma)}$$
If p-value less than 0.01 null hyp rejected so time series is stationary.
partial autocorrelation function (PACF) gives the partial correlation of a stationary time series with its own lagged values,
$$\phi_{1,1} = corr(z_{t+1},z_t), for k=1$$ 
$$\phi_{k,k} = corr(z_{t+k}-\hat z_{t+k},z_t-\hat z_t), for k \ge 2$$ 
$\hat z_{t+k}$ and $\hat z_t$ are linear combinations of $z_{t+1},\cdots , z_{t+k-1}$ that minimize the mean squared error of $z_{t+1}$ and $z_{t+k-1}$ respectively. For stationary processes,
$$\hat z_{t+k} = \beta_1 z_{t+k-1} + \cdots +\beta_{k-1} z_{t+1}$$ 
$$\hat z_{t} = \beta_1 z_{t+1} + \cdots +\beta_{k-1} z_{t+k-1}$$ 
Durbin–Levinson Algorithm
$$\phi_{n, n}=\frac{\rho(n)-\sum_{k-1}^{n-1} \phi_{n-1, k} \rho(n-k)}{1-\sum_{k=1}^{n-1} \phi_{n-1, k} \rho(k)}$$

The order p and q can be determined using the sample autocorrelation function (ACF), partial autocorrelation function (PACF), and/or extended autocorrelation function (EACF) method
 Akaike information criterion (AIC)h
	

corrected AIC for ARIMA models 
 
Bayesian Information Criterion (BIC) 
 
minimize the AIC, AICc or BIC values for a good model

