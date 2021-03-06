% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Crosstable.R
\encoding{UTF-8}
\name{Crosstable}
\alias{Crosstable}
\alias{Crosstable.default}
\title{Cross-tabulation}
\usage{
Crosstable(..., digits = 2, chisq = FALSE, fisher = FALSE,
  mcnemar = FALSE, latex = FALSE, alt = "two.sided", deparse.level = 2)

\method{Crosstable}{default}(..., digits = 2, chisq = FALSE,
  fisher = FALSE, mcnemar = FALSE, alt = "two.sided", latex = FALSE,
  deparse.level = 2)
}
\arguments{
\item{\dots}{the variables for the cross tabulation.}

\item{digits}{number of digits after the decimal point.}

\item{chisq}{if \code{TRUE}, the results of a chi-square test will be shown below the table.}

\item{fisher}{if \code{TRUE}, the results of a Fisher Exact test will be shown below the table.}

\item{mcnemar}{if \code{TRUE}, the results of a McNemar test will be shown below the table.}

\item{latex}{if the output is to be printed in latex format.}

\item{alt}{the alternative hypothesis and must be one of "two.sided",
"greater" or "less". Only used in the 2 by 2 case.}

\item{deparse.level}{an integer controlling the construction of labels in the case of non-matrix-like arguments. If 0, middle 2 rownames, if 1, 3 rownames, if 2, 4 rownames (default).}
}
\value{
A cross-tabulated object.
}
\description{
\code{Crosstable} produces all possible two-way and three-way tabulations of variables.
}
\examples{
with(titanic, Crosstable( SEX, AGE, SURVIVED))

#' # Agresti (2002), table 3.10, p. 106
# 1992 General Social Survey--Race and Party affiliation
gss <- data.frame(
   expand.grid(Race=c("black", "white"),
   party=c("dem", "indep", "rep")),
   count=c(103,341,15,105,11,405))

df <- gss[rep(1:nrow(gss), gss[["count"]]), ]

with(df, Crosstable(Race, party))

# Agresti (1990, p. 61f; 2002, p. 91) Fisher's Tea Drinker
 tea <- data.frame(
   expand.grid(poured=c("Yes", "No"),
   guess=c("Yes", "No")),
   count=c(3,1,1,3))

# nicer way of recreating long tables
data = untable(tea, freq="count")

with(data, Crosstable(poured, guess, fisher=TRUE, alt="greater")) # fisher=TRUE

}
\seealso{
\code{\link[stats]{xtabs}}, \code{\link{Frequency}},
\code{\link[base]{table}}, \code{\link[base]{prop.table}}

Other Crosstables: \code{\link{summary.Crosstable}}
}
\keyword{Exploratory}
