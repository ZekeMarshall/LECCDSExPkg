#' Calculate the hamming distance 
#' 
#' Calculate the hamming distance between each pairwise combination of column values in X.
#'
#' @param X A named matrix containing values between 0 and 100 (e.g. `LECCDSExPkg::test_mat`), with the values usually binned using `LECCDSExPkg::bin_mat`.
#'
#' @returns A matrix containing the hamming distance values between each pairwise combination of column values in X.
#' @export
#'
#' @examples
#' mat <- LECCDSExPkg::bin_mat(X = LECCDSExPkg::test_mat, breaks = LECCDSExPkg::break_options[["50_inc"]])
#' LECCDSExPkg::hamming_distance(X = mat)
hamming_distance <- function(X) {
  
  checkmate::assert_matrix(X)
  checkmate::test_matrix(X, any.missing = FALSE)
  checkmate::assert_true(all(X <= max(LECCDSExPkg:::lims_perc) & X >= min(LECCDSExPkg:::lims_perc)))
  
  uniq_vals <- unique(as.vector(X))
  
  U <- X == uniq_vals[1]
  
  H <- t(U) %*% U
  
  for(val in uniq_vals[-1]){
    
    U <- X == val
    H <- H + t(U) %*% U
    
  }
  
  Y <- nrow(X) - H
  
  return(Y)
  
}