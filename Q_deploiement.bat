@echo Run me in Qt Creator terminal .. "run environnement"

windeployqt --release --compiler-runtime --no-translations --libdir .\dist\UniversalColors --dir .\dist\UniversalColors --qmldir .\Qml  .\build\Desktop_Qt_6_6_1_MSVC2019_64bit-Release\UniversalColors.exe

copy .\build\Desktop_Qt_6_6_1_MSVC2019_64bit-Release\UniversalColors.exe .\dist\UniversalColors







