# Ambiente desenvolvimento Protheus utilizando Docker e banco de dados SQL Server

## Instruções

>O projeto deve ficar com a estrutura abaixo:
```
├── docker
│   ├── build
│   │   ├── appserver
│   │   │   └── entrypoint-appserver.sh
│   │   ├── licserver
│   │   │   └── entrypoint-licserver.sh
│   │   └── mssql
│   │       ├── db_mssql.sh
│   │       ├── db_mssql.sql
│   │       └── entrypoint-mssql.sh
│   ├── conf-files
│   │     ├── appserver.ini
│   │     ├── dbaccess.ini
│   │     ├── odbc.ini
│   │     └── odbcinst.ini
│   ├── dockerfiles
│   │   ├── dockerfile.appserver
│   │   ├── dockerfile.mssql
│   │   └── dockerfile.postgres
|   └── totvs
│       ├── dbaccess
│       ├── licenserver
│       ├── protheus
│       └── protheus_data
├── src
|   └── Organize a partir desta pasta os fontes advpl/tlpp referentes ao projeto
├── .env
├── .gitignore
├── docker-compose.yml
└── README.md
```

[Link](https://www.dropbox.com/s/axfc7s9ddz3zoxl/totvs.tar.gz?dl=0) para downoad da pasta Totvs contento a versão do protheus 12.1.33, dbaccess e lincense server
