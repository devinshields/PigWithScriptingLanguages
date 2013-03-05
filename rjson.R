#! /usr/bin/env Rscript

require(rjson)

analysis.function <- function(line)
{
  # parse the group as a json object
  data.as.json <- fromJSON(line)

  # convert the object into a standard data frame
  #   TODO: find and use a canonical conversion sequence
  rows         <- lapply(data.as.json[[2]], function(r) c(r$cookie_uid, r$webpage_uid, r$utc_time))
  m            <- matrix(unlist(rows), ncol=3, byrow=TRUE)
  df           <- data.frame(m)
  
  colnames(df) <- c( 'cookie_uid', 'webpage_uid', 'utc_time')
  
  # TODO: add some fancy R processing here
  result <- summary(df)
  
  
  return(result)
}

input_feed <- file("stdin", "r")
while(TRUE){
  line <- readLines(input_feed, n=1)
  if(0 == length(line)){
    break
  }
  cat(toString(analysis.function(line)), "\n" , sep="")
}
