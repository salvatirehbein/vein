#' Road network of the west part of Sao Paulo city
#'
#' This dataset is a SpatialLineDataFrame of sp package with roads
#' from a traffic simulations made by CET Sao Paulo, Brazil
#'
#' @format A data frame with 1796 rows and 1 variables:
#' \describe{
#'   \item{ldv}{Light Duty Vehicles (1/h)}
#'   \item{hdv}{Heavy Duty Vehicles (1/h)}
#'   \item{lkm}{Length of the link (km)}
#'   \item{ps}{Peak Speed (km/h)}
#'   \item{ffs}{Free Flow Speed (km/h)}
#'   \item{tstreet}{Type of street}
#'   \item{lanes}{Number of lanes per link}
#'   \item{capacity}{Capacity of vehicles in each link (1/h)}
#'   \item{tmin}{Time for travelling each link (min)}
#' }
#' @source \url{http://www.cetsp.com.br/}
#' @usage data(net)
#' @docType data
#' @import sp
"net"
