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
    "Newcastle-2",
    "device-1-pond",
    "device-2-orchard",
    "device-3-church",
    "ewb-plymouth-central-park",
    "ewb-askham-site1",
    "ewb-askham-site2-NearWoodPond",
    "ewb-askham-site3"
  )
  name <- c(
    "Springburn Allotments",
    "North Kelvin Meadow",
    "Gosforth Nature Reserve",
    "Gosforth Nature Reserve Visitor Center",
    "Bristol Community Gardens - Pond",
    "Bristol Community Gardens - Orchard",
    "Bristol Community Gardens - Fence near Church",
    "Plymouth Central Park",
    "Askham Bog Tree",
    "Askham Bog Pond",
    "Askham Bog Field"
  )
  OSgrid <- c(
    "NS60236880",
    "NS57016787",
    "NZ25666996",
    "NZ25966989",
    "ST58976767",
    "ST58926767",
    "ST59006756",
    "SX47465610",
    "SE57874856",
    "SE57874856",
    "SE57874856"
  )

  wgs84 <- osg_parse(OSgrid, coord_system = "WGS84")

  data <- as.data.frame(cbind(deployment,name,OSgrid,wgs84$lat,wgs84$lon))
  names(data) <- c("deployment","name","OSgrid","lat","lon")
  return(data)
}
