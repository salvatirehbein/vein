% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/age_hdv.R
\name{age_hdv}
\alias{age_hdv}
\title{Returns amount of vehicles at each age}
\usage{
age_hdv(x, name, a = 0.2, b = 17, agemin = 1, agemax = 50, k = 1,
  bystreet = F, message = TRUE)
}
\arguments{
\item{x}{numerical vector of vehicles with length equal to lines features of raod network}

\item{name}{of vehicle assigned to columns of dataframe}

\item{a}{parameter of survival equation}

\item{b}{parameter of survival equation}

\item{agemin}{age of newest vehicles for that category}

\item{agemax}{age of oldest vehicles for that category}

\item{k}{multiplication factor}

\item{bystreet}{when TRUE it is expecting that 'a' and 'b' are numeric vectors with length equal to x}

\item{message}{message with average age and total numer of vehicles}
}
\value{
dataframe of age distrubution of vehicles
}
\description{
Returns amount of vehicles at each age
}
\examples{
\dontrun{
# Do not run
lt <- Vehicles(rnorm(100, 300, 10))
LT_B5 <- age_hdv(x = lt,name = "LT_B5")
plot(LT_B5)

}
}
