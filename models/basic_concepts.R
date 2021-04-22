library(tidyverse)

library(modelr)
options(na.action = na.warn)

sim1 #conjunto de datos simulado

# 1. Graficar para ver como se relacionan

ggplot(sim1, aes(x, y)) + 
  geom_point()

# 2. Tener una idea de cómo son los modelos de esa familia generando aleatoriamente unos pocos y superponiéndolos sobre los datos.

modelos <- tibble(
  a1 = runif(250, -20, 40),
  a2 = runif(250, -5, 5)
)

ggplot(sim1, aes(x, y)) +
  geom_abline(aes(intercept = a1, slope = a2), data = modelos, alpha = 1 / 4) +
  geom_point()

model1 <- function(a, data) {
  a[1] + data$x * a[2]
}
model1(c(7, 1.5), sim1)