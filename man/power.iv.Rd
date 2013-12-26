\name{power.iv}
\alias{power.iv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{power.iv
%%  ~~function to do ... ~~
}
\description{
Computes the power for an instrumental variables analysis to be done using the Anderson-Rubin test.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
power.iv(n, lambda, gamma, var.z, sigmau, sigmav, rho, alpha = 0.05)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{Sample size.
%%     ~~Describe \code{n} here~~
}
  \item{lambda}{True causal effect minus null hypothesis causal effect
%%     ~~Describe \code{lambda} here~~
}
  \item{gamma}{Regression coefficient for effect of instrument on treatment.
%%     ~~Describe \code{gamma} here~~
}
  \item{var.z}{Variance of instrument.
%%     ~~Describe \code{var.z} here~~
}
  \item{sigmau}{Standard deviation of potential outcome under control (structural error for y)
%%     ~~Describe \code{sigmau} here~~
}
  \item{sigmav}{Standard deviation of error from regressing treatment on instrument
%%     ~~Describe \code{sigmav} here~~
}
  \item{rho}{Correlation between u(potential outcome under control ) and v (error from regressing treatment on instrument) 
%%     ~~Describe \code{rho} here~~
}
  \item{alpha}{Significance level of test.
%%     ~~Describe \code{alpha} here~~
}
}
\details{
The structural equations model assumed is: 
D=gamma0+gamma*z+v, Y=beta0+beta1*D+u.
This model can also be obtained by assuming the potential outcomes model
Y^(d=0)=beta0+u, Y^d=Y^(d=0)+beta1.
See Jiang, Small and Zhang (2013) for details.  

lambda is equal to the true beta1 minus the null hypothesis beta1.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Power for the proposed study, assuming that the Anderson-Rubin (1949) test will be used.  The power formula is derived in Jiang, Small and Zhang (2013).
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Anderson, T.W. and Rubin, H. (1949), Estimation of the parameters of a single equation in a complete system of stochastic equations, Annals of Mathematical Statistics, 20, 46-63.\cr
Jiang, Y., Small, D. and Zhang, N. (2013), Sensitivity analysis and power for instrumental variable studies, Working paper.
%% ~put references to the literature/web site here ~
}
\author{Dylan Small
%%  ~~who you are~~
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
### Power for a study with in which the null hypothesis causal effect is 0,
### the true causal effect is 1, the sample size is 250, the instrument is
### binary with probability .5 (so variance = .25), the standard deviation
### of potential outcome under control is 1, the effect of the instrument
### is to increase the probability of a binary treatment being 1 from .25 to 
### .75.  The function sigmav.func computes the SD of v for a binary insrument, 
### binary treatment. The correlation between u and v is assumed to be .5.  The 
### significance level for the study will be alpha = .05
sigmav.func(prob.d1.given.z1=.75,prob.d1.given.z0=.25,prob.z1=.5)
# The sigmav.func finds sigmav=.4330127
power.iv(n=250, lambda=1, gamma=.5, var.z=.25, sigmau=1, sigmav=.4330127, rho=.5, 
alpha = 0.05)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
