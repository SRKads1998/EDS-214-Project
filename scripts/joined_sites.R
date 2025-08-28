library(tidyverse)
library(here)
library(janitor)
library(dplyr)
library(paletteer)
library(zoo)
library(googlesheets4)

rm

rolling_average_script <- function(focal_date, dates, conc, win_size_wks) {
  is_in_window <- (dates > focal_date - (win_size_wks / 2) * 7) &
    (dates < focal_date + (win_size_wks / 2) * 7)
  window_conc <- conc[is_in_window]
  result <- mean(window_conc)
  return(result)
}

joined_sites_K$K <-as.numeric(joined_sites_K$K)

joined_sites_K$rolling_average <- sapply(
  joined_sites_K$Sample_Date,
  moving_average,
  dates = joined_sites_K$Sample_Date,
  conc = joined_sites_K$K,
  win_size_wks = 9
)

ggplot() +
  geom_line(data = BQ1_K, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_K, aes(x = Sample_Date, y = roll))
 



class(joined_sites_K)

joined_sites_K <- df(joined_sites_K)
