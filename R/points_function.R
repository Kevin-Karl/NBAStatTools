#' @title  A Points Function
#' @name points
#' @description This function allows you to find the players with the most points in a given year
#' @param year Enter in the year you want to examine
#' @keywords points
#' @export
#' @examples
#' points()

#base::load("NBAStats.RData")

#usethis::use_data(NBAStats, internal = TRUE, overwrite = TRUE)

points <- function(x) {
  NBAStats_tbl = dplyr::as.tbl(NBAStats)
  yearx = subset(NBAStats_tbl, Year == x)
  yearxpoints <- dplyr::arrange(yearx, dplyr::desc(PTS))
  yearxpointsselect = dplyr::select(yearxpoints, Player, PTS)
  return(yearxpointsselect)
}
