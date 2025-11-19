testthat::test_that("bin_mat works", {
  
  actual <- LECCDSExPkg::bin_mat(X = LECCDSExPkg::test_mat, breaks = LECCDSExPkg::break_options[["50_inc"]])
  
  testthat::expect_equal(rownames(LECCDSExPkg::test_mat), rownames(actual))
  testthat::expect_equal(colnames(LECCDSExPkg::test_mat), colnames(actual))
  
  testthat::expect_true(all(actual >= 0))
  
  testthat::expect_type(actual, "double")
  
  testthat::expect_equal(length(unique(as.vector(actual))), length(LECCDSExPkg::break_options[["50_inc"]]) - 1)
  
})
