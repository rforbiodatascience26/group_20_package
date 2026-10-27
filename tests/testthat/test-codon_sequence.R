test_that("codon_sequence", {
  aa <-"ATGAAAACCGCG"

  expected <- c("ATG", "AAA", "ACC", "GCG")
  expect_equal(codon_sequence(aa),expected)
})
