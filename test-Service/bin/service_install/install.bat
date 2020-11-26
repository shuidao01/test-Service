@echo Install ATest Service
@echo off
sc create ATest_Service1.0 binPath= "D:\Program Files\Java\test-Service\bin\service_install\srvany.exe" start= auto DisplayName= "ATest1.0 Service"
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\ATest_Service1.0\Parameters" /v Application /t REG_SZ /d "D:\Program Files\Java\test-Service\bin\service_install\service.bat" /f
@echo create ATest Service finish 
@echo ready start serice 
sc start ATest_Service1.0
@echo ATest_Service1.0 Service start 
pause