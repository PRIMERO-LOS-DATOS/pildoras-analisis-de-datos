install.packages('RMariaDB') # Driver
install.packages('DBI')

library(DBI)

dbname <- 'base-de-datos'
host <- 'us-east.connect.psdb.cloud'
port <- 3306
user <- 'wbpvp7cmc5uxn70y5aub'
password <- 'pscale_pw_dyI4h8b5i1xm38588e3UxpiqWNTvpGXeUIPw6h3slCe'
rootSSL <- paste0(getwd(),'/V01_conexion-con-bases-de-datos-con-r/cert.pem')

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
dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4") # Hacer uso de setencia SQL