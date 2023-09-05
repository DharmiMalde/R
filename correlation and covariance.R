# Finding covariance and corelataion between various variables
# When data is dependent use karl pearson otherwise use spearman as method

# Data Set 1
View(JohnsonJohnson)
attach(JohnsonJohnson)

cov(seq(1,84, by = 1),JohnsonJohnson, method = "spearman")
cor(seq(1,84, by = 1),JohnsonJohnson, method = "spearman")
plot(seq(1,84, by = 1),JohnsonJohnson)

# Data Set 2
View(mdeaths)
attach(mdeaths)

cov(seq(1,72, by = 1),mdeaths, method = "spearman")
cor(seq(1,72, by = 1),mdeaths, method = "spearman")
plot(seq(1,72, by = 1),mdeaths)

# Do matrix correlation thing
cor(beaver1)

# Find correlation coefficient for the following data and give your conclution
# w 2,5,6,3,8,1
# x 2,4,5,2,8,3
# y 7,8,6,8,9,5
# z 1,2,2,4,2,5

# Parametric Correlation - Pearson correlation. It measures a lilnear dependent between two 
# variables (x and y)

cor(data.frame(c(2,5,6,3,8,1),c(2,4,5,2,8,3),c(7,8,6,8,9,5),c(1,2,2,4,2,5)), method = "pearson")

# Test correlation between w and y 
cor.test(c(2,5,6,3,8,1),c(7,8,6,8,9,5))

