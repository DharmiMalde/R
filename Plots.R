mtcars
attach(mtcars)
View(mtcars)
par(mfrow=c(2,2))

#Ploting mtcars
plot(mtcars$hp)
plot(mtcars$hp, main = "Simple Plot")
plot(mtcars$hp, main = "Simple Plot", type = "l")
plot(mtcars$hp, main = "Simple Plot", type = "b")
plot(mtcars$hp, main = "Simple Plot", type = "h")
plot(mtcars$hp, main = "Simple Plot", type = "s")

#HISTOGRAM
hist(mtcars$hp,main = "Histogram of HP of cars", col="purple")
abline(v= median(mtcars$hp),col="grey",lwd = 4)
hist(mtcars$hp, main = "Histogram of HP of cars" , breaks = 12, col ="purple")
hist(mtcars$hp, main = "Histogram of HP of cars" , breaks = 12, probability =T,col ="purple")
curve(dnorm(x,mean(mtcars$hp),sd(mtcars$hp)),add = T)

#Line chart
quakes
attach(quakes)
View(quakes)
x = quakes$depth
y = quakes$mag
plot(x,y,pch = 1, lty = 1,xlab = "depth",ylab = "magnitude",main = "earthquakes")

#2nd try
x1 = seq(0,2, by = 0.2)
y1 = x1
y2 = y1^2
y3 = y1^3
plot(x1,y1,"o",xlab = "X axis",ylab = "y axis", main = "Line chart", col="red", ylim = range(0,max(y3)))
lines(x1,y2,"o", col="blue")
lines(x1,y3,"o", col="green")
