#' Title
#'
#' @param x A character vector with one element
#' @param split What to split on.
#'
#' @return A character vector
#' @export
#'
#' @examples
#' x <- "alpha,bravo,charlie,delta"
#' strsplit(x, split = ",")
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}
