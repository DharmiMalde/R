mtcars
View(mtcars)
par(mfrow = c(2,2))
x = mtcars$wt
y = mtcars$mpg
z = mtcars$disp

# Plot with main and axis titles
#Change point shape (pch = 19) and remove frame
plot(x,y,main = "Main title", xlab = "Wt", ylab = "mpg", pch = 19,frame.plot = FALSE)
plot(x,y,main = "Main title", xlab = "Wt", ylab = "mpg", pch = 19,frame.plot = TRUE)

#Add regression line
plot(x,y,main = "Main title", xlab = "Wt", ylab = "mpg", pch = 10,frame.plot = FALSE)
abline(lm(y~x,data = mtcars), col="blue")

#Ploting scatterplot in 3D
library(scatterplot3d)
scatterplot3d(x,y,main = "Main title", xlab = "Wt", ylab = "mpg", pch = 19)

#Displaing all the graph together
my_plot = pairs(~mpg+disp+wt,data = mtcars, main= "Simple Scatterplot Matrix")

#my_dataframe = data.frame(x,y,z)
#regression_line = function(my_data){
#  for i in range(3):
    
#}


years = c(1996,1997,1998,1999,2000)
Arts = c(2810,3542,4301,5362,6593)
Sciences = c(890,1363,1662,2071,2752)
Commers = c(540,471,652,895,1113)
students = matrix(c(Arts,Sciences,Commers),nrow = 5)
students
cname = c("Arts","Science","Commers")
rownames(students)= years
colnames(students) = cname
students
totalstud = margin.table(students,1)
students
totalstud
barplot(totalstud,col = "blue", main = "simple bar plot")
totalstud1 = margin.table(students,2)
totalstud1
barplot(totalstud1,col = "pink", main = "simple bar plot")
barplot(t(students),col = c("pink","blue","yellow"),main = "subdicided bar plot", beside = FALSE)
barplot(t(students),col = c("pink","blue","yellow"),main = "multiple bar diagram", beside =TRUE) 
legend(locator(1),legend = c("ar","sc","co"),fill = c("pink","blue","red",horiz = T,cox=0.5))
