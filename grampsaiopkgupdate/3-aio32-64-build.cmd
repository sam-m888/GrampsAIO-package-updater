:: Name:     aio32-64-build.cmd
:: Purpose:  Basic script to update Josip's Gramps AIO installer package
:: Note:     This does not build the libraries
:: Author:   Sam
:: Revision: April 2016 - initial version


SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
ECHO Running %parent%%me%


ECHO %me% *****WARNING***** Have you updated the NSIS file?
ECHO %me% Control + C to terminate batch job
PAUSE

REM Gramps Version & Build - %version%  %build%

REM set version=4.9.9
REM set version=5.0.0
REM set build=alpha1
set version=4.2.4
set build=1

REM Gramps Source directory  -  %grampssource%

REM set grampssource=C:\temp499\gramps-master
set grampssource=C:\temp499\gramps-4.2.4

REM AIO 32 bit directory - %aio32%

set aio32name=tempAAA32
set aio32=C:\%aio32name%

REM AIO 64 bit directory - %aio64%

set aio64name=tempAAA64
set aio64=C:\%aio64name%

REM Set the path for NSIS

set PATH=%PATH%;C:\Program Files (x86)\NSIS\Bin

REM Delete existing Gramps files for 32 bit install

cd \

rmdir /s /q %aio32%\share\gramps

rmdir /s /q %aio32%\share\doc\gramps

rmdir /s /q %aio32%\lib\python3.5\site-packages\gramps

REM If they exist delete the previous python egg file(s)

del %aio32%\lib\python3.5\site-packages\gramps-*.egg-info


REM Delete existing Gramps files for 64 bit install

rmdir /s /q %aio64%\share\gramps

rmdir /s /q %aio64%\share\doc\gramps

rmdir /s /q %aio64%\lib\python3.5\site-packages\gramps

REM If they exist delete the previous python egg file(s)

del %aio64%\lib\python3.5\site-packages\gramps-*.egg-info

ECHO %me% *****WARNING***** Have you updated the NSIS file?
ECHO %me% Control + C to terminate batch job
PAUSE

REM Make a directory for the builds and logs to be saved to

mkdir %USERPROFILE%\Desktop\%build%

REM Change to gramps source folder

cd \
cd %grampssource%

REM Install new gramps source to 32 & 64 bit versions

%aio32%\bin\python setup.py install --prefix=%aio32% > %USERPROFILE%\Desktop\%build%\w32-install-log-g%version%-build-%build%.txt

%aio64%\bin\python setup.py install --prefix=%aio64% > %USERPROFILE%\Desktop\%build%\w64-install-log-g%version%-build-%build%.txt

REM Change to 32 version and create installer package

cd \
cd %aio32name%\src

makensis gramps.nsi > %USERPROFILE%\Desktop\%build%\w32-nsis-make-log-g%version%-build-%build%.txt

move %aio32%\src\GrampsAIO-*_win32.exe %USERPROFILE%\Desktop\%build%

REM Change to 64 version and create installer package

cd \
cd %aio64name%\src

makensis gramps.nsi > %USERPROFILE%\Desktop\%build%\w64-nsis-make-log-g%version%-build-%build%.txt

move %aio64%\src\GrampsAIO-*_win64.exe %USERPROFILE%\Desktop\%build%

ECHO Josip's Gramps AIO installer packages have been updated.
PAUSE