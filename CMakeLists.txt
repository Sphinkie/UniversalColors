cmake_minimum_required(VERSION 3.16)

project(UniversalColors VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTORCC ON)   # Auto use QRC resource File

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(UniversalColors

)

qt_add_qml_module(UniversalColors
    URI UniversalColors
    VERSION 1.0
    SOURCES Sources/main.cpp
    RESOURCES Ressources/UniversalColors.qrc

    QML_FILES Qml/Main.qml
    QML_FILES Qml/Controllers/ColorsTab.qml
    QML_FILES Qml/Controllers/ChromeTab.qml
    QML_FILES Qml/Controllers/ThemeTab.qml
    QML_FILES Qml/Controllers/ControlsTab.qml
    QML_FILES Qml/Controllers/ChromeBwTab.qml
    QML_FILES Qml/Controllers/Screenshot.qml

    QML_FILES Qml/Vues/ColorsTabForm.ui.qml
    QML_FILES Qml/Vues/ChromeTabForm.ui.qml
    QML_FILES Qml/Vues/ThemeTabForm.ui.qml
    QML_FILES Qml/Vues/ControlsTabForm.ui.qml
    QML_FILES Qml/Vues/ChromeBwTabForm.ui.qml
    QML_FILES Qml/Vues/Separator.ui.qml
    QML_FILES Qml/Vues/ColorName.qml
    QML_FILES Qml/Vues/Echantillon.qml

)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(UniversalColors PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.UniversalColors
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(UniversalColors
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS UniversalColors
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
