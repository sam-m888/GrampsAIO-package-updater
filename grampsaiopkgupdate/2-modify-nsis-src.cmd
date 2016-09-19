REM backup modified nsis

copy C:\tempAAA32\src\gramps.nsi C:\tempAAA32\src\gramps.nsi.bak

copy C:\tempAAA64\src\gramps.nsi C:\tempAAA64\src\gramps.nsi.bak

ECHO Opens each NSIS file for editing (press pause to continue)

write.exe C:\tempAAA32\src\gramps.nsi

Pause

write.exe C:\tempAAA64\src\gramps.nsi

Pause

-------------------------------

REM Need to add the Josips src files to Github
REM along with build script for the "c" file

REM \gramps\windows\AIO
REM \gramps\windows\AIO\32-bit
REM \gramps\windows\AIO\64-bit


REM Then you could simply clone the git branch
REM After editing the version and build info on Github

REM git clone --depth 1 master https://github.com/gramps-project/gramps.git