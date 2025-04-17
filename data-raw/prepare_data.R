library(readr)

benthos_data <- read.csv("data-raw/Musquash_MPA_Benthos_Infauna.csv", encoding = "latin1", sep = ",")
sediment_data <- read.csv("data-raw/Musquash_MPA_Sediment_Grain_Size.csv", encoding = "latin1", sep = ",")
loi_data <- read.csv("data-raw/Musquash_MPA_Sediment_Loss_Ignition.csv", encoding = "latin1", sep = ",")
set_data <- read.csv("data-raw/Musquash_MPA_Set_Data.csv", encoding = "latin1", sep = ",")
location_clusters <- read.csv("data-raw/6location_clusters.csv", sep = ",")
mpa_merged <- read.csv("data-raw/MPA_merged.csv", sep = ",")

# add data clean add preprocess code here
# ...

usethis::use_data(benthos_data, overwrite = TRUE, internal = FALSE)
usethis::use_data(sediment_data, overwrite = TRUE, internal = FALSE)
usethis::use_data(loi_data, overwrite = TRUE, internal = FALSE)
usethis::use_data(set_data, overwrite = TRUE, internal = FALSE)
usethis::use_data(location_clusters, overwrite = TRUE, internal = FALSE)
usethis::use_data(mpa_merged, overwrite = TRUE, internal = FALSE)
