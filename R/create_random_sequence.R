#' Create random Sequence
#'
#' @param size - size of the sequence we want to create
#'
#' @returns return a randomized sequence of codons
#' @export
#'
create_random_sequence <- function(size){
  sequence <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  sequence_clean <- paste0(sequence, collapse = "")
  return(sequence_clean)
}
