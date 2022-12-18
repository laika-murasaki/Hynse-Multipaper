@echo off
title Hynse Proxy - Load Balance

:RESTART

SET serverjar=velocity-3.1.2-SNAPSHOT-200
SET jdk=%LIGHT_JDK_18%/bin/java.exe
SET mem=2048

%jdk% -Xms%mem%M -Xmx%mem%M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar %serverjar%.jar

GOTO RESTART
pause