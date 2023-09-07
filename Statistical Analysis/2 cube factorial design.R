# Question 1
# DATA
# Treatments  1   n   k   nk   p  np  kp nkp
# Block 1    101 106 265 291 312 373 391 450 
# Block 2    106 89  272 306 324 338 407 449
# BLock 3    87  128 279 334 323 324 423 471
# Block 4    131 103 302 272 324 361 435 437

yield = c(101,106,265,291,312,373,391,450,106,89,272,306,324,338,407,449,87,128,279,334,323,324,423,471,131,103,302,272,324,361,435,437)
N = factor(rep(c(0,1,0,1,0,1,0,1),4))
K = factor(rep(c(0,0,1,1,0,0,1,1),4))
P = factor(rep(c(0,0,0,0,1,1,1,1),4))
blocks = factor(rep(c(1,2,3,4),each = 8))
length(yield)
fac = data.frame(N,K,P,blocks,yield)
fac
fac.aov = aov(yield~blocks+N*K*P)
summary(fac.aov)