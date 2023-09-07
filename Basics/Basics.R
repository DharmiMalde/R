var1 = c(1,14,19, 49, 29, 48, 57, 53, 38, 58 )
var2 = scan()
length(var1)
mean(var2)
sd(var1)
summary(var1)
var3 = c(15,13,18,NA,NA)
length(var3)
mean(var3)
mean(var3, na.rm = TRUE)
na.omit(mean(var3))
na.exclude(var3)
var3
mean(na.omit(var3))
mean(na.exclude(var3))
var1[4]
var1[3:6]
var[-1]
var1[c(3,5)]
var1[-1]
var1[-length(var1)]
var1
var1[-1:-6]
var1[var1>20]
var1[var1<20 | var1>30]
which[var1 == max(var1)]
max(var1)
which(var1 == max(var1))
which(var1 == min(var1))
min(var1)
which(var1 == max(var1))
var1(which(var1 == max(var1)))
which.max(var1)
var1[which(var1 == max(var1))]
x = which.min(var1)
x
Day1 = c("Mon","Tue","Wed","Thu","Fri","Sat"); Day1
Day2= c(Day1,"Sun")
Day2
Day3 = scan( what = 'character')
ls()
ls(Pattern= 14)
ls(pattern = "^d")
ls(pattern = "Wed")
ls(pattern = Day1)
ls(pattern = 'D')
ls(pattern = '^D')
ls(pattern = '1$')
ls(pattern = 'd')
ls(pattern = 'Day')
Data1 = c(3,5,7,5,3,2,6,8,5,6,9)
Data1 == 6
which(Data1 == 6)
data1[data != 5]
Data1[Data1 != 5]
Data1 != 5
Data1[Data1 %in% c(5,6,8)]
Data1[!Data1 %in% c(5,6,8)]
which(Data1 == 8)
Data1[8]=10
Data1
Data1[which(Data1 == 8)]
Data1
Data1[which(Data1 == 10)]=12
Data1
Data1[Data1 == 9]= 14
Data1
unique((Data1))
rev(Data1)
Diff(Data1)
diff(Data1)
sort(Data1)
sort(Data1, decreasing = TRUE)
order(Data1)
rank(Data1)
seq1 = seq(from = 1, to = 50 , by = 2 )
seq1
var4 = matrix(c(1,4,2,7,6,9,4,5,2), nrow = 3,ncol = 3,byrow = TRUE)
var4
rownames(var4) = c("r1","r2","r3")
colnames(var4) = c("c1","c2","c3")
var4
var4[2,]
var4[1,3]
var4[2,c(1,3)]
var4[2,-2]
var4[,3]
Data2 = c(month.abb)
Data2
mylist = list(Data2,Data1,var4)
mylist
mylist[2]
mylist[-2]
