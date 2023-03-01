
plot(x=cars[,'speed'], y=cars[,'dist'], type='p')


install.packages('dplyr')
install.packages('ggplot2')

library(dplyr)
library(ggplot2)

require(dplyr)
require(ggplot2)


cars %>% ggplot(aes(x=speed, y=dist)) + 
    geom_point() + 
    ggtitle('grafico de dispersion') +
    xlab('velocidad') + 
    ylab('distancia')
