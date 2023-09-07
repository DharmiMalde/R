#FITTING OF TRUNCATED BINOMIAL DISTRIBUTION
#PROBLEM 1
x = 1:9
f =c(2,10,47,126,126,99,70,18,2)
mean_x = sum(x*f)/sum(f)
mean_x
n = max(x)

# Finding p for truncated binomial using iterative method
p0 = mean_x/n
i = 0
itr = 0
cat ("initial p",p0)
repeat{
  p1 = (mean_x/n)*(1-(1-p0)^n)
  if(abs(p1-p0)<0.00001){
    break
  }
  p0=p1
  cat("iteratribut = ", itr,"\n")
  cat("p is",p0,"\n")
  itr = itr+1
  i=i+1
}
p1
itr

P_x = dbinom(x,n,p1)/(1-(1-p1)^n)
P_x
exp_x = round(sum(f)*P_x)
exp_x # here first and last elements are lesser than 5 so we will combine 1 and 2 , 7 and 8

n_exp_x = c(sum(exp_x[c(1,2)]),exp_x[3:7],sum(exp_x[c(8,9)]))
n_f = c(sum(f[c(1,2)]),f[3:7],sum(f[c(8,9)]))
cal_chisq = sum((n_exp_x-n_f)^2/n_exp_x)
tab_chisq = qchisq(.95,5)
cal_chisq
tab_chisq

if(cal_chisq<tab_chisq){
  cat("Truncated binomial distribution fit the data \n")
}else{
  cat("Truncated binomial distribution does not fit the data \n")
}

plot(x,f,lwd=2,type = "b")
points(adj,lwd=1,col = "red")
# Question 2:
x = 1:8
f =c(6,24,63,64,50,36,10,1)
mean_x = sum(x*f)/sum(f)
mean_x
n = max(x)

# Finding p for truncated binomial using iterative method
p0 = mean_x/n
i = 0
itr = 0
cat ("initial p",p0)
repeat{
  p1 = (mean_x/n)*(1-(1-p0)^n)
  if(abs(p1-p0)<0.00001){
    break
  }
  p0=p1
  cat("iteratribut = ", itr,"\n")
  cat("p is",p0,"\n")
  itr = itr+1
}
p1
itr

P_x = dbinom(x,n,p1)/(1-(1-p1)^n)
P_x
exp_x = round(sum(f)*P_x)
exp_x # here last element is lesser than 5 so we will combine 7 and 8
n_exp_x = c(exp_x[1:6],sum(exp_x[c(7,8)]))
n_f = c(f[1:6],sum(f[c(7,8)]))
cal_chisq = sum((n_exp_x-n_f)^2/n_exp_x)
tab_chisq = qchisq(.95,5)
cal_chisq
tab_chisq

if(cal_chisq<tab_chisq){
  cat("Truncated binomial distribution fit the data \n")
}else{
  cat("Truncated binomial distribution does not fit the data \n")
}








