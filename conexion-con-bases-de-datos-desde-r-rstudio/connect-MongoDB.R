library(mongolite)

queryList = mongo(collection=collection, 
                  db=database, 
                  url=dbURI)

    
query = trips_collection$find('{"usertype":"Subscriber","tripduration":{"$gt":500},"$expr": {"$eq": ["$start station name","$end station name"]}}')
