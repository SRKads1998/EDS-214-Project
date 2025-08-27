# Create data frames based on sample data for analysis
# Stephan Kadonoff
#skadonoff@ucsb.edu

install.packages("zoo")


# Libraries used "zoo"# Libraries used for this analysis
library(tidyverse)
library(here)
library(janitor)
library(dplyr)
library(paletteer)
library(zoo)

# Import Data sets containing field data

BQ1 <- read_csv(here("data", "QuebradaCuenca1-Bisley.csv"))
Basic_Field_Data <- read.csv(here("data", "BasicFieldData-Streams.csv"))
PRM <- read_csv(here("data", "RioMameyesPuenteRoto.csv"))
BQ2 <-read_csv(here("data", "QuebradaCuenca2-Bisley.csv"))
BQ3 <- read_csv(here("data", "QuebradaCuenca3-Bisley.csv"))

# 2. Seperating site data by chemical data to allow for easier binding across the different sites. 

# BQ1
BQ1_K <- BQ1 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, K)
BQ1_NO3 <- BQ1 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, `NO3-N`)
BQ1_Mg <- BQ1 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, Mg)
BQ1_NH4 <- BQ1 %>% 
  select(Sample_ID, Code, Sample_Date, Sample_Time, `NH4-N`)

# BQ2
BQ2_K <- BQ2 %>% 
  select(Sample_ID, Code, Sample_Date, Sample_Time, K)
BQ1_K <- BQ1_K %>%
  mutate(Sample_Date = ymd(Sample_Date))

