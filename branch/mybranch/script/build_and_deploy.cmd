@echo on
set pathX=.\..

@echo mvn build PL
call mvn -f %pathX%\java\Empty-Java-Project-Example clean install

@echo uploading FTP
.\..\..\..\tools\winscp\winscp.com /ini=nul /script=winscp.script

@pause