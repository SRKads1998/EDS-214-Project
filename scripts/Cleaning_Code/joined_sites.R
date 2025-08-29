#Join the separate sites by chemical ahead of GGplot data visualization
joined_sites_K <- bind_rows(BQ1_K, BQ2_K, BQ3_K, PRM_K)
joined_sites_NO3 <- bind_rows(BQ1_NO3, BQ2_NO3, BQ3_NO3, PRM_NO3)
joined_sites_Mg <- bind_rows(BQ1_Mg, BQ2_Mg, BQ3_Mg, PRM_Mg)
joined_sites_NH4 <- bind_rows(BQ1_NH4, BQ2_NH4, BQ3_NH4, PRM_NH4)
joined_sites_Ca <- bind_rows(BQ1_Ca, BQ2_Ca, BQ3_Ca, PRM_Ca)

#once complete, and verified that all data have successfully joined, transition to the "plotting_scripts.R" file for data plotting.  