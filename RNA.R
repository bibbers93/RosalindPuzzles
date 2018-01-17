#dna to RNA
t <- "SEQ"
t1 <- strsplit(t, split = "") [[1]]
u <- character(length=0)
for(i in 1:length(t1)){
  if(t1[i]=="A"){
    u[i] <- c("A")
  }
  if(t1[i]=="T"){
    u[i] <- c("U")
  }
  if(t1[i]=="C"){
    u[i] <- c("C")
  }
  if(t1[i]=="G"){
    u[i] <- c("G")
  }
}
u <- paste(u, collapse = "")
