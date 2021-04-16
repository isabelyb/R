library(tidyverse)
library(datos)

tabla1
view(tabla1)

tabla2

tabla3

tabla4a

tabla4b

# Calcular tasa por cada 10,000 habitantes

tabla1 %>%
  mutate(tasa = casos / poblacion * 10000)

# Calcular casos por año

tabla1 %>%
  count(anio, wt = casos)

?count

# calcular porcentaje sobre total de los años

tabla1 %>%
  mutate(porcentaje = casos / sum(casos) *100)

# Visualizar cambios en el tiempo

library(ggplot2)

ggplot(tabla1, aes(anio, casos)) + 
  geom_line(aes(group = pais), colour = "grey50") +
  geom_point(aes(colour = pais))


# PIVOTAR

view(tabla4a)

t4a <- tabla4a %>%
  pivot_longer(cols = c(`1999`, `2000`), names_to = "año", values_to = "casos")

view(tabla4b)

t4b <- tabla4b %>%
  pivot_longer(cols = c(`1999`, `2000`), names_to = "año", values_to = "población")


# para unir las tablas
left_join(t4a, t4b)

left_join(t4b, t4a)


# Separar y unir

tabla3 %>%
  separate(tasa, into = c("casos", "población"), convert = TRUE, sep = "/")

# Valores faltantes

acciones <- tibble(
  anio = c(2015, 2015, 2015, 2015, 2016, 2016, 2016),
  trimestre = c(1, 2, 3, 4, 2, 3, 4),
  retorno = c(1.88, 0.59, 0.35, NA, 0.92, 0.17, 2.66)
)
acciones

