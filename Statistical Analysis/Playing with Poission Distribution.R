# RANDOM SAMPLE AND FITTING OF POISSON DISTRIBUTION

#Compute p(x>3),P(x>8)and p(x>12) with parameters 0.2,2.5,5

# for parameter 0.2
p1 = 1-ppois(3,.2)
p1

# Plotting
plot(1:3,dpois(1:3,.2),"h", main = "lambda = 0.2")
points(1:3,dpois(1:3,0.2),col = "red")

# For parameter 2.5
p2 = 1-ppois(8,2.5)
p2


# Plotting
plot(1:8,dpois(1:8,2.5),"h", main = "lambda = 2.5")
points(1:8,dpois(1:8,2.5),col = "red")


# For parameter 5
p3 = 1-ppois(12,5)
p3

# Plotting
plot(1:12,dpois(1:12,5),"h", main = "lambda = 5")
points(1:12,dpois(1:12,5),col = "red")

# The Average number of accidents occuring in an industrial plant during a day is 3.
#Compute probability that no accident occurs on a day, at most 2 

#We have to compute probability that no accident occur i.e P(x=0)
p_0 = dpois(0,3)
p_0

P_2 = ppois(2,3)
P_2

#More than 4 accident occur
P_3 = 1-ppois(4,3)
P_3


#Example 3
# Draw random sample of sixes 10, 50 and 100 from the distribution X with mean 1.5.
#Find mean and variance
n= 10
x = rpois(n,1.5)

sample_mean = mean(x)
sample_mean

sample_variance = (sum(x^2)/n)-(sample_mean^2)
sample_variance

n= 50
x = rpois(n,1.5)

sample_mean = mean(x)
sample_mean

sample_variance = (sum(x^2)/n)-(sample_mean^2)
sample_variance


n= 100
x = rpois(n,1.5)

sample_mean = mean(x)
sample_mean

sample_variance = (sum(x^2)/n)-(sample_mean^2)
sample_variance
