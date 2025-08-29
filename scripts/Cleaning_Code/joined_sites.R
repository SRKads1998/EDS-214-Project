#Join the separate sites by chemical ahead of GGplot data visualization
joined_sites_K <- bind_rows(BQ1_K, BQ2_K, BQ3_K, PRM_K)
joined_sites_NO3 <- bind_rows(BQ1_NO3, BQ2_NO3, BQ3_NO3, PRM_NO3)
joined_sites_Mg <- bind_rows(BQ1_Mg, BQ2_Mg, BQ3_Mg, PRM_Mg)
joined_sites_NH4 <- bind_rows(BQ1_NH4, BQ2_NH4, BQ3_NH4, PRM_NH4)
joined_sites_Ca <- bind_rows(BQ1_Ca, BQ2_Ca, BQ3_Ca, PRM_Ca)

#since these are the final outputs which shall be used for the visualization, I've decided to use saveRDS to save them as .rds files, which are located in the "outputs" folder within the project  

saveRDS(joined_sites_K, file = "joined_sites_K.rds")
saveRDS(joined_sites_NO3, file = "joined_sites_NO3.rds")
saveRDS(joined_sites_Mg, file = "joined_sites_Mg.rds")
saveRDS(joined_sites_NH4, file = "joined_sites_NH4.rds")
saveRDS(joined_sites_Ca, file = "joined_sites_Ca.rds")

#once complete, and verified that all data have successfully joined, transition to the "plotting_scripts.R" file for data plotting.