# Matrix
matrix(1:9, nrow = 3,ncol = 3, byrow = TRUE)
matrix(1:6,nrow = 2, ncol =3 ,byrow = TRUE)

#box office collection in millions
new_hope = c(460.998,314.4)
empire_strike = c(290.475,247.900)
return_jedi = c(309.306,165.8)

#createing bigger vector with data available
box_office = c(new_hope,empire_strike,return_jedi)
box_office

#creating matrix out of box_office variable
star_war = matrix(box_office, nrow = 3,ncol = 2,byrow = TRUE)
star_war

#Naming rows and coloms in given matrix
region = c("US","Non US")
titles = c("A New Hope","The Empire Strike back","Return of the Jedi")

colnames(star_war) = region     # naming the coloms of matrix
rownames(star_war) = titles     # naming the rows of matrix
star_war                        # printing out starwat matrix


#Alternate way of giving row and colom names
second_star_war = matrix(box_office, nrow = 3,ncol = 2, byrow = TRUE, dimnames = list(titles,region))
second_star_war

#Adding rows and colums of matrix
world_wide = rowSums(star_war)
world_wide
total_collection = colSums(star_war)
total_collection

#Adding row and coloum to star_war and naming it star_war_elabotate
star_war_elaborate = cbind(star_war,world_wide)
star_war_elaborate = rbind(star_war_elaborate,total_collection)
star_war_elaborate

#Making of box office 2 variable and using it in to make matrix box_office_2
box_office_2 = c(474.5,310.7,380.2,552.5,338.7,456.8)
titles2 = c("TPM","AOC","ROS")
movies_collection = matrix(box_office_2, nrow = 3,ncol = 2, byrow = TRUE, dimnames = list(titles2,region))
movies_collection

#Extracting elements, rows, coloms from matrix
movies_collection[,2]
movies_collection[2,]
movies_collection[2,2]

#Addition of two matrix
Total_box_office = movies_collection + star_war
Total_box_office
movies_collection
star_war

#binding of twp matrix
New_matrix = rbind(movies_collection,star_war)
New_matrix

#multiplication of a scaler to a matrix
2*New_matrix
