@echo off
::.bat for delete multi path
::paste the path in Delete_info.txt

set p=%~dp0
FOR /f "delims=" %%a IN ('type "%p%Delete_info.txt"') DO (
 if exist "%%a" (
  takeown /F "%%a" /R /A
  "%p%SetACL.exe" -on "%%a" -ot file -actn ace -ace "n:Administrators;p:full" -silent
  rmdir "%%a" /s /q
  del /f /q /a:- "%%a")
)