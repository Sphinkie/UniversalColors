@echo Run me in Qt Creator terminal .. "run environnement"

windeployqt --release --compiler-runtime --no-translations --libdir .\dist\UniversalColors --dir .\dist\UniversalColors --qmldir .\Qml  .\build\Desktop_Qt_6_6_1_MSVC2019_64bit-Release\UniversalColors.exe

copy .\build\Desktop_Qt_6_6_1_MSVC2019_64bit-Release\UniversalColors.exe .\dist\UniversalColors

@echo.
@echo OFF


REM OPTIONS:
REM  --dir <directory>         Output directory (instead of binary directory)
REM  --libdir <path>           Copy libraries to path.
REM  --plugindir <path>        Copy plugins to path.
REM  --release                 Assume release binaries.
REM  --pdb                     Deploy .pdb files (informations de débogage pour les exécutables Windows).
REM  --compiler-runtime        Deploy compiler runtime (for Windows apps).
REM  --qmldir <path-to-app-qml-files>  Use this option if your app uses QtQuick
REM
REM ARGUMENT:
REM  [files]                   Binaries or directory containing the binary
REM 
REM EXEMPLE:
REM   windeployqt --pdb tiCalcul.exe --verbose 1 --dir . --plugindir plugins --compiler-runtime
REM
REM EXEMPLE FOR QTQUICK APPS
REM   windeployqt --qmldir <path-to-app-qml-files> <path-to-app-binary>





