/*
  Author: Mingwei Li
*/

import QtQuick 2.0
import "js/emergency.js" as Script

Rectangle {
    width: 1230
    height: 656

    Component.onCompleted: {
        Script.initialize();
    }

    Image {
        id: icon1
        x: 98
        y: 128
        width: 130
        height: 130
        source: "images/user-profile-Homer.png"

        MouseArea {
            id: mousearea1
            anchors.fill: parent

            onPressed: {
                emerShade1.opacity = 0.4;
            }
            onReleased: {
                emerShade1.opacity = 0.0;

                Script.loadInfo(1);
            }
        }

        Rectangle {
            id: emerShade1
            color: "#ffffff"
            anchors.fill: parent
            opacity: 0
        }
    }

    Image {
        id: icon2
        x: 243
        y: 128
        width: 130
        height: 130
        source: "images/user-profile-Marge.png"

        MouseArea {
            id: mousearea2
            anchors.fill: parent

            onPressed: {
                emerShade2.opacity = 0.4;
            }
            onReleased: {
                emerShade2.opacity = 0.0;

                Script.loadInfo(2);
            }
        }

        Rectangle {
            id: emerShade2
            color: "#ffffff"
            anchors.fill: parent
            opacity: 0
        }
    }

    Image {
        id: icon3
        x: 98
        y: 264
        width: 130
        height: 130
        source: "images/user-profile-Lisa.png"

        MouseArea {
            id: mousearea3
            anchors.fill: parent

            onPressed: {
                emerShade3.opacity = 0.4;
            }
            onReleased: {
                emerShade3.opacity = 0.0;

                Script.loadInfo(3);
            }
        }

        Rectangle {
            id: emerShade3
            color: "#ffffff"
            opacity: 0
            anchors.fill: parent
        }
    }

    Image {
        id: icon4
        x: 243
        y: 264
        width: 130
        height: 130
        source: "images/user-profile-Bart.png"

        MouseArea {
            id: mousearea4
            anchors.fill: parent

            onPressed: {
                emerShade4.opacity = 0.4;
            }
            onReleased: {
                emerShade4.opacity = 0.0;

                Script.loadInfo(4);
            }
        }

        Rectangle {
            id: emerShade4
            color: "#ffffff"
            opacity: 0
            anchors.fill: parent
        }
    }

    Image {
        id: icon5
        x: 98
        y: 402
        width: 130
        height: 130
        source: "images/user-profile-Maggie.png"

        MouseArea {
            id: mousearea5
            anchors.fill: parent

            onPressed: {
                emerShade5.opacity = 0.4;
            }
            onReleased: {
                emerShade5.opacity = 0.0;

                Script.loadInfo(5);
            }
        }

        Rectangle {
            id: emerShade5
            color: "#ffffff"
            opacity: 0
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle1
        x: 484
        y: 30
        width: 646
        height: 598
        color: "#f5fdf4"
        border.width: 0
        border.color: "#000000"

        Text {
            id: title
            x: 12
            y: 0
            color: "#a5e789"
            text: qsTr("Name")
            font.pixelSize: 40
            font.family: "Calibri"
        }

        Text {
            id: text2
            x: 12
            y: 76
            color: "#a5e789"
            text: qsTr("Contact Info")
            font.pointSize: 15
            font.family: "Calibri"
        }

        Image {
            id: image1
            x: 12
            y: 76
            width: 570
            height: 2
            fillMode: Image.Stretch
            sourceSize.width: 677
            sourceSize.height: 4
            source: "images/line.jpg"
        }

        Text {
            id: text3
            x: 12
            y: 128
            text: qsTr("Cell: ")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: cellText
            x: 76
            y: 128
            text: qsTr("(312)888-2433")
            font.family: "Calibri"
            font.pixelSize: 15
        }

        Text {
            id: text5
            x: 12
            y: 152
            text: qsTr("Email:")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: emailText
            x: 76
            y: 152
            text: qsTr("homersimpson@fox.com")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: text7
            x: 356
            y: 128
            text: qsTr("Work:")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: workText
            x: 413
            y: 128
            text: qsTr("(312)852-7721")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: text9
            x: 12
            y: 193
            color: "#a5e789"
            text: qsTr("Doctors")
            font.pixelSize: 20
            font.family: "Calibri"
        }

        Image {
            id: image2
            x: 12
            y: 193
            width: 570
            height: 2
            sourceSize.width: 677
            sourceSize.height: 4
            fillMode: Image.Stretch
            source: "images/line.jpg"
        }

        Text {
            id: text10
            x: 12
            y: 239
            text: qsTr("Dr. Hibbert")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: doctor1PhoneText
            x: 126
            y: 239
            text: qsTr("(312)777-2530")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: text12
            x: 12
            y: 263
            text: qsTr("Dr. Nick")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: doctor2PhoneText
            x: 126
            y: 263
            text: qsTr("(312)672-9282")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: text14
            x: 12
            y: 303
            color: "#a5e789"
            text: qsTr("Allergies")
            font.pixelSize: 20
            font.family: "Calibri"
        }

        Image {
            id: image3
            x: 12
            y: 303
            width: 570
            height: 2
            sourceSize.width: 677
            sourceSize.height: 4
            fillMode: Image.Stretch
            source: "images/line.jpg"
        }

        Text {
            id: allergyText
            x: 12
            y: 349
            text: qsTr("(None)")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: text16
            x: 12
            y: 380
            color: "#a5e789"
            text: qsTr("Current Health Problems")
            font.pixelSize: 20
            font.family: "Calibri"
        }

        Image {
            id: image4
            x: 12
            y: 380
            width: 570
            height: 2
            sourceSize.width: 677
            sourceSize.height: 4
            fillMode: Image.Stretch
            source: "images/line.jpg"
        }

        Text {
            id: healthProblem1Text
            x: 12
            y: 423
            text: qsTr("-Cholesterol")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: text19
            x: 12
            y: 493
            color: "#a5e789"
            text: qsTr("Insurance")
            font.pixelSize: 20
            font.family: "Calibri"
        }

        Image {
            id: image5
            x: 12
            y: 493
            width: 570
            height: 2
            sourceSize.width: 677
            sourceSize.height: 4
            fillMode: Image.Stretch
            source: "images/line.jpg"
        }

        Text {
            id: text20
            x: 12
            y: 541
            text: qsTr("Name: ")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: insuranceNameText
            x: 77
            y: 541
            text: qsTr("Blue Cross")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: text22
            x: 356
            y: 541
            text: qsTr("Plan#:")
            font.pixelSize: 15
            font.family: "Calibri"
        }

        Text {
            id: planNumText
            x: 420
            y: 541
            text: qsTr("442-65303-286")
            font.pixelSize: 15
            font.family: "Calibri"
        }
    }
}
