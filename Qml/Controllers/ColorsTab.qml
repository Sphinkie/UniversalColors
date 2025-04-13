import QtQuick
import QtQuick.Controls.Universal
import "../Vues"

ColorsTabForm {

    id: colorsTab

    // checkbox useBackground
    checkBox.onClicked: {
        colorsTab.color = checkBox.checked ? Universal.background : Universal.altHighColor
    }

    switchbutton.onClicked: {
        if (switchbutton.checked)
            Universal.theme = Universal.Dark
        else
            Universal.theme = Universal.Light
    }
}
