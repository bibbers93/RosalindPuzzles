Rabbits <- function(months, litter){
  if(months <3){
    nrabs <- 1
  } else {
  for (i in 3:months){
    nrabs[i] <- nrabs[i-1] + (nrabs[i-2]*litter)
      }
  } 
  print(nrabs)
  print(nrabs[months])
  }
