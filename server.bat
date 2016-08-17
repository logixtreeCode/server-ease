@echo off
REM Simple script to ease the server turn on/off process
REM author : Karan
REM 
REM 
REM 

if "%1" == "on" 			goto startServer
if "%1" == "off" 			goto stopServer

if "%1" == "startnginx" 	goto startNginx
if "%1" == "stopnginx" 		goto stopNginx

if "%1" == "startapache"	goto startApache
if "%1" == "stopapache" 	goto stopApache

if "%1" == "startmysql" 	goto startMySQL
if "%1" == "stopmysql" 		goto stopMySQL

goto end

:startServer
echo Starting the webserver ..... 
REM Starting the Apache Webserver 
REM NET START nginx > NULL
NET START apache > NULL
REM NET START mysql > NULL
NET START MariaDB > NULL
REM NET START "FileZilla Server FTP server" > NULL
goto end


:stopServer
echo Stopping the webserver ......
NET STOP apache > NULL
REM NET STOP nginx > NULL
REM NET STOP mysql > NULL
NET STOP MariaDB > NULL
REM NET STOP php-cgi > NULL
REM NET STOP "FileZilla Server FTP server" > NULL
goto end


REM --------------------------Nginx-------------------------------
:startNginx
echo Starting the Nginx server .... 
NET START nginx > NULL
goto end

:stopNginx
echo Stopping the Nginx server ....
NET STOP nginx > NULL
NET STOP php-cgi > NULL
goto end
REM --------------------------------------------------------------

REM --------------------------Apache------------------------------
:startApache
echo Starting Apache server ....
NET START apache > NULL
goto end

:stopApache
echo Stopping Apache Web server ....
NET STOP apache > NULL
goto end
REM --------------------------------------------------------------

REM -------------------------MySQL--------------------------------
:startMySQL
echo Starting MySQL Database ....
NET START mysql > NULL
goto end

:stopMySQL
echo Stopping MySQL Database ....
NET STOP mysql > NULL 
goto end 
REM --------------------------------------------------------------


REM ----------------------MariaDB --------------------------------
:startMariaDB
echo Starting MariaDB Database ....
NET START MariaDB > NULL
goto end

:stopMariaDB
echo Stopping MariaDB Database ....
NET STOP MariaDB > NULL
goto end

REM --------------------------Exiting-----------------------------
:end
