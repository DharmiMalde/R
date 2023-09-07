# Problem 1
# A manufacturing company has purchased three new machines of different make and wish to determine 
# whether one of them is faster than others.They observed machines and collect the data as following
# Machine A : 25 30 36 38 31
# Machine B : 31 39 38 42 35
# Machine C : 24 30 28 25 28
# Use Analysis of variance technique and determine whether the machines are significantly 
# different or not

# H0 : All the machines have same speed
# H1 : Atleast one of the machine has different speed

M1 = c(25,30,36,38,31)
M2 = c(31,39,38,42,35)
M3 = c(24,30,28,25,28)
d = stack(list("Machine 1" = M1, "Machine 2" = M2, "Machine 3" = M3))
d
names(d)
attach(d)
View(d)
boxplot(values~ind)
ANOVA_Res = aov(values~ind)
ANOVA_Res 
summary(ANOVA_Res)

TukeyHSD(ANOVA_Res, conf.level = 0.99 )
par(oma = c(0,5,0,0))
plot(TukeyHSD(ANOVA_Res, conf.level = 0.99 ), las = 1, col = "Red")

# Problem 2 
# Here, we'll use the built-in R data set named PlantGrowth. 
# It contains the weight of plants obtained under a control and two different treatment conditions.

data = data("PlantGrowth")
attach(PlantGrowth)
View(PlantGrowth)
boxplot(weight~group, main = "Fig. -1: Boxplot of trat.", col = rainbow(3))
model1 = aov(weight~group)
summary(model1)
TukeyHSD(model1 , conf.level = .95)
par(oma=c(0,5,0,0))
plot(TukeyHSD(model1,conf.level = .95),las =1, col = "REd")


