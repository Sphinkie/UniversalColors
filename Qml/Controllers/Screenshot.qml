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
        var filename = tabbedPage.col_bg
        filename += tabbedPage.col_fg
        filename += tabbedPage.col_ac
        filename += "-"
        filename += tabbedPage.currentIndex + 1
        filename += "-"
        filename += tabBar.currentItem.objectName
        filename += tabbedPage.theme
        filename += tabbedPage.bg
        filename += ".png"

        console.debug("saving " + result.url + " into " + filename)
        image.source = result.url
        if (result.saveToFile(filename)) {
            console.log("screenshot saved")
        } else
            console.error("save to file failed")
    }
}
