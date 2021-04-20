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

# 13.4.1 Entendiendo las uniones

x <- tribble(
  ~key, ~val_x,
  1, "x1",
  2, "x2",
  3, "x3"
)
y <- tribble(
  ~key, ~val_y,
  1, "y1",
  2, "y2",
  4, "y3"
)

view(x)
view(y)

x %>%
  inner_join(y, by = "key")


#

x <- tribble(
  ~key, ~val_x,
  1, "x1",
  2, "x2",
  2, "x3",
  1, "x4"
)
y <- tribble(
  ~key, ~val_y,
  1, "y1",
  2, "y2"
)
left_join(x, y, by = "key")

# Columnas clave

vuelos2 %>%
  left_join(aeropuertos, c("origen" = "codigo_aeropuerto"))

view(aeropuertos)

vuelos2 %>%
  left_join(aeropuertos, c("destino" = "codigo_aeropuerto"))

install.packages('maps')
library(maps)

aeropuertos %>%
  semi_join(vuelos, c("codigo_aeropuerto" = "destino")) %>%
  ggplot(aes(longitud, latitud)) +
  borders("state") +
  geom_point() +
  coord_quickmap()

#Uniones de filtro

destinos_populares <- vuelos %>%
  count(destino, sort = TRUE) %>%
  head(10)
destinos_populares

vuelos %>%
  filter(destino %in% destinos_populares$destino)