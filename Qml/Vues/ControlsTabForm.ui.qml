import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Universal
import QtQuick.Controls 2.15

Rectangle {
    property alias switchbutton: switchbutton
    property alias checkBox: checkBox

    GridLayout {
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
            id: _text
            text: qsTr("Text")
            anchors.leftMargin: 0
            font.pixelSize: 12
            width: 100
        }
        TextEdit {
            id: textEdit
            width: 100
            height: 20
            text: qsTr("Text Edit")
            font.pixelSize: 12
        }
        TextInput {
            id: textInput
            width: 100
            height: 20
            text: qsTr("Text Input")
            font.pixelSize: 12
        }
        Label {
            id: label
            text: qsTr("Label")
        }
        TextArea {
            id: textArea
            width: 100
            height: 20
            placeholderText: qsTr("Text Area")
        }

        TextField {
            id: textField
            width: 100
            height: 20
            placeholderText: qsTr("Text Field")
        }

        Pane {
            Button {
                id: paned_button
                text: qsTr("Button with Pane")
            }
        }
        Button {
            id: button
            text: qsTr("Button")
        }
        Row {
            RoundButton {
                id: roundButton
                text: "+"
            }
            Label {
                text: "Round Button"
                leftPadding: 12
            }
        }
        Row {
            BusyIndicator {
                id: busyIndicator
            }
            Label {
                text: "Busy Indicator"
                leftPadding: 12
            }
        }

        Dial {
            id: dial
        }

        Tumbler {
            id: tumbler
            model: 10
        }

        Slider {
            id: slider
            value: 0.5
        }
        ProgressBar {
            id: progressBar
            value: slider.value
        }

        RadioButton {
            id: radioButton1
            text: qsTr("Radio Button")
            checked: true
        }
        RadioButton {
            id: radioButton2
            text: qsTr("Radio Button")
        }
        Text {
            text: "chromeDisabledHighColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.italic: true
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeDisabledHighColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "chromeDisabledLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.italic: true
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.chromeDisabledLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        // -----------------------------------------
        Text {
            text: "listLowColor"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.italic: true
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.listLowColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Text {
            text: "listMediumColor "
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.italic: true
            rightPadding: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            border.color: "black"
            color: Universal.listMediumColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
