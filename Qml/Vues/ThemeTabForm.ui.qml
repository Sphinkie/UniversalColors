import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Universal

Rectangle {
    property alias combobox_background: combobox_background
    property alias combobox_foreground: combobox_foreground
    property alias combobox_accent: combobox_accent
    property alias combobox_theme: combobox_theme

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        anchors.margins: 6
        columns: 2

        ColorName {
            id: lb_backgroud
            text: "Background color"
			Layout.fillHeight: false
        }
        ComboBox {
            id: combobox_background
            height: 40
            Layout.fillWidth: true
            textRole: "text"
            valueRole: "color"
            model: couleurs
        }
        ColorName {
            id: lb_foreground
            text: "Foreground color"
			Layout.fillHeight: false
        }
        ComboBox {
            id: combobox_foreground
            height: 40
            Layout.fillWidth: true
            textRole: "text"
            valueRole: "value"
            model: couleurs
        }
        ColorName {
            id: lb_accent
            text: "Accent Color"
			Layout.fillHeight: false
        }
        ComboBox {
            id: combobox_accent
            height: 40
            Layout.fillWidth: true
            textRole: "text"
            valueRole: "value"
            model: couleurs
        }
        ColorName {
            id: lb_theme
            text: "Theme"
			Layout.fillHeight: false
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
        ColorName {
            text: "background"
			Layout.fillHeight: false
        }
        Rectangle {
            width: 200
            height: 80
            border.color: "black"
            color: Universal.background
            Layout.fillWidth: true
        }
        ColorName {
            text: "foreground"
			Layout.fillHeight: false
        }
        Rectangle {
            width: 200
            height: 80
            border.color: "black"
            color: Universal.foreground
            Layout.fillWidth: true
        }
        ColorName {
            text: "accent"
			Layout.fillHeight: false
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
        //-----------------------------------------------------------------------
        Separator {}
        //-----------------------------------------------------------------------
        Label {
            text: qsTr("Press Enter to take a screenshot")
        }
    }
}
