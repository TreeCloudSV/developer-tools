@echo off 
color 03
echo Welcome, Enter Your Subdomain or Domain:
echo Note: Without space, Example: treecloud.co or developer.treecloud.co
set /p domain=""
set OPENSSL_CONF=../conf/openssl.cnf

if not exist .\%domain% mkdir .\%domain%

..\bin\openssl req -config cert.conf -new -sha256 -newkey rsa:2048 -nodes -keyout %domain%\server.key -x509 -days 1825 -out %domain%\server.crt

echo.
echo -----
echo The certificate was provided.
echo.
pause

