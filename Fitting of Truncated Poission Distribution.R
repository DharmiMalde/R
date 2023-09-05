#Fitting of Truncated Poission Distribution

#Problem 1

#Fit a Truncated Poission Distribution to the following data and test goodness of fit 
#Data
# x  1   2   3   4   5   6   7   8   9   10
# f 362 299 210 97  53  21  10   6   1   1 

# Solution 
# H0 : Given data fits the truncated poission distribution
# H1 : Given data does not fit truncated poission distribution

x = 1:10
f = c(362,299,210,97,53,21,10,6,1,1)
mean = sum(x*f)/sum(f)
mean

# PMF of TPD is given by
# p(X) = (e^-m)(m^x)/(1-(e^-m))x!

# Mean of TPD is m/(1-(e^-m))
# m[i+1] = mean(1-(e^-m))
m0 = mean
repeat{
  m1 = mean*(1-exp(-m0))
  if(abs(m1-m0)<= 0.00001){
    break
  }
  m0 = m1
}
m0

p_x = dpois(x,m0)/(1-exp(-m0))
p_x
exp_f = round(sum(f)*p_x)
exp_f

#Here last three observations are less than 5 so we will combined them
new_f = c(f[1:6],sum(f[7:10]))
new_f
new_exp_f = c(exp_f[1:6],sum(exp_f[7:10]))
new_exp_f

cal_chisq = sum((new_exp_f-new_f)^2/new_exp_f)
tab_chisq = qchisq(.95,5)
cal_chisq
tab_chisq

if(cal_chisq<tab_chisq){
  cat("Truncated Poisson distribution fit the data \n")
}else{
  cat("Truncated Poisson distribution does not fit the data \n")
}

plot(x,f,type = "b", col = "blue")
points(exp_f , col= "red", type = "b")

