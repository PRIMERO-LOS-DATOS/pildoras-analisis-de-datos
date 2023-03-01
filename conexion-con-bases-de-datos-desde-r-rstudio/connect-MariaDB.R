install.packages('RMariaDB') # Driver
install.packages('DBI')

library(DBI)

dbname <- ''
host <- ''
port <- 3306
user <- ''
password <- ''
rootSSL <- paste0(getwd(),'/conexion-con-bases-de-datos-con-r/cert.pem')

con <- dbConnect(RMariaDB::MariaDB(), 
                 dbname = dbname, 
                 host = host, 
                 port = port,
                 username = user,
                 password = password,
                 ssl.ca = rootSSL)
    
dbListTables(con) # Lista todas las tablas disponibles en la base de datos
dbWriteTable(con, "mtcars", mtcars) # Para crear tablas
dbReadTable(con, "mtcars") # Para cargar una tabla en especifico
dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4") # Hacer uso de sentencia SQL