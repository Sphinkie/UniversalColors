import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Universal


/*
 * Libellé. Propriété obligatoire : text
 */
Text {
    font.pixelSize: 12
    color: Universal.baseMediumHighColor
    horizontalAlignment: Text.AlignRight
    verticalAlignment: Text.AlignVCenter
    rightPadding: 8
    Layout.fillHeight: true
    Layout.fillWidth: true
}
