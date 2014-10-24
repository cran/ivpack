\name{ARsensitivity.size}
\alias{ARsensitivity.size}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ARsensitivity.size
%%  ~~function to do ... ~~
}
\description{
Computes the minimum sample size required for achieving certain power of sensitivity analysis, which is based on an extension of Anderson-Rubin test and allows IV be possibly invalid within a certain range.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ARsensitivity.size(power,k,lambda,gamma,var.z,sigma1,sigma2,rho,alpha=.05, Delta=NULL,
 delta=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{power}{The goal of power achieving over a constant.
%%     ~~Describe \code{n} here~~
}
  \item{k}{Number of exogenous variables, intercept is also counted. If there's no observed variable, k=1.
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
  \item{sigma1}{Standard deviation of potential outcome under control (structural error for y)
%%     ~~Describe \code{sigmau} here~~
}
  \item{sigma2}{Standard deviation of error from regressing treatment on instrument
%%     ~~Describe \code{sigmav} here~~
}
  \item{rho}{Correlation between u(potential outcome under control ) and v (error from regressing treatment on instrument) 
%%     ~~Describe \code{rho} here~~
}
  \item{alpha}{Significance level of test.
%%     ~~Describe \code{alpha} here~~
}
  \item{Delta}{Range of sensitivity allowance. Usually a numeric vector of length 2. If Delta=NULL, the ARsensitivity.power function will calculate the power for standard Anderson-Rubin test with valid IV.
  
}
  \item{delta}{True value of sensitivity parameter when calculating the power. Usual take delta=0 for the favourable situation or delta=NULL for unknown delta.
}
}
\details{
The structural equations model assumed is: 
D=gamma0+gamma*z+v, Y=beta0+beta1*D+delta*Z+u.
This model can also be obtained by assuming the potential outcomes model. See Jiang, Zhang and Small (2013) for details.  

lambda is equal to the true beta1 minus the null hypothesis beta1.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Minimum sample size required for achieving certain power of sensitivity analysis for the proposed study, which extends the Anderson-Rubin (1949) test with possibly invalid IV. The power formula is derived in Jiang, Small and Zhang (2013).
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Anderson, T.W. and Rubin, H. (1949), Estimation of the parameters of a single equation in a complete system of stochastic equations, Annals of Mathematical Statistics, 20, 46-63.\cr
Jiang, Y., Zhang, N and Small, D. (2013), Sensitivity analysis and power for instrumental variable studies, Working paper.
%% ~put references to the literature/web site here ~
}
\author{Dylan Small
%%  ~~who you are~~
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
### Minimum sample size needed for power of sensitivity analysis over 0.8. 
### In a study where the null hypothesis causal effect is 0,
### the true causal effect is 1, the sample size is 250, the instrument is
### binary with probability .5 (so variance = .25), the standard deviation
### of potential outcome under control is 1, the effect of the instrument
### is to increase the probability of a binary treatment being 1 from .25 to 
### .75.  The function sigmav.func computes the SD of v for a binary instrument, 
### binary treatment. The correlation between u and v is assumed to be .5.  The 
### significance level for the study will be alpha = .05
sigmav.func(prob.d1.given.z1=.75,prob.d1.given.z0=.25,prob.z1=.5)
# The sigmav.func finds sigmav=.4330127

### minimum sample size for Anderson-Rubin test
ARsensitivity.size(power=0.8, k=1, lambda=1, gamma=.5, var.z=.25, sigma1=1,
sigma2=.4330127, rho=.5, alpha = 0.05)

### minimum sample size for sensitivity analysis under the favourable situation, 
### assuming the range of sensitivity allowance is (-0.1, 0.1)
ARsensitivity.size(power=0.8, k=1, lambda=1, gamma=.5, var.z=.25, sigma1=1, 
sigma2=.4330127, rho=.5, alpha = 0.05, Delta=c(-0.1, 0.1), delta=0)

### minimum sample size for sensitivity analysis with unknown delta, assuming 
### the range of sensitivity allowance is (-0.1, 0.1)
ARsensitivity.size(power=0.8, k=1, lambda=1, gamma=.5, var.z=.25, sigma1=1, 
sigma2=.4330127, rho=.5, alpha = 0.05, Delta=c(-0.1, 0.1))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
