/bin/sed 's/{{IP_APPSERVER}}/'"${IP_APPSERVER}"'/' -i /totvs/protheus/bin/appserver/appserver.ini
/bin/sed 's/{{IP_DATABASE}}/'"${IP_DATABASE}"'/' -i /totvs/protheus/bin/appserver/appserver.ini
/bin/sed 's/{{IP_LICENSERVER}}/'"${IP_LICENSERVER}"'/' -i /totvs/protheus/bin/appserver/appserver.ini
/bin/sed 's/{{TOPDATABASE}}/'"${TOPDATABASE}"'/' -i /totvs/protheus/bin/appserver/appserver.ini
/bin/sed 's/{{TOPALIAS}}/'"${TOPALIAS}"'/' -i /totvs/protheus/bin/appserver/appserver.ini
/bin/sed 's/{{AMBIENTE}}/'"${AMBIENTE}"'/' -i /totvs/protheus/bin/appserver/appserver.ini

cd /totvs/protheus/bin/appserver && chmod 777 appsrvlinux && ./appsrvlinux