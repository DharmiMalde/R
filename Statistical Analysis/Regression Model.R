height = c(151,174,138,186,128,136,179,163,152,131)
weight = c(63,81,56,91,47,57,76,72,62,48)
cor(height,weight)
plot(height,weight)

model = lm(weight~height)
abline(model)
summary(model)
X = data.frame(height = 170)
y_predict = predict(model,X)
y_predict
y = (.67461*170)-38.45509
y
y_predict_2 = predict(model)
y_predict_2
y3 = predict(model,data.frame(height=c(151,171,162)))
y3

# RMSE 
rmse = sqrt(sum((weight-y_predict_2)^2)/10)
rmse



# Mt cars data set
View(mtcars)
attach(mtcars)
cor(mtcars)
data = data.frame(mtcars$mpg,mtcars$disp,mtcars$hp,mtcars$drat,mtcars$wt,mtcars$qsec,mtcars$vs)
cor(data)
model_2 = lm(mtcars$disp~mtcars$wt)
y = predict(model_2)
results = data.frame(mtcars$wt,mtcars$disp,y)
results

rmse = sqrt(sum((mtcars$disp-y)^2))/32
rmse
plot(mtcars$wt,mtcars$disp)
abline(model_2)
