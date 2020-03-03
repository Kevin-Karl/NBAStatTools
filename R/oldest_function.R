#' @title An age Function
#' @name oldest
#' @description This function allows you to find the oldest players playing in a given year
#' @param year Enter in the year you want to examine
#' @keywords age oldest
#' @export
#' @examples
#' oldest(1991)

#base::load("NBAStats.RData")

#usethis::use_data(NBAStats, internal = TRUE, overwrite = TRUE)

oldest <- function(x) {
  NBAStats_tbl = dplyr::as.tbl(NBAStats)
  yearx = subset(NBAStats_tbl, Year == x)
  yearxage <- dplyr::arrange(yearx, dplyr::desc(Age))
  yearxageselect =  dplyr::select(yearxage, Player, Age)
  return(yearxageselect)
}
