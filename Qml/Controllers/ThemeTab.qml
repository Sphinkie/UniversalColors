import QtQuick
import QtQuick.Controls.Universal
import "../Vues"

// Possibilité de modifier les couleurs du thème
// TODO: on n'arrive pas à affecter la valeur 'Universal' de la couleur, mais uniquement sa valeur 'texte'...
// The value is propagated to children.
ThemeTabForm {

    combobox_theme.onActivated: {
        window.Universal.theme = combobox_theme.currentText
    }

    // Component.onCompleted: combobox_background.currentIndex = indexOfValue(Universal.background)
    combobox_background.onActivated: {
        console.log(combobox_background.currentText)
        window.Universal.background = combobox_background.currentText
        console.log(Universal.background)
    }

    combobox_accent.onActivated: {
        window.Universal.accent = combobox_accent.currentText
    }
    combobox_foreground.onActivated: {
        window.Universal.foreground = combobox_foreground.currentText
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
