import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Universal

import "./Controllers"

Window {
    id: window
    width: 540
    height: 800
    minimumWidth: 380
    minimumHeight: 600
    visible: true
    title: "Universal Colors... by Sphinkie"

    // ----------------------------------------------------------------
    // Initialisation des couleurs
    // ----------------------------------------------------------------
    Universal.theme: Universal.light
    Universal.background: Universal.Green
    Universal.foreground: Universal.Amber
    Universal.accent: Universal.Orange
    // ----------------------------------------------------------------
    color: Universal.chromeLowColor

    Screenshot {
        id: screenshot
    }
    // ----------------------------------------------------------------
    // Page principale
    // ----------------------------------------------------------------
    ColumnLayout {
        id: mainpage
        anchors.top: parent.top
        anchors.fill: parent
        spacing: 0

        // ----------------------------------------------------------------
        // Barre de titre
        // ----------------------------------------------------------------
        Pane {
            FontLoader {
                id: titlefont
                // source: "qrc:/Fonts/Scideco.otf"
                // source: "qrc:/Fonts/13_Misa.ttf"
                // source: "qrc:/Fonts/Hourglass.ttf"
                // source: "qrc:/Fonts/OrionPax.otf"
                // source: "qrc:/Fonts/Ericsson_GA628.ttf"
                source: "qrc:/Fonts/Vectroid.otf"
            }

            Layout.fillWidth: true
            Label {
                id: titlebar
                text: "Universal Colors"
                font.family: titlefont.font.family
                font.weight: titlefont.font.weight
                font.styleName: titlefont.font.styleName
                font.pixelSize: 48
            }
        }
        Rectangle {
            visible: false
            width: 70
            height: 100
            Image {
                id: image
            }
        }
        Rectangle {
            id: example
            visible: false
            width: 100
            height: 100
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "steelblue"
                }
                GradientStop {
                    position: 1
                    color: "black"
                }
            }
        }
        // ----------------------------------------------------------------
        // Onglets
        // ----------------------------------------------------------------
        Rectangle {
            id: tabRectangle
            width: parent.width
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            focus: true // focus initial
            Keys.forwardTo: [screenshot]

            TabBar {
                id: tabBar
                width: parent.width
                font.pointSize: 16
                font.bold: true
                TabButton {
                    objectName: "theme"
                    text: "Theme"
                }
                TabButton {
                    objectName: "colors"
                    text: "Colors"
                }
                TabButton {
                    objectName: "chrome"
                    text: "Chrome"
                }
                TabButton {
                    objectName: "chromebw"
                    text: "BW"
                }
                TabButton {
                    objectName: "controls"
                    text: "Controls"
                }
            }
        }
        // ----------------------------------------------------------------
        // Contenu de l'onglet
        // ----------------------------------------------------------------
        StackLayout {
            id: tabbedPage
            property string col_bg: ""
            property string col_fg: ""
            property string col_ac: ""
            property string theme: "-light"
            property string bg: ""
            Layout.fillHeight: true
            Layout.fillWidth: true
            currentIndex: tabBar.currentIndex

            // ------------------ Choix du thème ----------------------------
            ThemeTab {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            // ------------------ Couleurs du thème -------------------------
            ColorsTab {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            // ------------------ Couleurs Chrome Changeantes -----------------
            ChromeTab {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            // ------------------ Couleurs Chrome Fixes ----------------------
            ChromeBwTab {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            // ------------------ Controles du thème ---------------------------
            ControlsTab {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
