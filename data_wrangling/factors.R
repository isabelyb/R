library(tidyverse)
library(datos)

niveles_meses <- c(
  "Ene", "Feb", "Mar", "Abr", "May", "Jun",
  "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"
)

?encuesta

encuesta %>%
  count(raza)

ggplot(encuesta, aes(raza)) +
  geom_bar()

ggplot(encuesta, aes(raza)) +
  geom_bar() +
  scale_x_discrete(drop = FALSE)

encuesta %>% 
  count(raza, 
        .drop = FALSE)