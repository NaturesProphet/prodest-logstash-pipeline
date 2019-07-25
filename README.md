[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)] (http://commitizen.github.io/cz-cli/) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)


# Solução de leitura da fila da Geocontrol

Solução final para leitura da fila da Geocontrol e armazenamento DIRETO nos nossos dois bancos de dados (realtime e Histórico), elimindando assim o RabbitMQ, o Mensageiro, o PopMQ e o PopMongo, pois o logstash consegue fazer o trabalho de todos eles juntos.

Logstash
https://www.elastic.co/products/logstash

Tutorial
https://butecoopensource.github.io/logstash/


## Variáveis de Ambiente para o Docker
```bash
RABBIT_HOST               # Endereço do servidor de RAbbit
RABBIT_EXCHANGE_NAME      # Nome do topico. ex 'realtime'
RABBIT_EXCHANGE_TYPE      # tipo de exchange. usar 'topic'
RABBIT_CONSUMER_QUEUE     # Nome da fila onde o consumidor vai pegar os dados
MSSQL_USER                # Usuário do Banco de dados SQL-SERVER (Histórico)
MSSQL_PASSWORD            # Senha do SQL-SERVER
MSSQL_SCHEMA              # Nome do banco de dados no SQL-SERVER
MSSQL_HOST                # Endereço do SQL-SERVER
MSSQL_PORT                # Porta do SQL-SERVER
MONGO_API_HOST            # IP do servidor da API que popula o MongoDB
MONGO_API_PORT            # Porta da API
MONGO2_HOST               # Servidor do mongoDB que armazena duas semanas de dados
MONGO2_PORT               # Porta usada no Mongo 2
MONGO2_USER               # Usuario do servidor de mongo 2
MONGO2_PASS               # Senha do servidor de mongo 2
MONGO2_DBNAME             # Nome do banco no mongo 2
MONGO2_COLLECTION         # Nome da tabela no mongo 2
ELASTICSEARCH_SERVER      # Servidor do ElasticSearch
```
## RABBIT_CONSUMER_QUEUE
é necessário configurar esta queue MANUALMENTE no servidor do RabbitMQ.  
Setar uma TTL de 30000 ms.  
Marcar como DURABLE.  

Este logstash está configurado como um consumidor passivo, ele não gera queues automaticamente no servidor.

### SQL SERVER
O logstash não gera a tabela do mssql automaticamente, então, antes de subir o serviço, use o script de create que está na pasta /testes

### MongoDB
É preciso indexar a collection de destino para poder usar as querys geográficas
```bash
use realtime
db.veiculos.createIndex( { LOCALIZACAO : "2dsphere" } )
```

Após o index feito, você poderá rodar querys geográficas, como neste exemplo:
```bash
db.veiculos.find(
   {
     LOCALIZACAO:
       { $near :
          {
            $geometry: { type: "Point",  coordinates: [ -40.32262, -20.350101 ] },
            $minDistance: 10,
            $maxDistance: 150
          }
       }
   }
).pretty()
```

### MongoDB 2 - Banco de histórico de 24 horas
É preciso indexar a tabela desse banco também, dessa vez, para configurar um TTL de 86400 segundos (24 horas ) na chave '@timestamp'

procedimento:
```
use historico
db.veiculos.createIndex( { "@timestamp": 1 }, { expireAfterSeconds: 86400 } )
db.veiculos.createIndex( { LOCALIZACAO : "2dsphere" } )
```

## Executando direto em Docker

Edite o arquivo rodaEmDocker.sh alterando as variaveis para o seu ambiente local.
depois, execute 
```
./rodaEmDocker.sh
```

é necessário ter o rabbitmq, o Logstash-Rabbit, o mssql, o mongo, e o mongo-api-logstash executando.