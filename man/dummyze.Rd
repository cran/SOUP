\name{.dummyze}
\alias{.dummyze}
\title{From Factor To Dummy Variables}
\usage{
  .dummyze(x)
}
\arguments{
  \item{x}{\code{factor}, \code{character} or
  \code{integer} to be \emph{dummyzed}}
}
\value{
  a matrix of \{-1, 0, 1\} of dimension \code{length(x)}
  \eqn{\times}{x} \code{G} where \code{G} is the number of
  levels (distinct values) of the factor (vector)
}
\description{
  Transform a \code{factor} or a factor-like vector of
  \code{character} into a matrix of dichotomous dummy
  variables
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}

