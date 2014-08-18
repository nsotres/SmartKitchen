import QtQuick 2.0
import "infoPanel.js" as Info

Rectangle {
    width: 1230
    height: 656



    Rectangle {
        id: facebook
        x: 22
        y: 106
        width: 282
        height: 444
        color: "#ffffff"

        Image {
            id: image1
            x: 54
            y: 52
            width: 175
            height: 175
            source: "images/Robert/Facebook.png"
        }

        Rectangle {
            id: rectangle1
            x: 41
            y: 263
            width: 200
            height: 35
            color: "#ffffff"
            border.color: "#000000"

            TextEdit {
                id: text_edit1
                x: 0
                y: 0
                width: 200
                height: 35
                text: qsTr("")
                font.pixelSize: 25
                font.family: Info.font
            }

            Text {
                id: username1
                x: 0
                y: -24
                text: qsTr("Username")
                font.pixelSize: 20
                font.family: Info.font
            }
        }

        Rectangle {
            id: rectangle5
            x: 41
            y: 355
            width: 200
            height: 35
            color: "#ffffff"
            border.color: "#000000"

            TextEdit {
                id: text_edit5
                x: 0
                y: 0
                width: 200
                height: 35
                text: qsTr("")
                font.pixelSize: 25
                font.family: Info.font
            }

            Text {
                id: username5
                x: 0
                y: -24
                text: qsTr("Password")
                font.pixelSize: 20
                font.family: Info.font
            }
        }

        Text {
            id: text1
            x: 89
            y: 22
            text: qsTr("Facebook")
            font.pixelSize: 25
            font.family: Info.font
        }


    }

    Rectangle {
        id: flickr
        x: 322
        y: 106
        width: 282
        height: 444
        color: "#ffffff"

        Image {
            id: image2
            x: 53
            y: 53
            width: 175
            height: 175
            source: "images/Robert/Flickr.png"
        }

        Text {
            id: username2
            x: 40
            y: 239
            text: qsTr("Username")
            font.pixelSize: 20
            font.family: Info.font
        }

        Rectangle {
            id: rectangle2
            x: 41
            y: 263
            width: 200
            height: 35
            color: "#ffffff"
            border.color: "#000000"

            TextEdit {
                id: text_edit2
                x: 0
                y: 0
                width: 200
                height: 35
                text: qsTr("")
                font.pixelSize: 25
                font.family: Info.font
            }
        }

        Rectangle {
            id: rectangle6
            x: 40
            y: 355
            width: 200
            height: 35
            color: "#ffffff"
            border.color: "#000000"
            TextEdit {
                id: text_edit6
                x: 0
                y: 0
                width: 200
                height: 35
                text: qsTr("")
                font.pixelSize: 25
                font.family: Info.font
            }

            Text {
                id: username6
                x: 0
                y: -24
                text: qsTr("Password")
                font.pixelSize: 20
                font.family: Info.font
            }
        }

        Text {
            id: text2
            x: 112
            y: 23
            text: qsTr("Flickr")
            font.pixelSize: 25
            font.family: Info.font
        }
    }

    Rectangle {
        id: gmail
        x: 623
        y: 106
        width: 282
        height: 444
        color: "#ffffff"

        Image {
            id: image3
            x: 54
            y: 49
            width: 175
            height: 175
            source: "images/Robert/gmail.png"
        }

        Text {
            id: username3
            x: 44
            y: 239
            text: qsTr("Username")
            font.pixelSize: 20
            font.family: Info.font
        }

        Rectangle {
            id: rectangle3
            x: 44
            y: 263
            width: 200
            height: 35
            color: "#ffffff"
            border.color: "#000000"

            TextEdit {
                id: text_edit3
                x: 2
                y: 1
                width: 197
                height: 32
                text: qsTr("")
                font.pixelSize: 25
                font.family: Info.font
            }
        }

        Rectangle {
            id: rectangle7
            x: 44
            y: 355
            width: 200
            height: 35
            color: "#ffffff"
            border.color: "#000000"
            TextEdit {
                id: text_edit7
                x: 0
                y: 0
                width: 200
                height: 35
                text: qsTr("")
                font.pixelSize: 25
            }

            Text {
                id: username7
                x: 0
                y: -24
                text: qsTr("Password")
                font.pixelSize: 20
                font.family: Info.font
            }
        }

        Text {
            id: text3
            x: 55
            y: 19
            text: qsTr("Google Account")
            font.pixelSize: 25
            font.family: Info.font
        }
    }

    Rectangle {
        id: twitter
        x: 925
        y: 106
        width: 282
        height: 444
        color: "#ffffff"

        Image {
            id: image4
            x: 54
            y: 51
            width: 175
            height: 175
            source: "images/Robert/Twitter.png"
        }

        Text {
            id: username4
            x: 42
            y: 239
            text: qsTr("Username")
            font.pixelSize: 20
            font.family: Info.font
        }

        Rectangle {
            id: rectangle4
            x: 42
            y: 263
            width: 200
            height: 35
            color: "#ffffff"
            border.color: "#000000"
        }

        TextEdit {
            id: text_edit4
            x: 41
            y: 263
            width: 200
            height: 35
            text: qsTr("")
            font.pixelSize: 25
            font.family: Info.font
        }

        Rectangle {
            id: rectangle8
            x: 43
            y: 355
            width: 200
            height: 35
            color: "#ffffff"
            border.color: "#000000"
            TextEdit {
                id: text_edit8
                x: 0
                y: 0
                width: 200
                height: 35
                text: qsTr("")
                font.pixelSize: 25
                font.family: Info.font
            }

            Text {
                id: username8
                x: 0
                y: -24
                text: qsTr("Password")
                font.pixelSize: 20
                font.family: Info.font
            }
        }

        Text {
            id: text4
            x: 104
            y: 21
            text: qsTr("Twitter")
            font.pixelSize: 25
            font.family: Info.font
        }
    }


}
