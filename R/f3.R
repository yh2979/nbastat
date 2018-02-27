#'  the correlation matrix for all numeric variables in the data for that year.
#'  @param year
#'  @export
#'  @example 
#'  f3(2011)

f3 <- function(x){
  year_data <- dplyr::filter(nbastat, Year == x)
  num_data <- dplyr::select_if(year_data, is.numeric)
  comat <- cor(num_data)
  return(comat)
}