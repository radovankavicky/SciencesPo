% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DATA.R
\docType{data}
\encoding{UTF-8}
\name{turnout}
\alias{turnout}
\title{Turnout Data}
\format{A \code{data.frame} object with \Sexpr[stage=build,results=rd]{ncol(SciencesPo::turnout)} variables and \Sexpr[stage=build,results=rd]{nrow(SciencesPo::turnout)} observations.}
\source{
U.S. Bureau of the Census, Statistical Abstract of the United States, 1994.
}
\usage{
data(turnout)
}
\description{
Data on voter turnout in the 50 states and D.C. for the 1992
Presidential election and 1990 Congressional elections. Per capita income,
populations in poverty and populations with no high school degree are also given. This dataset contains the following columns:

\itemize{
\item v1 state name (alphabetic, 20 characters)
\item v2 region of country:
1 Northeast
2 Midwest
3 South
4 West
\item v3 division within region:
1 Northeast-New England
2 Northeast-Middle Atlantic
3 Midwest-East North Central
4 Midwest-West North Central
5 South-South Atlantic
6 South-East South Central
7 South-West South Central
8 West-Mountain
9 West-Pacific.
\item v4 "Elazar's state political culture assignments:
1 = moralistic
2 = individualistic
3 = traditionalistic
\item v5 percent of population below poverty level, 1992.
\item v6 per capita personal income, 1993.
\item v7 percent casting votes for presidential electors, 1992.
\item v8 percent casting votes for U.S. Representatives, 1990.
\item v9 population without a high school degree, of those 25 years or older, 1990.
\item v10 population 25 years or older, 1990.
\item v11 South = 1; all others = 0.
 }
}
\keyword{datasets}

