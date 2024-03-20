## LOAD PACKAGES ####
library(dplyr)

# Load the data and assign a value
data <- readr::read_tsv("data/lesson3_data_babynames.txt")
head(data)

#Check what the filter function does
?dplyr::filter

# Trying to find my own name
data_clean <- dplyr::filter(data, name == "Hanne")
head(data_clean)

# Found it! Let's glimpse the data
glimpse(data_clean)

# Filtering the years 1900-2000
data_clean = data %>%
  filter(name == "Hanne") %>%
  filter(year > 1900) %>% 
  filter(year <= 2000)
head(data_clean)
