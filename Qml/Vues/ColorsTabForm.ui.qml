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
        Text {
            text: "altHighColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.altHighColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "altMediumHighColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.altMediumHighColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "altMediumColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.altMediumColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "altMediumLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.altMediumLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "altLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.altLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "background"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.background
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "baseLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.baseLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "baseMediumLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.baseMediumLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "baseMediumColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.baseMediumColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "baseMediumHighColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.baseMediumHighColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "baseHighColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            color: Universal.baseHighColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
