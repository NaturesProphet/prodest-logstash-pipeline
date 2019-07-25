docker run -it -e RABBIT_HOST=192.168.1.105 \
-e RABBIT_EXCHANGE_NAME=realtime \
-e RABBIT_EXCHANGE_TYPE=topic \
-e RABBIT_CONSUMER_QUEUE=realtime.geocontrol \
-e MSSQL_USER=SA \
-e MSSQL_PASSWORD=Senh@Dif1cil \
-e MSSQL_SCHEMA=tempdb \
-e MSSQL_HOST=192.168.1.105 \
-e MSSQL_PORT=1433 \
-e MONGO_API_HOST=localhost \
-e MONGO_API_PORT=8745 \
-e MONGO2_HOST=27017 \
-e MONGO2_PORT=27017 \
-e MONGO2_USER=admin \
-e MONGO2_PASS=admin123 \
-e MONGO2_DBNAME=historico \
-e MONGO2_COLLECTION=veiculos \
registry.es.gov.br/espm/transcol-online/realtime/logstash:latest