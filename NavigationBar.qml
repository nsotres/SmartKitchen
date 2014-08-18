/*
  Author: Mingwei Li
*/

import QtQuick 2.0

import "js/script.js" as Script
import "js/navigationBar.js" as Navigation_js;

Rectangle {
    id: navigationBar

    property int iconIndexNow : 0;

    x: 0
    y: 0
    width: 250
    height: 710
    color: "#f5fdf4"

    clip: true

    states: [
        State {
            name: "barHidden"
            PropertyChanges {
                target: navigationBar
                x: 218
            }
            PropertyChanges {
                target: sideArrowImage
                source: "images/arrow.png"
            }
        },

        State {
            name: "barShown"
            PropertyChanges {
                target: navigationBar
                x: 0
            }
            PropertyChanges {
                target: sideArrowImage
                source: "images/arrow-flip.png"
            }
        }
    ]

    transitions: [
        Transition {
            from: "barHidden, barShown"
            to: "barShown, barHidden"

            NumberAnimation {
                targets: navigationBar
                easing.amplitude: 1
                easing.type: Easing.OutQuart
                properties: "x"
                duration: 500
            }
        }

    ]

    Component.onCompleted: {

        navigationBar.state = "barHidden";

        // add the fixed five icons in navigation bar
        Script.addItem("Home");
        Script.addItem("FridgeView");
        Script.addItem("FamilyMessage");
        Script.addItem("MealPlanner");
        Script.addItem("ShoppingList");

        Script.addItem("Recipe");
        Script.addItem("Calendar");
        Script.addItem("FamilyController");
        Script.addItem("TVGuide");
        Script.addItem("Language");
        Script.addItem("Settings");

        for(var c = 0; c < Script.getList().length; ++c) {
            Navigation_js.createIcon(Script.getList()[c], c);
        }

        for(var i = 0; i < 5; ++i)
            Navigation_js.getIcons()[i].state = "iconsShownUp";
        for(i = 5; i < Navigation_js.getIcons().length; ++i)
            Navigation_js.getIcons()[i].state = "iconsHiddenDown";
    }

    Rectangle {
        id: upArrow
        x: 113
        y: 0
        width: 58
        height: 58
        color: "transparent"

        MouseArea {
            id: upArrowMouseArea
            anchors.fill: parent

            onReleased: {
                // It can be flipped up. There's more left below the current icons.
                if(Navigation_js.getIcons().length - iconIndexNow > 5) {
                    var index = 0;
                    while(index < iconIndexNow + 5) {
                        Navigation_js.getIcons()[index].state = "iconsHiddenUp";
                        ++index;
                    }

                    iconIndexNow = index;
                    var count = 0;
                    while(index + count < Navigation_js.getIcons().length && count < 5) {
                        Navigation_js.getIcons()[index + count].state = "iconsShownUp";
                        ++count;
                    }
                    index += count;
                    while(index < Navigation_js.getIcons().length) {
                        Navigation_js.getIcons()[index].state = "iconsHiddenUp";
                        ++index;
                    }

                }
            }
        }

        Image {
            id: image3
            anchors.fill: parent
            source: "images/arrow-up.png"
        }
    }

    Rectangle {
        id: downArrow
        x: 113
        y: 652
        width: 58
        height: 58
        color: "transparent"

        MouseArea {
            id: downArrowMouseArea
            anchors.fill: parent

            onReleased: {
                // If there's more left above the current icons left.
                if(iconIndexNow > 0) {
                    var index = iconIndexNow;
                    while(index < Navigation_js.getIcons().length) {
                        Navigation_js.getIcons()[index].state = "iconsHiddenDown";
                        ++index;
                    }
                    index = iconIndexNow - 1;
                    var count = 0;
                    while(count < 5) {
                        Navigation_js.getIcons()[index - count].state = "iconsShownDown";
                        ++count;
                    }
                    index -= count;
                    iconIndexNow = index + 1;
                    while(index >= 0) {
                        Navigation_js.getIcons()[index].state = "iconsHiddenDown";
                        --index;
                    }
                }
            }
        }

        Image {
            id: image2
            anchors.fill: parent
            source: "images/arrow-down.png"
        }
    }

    Rectangle {
        id: sideArrow
        x: 0
        y: 0
        width: 33
        height: 710
        color: "#B4E2EF"

        Image {
            id: sideArrowImage
            x: 0
            y: 339
            width: 33
            height: 33
            source: "images/arrow.png"
        }

        MouseArea {
            id: sideArrowMouseArea
            anchors.fill: parent

            onReleased: {
                if(navigationBar.state === "barShown") {
                    navigationBar.state = "barHidden";
                }
                else if(navigationBar.state === "barHidden") {
                    navigationBar.state = "barShown";
                }
            }
        }
    }

}
