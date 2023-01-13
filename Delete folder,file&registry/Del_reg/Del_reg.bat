@echo off
::.bat for delete multi path
::paste the path in Delete_reg_info.txt

set p=%~dp0
FOR /f "delims=" %%a IN ('type "%p%Delete_reg_info.txt"') DO (
 "%p%SetACL.exe" -on "%%a" -ot reg -actn setowner -ownr "n:Administrators" -rec Yes -silent
 "%p%SetACL.exe" -on "%%a" -ot reg -actn ace -ace "n:Administrators;p:full" -rec Yes -silent
 reg delete "%%a" /f
)