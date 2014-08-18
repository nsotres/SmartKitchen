import QtQuick 2.0
import QtWebKit 3.0

Rectangle {
    id: container
    width: 1230
    height: 656
    color: "black"
    focus: true

    WebView{
        id: webView
        anchors.fill: parent
        scale: 1.0
        smooth: false
        clip: false

        //Since google calendar doesn't work in webview, set a splash screen
        Image {
            id: image1
            x: -225
            y: 93
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.centerIn: parent
            anchors.fill: parent
            source: "images/Robert/googleCalendar.png"
        }
    }

    Component.onCompleted: {
        webView.url = "http://www.google.com/calendar"
    }
}

