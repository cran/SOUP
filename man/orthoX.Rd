\name{.orthoX}
\alias{.orthoX}
\title{Residualises the response variables \emph{w.r.t.} the matrix of covariates
like in the linear models, therefore projecting on the space \eqn{I - H}
where \eqn{H} is the \emph{hat} matrix of \eqn{X}}
\usage{
  .orthoX(Y, X)
}
\arguments{
  \item{Y}{the \code{matrix} or \code{data.frame} of
  response variables}

  \item{X}{the \code{matrix} of covariates}
}
\value{
  the residualised \code{Y} \code{matrix}
}
\description{
  Residualises the response variables \emph{w.r.t.} the
  matrix of covariates like in the linear models, therefore
  projecting on the space \eqn{I - H} where \eqn{H} is the
  \emph{hat} matrix of \eqn{X}
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}

