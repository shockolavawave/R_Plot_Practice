"Hello"

# loading files

amphibio <- read.csv("files/AmphiBIO_v1.csv")
osu_occ <- read.csv("files/OSU_amph.csv", sep = '\t')

# setting up tidyverse
install.packages("tidyverse")
library(tidyverse)

# merging data frames
df_merge <- merge(amphibio, osu_occ,
                  by.x = "Species",
                  by.y = "species")
