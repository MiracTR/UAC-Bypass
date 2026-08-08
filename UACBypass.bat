```bat
@echo off
color e
set __compat_layer=runasinvoker
cls
title Program Acici / Program Launcher

echo ================================
echo     PROGRAM ACICI / LAUNCHER
echo ================================
echo.
echo [1] Turkce
echo [2] English
echo.

set /p "lang=Seciminiz / Your choice: "

if "%lang%"=="1" goto turkish
if "%lang%"=="2" goto english

echo.
echo Gecersiz secim / Invalid choice.
pause
exit /b


:turkish
cls
title Program Acici

echo Merhaba. Setup dosyalarini kurmaniz gerekiyorsa ama admin sifrenizi
echo bilmiyorsaniz/unuttuysaniz bu dosyayi kullanabilirsiniz.
echo.
echo Bu dosyayi acmak istediginiz uygulamayla ayni klasorde actiginizdan
echo emin olun.
echo.

pause

cls
echo Acmak istediginiz uygulamanin tam adini giriniz.
echo Ornek: setup.exe
echo.
set /p "program=Program adi: "

if not exist "%program%" (
    echo.
    echo Hata: "%program%" bulunamadi.
    pause
    exit /b
)

echo.
echo "%program%" aciliyor...
start "" "%program%"

pause
exit /b


:english
cls
title Program Launcher

echo Hello. If you need to run setup files but you do not know
echo or have forgotten the administrator password, you can use this file.
echo.
echo Make sure you run this file in the same folder as the application
echo you want to open.
echo.

pause

cls
echo Enter the exact name of the application you want to open.
echo Example: setup.exe
echo.
set /p "program=Program name: "

if not exist "%program%" (
    echo.
    echo Error: "%program%" was not found.
    pause
    exit /b
)

echo.
echo Opening "%program%"...
start "" "%program%"

pause
exit /b
```
