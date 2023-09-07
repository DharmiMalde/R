my_data = c(18,19,19,19,19,20,20,20,20,20,21,21,21,21,22,23,24,27,30,36)
#Find mean, median, mode of the following data
mean_data = mean(my_data)
mean_data
median_data = median(my_data)
median_data
data_table = table(my_data)
View(data_table)
class(data_table)
mode_mydata = which(data_table==max(data_table))
mode_mydata

#Find geometric mean and harmonic mean of the above data
#convert to logx and then find mean to obtain geometric mean
#convert x to 1/x and then find mean to obtain harmonic mean



#Also find median under 25 years Add nore students
#enter the class age of the bvoth students is 19 Find mean, meadian and mode
my_data = append(my_data,19)
my_data = append(my_data,19)
my_data
my_data = my_data[my_data<25]
my_data



#find mean, median and mode for the following data
# x = 0  1 2 3
# f = 8 11 5 1
x=c(0,1,2,3)
f=c(8,11,5,1)
x*f
total = sum(x*f)
total
totalf= sum(f)
mean_ofdata = total/totalf
my_data1= rep(c(0,1,2,3),c(8,11,5,1))
my_data1
