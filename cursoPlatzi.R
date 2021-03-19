#Buscando relaciones con pairs
pairs(mtcars[ ,2:6])

pairs(mtcars)

newdata <- subset(mtcars, select = c(2,7:8,11,12))
pairs(newdata)