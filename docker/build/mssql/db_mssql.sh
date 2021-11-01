#!/bin/bash

# Executando script sql de criação da database protheus
sleep 15s
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${DB_PASSWORD} -d master -i /opt/mssql/db_mssql.sql