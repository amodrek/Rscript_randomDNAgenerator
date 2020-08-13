#random DNA generator
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biostrings")
library(Biostrings)

#generate random DNA seq of 10
paste(
        sample(c("A", "C", "G", "T"), 
               10, 
               replace=TRUE,
               prob=c(0.2, 0.55, 0.1, 0.15)),
               collapse="")
#random DNA seq of 16, with NGG 2 attached
paste(paste(
      sample(
              c("A", "C", "G", "T"), 
              16, 
              replace=TRUE,
              prob=c(0.2, 0.3, 0.3, 0.2)),
      collapse=""),"NGG 2", sep="")

#repeat random DNA sequence and add to file input.txt
x <- 1
capture.output(
repeat {
  print(paste(paste(
    sample(
      c("A", "C", "G", "T"), 
      16, 
      replace=TRUE,
      prob=c(0.2, 0.3, 0.3, 0.2)),
    collapse=""),"NGG 2", sep=""),quote = FALSE)
x = x+1
if (x == 21){
  break
}
}
, file = "input.txt")

#clean it up:
#in unix, use: sed 's/....//' ./input.txt > input_clean.txt