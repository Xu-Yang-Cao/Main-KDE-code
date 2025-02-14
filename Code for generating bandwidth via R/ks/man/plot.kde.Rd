\name{plot.kde}
\alias{plot.kde}

\title{Kernel density estimate plot for 1- to 3-dimensional data}
\description{
  Kernel density estimate plot for 1- to 3-dimensional data.
}

\synopsis{\method{plot}{kde}(x, drawpoints=FALSE, ...)}

\usage{

## univariate
\method{plot}{kde}(fhat, xlab, ylab="Density function", add=FALSE,
  ptcol="blue", lcol="black", drawpoints=TRUE, ...)

## bivariate
\method{plot}{kde}(fhat, display="slice", cont=c(25,50,75), abs.cont,
    cex=0.7, xlab, ylab, zlab="Density function", theta=-30,
    phi=40, d=4, add=FALSE, drawpoints=FALSE, drawlabels=TRUE,
    pch, ptcol="blue", lcol="black",...)

## trivariate
\method{plot}{kde}(fhat, cont=c(25,50,75), abs.cont, colors, alphavec, size=3,
    ptcol="blue", add=FALSE, xlab, ylab, zlab, drawpoints=FALSE,
    ...)
}

\arguments{
  \item{fhat}{an object of class \code{kde} (output from
    \code{\link{kde}} function)}
  \item{display}{type of display, "slice" for contour plot, "persp" for
    perspective plot, "image" for image plot, "filled" for filled
    contour plot (2-d plot)}
  \item{cont}{vector of percentiles of density estimate heights for contour
    level curves}
  \item{abs.cont}{vector of absolute density estimate heights for contour
    level curves - only one of \code{cont} or \code{abs.cont} needs to
	be specified}
  \item{ptcol}{plotting colour for data points}
  \item{lcol}{plotting colour for density estimate}
  \item{cex,pch,xlab,ylab,zlab,add}{usual graphics parameters}
  \item{theta,phi,d}{graphics parameters for perspective plots (2-d plot)}
  \item{drawpoints}{if TRUE then draw data points on density estimate}
  \item{drawlabels}{if TRUE then draw contour labels (2-d plot)}
  \item{colors}{vector of colours for each contour (3-d plot)}
  \item{alphavec}{vector of transparency values (3-d plot)}
  \item{size}{size of plotting symbol (3-d plot)}
  \item{...}{other graphics parameters}
}
  

\value{
  Plot of 1-d and 2-d kernel density estimates are sent to graphics window. Plot
  for 3-d is generated by the \code{misc3d} and \code{rgl}
  libraries and is sent to RGL window.
}

\references{
  Bowman, A.W. & Azzalini, A. (1997) \emph{Applied Smoothing Techniques
    for Data Analysis}. Clarendon Press. Oxford.

  Hyndman, R.J. (1996) Computing and graphing highest density regions,
    \emph{American Statistician}, \bold{50}, 120--126.
		
  Simonoff, J. S., (1996) \emph{Smoothing Methods in Statistics}.
  Springer-Verlag. New York.}
}

\details{
  -- The 1-d plot is a standard plot of a 1-d curve. If
  \code{drawpoints=TRUE} then a rug plot is added.
  
  -- There are three types of plotting displays for 2-d data available, controlled
  by the \code{display} parameter.

  If \code{display="slice"} then a slice/contour plot
  is generated using \code{contour}.
  The default contours are at 25\%, 50\%, 75\% or
  \code{cont=c(25,50,75)} for the highest
  density regions, see Hyndman (1996).
  
  If \code{display="persp"} then a perspective/wire-frame plot
  is generated.  The default z-axis limits \code{zlim} are determined by
  the range of the z values i.e. default from the usual \code{persp} command.
  
  If \code{display="image"} then an image plot
  is generated. Default colours are the default from the usual
  \code{image} command.

  -- For 3-dimensional data, the interactive plot is a series of nested 3-d contours.
  The default contours are \code{cont=c(25,50)}, the
  default \code{colors} are \code{heat.colors} and the
  default opacity \code{alphavec} ranges from 0.1 to 0.5.
  These contours are the highest density regions, see Hyndman (1996).
}
 

\seealso{\code{\link{kde}}}

\examples{
## univariate example
x <- rnorm.mixt(n=100, mus=1, sigmas=1, props=1)
fhat <- kde(x, h=sqrt(0.09))  
plot(fhat)


## bivariate example
data(unicef)
H.scv <- Hscv(unicef)
fhat <- kde(unicef, H=H.scv)

layout(rbind(c(1,2), c(3,4)))
plot(fhat, display="slice")
plot(fhat, display="slice", cont=seq(10,90, by=20), drawpoints=TRUE)
plot(fhat, display="persp")
plot(fhat, display="image", col=rev(heat.colors(100)))
layout(1)

plot(fhat, display="filled")
  ## filled contour plot not compatible with layout()


## large sample - 10000 sample from bivariate standard normal 
x <- rmvnorm.mixt(10000, c(0,0), diag(2))    
H.pi <- Hpi.diag(x, binned=TRUE)
fhat <- kde(x, H=H.pi, binned=TRUE) 
plot(fhat, drawpoints=FALSE, cont=seq(10,90, by=20))

%\dontrun{
## trivariate example
mus <- rbind(c(0,0,0), c(-1,1,1))
Sigma <- matrix(c(1, 0.7, 0.7, 0.7, 1, 0.7, 0.7, 0.7, 1), nr=3, nc=3) 
Sigmas <- rbind(Sigma, Sigma)
props <- c(1/2, 1/2)

x <- rmvnorm.mixt(n=1000, mus=mus, Sigmas=Sigmas, props=props)
H.pi <- Hpi(x, pilot="samse")
fhat <- kde(x, H=H.pi)  
plot(fhat)
%}
}

\keyword{ hplot}
