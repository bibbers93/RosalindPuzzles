aa<- c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "Y")
mass <- c(71.03711,103.00919,115.02694,129.04259,147.06841,57.02146,137.05891,113.08406, 128.09496, 113.08406, 131.04049,  114.04293, 97.05276, 128.05858, 156.10111, 87.03203, 101.04768, 99.06841, 186.07931, 163.06333)
monoiso <- data.frame(aa,mass)



P <- strsplit("SKADYEK", split= "") [[1]] 
getMass <- function(aa){
  if(any(aa==monoiso$aa)){
    monoiso$mass[monoiso$aa == aa]
  }
}
sum(sapply(P, getMass))
