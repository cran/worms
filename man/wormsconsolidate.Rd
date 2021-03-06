% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worms_func.R
\name{wormsconsolidate}
\alias{wormsconsolidate}
\title{Recursivly retrieves respective "accepted" AphiaRecords for all synonyms if not already there}
\usage{
wormsconsolidate(x, verbose = TRUE, sleep_btw_chunks_in_sec = 0.01,
  once = FALSE)
}
\arguments{
\item{x}{data.frame}

\item{verbose}{be verbose}

\item{sleep_btw_chunks_in_sec}{pause between requests}

\item{once}{only one retrival iteration. No concatination of output with result. (For debugging)}
}
\value{
a data frame.
}
\description{
takes data.frame as output by \code{\link{wormsbynames}} , 
\code{\link{wormsbymatchnames}}, or \code{\link{wormsbyid}} and retrieves  additional
Aphia records (CC-BY) for not-"accepted" records in order to ultimately have "accepted" synonyms for all 
records in the dataset.
}
\details{
This function will take a integer vector with AphiaIDs, 
retrive AphiaRecords from www.marinespecies.org using the 
GET /AphiaRecordByAphiaID Method described at
http://www.marinespecies.org/rest/.
Results will be outbut to a data.frame with each row being a record.

For examples, see  \code{\link{wormsaccepted}}
}
