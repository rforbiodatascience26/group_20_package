test_that("create_random_sequence", {

  size_test <- 10
  result <- create_random_sequence(size_test) # testing if the expected size is the same as the output

  expect_equal(nchar(result), size_test)
})
