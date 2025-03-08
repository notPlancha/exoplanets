library(here)
library(tidyverse)
library(conflicted)
# library(easystats)

exoplanets <- read_csv(here("data", "exoplanet_catalog_080325.csv"))
exoplanets

library(skimr)

skim(exoplanets)

library(naniar)
options(repr.plot.width = 10, repr.plot.height = 20)
gg_miss_var(exoplanets)

library(visdat)
options(repr.plot.width = 20, repr.plot.height = 10)
vis_dat(exoplanets)


names(exoplanets)

library(janitor)
exoplanets %>% tabyl(planet_status)

options(repr.matrix.max.rows=100)
exoplanets %>% 
  add_prop_miss() %>%
  arrange(prop_miss_all) %>% 
  head(10) %>% 
  t()

exoplanets %>% 
  filter()
