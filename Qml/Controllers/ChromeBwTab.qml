import QtQuick
import QtQuick.Controls.Universal
import "../Vues"

ChromeBwTabForm {

    id: chromeBwTab

    // Les touches du clavier sont forwardées vers le Gestionnaire
    Keys.forwardTo: [screenshot]

    // checkbox: Use Background
    color: checkBox.checked ? Universal.background : Universal.chromeLowColor
    checkBox.onClicked: tabbedPage.bg = checkBox.checked ? "-bg" : ""

    // Limité à la page courante et ses enfants
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
