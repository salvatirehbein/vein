% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ef_nitro.R
\name{ef_nitro}
\alias{ef_nitro}
\title{Emissions factors of N2O and NH3}
\usage{
ef_nitro(v, t, cc, f, eu, p, S, k = 1, show.equation = TRUE)
}
\arguments{
\item{v}{Category vehicle: "PC", "LCV", "LDV", "Motorcycle", "Trucks",
"HDV", "HDV-A", "BUS" or "Coach".}

\item{t}{Type: "Cold", "Hot", "<50", ">=50", ">3.5", "7.5_12", "12_18", "28_34",
">34" and "ALL".}

\item{cc}{"Urban", "Rural", "Highway" and "ALL".}

\item{f}{Type of fuel: "G", "D" or "LPG"}

\item{eu}{Euro standard: "PRE", "I", "II", "III", "IV", "V", "VI",
"VIc", "2S",  4S" and "ALL"}

\item{p}{Pollutant: "N2O", "NH3"}

\item{S}{Sulphur (ppm). Number.}

\item{k}{Multiplication factor}

\item{show.equation}{Option to see or not the equation parameters}
}
\value{
an emission factor function which depends on the accumulated mileage
}
\description{
This function returns emission factors as a functions of accumulated mileage.
The emission factors comes from the guidelines  EMEP/EEA air pollutant
emission inventory guidebook
http://www.eea.europa.eu/themes/air/emep-eea-air-pollutant-emission-inventory-guidebook
}
\examples{
\dontrun{
# Do not run
efe10 <- ef_nitro(v = "PC", t = "Hot", cc = "Urban", f = "G",
eu = "III", p = "NH3", S = 10,
show.equation = F)
efe50 <- ef_nitro(v = "PC", t = "Hot", cc = "Urban", f = "G",
eu = "III", p = "NH3", S = 50,
show.equation = T)
efe10(10)
efe50(10)
}
}
\keyword{emission}
\keyword{factors}
\keyword{speed}
