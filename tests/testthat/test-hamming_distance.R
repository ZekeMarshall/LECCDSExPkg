testthat::test_that("hamming_distance works", {
  
  test_mat_binned <- LECCDSExPkg::bin_mat(X = LECCDSExPkg::test_mat, breaks = LECCDSExPkg::break_options[["50_inc"]])
  
  actual <- LECCDSExPkg::hamming_distance(X = test_mat_binned)
  
  testthat::expect_equal(colnames(test_mat_binned), rownames(actual))
  testthat::expect_equal(colnames(test_mat_binned), colnames(actual))
  
  testthat::expect_true(all(actual >= 0))
  
  testthat::expect_true(all(diag(actual) == 0))
  
  testthat::expect_type(actual, "double")
  
})
