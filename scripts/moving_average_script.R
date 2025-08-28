#rolling average script
rolling_average_script <- function(focal_date, dates, conc, win_size_wks) {
  is_in_window <- (dates > focal_date - (win_size_wks / 2) * 7) &
    (dates < focal_date + (win_size_wks / 2) * 7)
  window_conc <- conc[is_in_window]
  result <- mean(window_conc)
  return(result)
}
rm(K_MA_1)
K_MA_1 <- rolling_average_script(focal_date = as.Date("1986-05-20"),
                                 dates = BQ1_K_F10$Sample_Date,
                                 conc = BQ1_K_F10$K,
                                 win_size_wks = 9)
BQ1_K_F10$rolling_average <- sapply(
  BQ1_K_F10$Sample_Date, 
  moving_average, dates = BQ1_K_F10$Sample_Date, conc = BQ1_K_F10$K, 
  win_size_wks = 9
)


BQ2_K$rolling_average <- sapply(
  BQ2_K$Sample_Date,
  moving_average, dates = BQ2_K$Sample_Date, conc = PRM_K$K,
  win_size_wks = 9
)


BQ3_K$rolling_average <- sapply(
  BQ3_K$Sample_Date,
  moving_average, dates = BQ3_K$Sample_Date, conc = PRM_K$K,
  win_size_wks = 9
)

PRM_K$rolling_average <- sapply(
  PRM_K$Sample_Date,
  moving_average, dates = PRM_K$Sample_Date, conc = PRM_K$K,
  win_size_wks = 9
)


rolling_average_script <- function(focal_date, dates, conc, win_size_wks) {
  is_in_window <- (dates > focal_date - (win_size_wks / 2) * 7) &
    (dates < focal_date + (win_size_wks / 2) * 7)
  window_conc <- conc[is_in_window]
  result <- mean(window_conc)
  return(result)
}
