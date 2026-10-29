test_that("codon_sequence", {
  rna <-"AUGAAAACCGCG"

  expected <- c("AUG", "AAA", "ACC", "GCG")
  expect_equal(codon_sequence(rna),expected)
})
