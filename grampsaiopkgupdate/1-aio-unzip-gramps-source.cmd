REM silent install of 7-Zip\
REM TODO path to install file  7z1602-x64.exe \S

REM Assumes Gramps AIO packages installed

REM Only need to extract source once to C:\temp499\gramps-master

SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
ECHO Running %parent%%me%

ECHO %me% Modify the installers names before running
ECHO %me% Control + C to terminate batch job
Pause

REM Gramps source file name

REM set build=5.0.0-alpha1
set build=4.2.4

REM set PATH=%PATH%;C:\Program Files\7-Zip\

REM extracts to c:\temp499\gramps-master\...
REM "C:\Program Files\7-Zip\"7z.exe x gramps-master-%build%.zip -oc:\temp499 -r -y
REM xx doesnt work xx "C:\Program Files\7-Zip\"7z.exe x gramps-%build%.tar.gz -oc:\temp499 -r -y
"C:\Program Files\7-Zip\"7z.exe x gramps-%build%.tar.gz -oc:\temp499 -r -y