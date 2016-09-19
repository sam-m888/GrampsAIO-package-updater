REM uninstall from original installed location

"C:\Program Files\GrampsAIO32-4.2.3\uninstall.exe" /S

"C:\Program Files\GrampsAIO64-4.2.3\uninstall.exe" /S

REM Work around until /D is working

rmdir /s /q C:\tempAAA32

rmdir /s /q C:\tempAAA64

rmdir /s /q C:\temp499