# Problem 1
# These data represent the growth of two different plant species under three diffenrent watering 
# regimes. The first column shows the levels of the Water variable, this is one of the predictor 
# varfiables and you can see that there are three levels: : Low, Mid and Hi. The nexxt two columns 
# show the growth results for two plant species, labelled vulgaris and sativa. These two columns form
# the second predictor variable.

# Solution
height = c(9,11,6,14,17,19,28,31,32,7,6,5,14,17,15,44,38,37);height
plant = factor(c(rep("Vulgaris",9),rep("sativa",9)));plant
water = factor(c(rep(c("low","med","High"),each = 3, times = 2)));water
#data=read.csv(file.choose("x"))
#data
pw = data.frame(height,plant,water);pw
summary(pw)
pw.aov = aov(height~plant+water, data = pw)
summary(pw.aov)
TukeyHSD(pw.aov, which = "water")
plot(TukeyHSD(pw.aov,conf.level = .95, which = "water"))
