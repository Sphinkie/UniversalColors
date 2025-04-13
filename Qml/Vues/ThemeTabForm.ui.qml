import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Universal

Item {
    property alias combobox_theme: combobox_theme
    property alias combobox_background: combobox_background
    property alias combobox_foreground: combobox_foreground
    property alias combobox_accent: combobox_accent

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        anchors.margins: 6
        columns: 2

        Text {
            id: lb_backgroud
            text: "Background color"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillWidth: true
        }
        ComboBox {
            id: combobox_background
            height: 40
            Layout.fillWidth: true
            textRole: "text"
            valueRole: "color"
            model: couleurs
            Component.onCompleted: currentIndex = 1 // Green
        }
        Text {
            id: lb_foreground
            text: "Foreground color"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillWidth: true
        }
        ComboBox {
            id: combobox_foreground
            height: 40
            Layout.fillWidth: true
            textRole: "text"
            valueRole: "value"
            model: couleurs
            Component.onCompleted: currentIndex = 13 // Amber
        }
        Text {
            id: lb_accent
            text: "Accent Color"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillWidth: true
        }
        ComboBox {
            id: combobox_accent
            height: 40
            Layout.fillWidth: true
            textRole: "text"
            valueRole: "value"
            model: couleurs
            Component.onCompleted: currentIndex = 12 // Orange
        }
        Text {
            id: lb_theme
            text: "Theme"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillWidth: true
        }
        ComboBox {
            id: combobox_theme
            model: ["Light", "Dark"]
            height: 40
            Layout.fillWidth: true
        }
        // ---------------------------------------------------
        Rectangle {
            id: emptyspace
            height: 40
            Layout.fillWidth: true
            Layout.columnSpan: 2
            color: "transparent"
        }
        Text {
            text: "background"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            height: 80
            border.color: "black"
            color: Universal.background
            Layout.fillWidth: true
        }
        Text {
            text: "foreground"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            height: 80
            border.color: "black"
            color: Universal.foreground
            Layout.fillWidth: true
        }
        Text {
            text: "accent"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            rightPadding: 8
            Layout.fillWidth: true
        }
        Rectangle {
            width: 200
            height: 80
            border.color: "black"
            color: Universal.accent
            Layout.fillWidth: true
        }
        // ---------------------------------------------------
        Item {
            id: emptyspace_botton
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 2
        }
    }
}
