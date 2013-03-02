#! /usr/bin/env Rscript
#  
#  Author  : Devin Shields
#  Date    : 2013-03-01
#  Purpose : demonstrate of an R script running on data from the standard input
#            demonstrate using R with pig streaming
#
#  Note: some example code taken from: http://shop.oreilly.com/product/0636920021421.do
#



input <- file("stdin", "r")
lastKey <- ""
tempFile <- tempfile( pattern="hadoop-mr-demo-" , fileext="csv" ) tempHandle <- file( tempFile , "w" )
while( TRUE ){
  currentLine <- readLines(input, n=1)
  if( 0 == length(currentLine)){ break
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
