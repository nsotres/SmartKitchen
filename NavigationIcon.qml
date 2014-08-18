/*
  Author: Mingwei Li
*/

import QtQuick 2.0

import "js/main.js" as Script

Rectangle {
    property int index : 0
    property int fixedY: 0
    property string iconName: ""

    id: icon
    x: 43
    y: (78 + 115 * (index))
    width: 197
    height: 94
    color: "transparent"

    function y_value() {return icon.y;}

    Component.onCompleted: {
        fixedY = 78 + 115 * (index%5);
    }

    states: [
        State {
            name: "iconsHiddenUp"
            PropertyChanges {
                target: icon
                y:  y_value() - 610
            }
            PropertyChanges {
                target: icon
                opacity: 0
            }
        },
        State {
            name: "iconsHiddenDown"
            PropertyChanges {
                target: icon
                y: y_value() + 608
            }
            PropertyChanges {
                target: icon
                opacity: 0
            }
        },
        State {
            name: "iconsShownUp"
            PropertyChanges {
                target: icon
                y: fixedY
            }
            PropertyChanges {
                target: icon
                opacity: 100
            }
        },
        State {
            name: "iconsShownDown"
            PropertyChanges {
                target: icon
                y: fixedY
            }
            PropertyChanges {
                target: icon
                opacity: 100
            }
        }
    ]

    transitions: [
        Transition {
            from: "iconsShownUp, iconsShownDown, iconsHiddenUp, iconsHiddenDown"
            to: "iconsShownUp, iconsShownDown, iconsHiddenUp, iconsHiddenDown"
            NumberAnimation {
                targets: icon
                easing.amplitude: 1
                easing.type: Easing.InQuad
                properties: "opacity"
                duration: 100
            }
            NumberAnimation {
                targets: icon
                easing.amplitude: 1
                easing.type: Easing.OutQuart
                properties: "y"
                duration: 500
            }
        }
    ]

    Image {
        id: iconImage
        anchors.fill: parent
        fillMode: Image.Stretch
        source: "images/icons/" + iconName + ".png"
    }

    Rectangle {
        id: emerShade
        color: "#ffffff"
        anchors.fill: parent
        opacity: 0
    }

    MouseArea {
        anchors.fill: parent

        onPressed: {
            emerShade.opacity = 0.4;
        }

        onReleased: {
            emerShade.opacity = 0;
            // after clicking this icon, the content will be shown in detail panel.
            // the content is based on the "iconName" property, which is passed in
            // from NavigationBar.qml
            if(iconName === "Home")
                Script.showDetail("center", "Newsfeed/rssnews");
            else
                Script.showDetail("center", iconName);
        }
    }
}
