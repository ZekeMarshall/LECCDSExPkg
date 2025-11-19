break_options <- list(
  "10_inc" = c(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100),
  "20_inc" = c(0, 20, 40, 60, 80, 100),
  "50_inc" = c(0, 50, 100),
  "60_100" = c(0, 60, 100)
)

usethis::use_data(break_options, internal = FALSE, overwrite = TRUE)

test_mat <- read.csv(file = file.path(".", "inst", "extdata", "example_matrix.csv"), header = TRUE, row.names = 1) |>
  as.matrix()

usethis::use_data(test_mat, internal = FALSE, overwrite = TRUE)
