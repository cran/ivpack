\name{cluster.robust.se}
\alias{cluster.robust.se}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{cluster.robust.se
%%  ~~function to do ... ~~
}
\description{Computes cluster robust standard errors for a two-stage least squares instrumental variable analysis.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
cluster.robust.se(ivmodel, clusterid)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ivmodel}{A model object fit using the ivreg command from the AER package.
%%     ~~Describe \code{ivmodel} here~~
}
  \item{clusterid}{A vector that contains an identifier for the cluster of each subject.
%%     ~~Describe \code{clusterid} here~~
}
}
\details{
The standard errors are computed using the method of White (1982) that assumes observations within a cluster may be dependent but the clusters are independent.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Coeffient estimates, cluster robust standard errors and p-values using cluster robust standard errors.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{White, H. (1982), Instrumental Variables Regression with Independent Observations, Econometrica, 50, 483-499.
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
# For Card's data, fit an IV model of log wage on the treatment variable (education) 
# using the IV nearc4, with measured covariates (included exogenous variables) 
# exper, expersq, black, south, smsa, smsa66
data(card.data)
ivmodel=ivreg(lwage ~ educ + exper + expersq + black + south + smsa + smsa66, 
~ nearc4 + exper + expersq + black + south + smsa + smsa66, x=TRUE, data=card.data)
# Compute cluster robust standard errors when the clustering is by region
cluster.robust.se(ivmodel, card.data$region)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
