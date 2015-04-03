\name{.DesM}
\alias{.DesM}
\title{Design Matrix For Pairwise Differences}
\usage{
  .DesM(N)
}
\arguments{
  \item{N}{number of replication of the experiment for each
  group, either an \code{integer} vector or a \code{table}
  of length \code{G} \emph{i.e.} number of
  groups/treatments}
}
\value{
  matrix of
}
\description{
  Construct Design Matrix that pre-multiplied to the
  dataset gives the pairwise mean differences (wrt the
  groups)
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}

