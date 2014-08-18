/*
  Author: Mingwei Li
*/

import QtQuick 2.0

import "js/weather.js" as Script

Rectangle {
    id: weatherLaterRect
    width: 331
    height: 156

    Component.onCompleted: {
        Script.getWeather(1);
    }

    Text {
        id: laterLabel
        x: 203
        y: 78
        text: qsTr("Later")
        font.pixelSize: 50
    }

    Image {
        id: weatherIconLater
        x: 24
        y: 28
        width: 110
        height: 110
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

    Text {
        id: temperatureLaterText
        x: 195
        y: 28
        text: qsTr("17° F")
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 16
        font.pixelSize: 50
    }
}
