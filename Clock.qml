/*
  Author: Mingwei Li
*/

import QtQuick 2.0

import "js/clock.js" as Script

Rectangle {
    id: clockRect
    width: 768
    height: 156

    Timer {
        id: updateTimer
        running: Qt.application.active && visible == true
        repeat: true
        triggeredOnStart: true
        onTriggered: {
            Script.updateTime();
            interval = 1000 * 60;
        }
    }

    Text {
        id: timeText
        x: 215
        y: 12
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 80
    }

    Text {
        id: dateText
        x: 273
        y: 109
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 30
    }
}
