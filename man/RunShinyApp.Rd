% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runShinyApp.R
\name{runShinyApp}
\alias{runShinyApp}
\title{Examples from the SciencesPo Package}
\usage{
runShinyApp(app)
}
\arguments{
\item{app}{the name of the shiny application.}
}
\description{
Launch a Shiny app that shows a demo.
}
\examples{
# A demo of what \\code{\\link[SciencesPo]{PoliticalDiversity}} does.
if (interactive()) {
runShinyApp("PoliticalDiversity")
}

# Other examples
if (interactive()) {
 runShinyApp("ConjugateNormal")
}

if (interactive()) {
 runShinyApp("Regression")
}
}

