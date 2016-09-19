REM Silent install /S
REM **** Note /D does not work need to investigate
REM You use /D to set the default directory to install to

SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
ECHO Running %parent%%me%

ECHO %me% Modify the installers names before running
ECHO %me% Control + C to terminate batch job
Pause

REM Gramps Version & Build - %version%  %build%
REM GrampsAIO-4.9.9-r23836-dbd00b2_win32.exe
REM GrampsAIO-4.9.9-r23836-dbd00b2_win64.exe

set version=4.2.3
set build=1

REM C:\Program Files\GrampsAIO32-4.9.9
REM C:\Program Files\GrampsAIO64-4.9.9

REM **********************************************

%USERPROFILE%\Desktop\aio-paulfranklin\GrampsAIO-%version%-%build%_win32.exe /S /D=C:\tempAAA32

%USERPROFILE%\Desktop\aio-paulfranklin\GrampsAIO-%version%-%build%_win64.exe /S /D=C:\tempAAA64

REM Work around until /D is working

xcopy /E /I "C:\Program Files\GrampsAIO32-%version%" C:\tempAAA32

xcopy /E /I "C:\Program Files\GrampsAIO64-%version%" C:\tempAAA64
