@ECHO OFF
SETLOCAL

title Hynse Master - Controller Instance
color 0e

:MAIN

SET runtime=%LIGHT_JDK_18%\bin\java.exe
SET MEM=1024
SET JAR=MultiPaper-Master-2.11.0-all
SET PORT=40000
"%runtime%" -Xms%MEM%M -Xmx%MEM%M -jar %JAR%.jar %PORT%

pause