import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Universal

Rectangle {

    property alias switchbutton: switchbutton
    property alias checkBox: checkBox

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        anchors.margins: 6
        columns: 2
        //-----------------------------------------------------------------------
        CheckBox {
            id: checkBox
            text: qsTr("Show Background")
            checked: false
        }
        Switch {
            id: switchbutton
            text: qsTr("Dark mode")
            checked: false
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        ColorName {
            text: "altHighColor"
        }
        Echantillon {
            color: Universal.altHighColor
        }
        ColorName {
            text: "altMediumHighColor"
        }
        Echantillon {
            color: Universal.altMediumHighColor
        }
        ColorName {
            text: "altMediumColor"
        }
        Echantillon {
            color: Universal.altMediumColor
        }
        ColorName {
            text: "altMediumLowColor"
        }
        Echantillon {
            color: Universal.altMediumLowColor
        }
        ColorName {
            text: "altLowColor"
        }
        Echantillon {
            color: Universal.altLowColor
        }
        ColorName {
            text: "background"
        }
        Echantillon {
            color: Universal.background
        }
        ColorName {
            text: "baseLowColor"
        }
        Echantillon {
            color: Universal.baseLowColor
        }
        ColorName {
            text: "baseMediumLowColor"
        }
        Echantillon {
            color: Universal.baseMediumLowColor
        }
        ColorName {
            text: "baseMediumColor"
        }
        Echantillon {
            color: Universal.baseMediumColor
        }
        ColorName {
            text: "baseMediumHighColor"
        }
        Echantillon {
            color: Universal.baseMediumHighColor
        }
        ColorName {
            text: "baseHighColor"
        }
        Echantillon {
            color: Universal.baseHighColor
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        Label {
            text: qsTr("Press Space to save a screenshot")
        }
    }
}
