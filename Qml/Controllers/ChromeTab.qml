import QtQuick
import QtQuick.Controls.Universal
import "../Vues"

ChromeTabForm {

    id: chromeTab

    // checkbox: Use Background
    color: checkBox.checked ? Universal.background : Universal.chromeLowColor

    // Limité à lapage courante et ses enfants
    switchbutton.onClicked: {
        if (switchbutton.checked)
            Universal.theme = Universal.Dark
        else
            Universal.theme = Universal.Light
    }
}
