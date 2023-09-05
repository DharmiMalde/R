#Unit 1

#Obtain probability distribution of x where x is no of sports showing when six sided symmetric
#die is rolled 
#Stimulate the random samples of sixe 100, 200 and 500 and verify the frequency of interpretation of 
#probability

# Making sample of 100 numbers
n1 = 100
X1 = sample(1:6,100,replace = T)
X1_t = table(X1)
X1_t

#Making sample of size 200
n2 = 200
X2 = sample(1:6,200,replace = T)
X2_t = table(X2)
X2_t

#Making sample of size 500
n3 = 500
X3 = sample(1:6,500,replace = T)
X3_t = table(X3)
X3_t

# Entering data to dataframe
x = data.frame(X1_t,X2_t,X3_t)
x

# Probability of each data point
p_X1 = X1_t/n1
p_X1

p_X2 = X2_t/n2
p_X2

p_X3 = X3_t/n3
p_X3

var(p_X1)
var(p_X2)
var(p_X3)

C_X1 = cumsum(p_X1)
C_X2 = cumsum(p_X2)
C_X3 = cumsum(p_X2)

#Plote
plot(1:6,C_X3, main = "Cumulative and Probabilty plot")
points(p_X3, col = "Red")

