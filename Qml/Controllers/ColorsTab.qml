import QtQuick
import QtQuick.Controls.Universal
import "../Vues"

ColorsTabForm {

    id: colorsTab

    // Les touches du clavier sont forwardées vers le Gestionnaire
    Keys.forwardTo: [screenshot]

    // checkbox Use Background
    color: checkBox.checked ? Universal.background : Universal.chromeLowColor
    checkBox.onClicked: tabbedPage.bg = checkBox.checked ? "-bg" : ""

    switchbutton.onClicked: {
        if (switchbutton.checked) {
            Universal.theme = Universal.Dark
            tabbedPage.theme = "-dark"
        } else {
            Universal.theme = Universal.Light
            tabbedPage.theme = "-light"
        }
    }
}
