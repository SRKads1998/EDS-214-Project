#stacking ggplots

Potassium_plot <- ggplot() +
  geom_line(data = joined_sites_K, aes(x = Sample_Date, y = rolling_average, color = Sample_ID)) + 
  labs(x = "Years",
       y = "K mg l-1",
       color = " ")

Ca_plot <- ggplot() +
  geom_line(data = joined_sites_Ca, aes(x = Sample_Date, y = rolling_average, color = Sample_ID)) + 
  labs(x = "Years",
       y = "Ca mg l-1",
       color = " ")

MG_plot <- ggplot() +
  geom_line(data = joined_sites_Mg, aes(x = Sample_Date, y = rolling_average, color = Sample_ID)) + 
  labs(x = "Years",
       y = "Mg mg l-1")

Ca_plot <- ggplot() +
  geom_line(data = joined_sites_Ca, aes(x = Sample_Date, y = rolling_average, color = Sample_ID)) + 
  labs(x = "Years",
       y = "Ca mg l-1",
       color = " ")

Ammonia_plot <- ggplot() +
  geom_line(data = joined_sites_NH4, aes(x = Sample_Date, y = rolling_average, colour = Sample_ID)) + 
  labs(x = "Years",
       y = "NH4-N ug l-1",
       color = " ")