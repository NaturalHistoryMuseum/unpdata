#' Sample sites data for Urban Nature Project
#'
#' Provides a data frame of information regarding the UNP sampling sites.
#'
#' @importFrom rnrfa osg_parse
#' @export
sample_sites <- function() {
  deployment <- c(
    "Glasgow-1",
    "Glasgow-2",
    "Newcastle-1",
    "Newcastle-2"
  )
  name <- c(
    "Springburn Allotments",
    "North Kelvin Meadow",
    "Gosforth Nature Reserve",
    "Gosforth Nature Reserve Visitor Center"
  )
  OSgrid <- c(
    "NS60236880",
    "NS57016787",
    "NZ25666996",
    "NZ25966989"
  )

  wgs84 <- osg_parse(OSgrid, coord_system = "WGS84")

  data <- as.data.frame(cbind(deployment,name,OSgrid,wgs84$lat,wgs84$lon))
  names(data) <- c("deployment","name","OSgrid","lat","lon")
  return(data)
}
