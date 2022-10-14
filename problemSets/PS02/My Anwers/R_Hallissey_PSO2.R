######################################
#####Problem Set 2. Question 1 #######
######################################


## A. Manual Chi Square ################
################################################

##########################################################
# Comment: I created objects so I could recall  values at 
# a glance but for each step I punched the numbers.
###########################################################

########################
##Expected Cell Values##

#Upper Class No Stop
(27 * 21) / 42 -> UC_NS_Exp_Val

#Upper Class Bribe
(27 * 13) / 42 -> UC_B_Exp_Val

#Upper Class Warning
(27*8) / 42 -> UC_W_Exp_Val

#Lower Class No Stop
(15 * 21) / 42 -> LC_NS_Exp_Val

#Lower Class Bribe
(15 * 13) / 42 -> LC_B_Exp_Val

#Lower Class Warning
(15 * 8) / 42 -> LC_W_Exp_Val

##########################
##T-Stats#################

#Upper Class No Stop T-Stat
(14 - 13.5)^2 / 13.5 -> T_UC_NS

#Upper Class Bribe T-Stat
(6 - 8.35)^2 / 8.35 -> T_UC_B

#Upper Class Warning T-Stat
(7 - 5.14)^2 / 5.14 -> T_UC_W

#Lower Class No Stop T-Stat
(7 - 7.5)^2 / 7.5 -> T_LC_NS

#Lower Class Bribe T-Stat
(7 - 4.64)^2 / 4.64 -> T_LC_B

#Lower Class Warning T-Stat
(1 - 2.85)^2 / 2.85 -> T_LC_W

## Chi-Square ##
1.2 + 0.03 + 1.2 + 0.66 + 0.01 + 0.67 -> ChiSq
## Ans: 3.77 ####

########
## B. ##
########

## Degrees of Freedom
(3 -1) * (2 -1)

## P-Value
pchisq(3.77, df=2, lower.tail=F)

## Ans. 0.151. ####################################################
# Null hypothesis that there is no relationship between class and 
# bribe solicitation cannot be rejected ###########################
###################################################################

######
# C. #
######

######################################################################
# Comment. Various  resources make a distinction between 
# standardized and adjusted residuals. I've went with the 
# formula used in the slides, which are called adjusted elsewhere 
######################################################################

# Standardized Residuals #

# Upper class no stop sr 
(14 - 13.5) / sqrt ((1 - 27) * (1 - 21))
# Ans. 0.02

# Upper class bribe sr
(6 - 8.35) / sqrt ((1- 27) * (1- 13))
# Ans. -0.13 

# Upper Class warning sr
(7 - 5.14) / sqrt ((1 - 27) * (1 - 8))
# Ans. 0.13

# Lower class no stop sr 
(7 - 7.5) / sqrt ((1 - 15) * (1 - 21))
# Ans. -0.02

# Lower class bribe sr
(7 - 4.64) / sqrt ((1- 15) * (1- 13))
# Ans. 0.18

# Lower Class warning sr
(1- 2.85) / sqrt ((1 - 15) * (1 - 8))
# Ans. -0.18 

######
# D. #
###### 
# The standardized residuals give a standardized measure of the 
# difference between the observed and predicted values. Positive residuals 
# indicate the cell frequency was higher than expected and negative indicate
# was lower than expected. 
#
# As the difference between our observed and predicted values is not 
# statistically significant here, our residuals are all very small. 
# Were the difference between our observed and predicted values 
# significant, the standardized residuals would give a useful
# indication of which cells were contributing moat to that finding. 

##############
# Question 2. 
##############

######
# A. #
######
# Null Hypothesis. There is no relationship between village council heads 
# being reserved for women and drinking water facilities being repaired or
# newly installed.
#
# Alt Hypothesis. There is a relationship between village council heads 
# being reserved for women and drinking water facilities being repaired 
# or newly installed. 

######
# B. #
######

str(women)
lm(women$water ~ women$reserved) -> lm1
summary(lm1)
lmplot (lm1)


######
# C. #
######

# 95% Confidence Interval for Beta 1
9.252 - (2.189 * 3.948)
9.252 + (2.189 * 3.948)

# Lower bound: 0.60
# Upper bound: 17.89

# There is a statistically reliable (p = 0.0197) and positive relationship 
# between whether the council head is reserved for women and whether drinking 
# water facilities are repaired or installed.
#
# At the 95% confidence level, where the council head reserved for women 
# the number the number drinking water facilities that are repaired or newly 
# installed increases by as few as 0.6 and as many 17.89.