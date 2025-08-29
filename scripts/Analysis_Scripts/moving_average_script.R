#This R script was developed to serve as a unique location to replicate the moving average function provided in class, and after confirming its functionality, applying it to the the site sample subsets. 

#rolling average script
rolling_average_script <- function(focal_date, dates, conc, win_size_wks) {
  is_in_window <- (dates > focal_date - (win_size_wks / 2) * 7) &
    (dates < focal_date + (win_size_wks / 2) * 7)
  window_conc <- conc[is_in_window]
  result <- mean(window_conc, na.rm = TRUE)
  return(result)
}

# Finding the rolling average for Potassium sample data
BQ1_K$rolling_average <- sapply(
  BQ1_K$Sample_Date,
  rolling_average_script, dates = BQ1_K$Sample_Date, conc = BQ1_K$K,
  win_size_wks = 9
)
BQ2_K$rolling_average <- sapply(
  BQ2_K$Sample_Date,
  rolling_average_script, dates = BQ2_K$Sample_Date, conc = BQ2_K$K,
  win_size_wks = 9
)
BQ3_K$rolling_average <- sapply(
  BQ3_K$Sample_Date,
  rolling_average_script, dates = BQ3_K$Sample_Date, conc = BQ3_K$K,
  win_size_wks = 9
)
PRM_K$rolling_average <- sapply(
  PRM_K$Sample_Date,
  rolling_average_script, dates = PRM_K$Sample_Date, conc = PRM_K$K,
  win_size_wks = 9
)

# Finding the rolling average for Nitrate sample data
BQ1_NO3$rolling_average <- sapply(
  BQ1_NO3$Sample_Date,
  rolling_average_script, dates = BQ1_NO3$Sample_Date, conc = BQ1_NO3$`NO3-N`,
  win_size_wks = 9
)
BQ2_NO3$rolling_average <- sapply(
  BQ2_NO3$Sample_Date,
  rolling_average_script, dates = BQ2_NO3$Sample_Date, conc = BQ2_NO3$`NO3-N`,
  win_size_wks = 9
)
BQ3_NO3$rolling_average <- sapply(
  BQ3_NO3$Sample_Date,
  rolling_average_script, dates = BQ3_NO3$Sample_Date, conc = BQ3_NO3$`NO3-N`,
  win_size_wks = 9
)
PRM_NO3$rolling_average <- sapply(
  PRM_NO3$Sample_Date,
  rolling_average_script, dates = PRM_NO3$Sample_Date, conc = PRM_NO3$`NO3-N`,
  win_size_wks = 9
)

# Finding the rolling average for Magnesium sample data
BQ1_Mg$rolling_average <- sapply(
  BQ1_Mg$Sample_Date,
  rolling_average_script, dates = BQ1_Mg$Sample_Date, conc = BQ1_Mg$Mg,
  win_size_wks = 9
)
BQ2_Mg$rolling_average <- sapply(
  BQ2_Mg$Sample_Date,
  rolling_average_script, dates = BQ2_Mg$Sample_Date, conc = BQ2_Mg$Mg,
  win_size_wks = 9
)
BQ3_Mg$rolling_average <- sapply(
  BQ3_Mg$Sample_Date,
  rolling_average_script, dates = BQ3_Mg$Sample_Date, conc = BQ3_Mg$Mg,
  win_size_wks = 9
)
PRM_Mg$rolling_average <- sapply(
  PRM_Mg$Sample_Date,
  rolling_average_script, dates = PRM_Mg$Sample_Date, conc = PRM_Mg$Mg,
  win_size_wks = 9
)
# Finding the rolling average for Calcium sample data
BQ1_Ca$rolling_average <- sapply(
  BQ1_Ca$Sample_Date,
  rolling_average_script, dates = BQ1_Ca$Sample_Date, conc = BQ1_Ca$Ca,
  win_size_wks = 9
)
BQ2_Ca$rolling_average <- sapply(
  BQ2_Ca$Sample_Date,
  rolling_average_script, dates = BQ2_Ca$Sample_Date, conc = BQ2_Ca$Ca,
  win_size_wks = 9
)
BQ3_Ca$rolling_average <- sapply(
  BQ3_Ca$Sample_Date,
  rolling_average_script, dates = BQ3_Ca$Sample_Date, conc = BQ3_Ca$Ca,
  win_size_wks = 9
)
PRM_Ca$rolling_average <- sapply(
  PRM_Ca$Sample_Date,
  rolling_average_script, dates = PRM_Ca$Sample_Date, conc = PRM_Ca$Ca,
  win_size_wks = 9
)
# Finding the rolling average for Ammonia sample data
BQ1_NH4$rolling_average <- sapply(
  BQ1_NH4$Sample_Date,
  rolling_average_script, dates = BQ1_NH4$Sample_Date, conc = BQ1_NH4$`NH4-N`,
  win_size_wks = 9
)
BQ2_NH4$rolling_average <- sapply(
  BQ2_NH4$Sample_Date,
  rolling_average_script, dates = BQ2_NH4$Sample_Date, conc = BQ2_NH4$`NH4-N`,
  win_size_wks = 9
)
BQ3_NH4$rolling_average <- sapply(
  BQ3_NH4$Sample_Date,
  rolling_average_script, dates = BQ3_NH4$Sample_Date, conc = BQ3_NH4$`NH4-N`,
  win_size_wks = 9
)
PRM_NH4$rolling_average <- sapply(
  PRM_NH4$Sample_Date,
  rolling_average_script, dates = PRM_NH4$Sample_Date, conc = PRM_NH4$`NH4-N`,
  win_size_wks = 9
)

# after the rolling average function has been applied to each chemical-variable sample-site, we will now progress to the next stage of the analysis where we will join the 4 site subsets by column for their respective chemical variable. 
