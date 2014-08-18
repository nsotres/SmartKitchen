import QtQuick 2.0
import "obj.js" as Obj
Rectangle {
    id:mainrect
    width: 615
    height: 656
    color:Obj.gett()

    Rectangle {
        id: rectangle1
        x: 57
        y: 135
        z:1
        opacity: 0.6
        width: 125
        height: 125
        radius:width*0.5
        color: Obj.getLcolor()
        BorderImage {
            id: usa
            source: "images/flag/f_usa.jpeg"
            anchors.fill: parent

        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.4

                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
                sp.visible=false
            }
        }
    }

    Rectangle {
        id: rectangle2
        x: 182
        y: 135
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: brazil
            source: "images/flag/f_china.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1

                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle3
        x: 307
        y: 135
        z:1
        width: 125
        height: 125
        opacity:1
        radius:width*0.5
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: canada
            source: "images/flag/f_spain.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1

                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
                sp.visible=true
            }
        }
    }

    Rectangle {
        id: rectangle4
        x: 432
        y: 135
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: china
            source: "images/flag/f_po.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1

                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle5
        x: 57
        y: 260
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: france
            source: "images/flag/f_aust.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1

                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle6
        x: 182
        y: 260
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id:german
            source: "images/flag/f_belg.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1

                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle7
        x: 307
        y: 260
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: greece
            source: "images/flag/f_bul.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1

                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle8
        x: 432
        y: 260
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: ita
            source: "images/flag/f_cro.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1

                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle9
        x: 57
        y: 385
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: japan
            source: "images/flag/f_denmark.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1

                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle10
        x: 182
        y: 385
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: mexican
            source: "images/flag/f_france.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1

                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle11
        x: 307
        y: 385
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: rus
            source: "images/flag/f_greece.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1

                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle12
        x: 432
        y: 385
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: spain
            source: "images/flag/f_italy.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1

                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle13
        x: 57
        y: 510
        z:1
        width: 125
        height: 125
        opacity:1
        radius:width*0.5
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: rus2
            source: "images/flag/f_jp.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1

                rectangle14.opacity=1
                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle14
        x: 182
        y: 510
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: swis
            source: "images/flag/f_korea.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1

                rectangle15.opacity=1
                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle15
        x: 307
        y: 510
        z:1
        width: 125
        height: 125
        opacity:1
        radius:width*0.5
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: uk
            source: "images/flag/f_romania.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1

                rectangle16.opacity=1
            }
        }
    }

    Rectangle {
        id: rectangle16
        x: 432
        y: 510
        z:1
        width: 125
        height: 125
        radius:width*0.5
        opacity:1
        border.color: "black"
        color: Obj.getLcolor()
        BorderImage {
            id: aus
            source: "images/flag/f_russia.jpeg"
            anchors.fill: parent
        }
        MouseArea{

            anchors.fill: parent

            onClicked: {
                parent.opacity=0.6
                rectangle1.opacity=1
                rectangle2.opacity=1
                rectangle3.opacity=1
                rectangle4.opacity=1
                rectangle5.opacity=1
                rectangle6.opacity=1
                rectangle7.opacity=1
                rectangle8.opacity=1
                rectangle9.opacity=1
                rectangle10.opacity=1
                rectangle11.opacity=1
                rectangle12.opacity=1
                rectangle13.opacity=1
                rectangle14.opacity=1
                rectangle15.opacity=1

            }
        }
    }

    Text {
        id: text1
        x: 190
        y: 59
        text: qsTr("Select Language")
        font.pixelSize: 30
    }

    Rectangle {
        id: rectangle17
        x: 583
        y: 1
        width: 30
        height: 30
        color: "#ffffff"
        BorderImage {

            source: "images/image/exit.png"
            anchors.fill: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                mainrect.visible=false
            }
        }
    }

    Rectangle {
        id: rectangle18
        x: 551
        y: 1
        width: 32
        height: 30
        color: "#ffffff"
        BorderImage {
            id: name
            source: "images/image/Minimize.png"
            anchors.fill: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                language1.visible=false
                box.visible=true
            }
        }
    }
}
