# Take sequence string and reverse order

a <- "AGCTA"
a1 <- strsplit(a, split="") [[1]]
a2 <- rev(a1)

# Take reversed string and complement the sequence with the following loop

a3 <- character(length=0)
for(i in 1:length(a2)){
  if(a2[i]=="A"){
    a3[i] <- c("T")
  }
  if(a2[i]=="T"){
    a3[i] <- c("A")
  }
  if(a2[i]=="C"){
    a3[i] <- c("G")
  }
  if(a2[i]=="G"){
    a3[i] <- c("C")
  }
}

# Recreate sequence string

a4 <- paste(a3, collapse = "")
