library(tidyverse)
library(here)
library(janitor)
library(dplyr)
library(paletteer)
library(zoo)
library(googlesheets4)

# Potassium graph scripts

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

ggplot() +
  geom_line(data = BQ1_K, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_K, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_K, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_K, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "K mg l-1")
  



