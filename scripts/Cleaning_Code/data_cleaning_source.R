# Data Cleaning R script. To be used for the final quarto document to source in most of the data wrangling found in other R scripts, for easier reading in the final document

BQ1 <- read_csv(here("data", "QuebradaCuenca1-Bisley.csv"))
Basic_Field_Data <- read.csv(here("data", "BasicFieldData-Streams.csv"))
PRM <- read_csv(here("data", "RioMameyesPuenteRoto.csv"))
BQ2 <-read_csv(here("data", "QuebradaCuenca2-Bisley.csv"))
BQ3 <- read_csv(here("data", "QuebradaCuenca3-Bisley.csv"))

#Filter out the non-relevant years i.e. everything post 1995
BQ1 <- BQ1 %>%
  filter(Sample_Date < "1996-01-01")
BQ2 <- BQ2 %>%
  filter(Sample_Date < "1996-01-01")
BQ3 <- BQ3 %>%
  filter(Sample_Date < "1996-01-01")
PRM <- PRM %>%
  filter(Sample_Date < "1996-01-01")

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
