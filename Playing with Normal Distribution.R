# let X follows normal with mean 30 and variance 16
# Find P(30<x<35), P(x>= 40)

pnorm(35,30,4)-pnorm(30,30,4) # ------ 1
1-pnorm(40,30,4) # -------- 2

# Find the following probabilities for standard normal variate
#P(x<= 2), P(x>2), P(0.84<x<2.5)
pnorm(2,0,1) # ----------- 1
1-pnorm(2,0,1) # --------- 2
pnorm(2.5,0,1)-pnorm(0.84,0,1)

# X follows standard normal distribution
# find value of c such that
# 1. P(x< c) = 0.1151  2. P(x<c) = .8238   3.P(1<x<c) = 0.1525   4. P(-c<x<C) = 0.8161
qnorm(.1151,0,1) # ------ 1.
qnorm(.8238)  # ----------- 2.
qnorm(pnorm(1)+.1525) # ------- 3.
qnorm(0.5+(0.8161/2)) # -------- 4.

pnorm(2.503116)-pnorm(1) # verifing the answer for 3.
pnorm(1.328842)-pnorm(-1.328842) # verifing the answer for 4.

# Draw a random sample of size 20 from normal distribudgtytion with mean 5 and standard deveation 2
# Find mean, median and sd of sample
rd_sample = rnorm(20,5,2)
mean(rd_sample)
median(rd_sample)
var(rd_sample)
((sum(rd_sample^2)/20)-(mean(rd_sample)^2))

# The mean yeild of 1 acer plot is 662 kg with a standaed deviation 32 assuming normal 
# distribution How many one acer plot in a batch of 1000 plot



# Fit the Normal Distribution and test goodness of fit for the following data:
midx = seq(62.5,97.5, length = 8)
midx
f = c(3,21,150,335,326,135,26,4)
x = rep(midx,f)
mean_x = mean(x)
sd_x = sd(x)

l = seq(60,100,length = 9)
l
cdf = round(pnorm(l,mean_x,sd_x),4)
cdf
pdf = diff(c(0,cdf))
pdf
exp_fre = round(sum(f)*pdf)
exp_fre
f
n_f = c(sum(f[1:2]),f[3:6],sum(f[7:8]))
n_f
n_exp_fre = c(sum(exp_fre[1:2]),exp_fre[3:6],sum(exp_fre[7:8]))
n_exp_fre
