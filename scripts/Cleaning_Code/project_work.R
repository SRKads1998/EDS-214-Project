# General "scratch pad" for other R scripts

install.packages("zoo")
install.packages("googlesheets4")


# Libraries used "zoo"# Libraries used for this analysis
library(tidyverse)
library(here)
library(janitor)
library(dplyr)
library(paletteer)
library(zoo)
library(googlesheets4)

# Import Data sets containing field data

BQ1 <- read_csv(here("data", "QuebradaCuenca1-Bisley.csv"))
Basic_Field_Data <- read.csv(here("data", "BasicFieldData-Streams.csv"))
PRM <- read_csv(here("data", "RioMameyesPuenteRoto.csv"))
BQ2 <-read_csv(here("data", "QuebradaCuenca2-Bisley.csv"))
BQ3 <- read_csv(here("data", "QuebradaCuenca3-Bisley.csv"))

# 2. Separating site data by chemical data to allow for easier binding across the different sites. 

# BQ1
BQ1_K <- BQ1 %>%
  select(Sample_ID, Sample_Date, K)
BQ1_NO3 <- BQ1 %>%
  select(Sample_ID, Sample_Date, 'NO3-N')
BQ1_Mg <- BQ1 %>%
  select(Sample_ID, Sample_Date, Mg)
BQ1_NH4 <- BQ1 %>% 
  select(Sample_ID, Sample_Date, 'NH4-N')
BQ1_Ca <- BQ1 %>%
  select(Sample_ID, Sample_Date, Ca)

# BQ2
BQ2_K <- BQ2 %>% 
  select(Sample_ID, Sample_Date, K)
BQ2_NO3 <- BQ2 %>%
  select(Sample_ID, Sample_Date, `NO3-N`)
BQ2_Mg <- BQ2 %>%
  select(Sample_ID, Sample_Date, Mg)
BQ2_NH4 <- BQ2 %>%
  select(Sample_ID, Sample_Date, `NH4-N`)
BQ2_Ca <- BQ2 %>%
  select(Sample_ID, Sample_Date, Ca)

#BQ3
BQ3_K <- BQ3 %>%
  select(Sample_ID, Sample_Date, K)
BQ3_NO3 <- BQ3 %>%
  select(Sample_ID, Sample_Date, `NO3-N`)
BQ3_Mg <- BQ3 %>%
  select(Sample_ID, Sample_Date, Mg)
BQ3_NH4 <- BQ3 %>%
  select(Sample_ID, Sample_Date, `NH4-N`)
BQ3_Ca <- BQ3 %>%
  select(Sample_ID, Sample_Date, Ca)

#PRM
PRM_K <- PRM %>%
  select(Sample_ID, Sample_Date, K)
PRM_NO3 <- PRM %>%
  select(Sample_ID, Sample_Date, `NO3-N`)
PRM_Mg <- PRM %>%
  select(Sample_ID, Sample_Date, Mg)
PRM_NH4 <- PRM %>%
  select(Sample_ID, Sample_Date, `NH4-N`)
PRM_Ca <- PRM %>%
  select(Sample_ID, Sample_Date, Ca)

#Join the separate sites by chemical
joined_sites_K <- bind_rows(BQ1_K, BQ2_K, BQ3_K, PRM_K)
joined_sites_NO3 <- bind_rows(BQ1_NO3, BQ2_NO3, BQ3_NO3, PRM_NO3)
joined_sites_Mg <- bind_rows(BQ1_Mg, BQ2_Mg, BQ3_Mg, PRM_Mg)
joined_sites_NH4 <- bind_rows(BQ1_NH4, BQ2_NH4, BQ3_NH4, PRM_NH4)



class(BQ1_K_F10$Sample_Date)
BQ1_K_F10 <- head(BQ1_K, 10)


# sourced R script, possibly needed for Quarto
source(here::here("scripts", "Analysis_Scripts", "moving_average_script.R"))

joined_sites_function <- function() {
    joined_sites_K <- bind_rows(BQ1_K, BQ2_K, BQ3_K, PRM_K),
    joined_sites_NO3 <- bind_rows(BQ1_NO3, BQ2_NO3, BQ3_NO3, PRM_NO3),
    joined_sites_Mg <- bind_rows(BQ1_Mg, BQ2_Mg, BQ3_Mg, PRM_Mg),
    joined_sites_NH4 <- bind_rows(BQ1_NH4, BQ2_NH4, BQ3_NH4, PRM_NH4)
}
    

