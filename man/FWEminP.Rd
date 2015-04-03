\name{FWEminP}
\alias{FWEminP}
\title{FWE Adjustment Using Permutation}
\usage{
  FWEminP(Pmat)
}
\arguments{
  \item{Pmat}{\code{matrix} of \emph{p-}values where
  comparisons are on the columns}
}
\value{
  \code{numeric} vector of corrected p.values
}
\description{
  FWE Adjustment Using Permutation and NPC
}
\details{
  Multiplicity correction controlling the Family-Wise Error
  using the permutation \emph{p}-values and NonParametric
  Combination with \emph{minP} as combining function.
}
\examples{
set.seed(123)
P <- matrix(runif(1010), nrow = 101, ncol = 10,
  dimnames = list(c("p-obs", paste("p-*", 1L:100)), LETTERS[1L:10]))
P[1L, 1L:4] <- 1/100
FWEminP(P)
}
\author{
  Dario Basso and Federico Mattiello
  <federico.mattiello@gmail.com>
}
\references{
  Pesarin, F. and Salmaso, L. (2010) \emph{Permutation
  Tests for Complex Data}.  Wiley: United Kingdom \cr

  Finos, L. and Pesarin, F. and Salmaso, L. (2003) Test
  combinati per il controllo della {molteplicit\`a}
  mediante procedure di closed testing, \emph{Statistica
  Applicata}, \bold{15}, 301--329.
}
\seealso{
  \code{\link{p.adjust}}, \code{\link{p.adjust.methods}}
}

