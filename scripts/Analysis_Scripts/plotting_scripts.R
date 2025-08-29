# Below are the various code chunks to visualize the data analysis results created by finding the rolling average of the various test sites by each chemical. Two forms of ggplot styles were created for each group. The first, and the one that will be used for the Quarto document, is a simple geom line plot based on the joined sites subsets. The second style was created by stacking individual geom_line functions within the same ggplot, where each line is based on the data found at the individual site, per a specific chemical. 

# Potassium graphs
library(patchwork)

Potassium_plot <- ggplot() +
  geom_line(data = joined_sites_K, aes(x = Sample_Date, y = rolling_average, color = Sample_ID)) + 
  labs(x = "Years",
       y = "K mg l-1",
       color = " ")

ggplot() +
  geom_line(data = BQ1_K, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_K, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_K, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_K, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "K mg l-1")

# Nitrate graphs
Nitrate_plot <- ggplot() +
  geom_line(data = joined_sites_NO3, aes(x = Sample_Date, y = rolling_average, color = Sample_ID)) + 
  labs(x = "Years",
       y = "NO3-N ug l-1",
       color = " ")

ggplot() +
  geom_line(data = BQ1_NO3, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_NO3, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_NO3, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_NO3, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "NO3-N ug l-1")


# Magnesium graphs

MG_plot <- ggplot() +
  geom_line(data = joined_sites_Mg, aes(x = Sample_Date, y = rolling_average, color = Sample_ID)) + 
  labs(x = "Years",
       y = "Mg mg l-1")
ggplot() +
  geom_line(data = BQ1_Mg, aes(x = Sample_Date, y = rolling_average, color =  "red")) +
  geom_line(data = BQ2_Mg, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_Mg, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_Mg, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "Mg mg l-1")


# Calcium graphs
Ca_plot <- ggplot() +
  geom_line(data = joined_sites_Ca, aes(x = Sample_Date, y = rolling_average, color = Sample_ID)) + 
  labs(x = "Years",
       y = "Ca mg l-1",
       color = " ")

ggplot() +
  geom_line(data = BQ1_Ca, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_Ca, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_Mg, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_Ca, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs (x = "Years",
        y = "Ca mg l-1")

# Ammonia graphs
Ammonia_plot <- ggplot() +
  geom_line(data = joined_sites_NH4, aes(x = Sample_Date, y = rolling_average, colour = Sample_ID)) + 
  labs(x = "Years",
       y = "NH4-N ug l-1",
       color = " ")
ggplot() +
  geom_line(data = BQ1_NH4, aes(x = Sample_Date, y = rolling_average, color = "red")) +
  geom_line(data = BQ2_NH4, aes(x = Sample_Date, y = rolling_average, color = "blue")) +
  geom_line(data = BQ3_NH4, aes(x = Sample_Date, y = rolling_average, color = "yellow")) +
  geom_line(data = PRM_NH4, aes(x = Sample_Date, y = rolling_average, color = "green")) +
  labs(x = "Years",
       y = "NH4-N ug l-1")

Nitrate_plot / Potassium_plot / MG_plot / Ca_plot / Ammonia_plot

#Throughout this stage of the workflow, I found a potential solution that would allow for the 5 distinct ggplots to be stacked atop one another, however due to skillset limitations, and concerns that incorporating the changes could impact the final version of Quarto doc, this graphic was left out of the final version. 

