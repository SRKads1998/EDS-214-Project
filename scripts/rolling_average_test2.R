# BQ1_K test
rolling_average_script <- function(focal_date, dates, conc, win_size_wks) {
  is_in_window <- (dates > focal_date - (win_size_wks / 2) * 7) &
    (dates < focal_date + (win_size_wks / 2) * 7)
  window_conc <- conc[is_in_window]
  result <- mean(window_conc)
  return(result)
}




BQ1_K$rolling_average <- sapply(
  BQ1_K$Sample_Date,
  moving_average, dates = BQ1_K$Sample_Date, conc = BQ1_K$K,
  win_size_wks = 9
)

BQ1_K_F10$rolling_average_script <- sapply(
  BQ1_K_F10$Sample_Date, 
  moving_average, dates = BQ1_K_F10$Sample_Date, conc = BQ1_K_F10$K, 
  win_size_wks = 9
)
