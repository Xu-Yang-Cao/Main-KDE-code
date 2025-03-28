\name{vec, vech, invvec, invvech}
\alias{vec}
\alias{vech}
\alias{invvec}
\alias{invvech}

\title{Vector and vector half operators}

\description{
The vec (vector) operator takes a \eqn{d \times d}{d x d} matrix and stacks the
columns into a single vector of length \eqn{d^2}{d^2}. The vech (vector
half) operator
takes a symmetric \eqn{d \times d}{d x d} matrix and stacks the lower
triangular half into a single vector of length \eqn{d(d+1)/2}{d(d+1)/2}.

The functions invvec and invvech are the inverses of vec and
vech i.e. they form matrices from vectors. 

}

\usage{
vec(x)
vech(x)
invvec(x)
invvech(x)
}

\arguments{
  \item{x}{vector or matrix}
  }
  

%\value{}


%\details{}

\references{ Magnus, J.R. \& Neudecker H.M. (1999) \emph{Matrix
  Differential Calculus with Applications in Statistiscs and
  Econometrics (revised edition)}, Wiley.
}



\examples{
x <- matrix(1:9, nrow=3, ncol=3)
vec(x)
vech(x)
invvec(vec(x))
invvech(vech(x))
}

\keyword{algebra}
