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
  geom_line(data = BQ1_NO3, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_NO3, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_NO3, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_NO3, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "NO3-N ug l-1")


# Magnesium graph
ggplot() +
  geom_line(data = BQ1_Mg, aes(x = Sample_Date, y = rolling_average, color =  "red")) +
  geom_line(data = BQ2_Mg, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_Mg, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_Mg, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "Mg mg l-1")

# Calcium graph
ggplot() +
  geom_line(data = BQ1_Ca, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_Ca, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_Mg, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_Ca, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs (x = "Years",
        y = "Ca mg l-1")

# Ammonia graph
ggplot() +
  geom_line(data = BQ1_NH4, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_NH4, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_NH4, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_NH4, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "NH4-N ug l-1")
