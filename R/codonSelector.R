#' Get specific aminoacids from a codon sequence
#'
#' @param codons a list of integers to be selected from the codon list
#'
#' @returns the selected codons related to the list of integers
#' @export
#'
codonSelector <- function(codons){
  seqExtract <- paste0(codonList[codons], collapse = "")
  return(seqExtract)
}
