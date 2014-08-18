import QtQuick 2.0
import "obj.js"as Obj

Rectangle {
    width: 1230
    height: 656

    Text {
        id: text1
        x: 156
        y: 62
        text: qsTr("Family Control")
        font.pixelSize: 40
        font.family: "Calibri"

    }

    Text {
        id: text2
        x: 256
        y: 229
        text: qsTr("Thermostat")
        font.pixelSize: 30
    }

    Text {
        id: text3
        x: 319
        y: 383
        text: qsTr("Light")
        font.pixelSize: 30
    }

    Rectangle {
        id: rectangle1
        x: 508
        y: 223
        width: 113
        height: 37
        color: "blue"
        border.color: "black"
        radius:10

        Text {
            id: text4
            x: 43
            y: 9
            width: 23
            height: 19
            text: qsTr("On")
            color:"#ffffff"
            font.pixelSize: 20
        }
        Rectangle {
            id: rectangle2
            x: 73
            y: 0
            width: 40
            height: 37
            color: "#ffffff"
            border.color: "black"
            radius: 10
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    if(parent.x==73)
                    {

                        parent.x=0
                        text4.text="Off"
                    }
                    else
                    {

                        parent.x=73
                        text4.text="On"
                    }
                }
            }
        }
    }

        Rectangle {
            id: rectangle6
            x: 508
            y: 417
            width: 113
            height: 37
            color: "blue"
            border.color: "black"
            radius:10
            Text {
                id: text6
                x: 43
                y: 9
                text: qsTr("On")
                color:"#ffffff"
                font.pixelSize: 20
            }
            Rectangle {
                id: rectangle7
                x: 73
                y: 0
                width: 40
                height: 37
                color: "#ffffff"
                border.color: "black"
                radius:10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(parent.x==73)
                        {

                            parent.x=0
                            text6.text="Off"
                        }
                        else
                        {

                            parent.x=73
                            text6.text="On"
                        }
                    }
                }
            }


        }

        Rectangle {
            id: rectangle9
            x: 734
            y: 417
            width: 113
            height: 37
            color: "blue"
            border.color: "black"
            radius:10
            Text {
                id: text7
                x: 43
                y: 9
                text: qsTr("On")
                color:"#ffffff"
                font.pixelSize: 20
            }

            Rectangle {
                id: rectangle8
                x: 73
                y: 0
                width: 40
                height: 37
                color: "#ffffff"
                border.color: "black"
                radius:10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(parent.x==73)
                        {

                            parent.x=0
                            text7.text="Off"
                        }
                        else
                        {

                            parent.x=73
                            text7.text="On"
                        }
                    }
                }
            }
        }

        Rectangle {
            id: rectangle11
            x: 956
            y: 417
            width: 113
            height: 37
            color: "blue"
            border.color: "black"
            radius:10
            Text {
                id: text8
                x: 43
                y: 9
                text: qsTr("On")
                color:"#ffffff"
                font.pixelSize: 20
            }

            Rectangle {
                id: rectangle10
                x: 73
                y: 0
                width: 40
                height: 37
                color: "#ffffff"
                border.color: "black"
                radius:10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(parent.x==73)
                        {

                            parent.x=0
                            text8.text="Off"
                        }
                        else
                        {

                            parent.x=73
                            text8.text="On"
                        }
                    }
                }
            }
        }

        Rectangle {
            id: rectangle13
            x: 508
            y: 548
            width: 113
            height: 37
            color: "blue"
            border.color: "black"
            radius:10
            Text {
                id: text9
                x: 43
                y: 9
                text: qsTr("On")
                color:"#ffffff"
                font.pixelSize: 20
            }

            Rectangle {
                id: rectangle12
                x: 73
                y: 0
                width: 40
                height: 37
                color: "#ffffff"
                border.color: "black"
                radius:10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(parent.x==73)
                        {

                            parent.x=0
                            text9.text="Off"
                        }
                        else
                        {

                            parent.x=73
                            text9.text="On"
                        }
                    }
                }
            }
        }

        Rectangle {
            id: rectangle15
            x: 734
            y: 548
            width: 113
            height: 37
            color: "blue"
            border.color: "black"
            radius:10
            Text {
                id: text10
                x: 43
                y: 9
                text: qsTr("On")
                color:"#ffffff"
                font.pixelSize: 20
            }

            Rectangle {
                id: rectangle14
                x: 73
                y: 0
                width: 40
                height: 37
                color: "#ffffff"
                border.color: "black"
                radius:10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(parent.x==73)
                        {

                            parent.x=0
                            text10.text="Off"
                        }
                        else
                        {

                            parent.x=73
                            text10.text="On"
                        }
                    }
                }
            }
        }






    Rectangle {
        id: rectangle3
        x: 734
        y: 213
        width: 105
        height: 47
        color: "#ffffff"
        border.color: "black"


        Rectangle {
            id: rectangle4
            x: 75
            y: 0
            width: 30
            height: 23
            color: "#ffffff"
            border.color: "black"

            BorderImage {
                id: image1
                source: "images/image/triangleup.png"
                anchors.fill: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    Obj.temprature++
                    text5.text=Obj.temprature
                }
            }
        }

        Rectangle {
            id: rectangle5
            x: 75
            y: 24
            width: 30
            height: 23
            color: "#ffffff"
            border.color: "black"
            BorderImage {
                id: image2
                source: "images/image/triangledown.png"
                anchors.fill: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    Obj.temprature--
                    text5.text=Obj.temprature
                }
            }
        }

        Text {
            id: text5
            x: 21
            y: 12
            text: Obj.temprature
            font.pixelSize: 20

        }
    }

    Text {
        id: text11
        x: 468
        y: 383
        text: qsTr("Kitchen")
        font.pixelSize: 20
    }

    Text {
        id: text12
        x: 661
        y: 383
        text: qsTr("LivingRoom")
        font.pixelSize: 20
    }

    Text {
        id: text13
        x: 902
        y: 383
        text: qsTr("Parents Room")
        font.pixelSize: 20
    }

    Text {
        id: text14
        x: 458
        y: 498
        text: qsTr("User1 Room")
        font.pixelSize: 20
    }

    Text {
        id: text15
        x: 661
        y: 498
        text: qsTr("User2 Room")
        font.pixelSize: 20
    }
    Spanish{
        id:sp
        x:0
        y:0
        visible: false
    }

    LaguagePlug {
        id: language1
        x: 250
        y: 0
        visible: true
    }

    Rectangle {
        id: box
        x: 5
        y: 619
        width: 57
        height: 31
        color: Obj.geth()
        border.color: "black"
        visible:false

        Text {
            id: text16
            x: 0
            y: 8
            text: qsTr("Language")
            font.pixelSize: 12
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                box.visible=false
                language1.visible=true
            }
        }

    }



}

