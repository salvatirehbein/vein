% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Emissions.R
\name{Emissions}
\alias{Emissions}
\alias{print.Emissions}
\alias{summary.Emissions}
\alias{plot.Emissions}
\alias{print.Emissions}
\alias{summary.Emissions}
\alias{plot.Emissions}
\title{Construction function for class "Emissions"}
\usage{
Emissions(x, ...)

\method{print}{Emissions}(x, ...)

\method{summary}{Emissions}(object, ...)

\method{plot}{Emissions}(x, ...)
}
\arguments{
\item{x}{Object with class "data.frame", "matrix" or "numeric"}

\item{...}{ignored}

\item{object}{object with class "Emissions"}
}
\value{
Objects of class "Emissions" or "units"
}
\description{
\code{Emissions} returns a tranformed object with class "Emissions".
The type of objects supported are of classes "matrix", "data.frame" and
"numeric". If the class of the object is "matrix" this function returns a
dataframe.
}
\examples{
\dontrun{
data(net)
data(pc_profile)
data(fe2015)
data(fkm)
PC_G <- c(33491,22340,24818,31808,46458,28574,24856,28972,37818,49050,87923,
          133833,138441,142682,171029,151048,115228,98664,126444,101027,
          84771,55864,36306,21079,20138,17439, 7854,2215,656,1262,476,512,
          1181, 4991, 3711, 5653, 7039, 5839, 4257,3824, 3068)
veh <- data.frame(PC_G = PC_G)
pc1 <- my_age(x = net$ldv, y = PC_G, name = "PC")
pcw <- temp_fact(net$ldv+net$hdv, pc_profile)
speed <- netspeed(pcw, net$ps, net$ffs, net$capacity, net$lkm, alpha = 1,
isList = T)
pckm <- fkm[[1]](1:24); pckma <- cumsum(pckm)
cod1 <- emis_det(po = "CO", cc = 1000, eu = "III", km = pckma[1:11])
cod2 <- emis_det(po = "CO", cc = 1000, eu = "I", km = pckma[12:24])
#vehicles newer than pre-euro
co1 <- fe2015[fe2015$Pollutant=="CO", ] #24 obs!!!
cod <- c(co1$PC_G[1:24]*c(cod1,cod2),co1$PC_G[25:nrow(co1)])
lef <- ef_ldv_scaled(co1, cod, v = "PC",  cc = "<=1400",
                     f = "G", p = "CO", eu=co1$Euro_LDV)
lef <- c(lef,lef[length(lef)],lef[length(lef)],lef[length(lef)],
         lef[length(lef)],lef[length(lef)])
E_CO <- emis(veh = pc1,lkm = net$lkm, ef = lef, speed = speed, agemax = 41,
             profile = pc_profile, hour = 24, day = 7, array = T)
dim(E_CO) # streets x vehicle categories x hours x days
class(E_CO[ , , 1, 1])
df <- Emissions(E_CO[ , , 1, 1]) # Firt hour x First day
class(df)
summary(df)
head(df)
plot(df)
}
}
