# Consider the results given in the following table for an experiment involving six treatments in 
# four randomised blocks. The treatments are indicated by numbers within parantheses
# Data is directly oput in 
#Test wheter the treatments differ signigicantly. Also
# 1. Detemine the cfritival difference between the means of any two treatmnents, and 
# 2. Obtain the efficiency of this design relative to its layout as CRD

# Data
#  T-1  T-2  T-3  T-4  T-5  T-6
# 24.7 20.6 27.7 16.2 16.2 24.9 Block 1
# 27.3 28.8 22.7 15.0 17.0 22.5 Block 2
# 38.5 39.5 36.8 19.6 15.4 26.3 Block 3
# 28.5 31.0 34.9 14.1 17.7 22.6 Block 4


# Solution
data = c(24.7, 20.6, 27.7, 16.2, 16.2, 24.9, 27.3, 28.8, 22.7, 15.0, 17.0, 22.5, 38.5, 39.5, 36.8, 19.6, 15.4, 26.3, 28.5, 31.0, 34.9, 14.1, 17.7, 22.6);data
#data = scan()
Block = factor(c(rep("Block 1",6),rep("Block 2",6),rep("Block 3",6),rep("Block 4",6)));Block
Treatments = factor(c(rep(c("T1","T2","T3","T4","T5","T6"), times = 4)));Treatments
pw = data.frame(data,Block,Treatments)
pw
summary(pw)
pw.aov = aov(data~Block+Treatments, data = pw);pw.aov
summary(pw.aov)
TukeyHSD(pw.aov, which = "Treatments" )
plot(TukeyHSD(pw.aov,conf.level = .95, which = "Treatments"))

# Efficiency of RBD over CRD
# E = r(t-1)*Se^2 + (r-1)*sb^2/(rt-1)*se^2
E = ((6*3*15.31)+(5*73.14))/(23*15.31);E


