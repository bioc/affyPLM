\name{MAplot}
\alias{ma.plot}
\alias{MAplot}
\alias{MAplot,PLMset-method}
 
\title{Relative M vs. A plots}
\description{
  Create boxplots of M or M vs A plots. Where M is determined relative
  to a specified chip or to a pseudo-median reference chip.
}
%#MAplot(object,ref=NULL,...)
\usage{
ma.plot(A,M,subset=sample(1:length(M),min(c(10000, length(M)))),show.statistics=TRUE,span=2/3,family.loess="gaussian",cex=2,...)
}
 
\arguments{
%z  \item{object}{An \code{\link{PLMset-class}}}
  \item{...}{Additional parameters for the routine}
  \item{A}{A vector to plot along the horizonal axis}
  \item{M}{A vector to plot along vertical axis}
  \item{subset}{A set of indices to use when drawing the loess curve}
  \item{show.statistics}{If true some summary statistics of the M values
    are drawn}
  \item{span}{span to be used for loess fit.}
  \item{family.loess}{\code{"guassian"} or \code{"symmetric"} as in
    \code{\link[modreg]{loess}}.}
  \item{cex}{Size of text when writing summary statistics on plot}
  }

 
\seealso{\code{\link[affy]{mva.pairs}}}
\keyword{hplot}