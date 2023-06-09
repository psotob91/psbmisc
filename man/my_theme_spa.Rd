% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_theme_spa.R
\docType{data}
\name{my_theme_spa}
\alias{my_theme_spa}
\title{Create custom theme for Spanish tables}
\format{
An object of class \code{list} of length 14.
}
\usage{
my_theme_spa
}
\value{
A list of customized parameters for gtsummary tables in Spanish.
}
\description{
This function creates a custom theme for gtsummary tables in Spanish,
specifying the language, p-values, separators, and various arguments for
tbl_summary().
}
\examples{
gtsummary::set_gtsummary_theme(my_theme_spa)

}
\seealso{
my_theme_en
}
\keyword{custom-theme}
\keyword{gtsummary}
\keyword{spanish}
\keyword{tables}
