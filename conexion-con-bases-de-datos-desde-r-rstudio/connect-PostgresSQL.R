install.packages('RPostgres')
install.packages('DBI')

library(DBI)

dbname <- ''
host <- ''
port <- 3306
user <- ''
password <- ''

con <- dbConnect(RPostgres::Postgres(), 
                 dbname = dbname, 
                 host = host, 
                 port = port,
                 user = user,
                 password = password)

dbListTables(con) # Lista todas las tablas disponibles en la base de datos
dbWriteTable(con, "mtcars", mtcars) # Para crear tablas
dbReadTable(con, "mtcars") # Para cargar una tabla en especifico
dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4") # Hacer uso de setencia SQL