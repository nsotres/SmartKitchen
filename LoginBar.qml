/*
  Author: Mingwei Li
*/

import QtQuick 2.0
import "js/script.js" as Script
import "js/loginBar.js" as Script2

Rectangle {
    id: loginBar
    height: 144
    color: "#f5fdf4"

    states: [
        State {
            name: "hidden"
            PropertyChanges {
                target: loginBar
                x: 0
            }
            PropertyChanges {
                target: arrowImage
                source: "images/arrow.png"
            }
        },
        State {
            name: "shown"
            PropertyChanges {
                target: loginBar
                x: -width + 275
            }
            PropertyChanges {
                target: arrowImage
                source: "images/arrow-flip.png"
            }
        }
    ]

    transitions: [
        Transition {
            from: "hidden, shown"
            to: "shown, hidden"

            NumberAnimation {
                targets: loginBar
                easing.amplitude: 1
                easing.type: Easing.OutQuart
                properties: "x"
                duration: 500
            }
        }

    ]

    function changeLoggedUser(index) {
        Script2.reOrder(index);
    }

    Component.onCompleted: {
        Script.addItem("Homer");
        Script.addItem("Marge");
        Script.addItem("Bart");
        Script.addItem("Lisa");
        Script.addItem("Maggie");

        var userNumber = Script.getList().length;
        loginBar.width = userNumber * 168 + 115;

        for(var index = 0; index < Script.getList().length; ++index) {
            Script2.createUsersIcon(Script.getList()[index], index);
        }

        loginBar.state = "hidden";
    }

    Rectangle {
        id: loginSideArrow
        x: 0
        y: 0
        width: 44
        height: 144
        color: "#B4E2EF"

        MouseArea {
            id: loginSideArrowMouseArea
            anchors.fill: parent

            onReleased: {
                if(loginBar.state === "shown") {
                    loginBar.state = "hidden";
                }
                else if(loginBar.state === "hidden") {
                    loginBar.state = "shown";
                }
            }
        }

        Image {
            id: arrowImage
            x: 0
            y: 50
            width: 44
            height: 44
            source: "images/arrow.png"
        }
    }
}
