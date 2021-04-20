library(tidyverse)
library(lubridate)
library(datos)

today()

now()

vuelos %>%
  select(anio, mes, dia, hora, minuto) %>%
  mutate(salida = make_datetime(anio, mes, dia, hora, minuto))