import QtQuick


/*
 * Gestion du clavier pour faire des screenshots
 */
Item {

    Keys.onEnterPressed: takeScreenshot()
    Keys.onReturnPressed: takeScreenshot()

    // -------------------------------------------------
    // Fait un screenshot de la fenetre principale
    // -------------------------------------------------
    function takeScreenshot() {
        mainpage.grabToImage(callbackScr)
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
        filename += ".jpg"

        console.debug("saving " + result.url + " into " + filename)
        image.source = result.url
        if (result.saveToFile(filename)) {
            console.log("screenshot saved")
        } else
            console.error("save to file failed")
    }
}
