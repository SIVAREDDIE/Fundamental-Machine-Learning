getwd()

supermarket <- read.csv("supermarket_sales.csv", header = TRUE, sep = ",")

is.null(supermarket)
sum(is.na(supermarket))

library(fBasics)

library(e1071)

library(moments)

summary(supermarket)

summary(Unit.price)
sd(supermarket$Unit.price)
var(supermarket$Unit.price)
kurtosis(supermarket$Unit.price)
skewness(supermarket$Unit.price)

summary(Total)
sd(supermarket$Total)
var(supermarket$Total)
kurtosis(supermarket$Total)
skewness(supermarket$Total)

summary(Total)
sd(supermarket$Total)
var(supermarket$Total)
kurtosis(supermarket$Total)
skewness(supermarket$Total)

summary(Tax.5.)
sd(supermarket$Tax.5.)
var(supermarket$Tax.5.)
kurtosis(supermarket$Tax.5.)
skewness(supermarket$Tax.5.)


sd(supermarket$cogs)
var(supermarket$cogs)
kurtosis(supermarket$cogs)
skewness(supermarket$cogs)

summary(gross.income)
sd(supermarket$gross.income)
var(supermarket$gross.income)
kurtosis(supermarket$gross.income)
skewness(supermarket$gross.income)

plot(supermarket$Total,supermarket$Tax.5.,xlab ="total" , ylab = "tax")
#as we know tax and total income has perfect linear relationship and correlation is 1 so, we are able to draw pefect line when we are ploting the scatterplot


#Transformation- since gross income is always greater than zero value so it has right skewness to make it in distribution we have transformed data into log normal distribution 

log(supermarket$gross.income)
mean(supermarket$gross.income)
median(supermarket$gross.income)
sd(supermarket$gross.income)
var(supermarket$gross.income)
supermarket$gross.income_ztransformation = (supermarket$gross.income) - mean(supermarket$gross.income)/sd(supermarket$gross.income)
supermarket$gross.income_ztransformation

density(log(supermarket$gross.income))

plot(density(log(supermarket$gross.income)),cex= 0.1,bty ="n")
abline(v=mean(log(supermarket$gross.income)))
abline(v=mean(log(supermarket$gross.income))+ sd(log(supermarket$gross.income)))
abline(v=mean(log(supermarket$gross.income))- sd(log(supermarket$gross.income)))

#In this below table depicts that people are intersted on different productlines that we have segararted according to gender
table(supermarket$Gender,supermarket$Product.line)

#In this below table depicts that % people are intersted on different productlines that we have segararted according to gender
prop.table(table(supermarket$Gender,supermarket$Product.line))

#Reference
#https://www.kaggle.com/caozhiyu0720/starter-supermarket-sales-84094115-8/data
#https://stats.stackexchange.com/questions/68394/plot-log-normal-distribution-in-r
#https://r-coder.com/plot-r/