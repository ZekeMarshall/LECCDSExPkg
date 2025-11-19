#' A list of breaks for binning data
#' 
#' A named list of breaks for binning data between 0 and 100 (e.g. `LECCDSExPkg::test_mat`) into categories.
#' 
#' \code{break_options}
#' 
#' @format A named list of vectors containing `r length(LECCDSExPkg::break_options)` items.
#' 
"break_options"

#' A matrix of random values between 0 and 100
#' 
#' A matrix of random values between 0 and 100 with additional values randomly assigned to 0.
#' 
#' \code{test_mat}
#' 
#' @format A matrix containing `r ncol(LECCDSExPkg::test_mat)` and `r nrow(LECCDSExPkg::test_mat)`
#' 
"test_mat"