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

#plot object
gg <- ggplot(df_merge, aes(x = Body_size_mm, y = Body_mass_g)) +
    scale_x_continuous(trans = "log2") +
    scale_y_continuous(trans = "log2")

gg +
    geom_point()
