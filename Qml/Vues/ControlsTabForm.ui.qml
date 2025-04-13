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
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        Text {
            text: "Text"
        }
        TextEdit {
            id: textEdit
            text: "Text Edit"
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
            text: "Label"
        }
        TextArea {
            id: textArea
            placeholderText: "Text Area"
        }
        TextField {
            id: textField
            placeholderText: qsTr("Text Field")
        }
        Button {
            id: button_low
            text: "Button"
        }
        Button {
            id: button_hi
            text: qsTr("Highlighted Button")
            highlighted: true
        }
        Pane {
            Button {
                id: paned_button
                text: qsTr("Button with Pane")
            }
        }
        Pane {
            Label {
                id: paned_label
                text: "Label with Pane"
            }
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
        Row {
            id: row
            Dial {
                id: dial
                value: 0.5
            }
            Label {
                text: "Dial"
                leftPadding: 12
                anchors.verticalCenter: parent.verticalCenter
            }
        }
        Row {
            Tumbler {
                id: tumbler
                model: 10
            }
            Label {
                text: "Tumbler"
                leftPadding: 12
                anchors.verticalCenter: parent.verticalCenter
            }
        }
        Slider {
            id: slider
            value: dial.value
        }
        ProgressBar {
            id: progressBar
            value: slider.value
        }

        RadioButton {
            id: radioButton1
            text: "Radio Button"
            checked: true
        }
        RadioButton {
            id: radioButton2
            text: "Radio Button"
        }
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        Label {
            text: qsTr("Press Space to save a screenshot")
        }
    }
}
