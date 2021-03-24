#Buscando relaciones con pairs
pairs(mtcars[ ,2:6])

pairs(mtcars)

newdata <- subset(mtcars, select = c(2,7:8,11,12))
pairs(newdata)

pairs(mtcars[,c(1,3,4,5,6,9,10)])

Eficientes <- filter(mtcars, mpg >=30)
Eficientes

pairs(Eficientes[,2:6])


merc <- mtcars %>%
  filter(str_detect(model,"Merc"))
merc
  
pairs(merc[,2:6])

# CORRELACIÓN

pairs(mtcars[,2:6])

cor(mtcars[,2:6])


# RESUMEN DE PARÁMETROS ESTADÍSTICOS

summary(mtcars)

# DESVIACIÓN ESTANDAR / PROMEDIO O MEDIA / COEFICIENTE DE VARIACIÓN

sd(mtcars$mpg)

mean(mtcars$mpg)

#coefVar <- (desv/prom)*100

desv <- sd(mtcars$mpg)
desv

prom <- mean(mtcars$mpg)
prom

coefVar <- (desv/prom)*100
coefVar


# R MARKDOWN

install.packages("rmarkdown")
install.packages("knitr")


numeros <- c(1, 2, 3, 4)
suma_numeros <- sum(numeros) 
suma_numeros
