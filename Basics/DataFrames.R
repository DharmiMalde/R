#DATA FRAMES
Name = c("Anasasia","Dima","Katherine","James","Emily","Michael","Matthew","Laura","Kevin","Jonas")
score = c(13,9,17,12,9,20,15,14,9,19)
attempts = c(1,3,2,3,2,3,1,1,2,1)
qualify = c("Yes","No","Yes","No","No","Yes","Yes","Yes","No","Yes")
exam_data = data.frame(Name,score,attempts,qualify)
print("Original dataframe:")
exam_data

#Extraction specific colums:
data.frame(exam_data$Name,exam_data$score)
data.frame(exam_data[1],exam_data[2])

#Extraction of specific rows
data.frame(exam_data$Name[1:5],exam_data$score[1:5])
exam_data[1:5,1:2]

#Adding a new colom in the dataframes
exam_data$country = c("USA","USA","USA","USA","USA","USA","USA","USA","USA","USA")
exam_data

#Task
# Write a R program to drop row(s) by number from a gicen data frame
exam_data1= exam_data[1:5,]
exam_data1

exam_data2 = exam_data[-c(2,4,6),]
exam_data2
length(qualify)

#Find length of dataframe
length(exam_data)
