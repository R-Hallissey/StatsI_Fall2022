#############################
# R Hallissey Problem Set 3 #
#############################

# Dataset "Incumbents" downloaded from
# https://github.com/ASDS-TCD/StatsI_Fall2022/tree/main/datasets

# Packages
install.packages("stargazer")
library(stargazer)
install.packages("car")
library(car)

# Question 1
# 1.Difflog voteshare regression
lm(dat$voteshare ~ dat$difflog)
dlvs.lm <- lm(dat$voteshare ~ dat$difflog)
summary(dlvs.lm)
stargazer(dlvs.lm)

# 2. Difflog votershare scatterplot
plot(dat$difflog, dat$voteshare, main 
     = "Difference in cadidates voteshare by their campaign spending")
abline(dlvs.lm)

#3. dvls residuals
dlvs.resid <- resid(dlvs.lm)
dlvs.resid

#4. Prediction equation: Y = B0 + B1xi where Y is predicted value of the OV,
# B0 is the intercept, B1 is the slope of the regression line, and xi a value of
# the the EV. Using the regression coefficient; Y = 0.58 + 0.04xi.

# Question 2.
# 1. Presvote / difflog regression
lm(dat$presvote  ~ dat$difflog)
pvdl.lm <- lm(dat$presvote  ~ dat$difflog)
summary(pvdl.lm)
stargazer(pvdl.lm)

# 2.Presvote / difflog plot 
plot(dat$difflog, dat$presvote, main = 
       "Difference in presidential voteshare by
     candiates campaign spending")
abline(pvdl.lm)

# 3. Residuals for presvote / difflog regression
pvdl.resid <- resid(pvdl.lm)

# 4. Prediction equation: Y = B0 + B1x where Y is predicted 
# value of the OV, B0 is the intercept, B1 is the slope of the regression line, 
# and x a given value of the the EV; Y = 0.51 + 0.02xi.

# Question 3.
# 1. Vote share presidential vote regression 
lm(dat$voteshare ~ dat$presvote)
pvvs.lm <- lm(dat$voteshare ~ dat$presvote)
summary(pvvs.lm)
stargazer(pvvs.lm)

# 2. 
plot(dat$presvote, dat$voteshare, main = 
       "Difference in candidates voteshare by the president's voteshare")
abline(pvvs.lm)

# 3.
pvvs.resid <- resid(pvvs.lm) 

# 4.  Prediction equation: Y = B0 + B1xi where Y is predicted value of the OV,
# B0 is the intercept, B1 is the slope of the regression line, and xi a given
# value of the the EV; Y = 0.44 + 0.39xi. 

# Question 4.
# 1, 
lm(dlvs.resid ~ pvdl.resid)
resid.lm <- lm(dlvs.resid ~ pvdl.resid)
summary(resid.lm)
stargazer(resid.lm)

# 2. scatterplot for residuals regression
plot(pvdl.resid, dlvs.resid, main = 
"Residuals of voteshare and spending model plotted against 
residuals of spending and presidential vote model")
abline(resid.lm)

# 3. Prediction equation: Y = B0 + B1xi where Y is predicted value of the OV,
# B0 is the intercept, B1 is the slope of the regression line, and xi is a given
# value of the the EV. Using the regression coefficient: Y = -5.2 + 2.56xi. 
 
# Question 5
# 1.
lm(dat$voteshare  ~ dat$difflog + dat$presvote)
dlpvvs.mm <- lm(dat$voteshare  ~ dat$difflog + dat$presvote)
summary(dlpvvs.mm)
stargazer(dlpvvs.mm)

#Added variable plot
crPlots(dlpvvs.mm)

# 2. Prediction equation: Y = B0 + B1xi + B1xii where Y is predicted value of the OV,
# B0 is the intercept, B1 is the slope of the regression line, and xi and xii 
# are given values of the the EVs. Y = -0.45 + 0.03xi + 0.25xii.

# 3. The residuals.