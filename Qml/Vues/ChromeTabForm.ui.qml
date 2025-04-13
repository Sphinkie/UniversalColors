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
        Rectangle {
            id: separator_1
            Layout.columnSpan: 2
            color: "grey"
            Layout.fillWidth: true
            height: 2
        }
        //-----------------------------------------------------------------------
        Text {
            text: "chromeBlackHighColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeBlackHighColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Text {
            text: "chromeBlackMediumColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeBlackMediumColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "chromeBlackMediumLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeBlackMediumLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Text {
            text: "chromeBlackLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeBlackLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        //-----------------------------------------------------------------------
        Rectangle {
            id: separator_2
            Layout.columnSpan: 2
            color: "grey"
            Layout.fillWidth: true
            height: 2
        }
        //-----------------------------------------------------------------------
        Text {
            text: "chromeWhiteColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.chromeWhiteColor
            border.color: "black"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        //-----------------------------------------------------------------------
        Rectangle {
            id: separator_3
            Layout.columnSpan: 2
            color: "grey"
            Layout.fillWidth: true
            height: 2
        }
        //-----------------------------------------------------------------------
        Text {
            text: "chromeHighColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeHighColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "chromeMediumColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeMediumColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "chromeMediumLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeMediumLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "chromeLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        //-----------------------------------------------------------------------
        Rectangle {
            id: separator_4
            Layout.columnSpan: 2
            color: "grey"
            Layout.fillWidth: true
            height: 2
        }

        Text {
            text: "chromeAltLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeAltLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
