14 + 6 + 7
27 / 6
UC_M <- 4.5
  
7 + 7 + 1
15 / 7
LC_M <- 2.14

14 + 6 + 7

##Row Totals##
#Upper Class
14 + 6 + 7 -> UC_N
#Lower Class
7 + 7 + 1 -> LC_N

##Column Totals
#No Stop Column
21 -> No_Stop
#Bribe Column
13 -> Bribe
#Warning Column
8 -> No_Bribe

##Grand Total Sample##
27 + 15 -> S


###########################
#Null Values for Each Cell#
###########################
#Upper Class No Stop  Null Value#
(21 * 27) / 42 -> UC_Null_No_Stop
#Upper Class Bribe Null Value#
(13 * 27) / 42 -> UC_Bribe_Null
#Upper Class No Bribe Null
(8 * 27) / 42 -> UC_No_B_Null
#Lower Class No Stop Null#
(21 * 15) / 42 -> LC_No_Stop_Null
#Lower Class Bribe Null#
(13 * 15) / 42 -> LC_Bribe_Null
#Lower Class No Bribe
(8 * 15) / 42 -> LC_No_B_Null

#########################
##T-stats for each cell##
#########################
#Upper Class Not Stopped
(14 - 13.5)^2 / 13.5 -> UC_No_Stop_T_Stat
#Upper Class Bribed
(6 - 8.37)^2 / 8.37 -> UC_Bribe_T_stat
#Upper Class Warning
(7 - 5.14)^2 / 5.14 -> UC_War_T_Stat
#Lower Class Not Stopped
(7 - 7.5)^2 / 7.5 -> LC_No_Stop_T_Stat
#Lower Class Bribed T-Stat
(7 - 4.64)^2 / 4.64 -> Lc_bribe_t_stat
#Lower Class Warning T-Stat
(1 - 2.85)^2 / 2.85 -> lc_warning_t_stat

##Chi Square##
0.01 + 0.67 + 0.67 + 0.03 + 1.2 + 1.2 -> T_Stat
#Ans 1. 3.78#

########################
#Problem 1. Question 2.#
########################

##Degrees of Freedom##
(2 - 1) * (3 - 1) -> DF
##Alpha##
9.210 -> Alpha

##Degrees of Freedom##
(2 - 1) * (3 - 1) -> DF

##Alpha = 0.1##

##P-Value = 0.28##
pchisq(3.78, df=3, lower.tail=F)


########################################################
#Null Hypothesis that there is no relationship between #
# class and bribes solicited cannot be rejected ########
########################################################     

##############################
#Problem 1. Question 3. ######
##############################

##Standardized Residuals for each cell##

#Upper Class no Stop Residual#
(14 - 13.5) / sqrt(13.5)
##Ans. 0.13##

#Upper Class Bribe Residual#
(6 - 8.35) / sqrt(8.35)
##Ans. -0.81##

#Upper Class Warning Residual#
(7 - 5.14) / sqrt(5.14)
##Ans. 0.82##

#Lower Class No Stop Residual#
(7 - 7.5) / sqrt(7.5)
##Ans. -0.18##

#Lower Class Bribe#
(7 - 4.64) / sqrt(4.64)
#Ans. 1.09#

##Lower Class Warning##
(1 - 2.85) / sqrt (2.85)
#Ans. -1.09#

#Adjusted residual = (observed – expected) / 
#  √[expected x (1 – row total proportion) x (1- column total proportion)]

##Adjusted Residual##

##Upper Class No Stop##
(14 - 13.5) / sqrt(13.5 * (1 - 21) * (1 - 27))
##Ans. 0.005 ##

##Upper Class Bribe Residual
(6 - 8.35) / sqrt(8.35 * (1 - 13) * (1 - 27))
#Ans. -0.04#

##Upper Class Warning Residual##
(7 - 5.14) / sqrt(5.14 * (1 - 8) * (1 - 27))
#Ans. 0.60

##Lower Class No Stop##
(7 - 7.5) / sqrt(7.5 * (1 - 21) * (1 - 15))
##Ans. 0.01 ##

##Lower Class Bribe Residual
(7 - 4.64) / sqrt(7 * (1 - 13) * (1 - 15))
#Ans. 0.06#

##Lower Class Warning Residual##
(1 - 2.85) / sqrt(5.14 * (1 - 8) * (1 - 15))
#Ans. -.0.82

###############################
#Problem 1. Question 4##
## Residuals are the difference between observed and predicted ########
## they give us indication of what is not being captured by our test ##
########################################################################