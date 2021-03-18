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

