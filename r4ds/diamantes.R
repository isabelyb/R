library(tidyverse)
library(datos)
library(ggplot2)

ggplot(diamantes, aes(quilate, precio)) + 
  geom_hex()
ggsave("diamantes.pdf")

write_csv(diamantes, "diamantes.csv")

