# Testing the normality of data with the help of 

normaldata = rnorm(200)
non_normaldata = rexp(200,rate = 3)

par(mfrow = c(1,2))

hist(normaldata, main = "Normal Data")
hist(non_normaldata, main = "Non Normal Data")

attach(PlantGrowth)
View(PlantGrowth)
hist(PlantGrowth$weight , main = "Plant Weight Data")

# Testing using qqnorm and qqline

qqnorm(normaldata)
qqnorm(non_normaldata)
qqnorm(PlantGrowth$weight)
qqline(PlantGrowth$weight)

# Testing the normality of data using shaporo-Wilk test
shapiro.test(normaldata)
shapiro.test(non_normaldata)
shapiro.test(PlantGrowth$weight)

# Testing the normality of data using Kolmogorov-Smirnov Test
ks.test(normaldata,"pnorm")
ks.test(PlantGrowth$weight,"pnorm",mean(PlantGrowth$weight),sd(PlantGrowth$weight))
