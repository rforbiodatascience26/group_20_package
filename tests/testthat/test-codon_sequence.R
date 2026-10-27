test_that("codon_sequence", {
  aa <-"ATGAAAACCGCGTATTAA"

  expected <- c("ATG", "AAA", "ACC", "GCG", "TAT", "TAA")
  expect_equal(codon_sequence(aa),expected)
})
