# Documentación:

vignette("tibble")

# Requisitos:

library(tidyverse)
library(datos)

# Para convertir a tibble: as_tibble()

as_tibble(flores)

# Para crear tibles a partir de vectores: tibbles()

tibble(
  x = 1:5,
  y = 1,
  z = x^2 + y
)

tb <- tibble(
  `:)` = "sonrisa",
  ` ` = "espacio",
  `2000` = "número"
)
tb

# Crear tible transpuesto: tribble()

tribble(
  ~x ,~y, ~z,
  #--|--|----
  "a", 2, 3.6,
  "b", 1, 8.5
)

tribble(
  ~Hora, ~Fecha, ~Día, 
  #--|--|---------------------
  "7:00", "2/1/20", "lunes",
  "9:30", "5/8/16", "domingo",
  "00:45", "8/9/22", "sábado"
)

# Tibbles vs Data.Frames: imprensión en consola y selección de subconjuntos

datos::vuelos %>%
  print(n = 10, width = Inf)

#Ayuda:

package?tibble

datos::vuelos %>%
  View()

# $: extraer variables mediante el nombre
# [[: extraer variables mediante su nombre como su posición

df <- tibble(
  x = runif(5),
  y = rnorm(5)
)

# Extraer usando el nombre
df$x

df[["x"]]

# Extraer indicando la posición

df[[1]]


mtautos

molesto <- tibble(
  `1` = 1:10,
  `2` = `1` * 2 + rnorm(length(`1`))
)
molesto

