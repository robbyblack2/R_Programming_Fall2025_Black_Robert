
tukey.outlier <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR
  upper <- Q3 + 1.5 * IQR
  return(x < lower | x > upper)
}

tukey_multiple <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)) {
    outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])
  }
  outlier.vec <- vector("logical", length = nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  return(outlier.vec)
}

corrected_tukey <- function(x) {

  if (!is.matrix(x)) {
    print("XXXX")
    stop("X is not a matrix")
  }
  if (!is.numeric(x)) {
    print("XXXX")
    stop("input is not numeric")
  }
  if (nrow(x) == 0 || ncol(x) == 0) {
    print("XXXX")
    stop("input can not me 0")
  }
  
  outliers <- array(TRUE, dim = dim(x))
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  outlier.vec <- logical(nrow(x))
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  outlier.vec
}

set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)
#(test_mat)

corrected_tukey(test_mat)

