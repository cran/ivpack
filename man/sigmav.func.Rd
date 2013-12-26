\name{sigmav.func}
\alias{sigmav.func}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
sigmav.func
%%  ~~function to do ... ~~
}
\description{
Calculates the standard deviation of the error when a linear probability model is fit to predict a binary treatment based on a binary instrument.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sigmav.func(prob.d1.given.z1, prob.d1.given.z0, prob.z1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prob.d1.given.z1}{
Probability that the treatment D equals 1 given that the instrumental variable Z equals 1.
%%     ~~Describe \code{prob.d1.given.z1} here~~
}
  \item{prob.d1.given.z0}{
Probability that the treatment D equals 1 given that the instrumental variable Z equals 0.
%%     ~~Describe \code{prob.d1.given.z0} here~~
}
  \item{prob.z1}{
Probability that the instrumental variable Z equals 1.
%%     ~~Describe \code{prob.z1} here~~
}
}
\value{
Standard deviation of the error v from D=E(D|Z)+v.  
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{Dylan Small
%%  ~~who you are~~
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
### sigmav when P(D=1|Z=1)=.75, P(D=1|Z=0)=.25, P(Z=1)=.5
sigmav.func(prob.d1.given.z1=.75,prob.d1.given.z0=.25,prob.z1=.5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
