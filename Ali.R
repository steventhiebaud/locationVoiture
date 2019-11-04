Nb_J = 260

prices = runif(Nb_J,18,115) #Ca représente tout les dates d'écheance possible
strike = rep(39,Nb_J)
prime = rep(1,Nb_J)
intrinseq_V = data[,1] - (data[,2] + data[,3] )
data = cbind(prices,strike,prime, intrinseq_V)
for (i in 1:length(intrinseq_V)) {
  if (data[i,4] < 0){
    data[i,4] = - data[i,3]
  } 
  
}
data



  