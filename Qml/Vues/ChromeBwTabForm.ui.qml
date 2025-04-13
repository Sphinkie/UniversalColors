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
            text: "chromeBlackHighColor"
        }
        Echantillon {
            color: Universal.chromeBlackHighColor
        }
        ColorName {
            text: "chromeBlackMediumColor"
        }
        Echantillon {
            color: Universal.chromeBlackMediumColor
        }
        ColorName {
            text: "chromeBlackMediumLowColor"
        }
        Echantillon {
            color: Universal.chromeBlackMediumLowColor
        }
        ColorName {
            text: "chromeBlackLowColor"
        }
        Echantillon {
            color: Universal.chromeBlackLowColor
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        ColorName {
            text: "chromeWhiteColor"
        }
        Echantillon {
            color: Universal.chromeWhiteColor
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        Label {
            text: qsTr("Press Space to save a screenshot")
        }
    }
}
