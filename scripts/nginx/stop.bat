@echo off
echo Stopping Nginx
taskkill /F /IM nginx.exe > nul
echo Stopping PHP-Fpm
taskkill /F /IM php-cgi.exe > nul
@REM pause
exit