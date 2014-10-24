\name{ARsensitivity.ci}
\alias{ARsensitivity.ci}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ARsensitivity.ci
%%  ~~function to do ... ~~
}
\description{Calculates the confidence interval for the effect of a treatment (endogenous) variable using an instrumental variable, which is based on an extension of Anderson-Rubin test and allows IV be possibly invalid within a certain range.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ARsensitivity.ci(ivmodel, Delta=NULL, conflevel=.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ivmodel}{Instrumental variable (IV) model fit using ivreg.  Make sure to use the option x=TRUE when fitting the ivreg model.
}
  \item{Delta}{The allowance of sensitivity parameter for possibly invalid IV. If Delta=NULL, the ARsensitivity.ci function will calculate the confidence interval for a standard Anderson-Rubin test with valid IV.
}
  \item{conflevel}{Confidence level for confidence interval.
%%     ~~Describe \code{conflevel} here~~
}
}
\value{
  \item{confidence.interval}{Confidence interval for effect of treatment. If it's a 2*2 matrix, the confidence interval is consisted of two disjoint intervals, each row of the matrix is one interval.
}
  \item{printinfo}{Report the confidence interval in one printing sentence.
}
  \item{ci.type}{If ci.type=1, the confidence interval is finite. If ci.type=2, the confidence interval is infinite. If ci.type=3, the confidence interval is an empty set.
}
}

\references{Anderson, T.W. and Rubin, H. (1949), Estimation of the parameters of a single equation in a complete system of stochastic equations, Annals of Mathematical Statistics, 20, 46-63.\cr
Jiang, Y., Zhang, N. and Small, D. (2013), Sensitivity analysis and power for instrumental variable studies, Working paper.
%% ~put references to the literature/web site here ~
}
\author{Yang Jiang
%%  ~~who you are~~
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[AER]{ivreg}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
### a simulated data set
z = rnorm(100)
d = z+rnorm(100)
y = d+0.1*z+rnorm(100)
ivmodel = ivreg(y~d|z, x=TRUE)

### calculate confidence interval, given the allowance of sensitivity is (-0.1, 0.1)
ARsensitivity.ci(ivmodel, Delta=c(-0.1, 0.1))

### calculate confidence interval, assuming that IV is valid
ARsensitivity.ci(ivmodel)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
