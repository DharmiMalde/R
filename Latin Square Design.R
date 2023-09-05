# Problem 1
# An experiment was carried out to determine the effect of claying the ground 
# on the field of barley grains; amount of clay used were as follows:
# A: No clay
# B: Clay at 100 per acre
# C: Clay at 200 per acre
# D: Clay at 300 per acre
# 1. Perform ANOVA and calculate the critical differnce between the means of  
# any two treatment mean yields
# 2. Obtain the efficiency of this design relative over its layout as RBD & CRD
yield=c(29.1,18.9,29.4,5.7,16.4,10.2,21.2,19.1,5.4,38.8,24.0,37.0,24.9,41.7,9.5,28.9)
claycol=factor(c(rep(c('c1','c2','c3','c4'),4)))
clayrow=factor(c(rep('r1',4),rep('r2',4),rep('r3',4),rep('r4',4)))
claytret=factor(c("D","B","C","A","C","A","D","B","A","D","B","C","B","C","A","D"))
pw=data.frame(yield,clayrow,claycol,claytret)
summary(pw)
# Conclution
pw.aov=aov(yield~clayrow+claycol+claytret);pw.aov
summary(pw.aov)
# Here we conclude that the Treatments is rejected at alpha=0.01
# Hence H0 for Treatments is rejected at 99% level of significance
# Hence we calculate critical difference
TukeyHSD(pw.aov,which='claytret',conf.level = 0.99 )
plot(TukeyHSD(pw.aov,which='claytret',conf.level = 0.99 ),las=1,col='purple')
# Here treatment pairs (A,C) and (A,D) differ significantly