import QtQuick
import QtQuick.Controls.Universal
import "../Vues"


/*
 * Les couleurs ChromeBlack et ChromeWhite gardent leur dominante (noire ou blanche)
 * que l'on soit en mode clair ou sombre.
 * Elles ont toutes un peu de transparence.
 *
 * Les couleurs List ont aussi un peu de transparence.
 */
ChromeBwTabForm {

    id: chromeBwTab

    // Les touches du clavier sont forwardées vers le Gestionnaire
    Keys.forwardTo: [screenshot]

    // checkbox: Use Background
    color: checkBox.checked ? Universal.background : Universal.altHighColor
    checkBox.onClicked: chromebwButton.bg = checkBox.checked ? "-bg" : ""

    // Limité à la page courante et ses enfants
    switchbutton.onClicked: {
        if (switchbutton.checked) {
            Universal.theme = Universal.Dark
            chromebwButton.theme = "-dark"
        } else {
            Universal.theme = Universal.Light
            chromebwButton.theme = "-light"
        }
    }
}
