variant <- c("VT1", "VT2", "VT3")
mpileup <- as.character(c(",,,,,", ",$$$,nnnnnnnnnn", "]]],,,,,"))
df <- data.frame(variant,mpileup)
df$mpileup <- as.character(df$mpileup)
df$nchar <- nchar(df$mpileup)

mismatch<- sapply(1:nrow(df), function(x){
  sum(unlist(strsplit(df$mpileup[[x]], "")) == "n")
})

match <- sapply(1:nrow(df), function(x){
  sum(unlist(strsplit(df$mpileup[[x]], "")) == ",")
})

counts <- data.frame(mismatch,match)
counts$variant <- df$variant
df <- dplyr::left_join(df, counts)
df$N <- sapply(1:nrow(df), function(x){
  (df$mismatch[[x]]+df$match[[x]])
})
df$ratio <- sapply(1:nrow(df), function(x){
  (df$mismatch[[x]]/df$nchar[[x]])
})
