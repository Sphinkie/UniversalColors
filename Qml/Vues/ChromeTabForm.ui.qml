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
            text: "chromeHighColor"
        }
        Echantillon {
            color: Universal.chromeHighColor
        }
        ColorName {
            text: "chromeMediumColor"
        }
        Echantillon {
            color: Universal.chromeMediumColor
        }
        ColorName {
            text: "chromeMediumLowColor"
        }
        Echantillon {
            color: Universal.chromeMediumLowColor
        }
        ColorName {
            text: "chromeLowColor"
        }
        Echantillon {
            color: Universal.chromeLowColor
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        ColorName {
            text: "chromeAltLowColor"
        }
        Echantillon {
            color: Universal.chromeAltLowColor
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        ColorName {
            text: "chromeDisabledHighColor"
            font.pixelSize: 12
            font.italic: true
        }
        Echantillon {
            color: Universal.chromeDisabledHighColor
        }
        ColorName {
            text: "chromeDisabledLowColor"
            font.italic: true
        }
        Echantillon {
            color: Universal.chromeDisabledLowColor
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        ColorName {
            text: "listLowColor"
            font.italic: true
        }
        Echantillon {
            color: Universal.listLowColor
        }
        ColorName {
            text: "listMediumColor "
            font.italic: true
        }
        Echantillon {
            color: Universal.listMediumColor
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        Label {
            text: qsTr("Press Space to save a screenshot")
        }
    }
}
