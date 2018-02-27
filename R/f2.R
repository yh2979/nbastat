#'  the oldest player in the NBA data for that year.
#'  @param year
#'  @export
#'  @example 
#'  f2(2011)

f2 <- function(x){
  year_data <- dplyr::filter(nbastat, Year == x)
  ranking <- dplyr::arrange(year_data, desc(Age))
  oldest <- ranking[1,]
  output <- dplyr::select(oldest, Year, Player, Age)
  return(output)
}