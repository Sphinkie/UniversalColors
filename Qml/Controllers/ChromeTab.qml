import QtQuick
import QtQuick.Controls.Universal
import "../Vues"


/*
 * Les couleurs Chrome et ChromeAlt inversent leur dominante (noire ou blanche)
 * que l'on soit en mode clair ou sombre.
 *   Chrome    = clair en mode clair
 *   ChromeAlt = Noir en mode clair
 * Elles n'ont pas de transparence.
 *
 * Les couleurs Disable n'ont pas de transparence, et sont deux nuances de grisé
 */
ChromeTabForm {

    id: chromeTab

    // Les touches du clavier sont forwardées vers le Gestionnaire
    Keys.forwardTo: [screenshot]

    // checkbox: Use Background
    color: checkBox.checked ? Universal.background : Universal.chromeLowColor
    checkBox.onClicked: chromeButton.bg = checkBox.checked ? "-bg" : ""

    // Limité à la page courante et ses enfants
    switchbutton.onClicked: {
        if (switchbutton.checked) {
            Universal.theme = Universal.Dark
            chromeButton.theme = "-dark"
        } else {
            Universal.theme = Universal.Light
            chromeButton.theme = "-light"
        }
    }
}
