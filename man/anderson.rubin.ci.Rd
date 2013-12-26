\name{anderson.rubin.ci}
\alias{anderson.rubin.ci}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{anderson.rubin.ci
%%  ~~function to do ... ~~
}
\description{Calculates the Anderson-Rubin confidence interval for the effect of a treatment (endogenous) variable using an instrumental variable.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
anderson.rubin.ci(ivmodel, conflevel = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ivmodel}{Instrumental variable (IV) model fit using ivreg.  Make sure to use the option x=TRUE when fitting the ivreg model.
}
  \item{conflevel}{Confidence level for confidence interval.
%%     ~~Describe \code{conflevel} here~~
}
}
\value{Anderson-Rubin confidence interval for effect of treatment.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Anderson, T.W. and Rubin, H. (1949).  Estimation of the parameters of a single equation in a complete system of stochastic equations.  Annals of Mathematical Statistics, 20, 46-63.
%% ~put references to the literature/web site here ~
}
\author{Dylan Small
%%  ~~who you are~~
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[AER]{ivreg}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
### This is the IV model in panel A, column (5) of Table 3 from Card, 1995, "Using 
### Geographic Variation in College Proximity to Esimate the Return from Schooling"
data(card.data)
ivmodel=ivreg(lwage ~ educ + exper + expersq + black + south + smsa + reg661 + reg662 + 
reg663 + reg664 + reg665+ reg666 + reg667 + reg668 + smsa66, ~ nearc4 + exper + 
expersq + black + south + smsa + reg661+ reg662 + reg663 + reg664 + reg665 + reg666 + 
reg667 + reg668 + smsa66, x=TRUE, data=card.data)
anderson.rubin.ci(ivmodel)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
