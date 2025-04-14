import QtQuick
import QtQuick.Controls.Universal
import "../Vues"

ControlsTabForm {

    id: controlsTab

    // Les touches du clavier sont forwardées vers le Gestionnaire
    Keys.forwardTo: [screenshot]

    // checkbox: Use Background
    color: checkBox.checked ? Universal.background : Universal.chromeLowColor
    checkBox.onClicked: controlsButton.bg = checkBox.checked ? "-bg" : ""

    switchbutton.onClicked: {
        if (switchbutton.checked) {
            Universal.theme = Universal.Dark
            controlsButton.theme = "-dark"
        } else {
            Universal.theme = Universal.Light
            controlsButton.theme = "-light"
        }
    }
}
