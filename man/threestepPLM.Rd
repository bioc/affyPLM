\name{threestepPLM}
\alias{threestepPLM}
\title{Three Step expression measures returned as a PLMset}
\description{
  This function converts an \code{\link[affy]{AffyBatch}} into an
  \code{\link{PLMset}} using a three step expression measure.
}
\usage{
threestepPLM(object, normalize=TRUE,background=TRUE,background.method="RMA.2",normalize.method="quantile",summary.method="median.polish",background.param = list(),normalize.param=list(),output.param=list(), model.param=list())
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{object}{an \code{\link[affy:AffyBatch-class]{AffyBatch}}}
  \item{normalize}{logical value. If \code{TRUE} normalize data using
    quantile normalization}
  \item{background}{logical value. If \code{TRUE} background correct
    using RMA background correction}
  \item{background.method}{name of background method to use.}
  \item{normalize.method}{name of normalization method to use.}
  \item{summary.method}{name of summary method to use.}
  \item{background.param}{list of parameters for background correction methods}
  \item{normalize.param}{list of parameters for normalization methods}
  \item{output.param}{list of parameters for output methods}
  \item{model.param}{list of parameters for model methods}
}
\details{
  This function computes the expression measure using threestep
  methods. It returns a \code{\link{PLMset}}. The most important
  difference is that the PLMset allows you to access the residuals
  which the \code{\link{threestep}} function does not do.
}
\value{
An \code{\link{PLMset}}
}

\author{Ben Bolstad \email{bolstad@stat.berkeley.edu}}

\references{Under preparation}
\seealso{\code{\link[affy]{express}},\code{\link[affy]{expresso}},
  \code{\link[affy]{rma}}, \code{\link{threestep}}}

\examples{
data(affybatch.example)

# should be equivalent to rma()
eset <- threestepPLM(affybatch.example)
}
\keyword{manip}
