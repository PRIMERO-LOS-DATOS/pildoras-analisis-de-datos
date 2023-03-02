install.packages('wordcloud')
library(wordcloud)

palabras <- c(letters, LETTERS, 0:9)
frecuenciaPalabras <- sample(1:100,62,TRUE)


wordcloud(palabras, frecuenciaPalabras)

