@echo Run me in Qt Creator terminal .. "run environnement"

windeployqt --release --no-translations -libdir .\Dist -dir .\Dist .\build\Desktop_Qt_6_6_1_MSVC2019_64bit-Release\UniversalColors.exe

xcopy .\build\Desktop_Qt_6_6_1_MSVC2019_64bit-Release\UniversalColors.exe .\Dist     /Q /Y
xcopy .\build\Desktop_Qt_6_6_1_MSVC2019_64bit-Release\qml                 .\Dist\qml /Q /Y /S

@echo.
@echo OFF

REM OPTIONS:
REM  --dir <directory>         Output directory (instead of binary directory)
REM  --libdir <path>           Copy libraries to path.
REM  --plugindir <path>        Copy plugins to path.
REM  --release                 Assume release binaries.
REM  --pdb                     Deploy .pdb files (informations de débogage pour les exécutables Windows).
REM  --compiler-runtime        Deploy compiler runtime (Desktop only).  
REM
REM ARGUMENT:
REM  [files]                   Binaries or directory containing the binary
REM 
REM EXEMPLE:
REM   windeployqt --pdb tiCalcul.exe --verbose 1 --dir . --plugindir plugins --compiler-runtime





