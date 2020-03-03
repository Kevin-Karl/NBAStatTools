#' @title A Corrgram Function
#' @name cor_plot
#' @description This function allows you to make a corregram to examine the realtionships of continuous variables for a specific year
#' @param year in the year you want to examine
#' @keywords age oldest
#' @export
#' @examples
#' cor_plot(1991)

#base::load("NBAStats.RData")

#usethis::use_data(NBAStats, internal = TRUE, overwrite = TRUE)

cor_plot <- function(x) {
  NBAStats_tbl = dplyr::as.tbl(NBAStats)
  yearx = subset(NBAStats_tbl, Year == x)
  yearxcor <-
    dplyr::select_if(yearx, is.numeric)
  cor_gram = corrgram::corrgram(yearxcor, order=NULL,
           main="NBA Stats(unsorted)")
  return(cor_gram)
}
