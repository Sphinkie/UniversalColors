import QtQuick


/*
 * Gestion du clavier pour faire des screenshots
 */
Item {

    Keys.onDigit0Pressed: event => {
                              // Generate filename
                              var filename = tabbedPage.col_bg
                              filename += tabbedPage.col_fg
                              filename += tabbedPage.col_ac
                              filename += "-"
                              filename += tabBar.currentItem.objectName
                              filename += tabbedPage.theme
                              filename += tabbedPage.bg
                              filename += ".png"

                              // Takescreenshot
                              mainpage.grabToImage(function (result) {

                                  console.debug(
                                              "saving " + result.url + " into " + filename)
                                  image.source = result.url
                                  if (result.saveToFile(filename)) {
                                      console.log("screenshot saved")
                                  } else
                                      console.error("save to file failed")
                              })
                          }

    // Space ne fonctionne pas !
    Keys.onSpacePressed: event => console.debug("space pressed")
}
