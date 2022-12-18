@ECHO OFF
SETLOCAL

title Hynse Master - Controller Instance
color 0e

:MAIN

SET runtime=%LIGHT_JDK_18%\bin\java.exe
SET MEM=1024
"%runtime%" -Xms%MEM%M -Xmx%MEM%M -jar MultiPaper-Master-2.10.1-all.jar 40000

pause