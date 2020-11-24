########### Cálculo de Curvas de rarefacción #######



### 1. Paquetes ########

library(iNEXT)
library(tidyverse)

### 2. Data ##########d

# Directorio de trabajo
setwd(paste0(getwd(), "/Data"))

# 2.A. Habitat ######

df <- read.csv("iNEXT_hab.csv", row.names = 1) v

# 2.B. Temporada ####

df <- read.csv("iNEXT_temp.csv", row.names = 1)

# 2.C. Tipo de agua ####

df <- read.csv("iNEXT_agua.csv", row.names = 1)

### 3. Rarefacción / Extrapolación ########

df_RE <- iNEXT(df, q = 0, datatype = "abundance")

ggiNEXT(df_RE, type = 1, facet.var = "order") +
  theme_bw(base_size = 12) +
  scale_colour_brewer(palette = "Paired") +
  theme(legend.position = "bottom") +
  xlab("Número de individuos") +
  ylab("Diversidad de especies")







