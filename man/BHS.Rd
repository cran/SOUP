\name{BHS}
\alias{BHS}
\title{Multiplicity adjustment by Bonferroni-Holm-Shaffer's rule}
\usage{
  BHS(pValues)
}
\arguments{
  \item{pValues}{\code{numeric} vector of \emph{p}-vaules}
}
\value{
  \code{numeric} vector of corrected \emph{p}-vaules
}
\description{
  Multiplicity adjustment by Bonferroni-Holm-Shaffer's rule
}
\examples{
set.seed(123)
p.raw <- runif(10, max = 0.2)
rbind(p.raw, p.adj = SOUP::BHS(p.raw))
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}
\references{
  Shaffer J.P. (1986) Modified Sequentially Rejective
  Multiple Test Procedures, \emph{Journal of the American
  Statistical Association}, \bold{81}, 826--831.\cr
}
\seealso{
  \code{\link{p.adjust}}, \code{\link{p.adjust.methods}}
}

