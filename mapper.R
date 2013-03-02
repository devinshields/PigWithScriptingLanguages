#! /usr/bin/env Rscript
#  
#  Author  : Devin Shields
#  Date    : 2013-03-01
#  Purpose : demonstrate of an R script running on data from the standard input
#            demonstrate using R with pig streaming
#
#  Note: some example code taken from: http://shop.oreilly.com/product/0636920021421.do
#

mapper <- function(line){
  # set up a mapper function to process each line of input data
  result <- paste(line, 'is now mapped.', sep=' ')
  return(result)
}

main <- function() {
  # read and map all data lines from standard-in
  input_feed <- file("stdin", "r")

  # read until the empty string
  while(TRUE){
    line <- readLines(input_feed, n=1)
    if(0 == length(line)){break}

    # map each line
    result_of_line_map <- mapper(line)

    # print the results to standard-out
    cat(result_of_line_map, "\n" , sep="")
  }
}
main()
