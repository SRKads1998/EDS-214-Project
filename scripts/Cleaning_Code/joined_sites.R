library(tidyverse)
library(here)
library(janitor)
library(dplyr)
library(paletteer)
library(zoo)
library(googlesheets4)

joined_sites_K$K <-as.numeric(joined_sites_K$K)

joined_sites_K$rolling_average <- sapply(
  joined_sites_K$Sample_Date,
  moving_average,
  dates = joined_sites_K$Sample_Date,
  conc = joined_sites_K$K,
  win_size_wks = 9
)