#! /usr/bin/env Rscript
#  
#  Author  : Devin Shields
#  Date    : 2013-03-01
#  Purpose : demonstrate of an R script running on data from the standard input
#            demonstrate using R with pig streaming
#

input_feed <- file("stdin", "r")
while(TRUE){
  line <- readLines(input_feed, n=1)
  if(0 == length(line)){
    break
  }
  cat('Mapped line: ', line, "\n" , sep="")
}
