##########################
##Problem 1 - Question 1##
#########################

##############################
##Steps for Manual Chi-Square#
##############################

########################################################
#Comment: I created objects so I could recall values at#
# a glance. For or each step I punched the numbers.  ###
########################################################

##Row Totals##
#Upper Class##
14 + 6 + 7 -> UC_N
#Lower Class
7 + 7 + 1 -> LC_N

##Column Totals#
#No Stop Column#
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

##Degrees of Freedom##
(2 - 1) * (3 - 1) -> DF

##Alpha##
0.1 -> Alpha

##P-Value = 9.210##
#Null Hypothessis cannot be rejected##
