@echo Stopping ATest Service
@echo off
set port=9094
for /f "tokens=1-5" %%i in ('netstat -ano^|findstr ":%port%"') do taskkill /F /pid %%m
sc stop ATest_Service1.0
sc delete ATest_Service1.0
pause