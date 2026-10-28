#' Convert DNA to RNA
#'
#' Replaces thymine (T) with uracil (U) in a DNA sequence.
#'
#' @param dna_sequence A DNA sequence.
#' @return An RNA sequence.
#' @export
transcription <- function(dna_sequence) {
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
