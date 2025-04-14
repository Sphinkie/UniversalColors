import QtQuick


/*
 * Gestion du clavier pour faire des screenshots (touche Entrée)
 * (Touche 0 pour une imagette)
 */
Item {

    Keys.onEnterPressed: takeScreenshot()
    Keys.onReturnPressed: takeScreenshot()
    Keys.onDigit0Pressed: takeThumbnail()

    // -------------------------------------------------
    // Fait un screenshot de la fenêtre principale
    // -------------------------------------------------
    function takeScreenshot() {
        mainpage.grabToImage(callbackScr)
    }

    // -------------------------------------------------
    // Fait un petit screenshot (imagette)
    // -------------------------------------------------
    function takeThumbnail() {
        mainpage.grabToImage(callbackScr, Qt.size(135, 200))
    }

    // -------------------------------------------------
    // Sauvegarde du screenshot sur disque
    // -------------------------------------------------
    function callbackScr(result) {
        // Generate filename
        var filename = tabBar.col_bg
        filename += tabBar.col_fg
        filename += tabBar.col_ac
        filename += "-"
        filename += tabBar.currentIndex + 1
        filename += "-"
        filename += tabBar.currentItem.objectName
        filename += tabBar.currentItem.theme
        filename += tabBar.currentItem.bg
        filename += ".png"

        console.debug("saving " + result.url + " into " + filename)
        image.source = result.url
        if (result.saveToFile(filename)) {
            console.log("screenshot saved")
        } else
            console.error("save to file failed")
    }
}
