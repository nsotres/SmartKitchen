import QtQuick 2.0
import "obj.js" as Obj

Item {
    id:item1
    width: 200
    height: 270
    visible:true

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 100
        height: 30
        color: "#ffffff"
        border.color: "black"
        Text {
            id: text1
            x: 28
            y: 8
            text: qsTr("Monday")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion1
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                            Obj.flag=1
                            if (Obj.flag==1)
                               { parent.color=Obj.geth()
                                rectangle8.visible=true
                                rectangle9.visible=true
                                rectangle10.visible=true

                                rectangle8.y=0
                                rectangle9.y=30
                                rectangle10.y=60
                               rectangle3.color="white"
                               rectangle2.color="white"
                               rectangle4.color="white"
                               rectangle5.color="white"
                               rectangle6.color="white"
                               rectangle7.color="white"}

                                                       }
           /* states: [
                State {
                    name: "Entered"
                    when: (mouseRegion1.containsMouse )== true
                    PropertyChanges {target:rectangle1; color: "blue"}

                }
            ]*/
        }
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 30
        width: 100
        height: 30
        color: "#ffffff"
        border.color:"black"

        Text {
            id: text2
            x: 27
            y: 9
            width: 46
            height: 13
            text: qsTr("Tuesday")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion2
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                            Obj.flag=2
                         if (Obj.flag==2)
                            { parent.color=Obj.geth()
                             rectangle8.visible=true
                             rectangle9.visible=true
                             rectangle10.visible=true
                             rectangle8.y=30
                             rectangle9.y=60
                             rectangle10.y=90
                            rectangle1.color="white"
                            rectangle3.color="white"
                            rectangle4.color="white"
                            rectangle5.color="white"
                            rectangle6.color="white"
                            rectangle7.color="white"}

                                                    }

            /*states: [
                State {
                    name: "Entered"
                    when: (mouseRegion1.containsMouse||mouseRegion3.containsMouse||mouseRegion4.containsMouse||mouseRegion5.containsMouse||mouseRegion6.containsMouse||mouseRegion7.containsMouse)==false &&(mouseRegion2.containsMouse ||mouseRegion8.containsMouse||mouseRegion9.containsMouse||mouseRegion10.containsMouse)== true
                    PropertyChanges {target:rectangle2; color: "blue"}

                }
            ]*/
        }
    }

    Rectangle {
        id: rectangle3
        x: 0
        y: 60
        width: 100
        height: 30
        color: "#ffffff"
        border.color:"black"

        Text {
            id: text3
            x: 26
            y: 8
            text: qsTr("Wendsday")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion3
            anchors.fill:parent
            hoverEnabled: true
        onEntered: {
                        Obj.flag=3
                     if (Obj.flag==3)
                        { parent.color=Obj.geth()
                         rectangle8.visible=true
                         rectangle9.visible=true
                         rectangle10.visible=true
                         rectangle8.y=60
                         rectangle9.y=90
                         rectangle10.y=120
                        rectangle1.color="white"
                        rectangle2.color="white"
                        rectangle4.color="white"
                        rectangle5.color="white"
                        rectangle6.color="white"
                        rectangle7.color="white"}

                                                }

            /*states: [
                State {
                    name: "Entered"
                    when: ((Obj.flag==3))
                    PropertyChanges {target:rectangle3; color: "blue"}

                }
            ]*/
        }
    }

    Rectangle {
        id: rectangle4
        x: 0
        y: 90
        width: 100
        height: 30
        color: "#ffffff"
        border.color:"black"
        Text {
            id: text4
            x: 23
            y: 8
            text: qsTr("Thursday")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion4
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                            Obj.flag=4
                         if (Obj.flag==4)
                            { parent.color=Obj.geth()
                             rectangle8.visible=true
                             rectangle9.visible=true
                             rectangle10.visible=true
                             rectangle8.y=90
                             rectangle9.y=120
                             rectangle10.y=150
                            rectangle1.color="white"
                            rectangle2.color="white"
                            rectangle3.color="white"
                            rectangle5.color="white"
                            rectangle6.color="white"
                            rectangle7.color="white"}

                                                    }
        /*onEntered: Obj.flag=4
            states: [
                State {
                    name: "Entered"
                    when: (Obj.flag==4) &&(mouseRegion4.containsMouse ||mouseRegion8.containsMouse||mouseRegion9.containsMouse||mouseRegion10.containsMouse) == true
                    PropertyChanges {target:rectangle4; color: "blue"}

                }
            ]*/
        }
    }

    Rectangle {
        id: rectangle5
        x: 0
        y: 120
        width: 100
        height: 30
        color: "#ffffff"
        border.color:"black"
        Text {
            id: text5
            x: 32
            y: 8
            text: qsTr("Friday")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion5
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                            Obj.flag=5
                         if (Obj.flag==5)
                            { parent.color=Obj.geth()
                             rectangle8.visible=true
                             rectangle9.visible=true
                             rectangle10.visible=true
                             rectangle8.y=120
                             rectangle9.y=150
                             rectangle10.y=180
                            rectangle1.color="white"
                            rectangle2.color="white"
                            rectangle4.color="white"
                            rectangle3.color="white"
                            rectangle6.color="white"
                            rectangle7.color="white"}

                                                    }

            /*states: [
                State {
                    name: "Entered"
                    when: (Obj.flag==5) &&(mouseRegion5.containsMouse ||mouseRegion8.containsMouse||mouseRegion9.containsMouse||mouseRegion10.containsMouse) == true
                    PropertyChanges {target:rectangle5; color: "blue"}

                }
            ]*/
        }
    }

    Rectangle {
        id: rectangle6
        x: 0
        y: 150
        width: 100
        height: 30
        color: "#ffffff"
        border.color:"black"
        Text {
            id: text6
            x: 25
            y: 8
            text: qsTr("Saturday")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion6
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                            Obj.flag=6
                         if (Obj.flag==6)
                            { parent.color=Obj.geth()
                             rectangle8.visible=true
                             rectangle9.visible=true
                             rectangle10.visible=true
                             rectangle8.y=150
                             rectangle9.y=180
                             rectangle10.y=210
                            rectangle1.color="white"
                            rectangle2.color="white"
                            rectangle4.color="white"
                            rectangle5.color="white"
                            rectangle3.color="white"
                            rectangle7.color="white"}

                                                    }
            /*states: [
                State {
                    name: "Entered"
                    when: (Obj.flag==6)&&(mouseRegion6.containsMouse) == true
                    PropertyChanges {target:rectangle6; color: "blue"}

                }
            ]*/
        }
    }

    Rectangle {
        id: rectangle7
        x: 0
        y: 180
        width: 100
        height: 30
        color: "#ffffff"
        border.color:"black"
        Text {
            id: text7
            x: 29
            y: 8
            text: qsTr("Sunday")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion7
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                            Obj.flag=7
                         if (Obj.flag==7)
                            { parent.color=Obj.geth()
                             rectangle8.visible=true
                             rectangle9.visible=true
                             rectangle10.visible=true
                             rectangle8.y=180
                             rectangle9.y=210
                             rectangle10.y=240
                            rectangle1.color="white"
                            rectangle2.color="white"
                            rectangle4.color="white"
                            rectangle5.color="white"
                            rectangle6.color="white"
                            rectangle3.color="white"}

                                                    }

           /* states: [
                State {
                    name: "Entered"
                    when: (mouseRegion7.containsMouse) == true
                    PropertyChanges {target:rectangle7; color: "blue"}

                }
            ]*/
        }
    }

    Rectangle {
        id: rectangle8
        x: 100
        y: 0
        width: 100
        height: 30
        color: "#ffffff"
        visible: false
    border.color:"black"

        Text {
            id: text8
            x: 23
            y: 8
            text: qsTr("Breakfast")
            font.pixelSize: 12
        }

        MouseArea{
            id:mouseRegion8
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                parent.color=Obj.geth()
                rectangle9.color="white"
                rectangle10.color="white"
              }
            onClicked: {
                item1.visible=false

            }

            /*states: [
                State {
                    name: "Entered"
                    when: (Obj.flag==1)&&(mouseRegion8.containsMouse) == true
                    PropertyChanges {target:rectangle8; color: "blue"}

                }
            ]*/
        }
    }


    Rectangle {
        id: rectangle9
        x: 100
        y: 30
        width: 100
        height: 30
        color: "#ffffff"
        visible:false
    border.color:"black"

        Text {
            id: text9
            x: 33
            y: 8
            text: qsTr("Lunch")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion9
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                parent.color=Obj.geth()
                rectangle8.color="white"
                rectangle10.color="white"
              }
            onClicked: {
                item1.visible=false

            }

            /*states: [
                State {
                    name: "Entered"
                    when: (mouseRegion9.containsMouse) == true
                    PropertyChanges {target:rectangle9; color: "blue"}

                }
            ]*/
        }
    }

    Rectangle {
        id: rectangle10
        x: 100
        y: 60
        width: 100
        height: 30
        color: "#ffffff"
        visible:false
    border.color:"black"

        Text {
            id: text10
            x: 31
            y: 8
            text: qsTr("Dinner")
            font.pixelSize: 12
        }
        MouseArea{
            id:mouseRegion10
            anchors.fill:parent
            hoverEnabled: true
            onEntered: {
                parent.color=Obj.geth()
                rectangle9.color="white"
                rectangle8.color="white"
              }
            onClicked: {
                Obj.sund="master of the universe pizza"
                item1.visible=false

            }

           /* states: [
                State {
                    name: "Entered"
                    when: (mouseRegion10.containsMouse) == true
                    PropertyChanges {target:rectangle10; color: "blue"}

                }
            ]*/
        }
    }

}
