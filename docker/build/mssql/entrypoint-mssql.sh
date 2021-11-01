# Adicionando configurações aos arquivos .ini
/bin/sed 's/{{DATABASE}}/'"${TOPALIAS}"'/' -i /etc/odbc.ini
/bin/sed 's/{{DATABASE}}/'"${TOPALIAS}"'/' -i /opt/mssql/db_mssql.sql
/bin/sed 's/{{MSSQL}}/'"${TOPALIAS}"'/' -i /etc/odbc.ini
/bin/sed 's/{{DB_USER}}/'"${DB_USER}"'/' -i /etc/odbc.ini
/bin/sed 's/{{DB_PASSWORD}}/'"${DB_PASSWORD}"'/' -i /etc/odbc.ini
/bin/sed 's/{{MSSQL}}/'"${TOPALIAS}"'/' -i /totvs/dbaccess/dbaccess.ini
/bin/sed 's/{{IP_LICENSERVER}}/'"${IP_LICENSERVER}"'/' -i /totvs/dbaccess/dbaccess.ini

cd /totvs/dbaccess && chmod 777 dbaccess64 && chmod 777 dbaccesscfg

./dbaccesscfg -u ${DB_USER} -p ${DB_PASSWORD} -d mssql -a ${TOPALIAS}

apt-get remove msodbcsql
apt-cache madison msodbcsql
apt-get install msodbcsql=13.1.9.2-1 -y
apt-cache madison mssql-tools
ACCEPT_EULA=Y apt-get install mssql-tools=14.0.6.0-1 -y
apt-mark hold mssql-tools
apt-mark hold msodbcsql

/opt/mssql/bin/sqlservr & /opt/mssql/db_mssql.sh & ./dbaccess64
