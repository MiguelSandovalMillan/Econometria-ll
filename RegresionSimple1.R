# Ejemplo de modelo de Regresion lineal simple
library(tidyverse)
library(boot)
library(car)
library(QuantPsyc)
library(ggplot2)
library(readxl)

# sales <- read_excel("C:/Users/USER/Downloads/sales.xlsx")
view (sales)
attach(sales)
names(sales)
class(ventas)
class(Publicidad)

modelo1=lm(ventas~Publicidad, data=sales, na.action = na.exclude)
summary(modelo1)

sqrt(.3346)

# Graficar resultados del modelo
grafica1=ggplot(sales, aes(Publicidad,ventas))
grafica1
grafica1+geom_point()
grafica1+geom_point()+geom_smooth(method="lm",colour="Red")


