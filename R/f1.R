#'  the player for that year who scored the most points.
#'  @param year
#'  @export
#'  @example 
#'  f1(2011)

f1 <- function(x){
  year_data <- dplyr::filter(nbastat, Year == x)
  ranking <- dplyr::arrange(year_data, desc(PTS))
  mostscore <- ranking[1,]
  output <- dplyr::select(mostscore, Year, Player, PTS)
  return(output)
}

