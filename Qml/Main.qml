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
    title: "Universal Colors by Sphinkie"

    // ----------------------------------------------------------------
    // Initialisation des couleurs
    // ----------------------------------------------------------------
    Universal.theme: Universal.light
    Universal.background: Universal.Green
    Universal.foreground: Universal.Amber
    Universal.accent: Universal.Orange

    // ----------------------------------------------------------------
    // Page principale
    // ----------------------------------------------------------------
    ColumnLayout {
        id: column
        anchors.top: parent.top
        anchors.fill: parent
        // ----------------------------------------------------------------
        // Barre de titre
        // ----------------------------------------------------------------
        Pane {
            Layout.fillWidth: true
            Label {
                id: titlebar
                text: "Universal Colors by Sphinkie"
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
            Layout.topMargin: 0

            TabBar {
                id: tabBar
                width: parent.width
                font.pointSize: 16
                font.bold: true
                TabButton {
                    id: tabIngredients
                    text: qsTr("Theme")
                }
                TabButton {
                    id: tabTools
                    text: qsTr("Colors")
                }
                TabButton {
                    id: chromebwtab
                    text: qsTr("BW")
                }
                TabButton {
                    id: chrometab
                    text: qsTr("Chrome")
                }
                TabButton {
                    id: tabSettings
                    text: qsTr("Controls")
                }
            }
        }
        // ----------------------------------------------------------------
        // Contenu de l'onglet
        // ----------------------------------------------------------------
        StackLayout {
            id: tabbedPage
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
            // ------------------ Couleurs Chrome Fixes ----------------------
            ChromeBwTab {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            // ------------------ Couleurs Chrome Changeantes -----------------
            ChromeTab {
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
