% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllMethods.R
\docType{methods}
\name{tnsPreprocess,TNI-method}
\alias{tnsPreprocess,TNI-method}
\alias{tnsPreprocess}
\title{Preprocessing of TNS class objects.}
\usage{
\S4method{tnsPreprocess}{TNI}(tni, survivalData, keycovar, time = 1,
  event = 2, samples = NULL)
}
\arguments{
\item{tni}{A \linkS4class{TNI} class, already processed with the same samples
listed in the survival data.frame.}

\item{survivalData}{A named data.frame with samples in rows and survival data 
in the columns.}

\item{keycovar}{A character vector of the 'keycovars' listed in the 
data.frame columns.}

\item{time}{A numeric or character value corresponding to the column of the 
data.frame where the time of last observation is given.}

\item{event}{A numeric or character value, corresponding to the columm of 
the data.frame where the 'event' information is given.}

\item{samples}{An optional character vector listing samples to be analyzed.}
}
\value{
A preprocessed \linkS4class{TNS} class
}
\description{
Creates TNS class onbjects for regulons an survival data.
}
\examples{
# load survival data
data(survival.data)

# load TNI-object
data(stni, package = "RTN")

# create a new TNS object
stns <- tnsPreprocess(stni, survival.data, keycovar = c('Grade','Age'), 
time = 1, event = 2)

}
\seealso{
\code{\link[RTN:tni.preprocess]{tni.preprocess}} for similar 
preprocessing.
}
