@echo off
echo Start PHP-Fpm...
RunHiddenConsole php-cgi.exe -b 127.0.0.1:9000 -c D:\PHP\php.ini
echo Start Nginx...
cd D:\nginx-1.24.0\
start nginx.exe
@REM pause
exit