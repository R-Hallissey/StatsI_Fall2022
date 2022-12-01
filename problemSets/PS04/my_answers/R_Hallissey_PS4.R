# PROBLEM SET 4
# 29-11-2022

# Packages and data
install.packages(car)
library(car)
data(Prestige)
help(Prestige)
library(stargazer)

# Question 1
head(Prestige)

# Q1.1
Prestige$pros <- ifelse(Prestige$type == "prof", 1, 0)
table(type = Prestige$type, x = Prestige$pro)

# Q1.2
lm.1 <- lm(Prestige$prestige ~ Prestige$income + Prestige$pro
          + Prestige$income:Prestige$pro)
summary(lm.1)

stargazer(lm.1)

# Q1.3
# Y = b0 + b1 + b2 + b3
# Prestige = 21.14 + 0.003*income + 37.78*pro + 0.002*income:pro

# Q1.4
# When controlling for the other variables in the model, workers
# experience a 0.003 increase in prestige, as measured by the
# researchers, per dollar increase in their income.

# Q1.5
# Moving to professional category predicts a 37.78 increase in prestige 
# points, when controlling for income and the interaction
# of income and professional status. 

# Q1.6
# A $1000 increase in salary increases a professionals prestige 
# points by 1
21.14 + 37.78
58.98 + 0.003*1000
aggregate(prestige ~ pros, data = Prestige, mean)

# Q1.7
# At an income of $6000, a non-professional moving to a professional 
# occupation would gain 37.84 prestige points
58.98 + 0.003*6000
21.14 + 0.003*6000
76.98 - 39.14

# Question 2
# 2.1
# P-value .009 is less than alpha .05 so we can reject the null hypothesis
# that there is no reletionship between lawn signs in the precinct and
# Cuccinelli's vote share
T.stat <- .042 / .016
df <- 131 - 2
p.val <- 2*pt(q = T.stat, df = df, lower.tail = F)

#2.2
# P-value is .001 is less than alpha .05 so we can reject the null hypthesis 
# that there is no relationship between lawns signs in the adjacent precinct and
# Cuccinelli's vote share
T.stat.deux <- 0.042/  0.013
df.deux <- 76 - 2
p.val.deux <- 2*pt(q = T.stat.deux, df = df, lower.tail = F)

#2.3
# It is the value of y within the equation if the explanatory variables where 
# equal to 0. In this case, it suggests Cuccinelli's vote share would be .302
# without lawns signs either the precinct or those adjacent. This should probably
# be interpreted as a statistical artifact however.

#2.4
# The R2 of 0.094 suggests the model explains 9.4% of the variation in  Cuccinelli's
# vote share. This suggests the model accounts for a non-trivial of variation
# in vote share but the overwhelming majority of variation is unexplained the 
# EVs in question.
