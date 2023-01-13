(------bat for delete multiple folder ,file and registry key------)


Del folder_file:


For delete multiple folder and file

paste the path in Delete_info.txt


eg:-

Delete_info.txt:


C:\Program Files\New folder

C:\Program Files\New folder (2)

C:\Program Files\New folder\New Text Document.txt


run the Del folder_file.bat as administrator


and if you remove this line from Del folder_file.bat

 rmdir "%%a" /s /q     ->this delete folder
 
 del /f /q /a:- "%%a"  ->this delete file
 
then Del folder_file.bat only take ownership instead of deleting it


----x----

Del_reg:


For delete multiple registry key

paste the path in Delete_reg_info.txt


eg:-

Delete_reg_info.txt

HKEY_CLASSES_ROOT\*\New Key #1

HKCR\*\New Key #2


run the Del_reg.bat as administrator


and if you remove this line from Del_reg.bat

 reg delete "%%a" /f  ->this delete key
 
then Del_reg.bat only take ownership instead of deleting it


----x----

SetACL.exe link:

https://helgeklein.com/download/

https://helgeklein.com/setacl/documentation/command-line-version-setacl-exe/
