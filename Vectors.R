#declaration of vectors
poker_vector = c(140,-50,20,-120,240)
roulette_vector = c(-24,-50,100,-350,10)

#assignment of name to the vector colom
names(poker_vector)= Day3
poker_vector
names(roulette_vector)= Day3
roulette_vector

#addition of two vectors
net_win = poker_vector + roulette_vector
net_win

#sum of elements of vectors
poker_net = sum(poker_vector)
roulette_net = sum(roulette_vector)
poker_net
roulette_net

total_net = poker_net + roulette_net
total_net

#use of logical/boolean statements
poker_net > roulette_net

# Individual day comparision
poker_vector[1] > roulette_vector[1]


for(i in 1:4) {
  poker_vector[i] > roulette_vector[i]
}

roulette_vector[c(1,3)]
mean(roulette_vector[c(1,3)])
mean(roulette_vector)

poker_vector[c(1)]> poker_vector