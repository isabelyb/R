library(tidyverse)
library(datos)

view(aerolineas)

view(aeropuertos)

view(aviones)

view(clima)

view(vuelos)

aviones %>%
  count(codigo_cola) %>%
  filter(n > 1)

clima %>%
  count(anio, mes, dia, hora, origen) %>%
  filter(n > 1)

vuelos2 <- vuelos %>%
  select(anio:dia, hora, origen, destino, codigo_cola, aerolinea)

view(vuelos2)

vuelos2 %>%
  select(-origen, -destino) %>%
  left_join(aerolineas, by = "aerolinea")

