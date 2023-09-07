# problem 1
# Perform ANOVA for given data in csv format (tyre)
data = read.csv(file.choose("anokhi"))
data
View(data)
attach(data)
View(data)
boxplot(MILEAGE~BRANDS, main = "Fig. -1: Boxplot of trat.", col = rainbow(4))
model1 = aov(MILEAGE~BRANDS)
summary(model1)
TukeyHSD(model1)
par(oma=c(0,5,0,0))
plot(TukeyHSD(model1,conf.level = .95),las =1, col = "REd")
y