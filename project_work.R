library(tidyverse)
library(here)
library(janitor)
library(dplyr)
library(paletteer)

WorkbenchTest2 <- 50

# 1. Import the datasets
QuebradaCuenca1 <- read.csv(here("data", "QuebradaCuenca1-Bisley.csv"))
Basic_Field_Data <- read.csv(here("data", "BasicFieldData-Streams.csv"))
PRM_possible <- read.csv(here("data", "RioMameyesPuenteRoto.csv"))
QuebradaCuenca2 <-read.csv(here("data", "QuebradaCuenca2-Bisley.csv"))
QuebradaCuenca3 <- read.csv(here("data", "QuebradaCuenca3-Bisley.csv"))

# 2. Create subset dataframes for each chemical

QC1_K <- QuebradaCuenca1 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, K)
QC1_NO3 <- QuebradaCuenca1 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, NO3.N)
QC1_Mg <- QuebradaCuenca1 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, Mg)
QC1_NH4 <- QuebradaCuenca1 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, NH4.N)
QC2_K <- QuebradaCuenca2 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, K)
QC2_NO3 <- QuebradaCuenca2 %>% 
  select(Sample_ID, Code, Sample_Date, Sample_Time, NO3.N)
QC2_Mg <- QuebradaCuenca2 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, Mg)
QC2_NH4 <- QuebradaCuenca2 %>% 
  select(Sample_ID, Code, Sample_Date, Sample_Time, NH4.N)
QC3_K <- QuebradaCuenca3 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, K)
QC3_NO3 <- QuebradaCuenca3 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, NO3.N)
QC3_Mg <- QuebradaCuenca3 %>% 
  select(Sample_ID, Code, Sample_Date, Sample_Time, Mg)
QC3_NH4 <- QuebradaCuenca3 %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, NH4.N)
PRM_K <- PRM_possible %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, K)
PRM_NO3 <- PRM_possible %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, NO3.N)
PRM_Mg <- PRM_possible %>%
  select(Sample_ID, Code, Sample_Date, Sample_Time, Mg)
PRM_NH4 <- PRM_possible %>% 
  select(Sample_ID, Code, Sample_Date, Sample_Time, NH4.N)
