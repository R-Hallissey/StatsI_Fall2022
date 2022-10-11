#####################
# load libraries
# set wd
# clear global .envir
#####################

# remove objects
rm(list=ls())
# detach all libraries
detachAllPackages <- function() {
  basic.packages <- c("package:stats", "package:graphics", "package:grDevices", "package:utils", "package:datasets", "package:methods", "package:base")
  package.list <- search()[ifelse(unlist(gregexpr("package:", search()))==1, TRUE, FALSE)]
  package.list <- setdiff(package.list, basic.packages)
  if (length(package.list)>0)  for (package in package.list) detach(package,  character.only=TRUE)
}
detachAllPackages()

# load libraries
pkgTest <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[,  "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg,  dependencies = TRUE)
  sapply(pkg,  require,  character.only = TRUE)
}

# here is where you load any necessary packages
# ex: stringr
# lapply(c("stringr"),  pkgTest)

lapply(c(),  pkgTest)

# set working directory
setwd("~/Documents/GitHub/QTM200Spring2021/problem_sets/PS1")

library(ggplot2)

#####################
# Problem 1
#####################

##Question 1##

y <- c(105, 69, 86, 100, 82, 111, 104, 110, 87, 108, 87, 90, 94, 113, 112, 
       98, 80, 97, 95, 111, 114, 89, 95, 126, 98)


#Sample Size
n <- length(y)
#Sample Mean
Mean <- mean(y)
#Sample Standard Deviation
SD <- sd(y)
#Standard Error
SE <- SD / sqrt(n)
#Alpha
alpha <- 0.10
#T-Score
t.score = qt(p=alpha/2, df=(n)-1,lower.tail=F)
#Margin of Error: Two methods. Proceeded with Second.
MoE <- qt(0.95,df=n-1)*SD/sqrt(n)
margin.error <- t.score * SE
#Alpha
alpha <- 0.10
#Lower and Upper Bound Interval
lowerinterval <- Mean - margin.error
upperinterval <- Mean + margin.error

##Question 2##

t.test(y, mu= 100, alternative = 'greater')

#####################
# Problem 2
####################

#Question 1#

expenditure
str(expenditure)
attributes(expenditure)

##Plot for housing assistance and GDP##
plot(expenditure$X1, expenditure$Y)

##Plot for housing assistance and finacial insecurity
plot(expenditure$X2, expenditure$Y)

##Plot for housing assistance and urban residents##
plot(expenditure$X3, expenditure$Y)

##Regressions for relationships between each##

regression1 <- lm(Y~X1, data=expenditure)
summary(regression1)

regression2 <- lm(Y~X2, data=expenditure)
summary (regression2)

regression3 <- lm(Y~X3, data=expenditure)
summary (regression3)

##Question 2##

boxplot(expenditure$Y~expenditure$Region)

#Question 3#

ggplot(expenditure, aes(X1, Y)) +
  geom_line(aes(colour = Region)) +
  facet_grid(Region ~ .)
