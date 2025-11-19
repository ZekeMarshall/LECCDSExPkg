#' Bin values in a matrix
#' 
#' Bin values in a matrix using a set of breaks.
#'
#' @param X A named matrix containing values between 0 and 100 (e.g. `LECCDSExPkg::test_mat`).
#' @param breaks A vector of doubles containing the break values to use when binning X (See LECCDSExPkg::break_options).
#'
#' @returns The input matrix
#' @export
#'
#' @examples
#' mat <- LECCDSExPkg::bin_mat(X = LECCDSExPkg::test_mat, breaks = LECCDSExPkg::break_options[["20_inc"]])
bin_mat <- function(X, breaks){
  
  checkmate::assert_matrix(X)
  checkmate::testMatrix(X, any.missing = FALSE)
  checkmate::assert_double(breaks)
  checkmate::assert_vector(breaks)
  
  X_bin <- matrix(cut(X, breaks = breaks, labels = FALSE, include.lowest = TRUE), nrow = nrow(X))
  
  rownames(X_bin) <- rownames(X)
  colnames(X_bin) <- colnames(X)
  
  X_bin[is.na(X_bin)] <- 0
  
  return(X_bin)
  
}
