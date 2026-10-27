#' Counts how many times each amino acid occurs in a sequence and
#' returns a bar plot of the counts.
#
#' @param sequence A character string with an amino acid sequence
#'   in one-letter code
#'
#' @returns A ggplot object with one bar per amino acid, showing
#'   how often each one occurs in the sequence
#' @export
#'
#'

# Splits the sequence into characters and keeps a copy of each amino acid
Plot_aa_counts <- function(sequence){
  unique_aa <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

# Counts how many times each unique amino acid occurs in the sequence

  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = sequence, pattern =  amino_acid)) |>
    as.data.frame()

# Names the count column and moves the amino acids from row names into their own column

  colnames(counts) <- c("Counts")
  counts[["Amino_Acids"]] <- rownames(counts)

# Makes a bar plot with one coloured bar per amino acid, without a legend

  aa_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acids, y = Counts, fill = sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

# Returns the plot

  return(aa_plot)
}
