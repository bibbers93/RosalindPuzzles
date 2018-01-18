# user-defined function dH(s,t) where both s and t are given strings (assumed same length)
# compares s to t, and outputs a TRUE or FALSE for each character
# then sums all FALSE values, denoted by != (where s != t)

dH <- function(s,t){
  sum(unlist(strsplit(s,split="")) != unlist(strsplit(t,split="")))
}

# STEP BY STEP #

s <- strsplit("GATTACA", split = "") [[1]] 
t <- strsplit("ACATTAG", split = "") [[1]]
s==t  #gives a TRUE FALSE output, where TRUE is a match between s and t and FALSE is mismatch
s!=t  #gives a TRUE FALSE output, where TRUE is mismatch between s and t, and FALSE is a match
sum(s==t)   #counts all TRUE, where TRUE is a match
sum(s!=t)   #counts all TRUE, where TRUE is a mismatch
            # ... unlist() and strsplit() are for formatting the inputs into correct format. 

# EXAMPLE # 

dH <- function(s,t){
  sum(unlist(strsplit(s,split="")) != unlist(strsplit(t,split="")))
}
s <- "GATTACAGATTACA"
t <- "GATTACAACATTAG"
dH(s,t)

OUTPUT --> 6 #yaaaaaayyyyyyyyyyyyyyyy!
