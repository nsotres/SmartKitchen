/*
  Author: Mingwei Li
*/

import QtQuick 2.0
import QtWebKit 3.0

/*Note:
  * Web content does not work due to some bugs in QtWebKit 3.0
  * I have already discussed this with the Professor and he said
  * it was fine. Please refer to Lore if need be.
  */
/*Rectangle {
    width: 1230;
    height: 656
    //color: "violet"
    WebView {
        id: web0
        anchors.fill: parent
        scale: 1.0
        smooth: false
        clip: false
        //settings.pluginsEnabled: true //cant enable due to bug with QtWebKit3.0
    }

    Component.onCompleted: {
        web0.url = "http://www.tvguide.com/"
    }

}*/
Rectangle {
    width: 1230
    height: 656

    property string name: ""

    Image {
        anchors.fill: parent
        source: "images/felix/TVGuide.jpg"
    }
}
