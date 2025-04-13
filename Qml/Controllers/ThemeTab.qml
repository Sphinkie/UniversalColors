import QtQuick
import QtQuick.Controls.Universal
import "../Vues"


/*
 * Possibilité de modifier les couleurs du thème
 * The value is propagated to children.
 */
ThemeTabForm {

    // Les touches du clavier sont forwardées vers le Gestionnaire
    Keys.forwardTo: [screenshot]

    // couleur de fond
    color: Universal.altHighColor

    combobox_background.onActivated: {
        console.log(combobox_background.currentText)
        window.Universal.background = combobox_background.currentText
        console.log(Universal.background)
        tabbedPage.col_bg = combobox_background.currentText.substring(0, 2)
    }

    combobox_accent.onActivated: {
        window.Universal.accent = combobox_accent.currentText
        tabbedPage.col_ac = combobox_accent.currentText.substring(0, 2)
    }

    combobox_foreground.onActivated: {
        window.Universal.foreground = combobox_foreground.currentText
        tabbedPage.col_fg = combobox_foreground.currentText.substring(0, 2)
    }

    // Pour la page en cours seulement
    combobox_theme.onActivated: {
        Universal.theme = combobox_theme.currentText
        tabbedPage.theme = "-" + combobox_theme.currentText.toLowerCase()
    }

    // Initialisations
    combobox_background.Component.onCompleted: {
        //combobox_background.currentIndex = indexOfValue(Universal.background)
        combobox_background.currentIndex = 1 // Green
        tabbedPage.col_bg = combobox_background.currentText.substring(0, 2)
    }

    combobox_foreground.Component.onCompleted: {
        combobox_foreground.currentIndex = 13 // Amber
        tabbedPage.col_fg = combobox_foreground.currentText.substring(0, 2)
    }

    combobox_accent.Component.onCompleted: {
        combobox_accent.currentIndex = 12 // Orange
        tabbedPage.col_ac = combobox_accent.currentText.substring(0, 2)
    }

    combobox_theme.Component.onCompleted: {
        combobox_theme.currentIndex = 0 // Light
        tabbedPage.theme = "-" + combobox_theme.currentText.toLowerCase()
    }

    ListModel {
        id: couleurs

        ListElement {
            color: Universal.Lime
            text: "Lime"
        }
        ListElement {
            color: Universal.Green
            text: "Green"
        }
        ListElement {
            color: Universal.Emerald
            text: "Emerald"
        }
        ListElement {
            color: Universal.Teal
            text: "Teal"
        }
        ListElement {
            color: Universal.Cyan
            text: "Cyan"
        }
        ListElement {
            color: Universal.Cobalt
            text: "Cobalt"
        }
        ListElement {
            color: Universal.Indigo
            text: "Indigo"
        }
        ListElement {
            color: Universal.Violet
            text: "Violet"
        }
        ListElement {
            color: Universal.Pink
            text: "Pink"
        }
        ListElement {
            color: Universal.Magenta
            text: "Magenta"
        }
        ListElement {
            color: Universal.Crimson
            text: "Crimson"
        }
        ListElement {
            color: Universal.Red
            text: "Red"
        }
        ListElement {
            color: Universal.Orange
            text: "Orange"
        }
        ListElement {
            color: Universal.Amber
            text: "Amber"
        }
        ListElement {
            color: Universal.Yellow
            text: "Yellow"
        }
        ListElement {
            color: Universal.Brown
            text: "Brown"
        }
        ListElement {
            color: Universal.Olive
            text: "Olive"
        }
        ListElement {
            color: Universal.Steel
            text: "Steel"
        }
        ListElement {
            color: Universal.Mauve
            text: "Mauve"
        }
        ListElement {
            color: Universal.Taupe
            text: "Taupe"
        }
    }
}
