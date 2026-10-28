test_that("transcription converts T to U", {
  expect_equal(
    transcription("ATGC"),
    "AUGC"
  )
})
