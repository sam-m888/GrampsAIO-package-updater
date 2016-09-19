SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
ECHO Running %parent%%me%

ECHO %me% Test the installers.
ECHO %me% Modify the installers names before running
ECHO %me% Control + C to terminate batch job
Pause

REM Gramps Version & Build - %version%  %build%
REM GrampsAIO-4.9.9-r23836-dbd00b2_win32.exe
REM GrampsAIO-4.9.9-r23836-dbd00b2_win64.exe

REM set version=4.9.9
REM set version=5.0.0
REM set build=alpha1
set version=4.2.4
set build=1


REM Silent install /S
REM **** Note /D does not work need to investigate
REM You use /D to set the default directory to install to

%USERPROFILE%\Desktop\%build%\GrampsAIO-%version%-%build%_win32 /S /D=C:\tempAAA32

%USERPROFILE%\Desktop\%build%\GrampsAIO-%version%-%build%_win64 /S /D=C:\tempAAA64

