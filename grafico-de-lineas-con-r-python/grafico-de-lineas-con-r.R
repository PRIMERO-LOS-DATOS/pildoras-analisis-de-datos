# Método 1
plot(x=BOD$Time, y=BOD$demand, type='l')


# Método 2
library(ggplot2)
library(dplyr)

BOD %>% ggplot(aes(x=Time, y=demand)) + 
    geom_line() + 
    ggtitle('Grafico de lineas') +
    xlab('Tiempo') + 
    ylab('Demanda')

# Método 3
library(forecast)

autoplot(co2)


