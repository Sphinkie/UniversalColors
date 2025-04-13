import QtQuick
import QtQuick.Controls.Universal
import "../Vues"

ControlsTabForm {

    id: controlsTab

    // checkbox: Us Background
    color: checkBox.checked ? Universal.background : Universal.chromeLowColor

    switchbutton.onClicked: {
        if (switchbutton.checked)
            Universal.theme = Universal.Dark
        else
            Universal.theme = Universal.Light
    }
}
