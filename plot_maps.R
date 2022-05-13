#Mapa 1


tm_shape(shp = shp_df) +
  tm_polygons("Voter_Turnout",
              title = "Voter Turnout (%)",
              style = "fixed",
              palette = c("darkgreen", "lightgreen", "khaki", "darkorange", "red2"),
              breaks = c(-Inf,25,50,75,100,200, Inf),
              colorNA = "lightgray",
              textNA = "No data") +
  tm_text("County", size = 0.7,
          remove.overlap = TRUE,
          col = "darkblue") +
  tm_layout(main.title = "Percentage of voter turnout by precinct in the 2020 census",
            title = "Santa Clara county",
            title.size = 1,
            legend.position = c("left", "bottom"),
            main.title.size = 1.5) +
  tm_compass(type = "8star",
             show.labels = 3,
             size = 3,
             position = c(0.80, 0.80)) +
  tm_credits("Source: County of Santa Clara. Geographic Information Services",
             position = c(0.65, 0),
             size = 0.5)

#Mapa 2

tm_shape(shp = shp_df2) +
  tm_polygons("ethnicity",
              title = "Ethnicity (%)",
              style = "fixed",
              colorNA = "lightgray",
              textNA = "No data") +
  tm_text("County", size = 0.7,
          remove.overlap = TRUE,
          col = "red2") +
  tm_layout(main.title = "Most prevalent ethnicity by precinct in the 2020 census",
            title = "Santa Clara county",
            title.size = 1,
            legend.position = c("left", "bottom"),
            main.title.size = 1.5) +
  tm_compass(type = "8star",
             show.labels = 3,
             size = 3,
             position = c(0.8, 0.8)) +
  tm_credits("Source: Census American Community Survey",
             position = c(0.65, 0),
             size = 0.6)

#Mapa 3

tm_shape(shp = shp_df2) +
  tm_polygons("total_median_age",
              title = "Median Age",
              style = "fixed",
              palette = c("darkgreen","green", "lightgreen", "lightskyblue1", "lightskyblue3", "deepskyblue3", "darkblue"),
              breaks = c(-Inf,10,20,35,40,50,60, Inf),
              colorNA = "lightgray",
              textNA = "No data") +
  tm_text("County", size = 0.7,
          remove.overlap = TRUE,
          col = "red") +
  tm_layout(main.title = "Median age by precinct in the 2020 census",
            title = "Santa Clara county",
            title.size = 1,
            legend.position = c("left", "bottom"),
            main.title.size = 1.5) +
  tm_compass(type = "8star",
             show.labels = 3,
             size = 3,
             position = c(0.8, 0.8)) +
  tm_credits("Source: Census American Community Survey",
             position = c(0.65, 0),
             size = 0.6)

#Mapa 4

tm_shape(shp = shp_df2) +
  tm_polygons("median_household_income",
              title = "Median Household Income (US$)",
              style = "fixed",
              palette = c("brown", "red2", "darkorange", "khaki", "lightgreen", "seagreen2", "darkseagreen4"),
              breaks = c(-Inf,25000,50000,75000,100000,125000,150000, Inf),
              colorNA = "lightgray",
              textNA = "No data") +
  tm_text("County", size = 0.7,
          remove.overlap = TRUE,
          col = "darkblue") +
  tm_layout(main.title = "Median household income by precinct in the 2020 census",
            title = "Santa Clara county",
            title.size = 1,
            legend.position = c("left", "bottom"),
            main.title.size = 1.5) +
  tm_compass(type = "8star",
             show.labels = 3,
             size = 3,
             position = c(0.8, 0.8)) +
  tm_credits("Source: Census American Community Survey",
             position = c(0.65, 0),
             size = 0.6)


