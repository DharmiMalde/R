# Question 1
# An experiment was planned to study the effect of sulphate of potash and super phosphate on the 
# yield of patatoes. All the combinations of 2 levels of super phosphate [0 cent (p0) and 5 cent
# (p1)/acre] and two levels of sulphate of potash [0 cent(k0) and 5 cent (k1/acer)] were studied 
# in a randomised block design with 4 replications for each. The (1/170) yields acer obtained are
# given in table 
# Analyse the data and give your conclusions.

# Solution

yld = matrix(c(23,26,29,28,25,36,20,31,22,40,20,24,38,38,30,34),byrow = T, ncol = 4)
dimnames(yld) = list(c("(1)","k","p","kp"),c("Rep 1","Rep 2","Rep 3","Rep 4"))
yld

blocks = factor(rep(c("B1","B2","B3","B4"),4))
k = c(-1,1,-1,1)
p = c(-1,-1,1,1)
yld = c(t(yld))
yld
kf = rep(as.factor(k),rep(4,4));kf
pf = rep(as.factor(p),rep(4,4));pf
kp = k*p
blocks
fac.aov = aov(yld~blocks+kf*pf)
summary(fac.aov)

# Question 2
# Below is given the plan and yields of 2^2 factorial experiment involving 2 factors N and S each
# at 2 levels 0 and 1
# Analyse the design

data = matrix(c(117,120,111,108,73,81,124,124,127,131,138,158,106,117,114,112,97,117,125,124,126,125,95,125),byrow = T, ncol = 6)
data
dimnames(data) = list(c("(1)","n","s","ns"),c("rep 1","rep 2","rep 3","rep 4","rep 5","rep 6"))
data
blocks = factor(rep(c("B1","B2","B3","B4","B5","B6"),4))
n = c(-1,1,-1,1)
s = c(-1,-1,1,1)
data = c(t(data))
data
nf = rep(as.factor(n),rep(6,4));nf
sf = rep(as.factor(s),rep(6,4));sf
blocks
fac.aov = aov(data~blocks+nf*sf)
summary(fac.aov)
