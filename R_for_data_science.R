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