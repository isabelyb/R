library(tidyverse)
library(datos)

x <- c("\"", "\\")
x

# para ver el contenido: 
writeLines(x)

# para combinar cadenas
str_c("x", "y")

str_c("x", "y", sep = ", ")

str_c("prefijo-", c("a", "b", "c"), "-sufijo")

# Las expresiones regulares son un lenguaje conciso 
#que te permite describir patrones en cadenas de caracteres.

x <- c("manzana", "banana", "pera", "arándano")
x
str_view(x, "an")
str_view(x, "a")


# ^ para buscar al inicio
str_view(x, "^a")


# $ para anclar el final
x <- c("pie de manzana", "manzana", "queque de manzana")
str_view(x, "manzana")

str_view(x, "^manzana$")


