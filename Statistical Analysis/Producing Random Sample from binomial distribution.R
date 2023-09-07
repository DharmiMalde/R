#Consider 3 binomial distributions with n = 5 and p = 0.8,0.5 and 0.2
# Draw a random sample of size 100 from each of three distribution and plot the graph
par(mfrow = c(1,3))
n = 5
p_1 = .8
p_2 = .5
p_3 = .2

# Drawing Emirical graph for p = .8
x_1 = rbinom(100,n,p_1)
x1_t = table(x_1)
x1 = sort(unique(x_1))
plot(x1,x1_t/100, "h", main = "p = 0.8" , lwd = 2)
abline(v = mean(x_1), col = "red")

# Drawing Emirical graph for p = .5
x_2 = rbinom(100,n,p_2)
x2_t = table(x_2)
x2 = sort(unique(x_2))
plot(x2,x2_t/100, "h", main = "p = 0.5" , lwd = 2)
abline(v = mean(x_2), col = "red")

# Drawing Emirical graph for p = .2
x_3 = rbinom(100,n,p_3)
x3_t = table(x_3)
x3 = sort(unique(x_3))
plot(x3,x3_t/100, "h", main = "p = 0.2" , lwd = 2)
abline(v = mean(x_3), col = "red")

x_1;x_2;x_3
