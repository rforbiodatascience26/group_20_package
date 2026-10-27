#' Creates the sequence of codons based on the sequence of aa
#'
#' @param aa_seq sequence of aminoacids
#' @param start the start of the sequence, stated at 1
#'
#' @returns returns the sequence of codons
#' @export
#'

codon_sequence <- function(aa_seq, start = 1){
  number_aa <- nchar(aa_seq)
  codons <- substring(aa_seq,
                      first = seq(from = start, to = number_aa-3+1, by = 3),
                      last = seq(from = 3+start-1, to = number_aa, by = 3))
  return(codons)
}
