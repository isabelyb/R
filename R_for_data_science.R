millas
#> # A tibble: 234 x 11
#>   fabricante modelo cilindrada  anio cilindros transmision traccion ciudad
#>   <chr>      <chr>       <dbl> <int>     <int> <chr>       <chr>     <int>
#> 1 audi       a4            1.8  1999         4 auto(l5)    d            18
#> 2 audi       a4            1.8  1999         4 manual(m5)  d            21
#> 3 audi       a4            2    2008         4 manual(m6)  d            20
#> 4 audi       a4            2    2008         4 auto(av)    d            21
#> 5 audi       a4            2.8  1999         6 auto(l5)    d            16
#> 6 audi       a4            2.8  1999         6 manual(m5)  d            18
#> # … with 228 more rows, and 3 more variables: autopista <int>,
#> #   combustible <chr>, clase <chr>
?millas

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

ggplot() #crea sistema de coordenadas
ggplot(data = millas) # Argumento: conjunto de datos; gráfico vacío
geom_point() #agrega capa de puntos / diagrama de dispersión(scatterplot)
mapping # argumento que define como se asignan las variables a propiedades visuales
mapping = aes(x = cilindrada, y = autopista) # variablese a asignar a los ejes
#ggplot busca la variable asignada en el argumento "data", en este caso "millas"

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindros, y = autopista))+
  labs(x="número de cilindros", y="autopista (millas/galón)", title="Millas por galón según el número de cilindros")

ggplot(data = millas) +
  geom_point(mapping = aes(x = traccion, y = clase))+
  labs(title="Clase vs Tracción - Gráfico no útil")
# son dos variables discretas: que no sirven para medir frecuencias, ambas son tipo char.

#es posible agregar una tercera variable para hacer mas observaciones

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista, color = clase))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, size = clase))

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, alpha = clase))

#alpha: controla la transparencia de los puntos

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, shape = clase))

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista), color = "#FF00FF" )+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color = "yellow"))

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista), color = "yellow")

?millas
datos::millas

# variable continua a color

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista, color = cilindros))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

#variable continua a size

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista, size = cilindros))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

#viariable continua a shape --> no se puede 

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista, shape = cilindros))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

#misma variable a multiples estéticas

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista, color = clase, size = clase, shape = clase))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

?geom_point

# stroke: modifica el tamaño del borde de la forma

color = clase

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista, color = clase, size = clase, shape = clase))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista, size = cilindros, stroke = 8))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, shape = clase, stroke = 2))

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista), color = "#FF00FF", stroke = 3 )+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista,  stroke = 3), color = "#FF00FF")+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")

#ejemplo del help

ggplot(mtcars, aes(wt, mpg)) +
  geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)

#color = cilindrada < 5 ??

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista), color = cilindrada < 5)+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")
#no sirve, no encuentra el objeto

ggplot(data = millas) +
  geom_point(mapping = aes(x=cilindrada, y=autopista, color = cilindrada < 5 ))+
  labs(x="cilindrada (litros)", y="autopista (millas/galón)", title="Millas por galón según tamaño del motor")
# crea nueva variable, discrimina por color


#separar en facetas, solo para variables categóricas

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_wrap(~ clase, nrow = 3)

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_wrap(~ ciudad, nrow = 3)

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_wrap(~ traccion, nrow = 3)

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_wrap(~ fabricante, nrow = 3)

#separar en facetas agregando 2 variables categóricas

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(traccion ~ cilindros)

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(fabricante ~ cilindros)
#mala idea, no se vé

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(. ~ cilindros)

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(traccion ~ .)

#separar en facetas variables continuas
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_wrap(~ cilindrada, nrow = 3)

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(cilindrada ~ .)
#mala idea, se crearán tantos gráficos como datos, además no sirve para comparar

ggplot(data = millas) +
  geom_point(mapping = aes(x = traccion, y = cilindros))+
  facet_grid(traccion ~ cilindros)

#OBJETOS GEOMÉTRICOS
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))

ggplot(data = millas) +
  geom_smooth(mapping = aes(x = cilindrada, y = autopista))

ggplot(data = millas) +
  geom_smooth(mapping = aes(x = cilindrada, y = autopista, linetype = traccion))

?geom_smooth

ggplot(data = millas) +
  geom_smooth(mapping = aes(x = cilindrada, y = autopista, group = traccion))

ggplot(data = millas) +
  geom_smooth(
    mapping = aes(x = cilindrada, y = autopista, color = traccion),
    show.legend = FALSE
  )

ggplot(data = millas) +
  geom_smooth(
    mapping = aes(x = cilindrada, y = autopista, color = traccion))

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  geom_smooth(mapping = aes(x = cilindrada, y = autopista))

#Mapeo global
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point() +
  geom_smooth()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point(mapping = aes(color = clase)) +
  geom_smooth()

#este código no me funcionó y no supe porqué
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point(mapping = aes(color = clase)) +
  geom_smooth(data = filter(millas, clase == "subcompacto"), se = FALSE)

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_histogram()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_boxplot()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_line()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_abline()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_area()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_col()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_contour()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_contour_filled()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_count()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_crossbar()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_curve()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_density()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_density_2d()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_density_2d_filled()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_density2d()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_density2d_filled()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_errorbar()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_errorbarh()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_freqpoly()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_function()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_rug()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_rect()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_ribbon()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_rug()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_hex()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_hline()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_jitter()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_label()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_line()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_linerange()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_map()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_path()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_pointrange()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_polygon()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_qq()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_qq_line()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_quantile()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_segment()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_sf()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_sf_label()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_sf_text()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_smooth()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_spoke()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_step()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_text()

ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_tile()


#Gráficos del ejercicio 6

#1   - se muestra el intervalo de confianza por defecto, para quitarlo --> se=FALSE
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point() +
  geom_smooth(se=FALSE)

#2
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista, line = traccion)) +
  geom_point() +
  geom_smooth(se=FALSE)

#3
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista, color = traccion, show.legend = FALSE)) +
  geom_point() + 
  geom_smooth(se=FALSE, show.legend = FALSE)

#4
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point(aes(color = traccion)) +
  geom_smooth(se=FALSE)

#5
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista, show.legend = FALSE)) +
  geom_point(aes(color = traccion)) + 
  geom_smooth(aes(linetype = traccion), se=FALSE)

#6
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point(aes(fill = traccion), shape = 21, color = "white", size = 2, stroke = 1)

    # https://jrnold.github.io/r4ds-exercise-solutions/data-visualisation.html#exercise-3.6.6
ggplot(millas, aes(x = cilindrada, y = autopista)) +
  geom_point(size = 4, color = "white") +
  geom_point(aes(color = traccion))


#TRANSFORMACIONES ESTADÍSTICAS

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte))

?geom_bar

  #stat_count ees la estadística de geom_bar por defecto. Se pueden intercambiar

ggplot(data = diamantes) +
  stat_count(mapping = aes(x = corte))

 #gráfico de proporciones, en lugar de recuento

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, y = stat(prop), group = 1))

  #resaltar la transformación estadística

ggplot(data = diamantes) +
  stat_summary(
    mapping = aes(x = corte, y = profundidad),
    fun.min = min,
    fun.max = max,
    fun = median
  )

# Lista completa de transformaciones estadísticas en ggplot

?stat_bin

#Ejercicios

  #1

?stat_summary
?geom_pointrange

ggplot(data = diamantes) +
  geom_pointrange(
    mapping = aes(x = corte, y = profundidad),
    stat = "summary",
    fun.min = min,
    fun.max = max,
    fun = median
  )


  #2

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte))
  
ggplot(data = diamantes) +
  geom_col(mapping = aes(x = corte, y = profundidad))
  
  #5 - No entendí muy bien

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, y = after_stat(prop), group = 1))
           
ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = color, y = after_stat(prop)))

ggplot(data = diamonds) + 
  geom_bar(aes(x = cut, y = ..count.. / sum(..count..), fill = color))


#AJUSTES DE POSICIÓN

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, colour = corte))

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = corte))

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = claridad))

ggplot(data = diamantes, mapping = aes(x = corte, fill = claridad)) +
  geom_bar(alpha = 1/5, position = "identity")

ggplot(data = diamantes, mapping = aes(x = corte, colour = claridad)) +
  geom_bar(fill = NA, position = "identity")

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista), position = "jitter")

# 3.9 Sistemas de coordenadas

ggplot(data = millas, mapping = aes(x = clase, y = autopista)) +
  geom_boxplot()

ggplot(data = millas, mapping = aes(x = clase, y = autopista)) +
  geom_boxplot() +
  coord_flip()


# 4 Flujo de trabajo: conocimientos básicos

1 / 2 * 9

x <- 5 * 4

y <- 5*8*8
y

este_es_un_nombre_muy_largo <- 12
este_es_un_nombre_muy_largo

viva_r <- 2 ^ 3

viv_r # Error: object 'viv_r' not found

seq(1, 10)

x <- "Hola, mundo"
x

(x <- "Hola, mundo") # impresión en la pantalla

(y <- seq(1, 10, length.out = 5))

(y <- seq(1, 10, length.out = 6))

(y <- seq(1, 10, length.out = 4))

mi_variable <- 10
mi_variable

mi_var <- 10
mi_var

mi_variable <- 10
mi_varıable  # 1 en lugar de i

library(tidyverse)

ggplot(data = millas) + 
  geom_point(mapping = aes(x = cilindrada, y = autopista))

filter(millas, cilindros == 8)
filter(diamantes, quilate > 3)

# 5 Transformación de datos

library(datos)
library(ggplot2)
library(dplyr)

?vuelos

vuelos

View(vuelos)

view(vuelos)

View(diamantes)

View(fligths)

View(nycflights13)

# 5.2 Filtrar filas con filter()

filter(vuelos, mes == 1, dia == 1)

library(datos)

View(vuelos)

View(millas)
?millas

install.packages("nycflights13")
library(nycflights13)

View(vuelos)

install.packages("datos")

View(vuelos)



filter(vuelos, mes == 1, dia == 1)

filter(vuelos, mes == 1)


# Guardar el resultado

ene1 <- filter(vuelos, mes == 1, dia == 1)
ene1

View(ene1)

filter(vuelos, mes == 11 | mes == 12)

filter(vuelos, mes %in% c(11,12))

#vuelos que no se retrasaron (en llegada o partida) en más de dos horas,

filter(vuelos, !(atraso_llegada > 120 | atraso_salida > 120))

filter(vuelos  , atraso_llegada <= 120, atraso_salida <= 120)

NA > 5
10 == NA
NA + 10
NA / 2

is.na(NA)

filter(vuelos, destino == "IAH"| destino == "HOU")

select(vuelos, contains("SALIDA"))

no_cancelado <- vuelos %>% 
  filter(!is.na(atraso_salida), !is.na(atraso_llegada))
no_cancelado %>% 
  group_by(anio, mes, dia) %>% 
  summarise(media = mean(atraso_salida))

# EDA

# Para examinar la distribución de una variable categórica, se usa un gráfico de barras:

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte))

# La altura de las barras muestra cuántas observaciones corresponden a cada valor de x
# dplyr::count()

diamantes %>% 
  count(corte)

# Para examinar la distribución de una variable continua, se usa un histograma

ggplot(data = diamantes) +
  geom_histogram(mapping = aes(x = quilate), binwidth = 0.5)

#  dplyr::count() y ggplot2::cut_width()

diamantes %>% 
  count(cut_width(quilate, 0.5))

# explorar una variedad de distintas medidas para el ancho del intervalo
# distintas medidas pueden revelar diferentes patrones

pequenos <- diamantes %>% 
  filter(quilate < 3)

ggplot(data = pequenos, mapping = aes(x = quilate)) +
  geom_histogram(binwidth = 0.1)

#  sobreponer múltiples histogramas en la misma gráfica, mejor líneas que barras

ggplot(data = pequenos, mapping = aes(x = quilate, colour = corte)) +
  geom_freqpoly(binwidth = 0.1)

ggplot(data = pequenos, mapping = aes(x = quilate, colour = corte)) +
  geom_histogram(binwidth = 0.1)

ggplot(data = pequenos, mapping = aes(x = quilate)) +
  geom_histogram(binwidth = 0.01)

# valores atípicos / outliers

ggplot(diamantes) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5)

#Para facilitar la tarea de visualizar valores inusuales, necesitamos acercar la imagen a los valores más pequeños del eje vertical con coord_cartesian():

ggplot(diamantes) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))

inusual <- diamantes %>% 
  filter(y < 3 | y > 20) %>% 
  select(precio, x, y, z) %>%
  arrange(y)

inusual

# 1. Desechar la fila completa donde están los valores inusuales

diamantes2 <- diamantes %>% 
  filter(between(y, 3, 20))

diamantes2

# 2. reemplazar los valores inusuales con valores faltantes.

diamantes3 <- diamantes %>% 
  mutate(y = ifelse(y < 3 | y > 20, NA, y))

diamantes3

#diamantes2
ggplot(data = diamantes2, mapping = aes(x = x, y = y)) + 
  geom_point()

#diamantes3
ggplot(data = diamantes3, mapping = aes(x = x, y = y)) + 
  geom_point()


ggplot(data = diamantes2, mapping = aes(x = x, y = y)) + 
  geom_point(na.rm = TRUE)


# 7.5 Covariación: Si la variación describe el comportamiento dentro de una variable, la covariación describe el comportamiento entre variables

ggplot(data = diamantes, mapping = aes(x = precio)) + 
  geom_freqpoly(mapping = aes(colour = corte), binwidth = 500)

ggplot(diamantes) + 
  geom_bar(mapping = aes(x = corte))

ggplot(data = diamantes, mapping = aes(x = precio, y = ..density..)) + 
  geom_freqpoly(mapping = aes(colour = corte), binwidth = 500)

ggplot(data = diamantes, mapping = aes(x = corte, y = precio)) +
  geom_boxplot()


# ordenar para mostrar tendencias

ggplot(data = millas, mapping = aes(x = clase, y = autopista)) +
  geom_boxplot()

ggplot(data = millas) +
  geom_boxplot(mapping = aes(x = reorder(clase, autopista, FUN = median), y = autopista))

# girar por nombrese largos


ggplot(data = millas) +
  geom_boxplot(mapping = aes(x = reorder(clase, autopista, FUN = median), y = autopista)) +
  coord_flip()


# Dos variables categóricas

ggplot(data = diamantes) +
  geom_count(mapping = aes(x = corte, y = color))

  # calcular el recuento con dplyr:

diamantes %>% 
  count(color, corte)

   #  visualizar con geom_tile() y adaptar la estética de relleno (fill):

diamantes %>% 
  count(color, corte) %>%  
  ggplot(mapping = aes(x = color, y = corte)) +
  geom_tile(mapping = aes(fill = n))

install.packages("heatmaply")

diamantes %>% 
  count(color, corte) %>%  
  ggplot(mapping = aes(x = color, y = corte)) +
  geom_tile(mapping = aes(fill = n))


#  Dos variables continuas

ggplot(data = diamantes) +
  geom_point(mapping = aes(x = quilate, y = precio))


  # muchos datos, agregar transpaarencia

ggplot(data = diamantes) + 
  geom_point(mapping = aes(x = quilate, y = precio), alpha = 1 / 100)

install.packages("hexbin")

ggplot(data = pequenos) +
  geom_bin2d(mapping = aes(x = quilate, y = precio))

ggplot(data = pequenos) +
  geom_hex(mapping = aes(x = quilate, y = precio))

ggplot(data = pequenos, mapping = aes(x = quilate, y = precio)) + 
  geom_boxplot(mapping = aes(group = cut_width(quilate, 0.1)))

ggplot(data = pequenos, mapping = aes(x = quilate, y = precio)) + 
  geom_boxplot(mapping = aes(group = cut_number(quilate, 20)))

# Patrones y modelos

ggplot(data = faithful) +
  geom_point(mapping = aes(x = eruptions, y = waiting))

# FLUJO DE TRABAJO EN R

