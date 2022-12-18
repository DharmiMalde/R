# Testing an condition and acting on it
#for loop - execute a loop fix numver of time
# while loop - execute a loop while a condition is true
# repeat - execute an infinite loop (must break out of it to stop)
# break - break the execution of a loop
# Next - skip an iteration of a loop

#if structure
x = 4
if (x<6) {
  cat("value of x is less than 6")
}else {
  cat("value of x is not less than 6") 
}
y = 2
if (y<2) {
  z = 0
}else{
  z = 10
}
cat("value of z = ",z)
x = 12
if (x<3){
  cat("X is less than 3")
}else if (x>=3 & x<10){
  cat("x is between 3 and 9")
}else{
  cat ("x is greater than 9")
}
# for loop structure
for (i in 1:10) {
  print(i)
}
x = c("a","e","i","o","u")
for (i in 1:length(x)){
  print(x[i])
}
#while loop structure
count = 0
while (count < 10) {
  count = count + 1
  print(count)
}
# repeat command
y = 0
repeat {
  print(y)
  y = y+1
  if (y == 10){
    break()
  }
}
v = c("Hello Students")
for (i in 1:4){
  print(v)
}
a = 0
while(a<4){
  print(v)
  a = a+1
}
y=0
repeat {
  print(v)
  y = y+1
  if (y == 4){
    break
  }
}
# fuction command
f = function(){
  for (i in 1:4){
    cat("Hello Students \n")
  }
}
f()
f1 = function(number){
  for (i in seq_len(number)){
    cat("Hello Students \n")
  }
}
f1(5)
f2 = function(x) {
  a = (x^2)+(3*x)-2
  print(a)
}
f2(-2)
f3= function(x,y) {
  b = (x^3)+(y^3)
  print(b)
}
f3(3,2)
f4= function(x,y=2) {
  b = (x^3)+(y^3)
  print(b)
}
f4(3)
