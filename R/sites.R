#' Sites data for Urban Nature Project
#'
#' Provides a data frame of information regarding the UNP sites.
#'
#' @export
sites <- function() {
  names <- c(
    "Natural History Museum",
    "Great North Museum",
    "Kelvingrove",
    "National Museum Wales",
    "Ulster Museum"
  )
  lat <- c(
    51.496111,
    54.98,
    55.868581,
    51.4858,
    54.582
  )
  lon <- c(
    -0.176389,
    -1.613,
    -4.290506,
    -3.1773,
    -5.935
  )
  ret <- as.data.frame(cbind(names,lat,lon))
  return(ret)
}
