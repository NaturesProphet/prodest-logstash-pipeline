#!/bin/bash

####################################################################################
# Script para exportar rapidamente as variaveis de ambiente necessárias para teste.
####################################################################################

ifconfig
read -p 'DIGITE O IP DA MAQUINA HOST: ' IP

export MONGO_COLLECTION=veiculos
export API_PORT=8745
export MONGO_DB_NAME=realtime
export MONGO_URI='mongodb://root:rootpass@'$IP':27017'
export MSSQL_USER=SA
export MSSQL_PASSWORD='!SenhaDificil%'
export MSSQL_SCHEMA=tempdb
export MSSQL_HOST=$IP
export MSSQL_PORT=1433
export MONGO_API_HOST=$IP
export MONGO_API_PORT=8745
clear
echo  '----------------------------'
echo 'tabela: ' $MONGO_COLLECTION
echo 'porta da api ' $API_PORT
echo 'mongo db name ' $MONGO_DB_NAME
echo 'mongo uri ' $MONGO_URI
echo 'mssql user ' $MSSQL_USER
echo 'mssql pass ' $MSSQL_PASSWORD
echo 'mssql db ' $MSSQL_SCHEMA
echo 'mssql host ' $MSSQL_HOST
echo 'mssql port ' $MSSQL_PORT
echo 'api server ' $MONGO_API_HOST
echo 'api port ' $MONGO_API_PORT
echo  '----------------------------'
