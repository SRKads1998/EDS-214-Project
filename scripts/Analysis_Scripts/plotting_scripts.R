library(tidyverse)
library(here)
library(janitor)
library(dplyr)
library(paletteer)
library(zoo)
library(googlesheets4)


file.rename(from = "project_work.R", to = "site_data_cleaning.R")
# Potassium graph

ggplot() +
  geom_line(data = BQ1_K, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_K, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_K, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_K, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "K mg l-1")

# Nitrate graph
ggplot() +
  geom_line()


# Magnesium graph


# Calcium graph


# Ammonina graph