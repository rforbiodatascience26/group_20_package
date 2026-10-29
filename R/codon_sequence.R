#' Creates the sequence of codons based on the RNA sequence
#'
#' @param rna_seq sequence of nucleotides (RNA)
#' @param start the start of the sequence, stated at 1
#'
#' @returns returns the sequence of codons
#' @export
#'

codon_sequence <- function(rna_seq, start = 1){
  number_nuc <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = number_nuc-3+1, by = 3),
                      last = seq(from = 3+start-1, to = number_nuc, by = 3))
  return(codons)
}
