\name{robust.se}
\alias{robust.se}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
robust.se
%%  ~~function to do ... ~~
}
\description{
Compute robust to heteroskedasticity standard errors for an instrumental variables analysis.  These are the Huber-White standard errors for an instrumental variable analysis as described in White (1982).
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
robust.se(ivmodel)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ivmodel}{Model object fit by ivreg.
%%     ~~Describe \code{ivmodel} here~~
}
}
\value{Coefficient estimates, robust standard errors and t-tests based on the robust standard errors.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
White, H. (1982), Instrumental Variables Regression with Independent Observations, Econometrica, 50, 483-499.
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
robust.se(ivmodel)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
