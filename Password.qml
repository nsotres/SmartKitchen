import QtQuick 2.0
import "obj.js" as Obj


Rectangle {
    //main rectangle
    id:rectmain
    width: 1230
    height: 656
    color:"#F5FDF4"
    function clearcolor()
    {
        rectangle3.color="white"
        rectangle4.color="white"
        rectangle5.color="white"
        rectangle6.color="white"
        rectangle7.color="white"
        rectangle8.color="white"
        rectangle9.color="white"
        rectangle10.color="white"
        rectangle11.color="white"

    }
    //passwod area
    Rectangle {
        id: rectangle1
        x: 362
        y: 84
        width: 506
        height: 489
        color: "#ffffff"
        border.color: "black"
        border.width: 3

        Rectangle {
            id: rectangle2
            x: 155
            y: 333
            width: 186
            height: 116
            color: "#ffffff"
            border.color: "black"
        }

        Rectangle {
            id: rectangle3
            x: 134
            y: 26
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"

            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(1)
                }


                }
            }



        Rectangle {
            id: rectangle4
            x: 209
            y: 26
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"
            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(2)
                }

        }
        }

        Rectangle {
            id: rectangle5
            x: 284
            y: 26
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"
            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(3)
                }

        }
        }

        Rectangle {
            id: rectangle6
            x: 134
            y: 101
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"
            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(4)
                }



        }
        }

        Rectangle {
            id: rectangle7
            x: 209
            y: 101
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"
            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(5)
                }

        }
}
        Rectangle {
            id: rectangle8
            x: 284
            y: 101
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"
            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(6)
                }

        }
}
        Rectangle {
            id: rectangle9
            x: 134
            y: 176
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"
            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(7)
                }


        }
}
        Rectangle {
            id: rectangle10
            x: 210
            y: 176
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"
            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(8)
                }

        }
}
        Rectangle {
            id: rectangle11
            x: 285
            y: 176
            width: 75
            height: 75
            radius: width*0.5
            color: "#ffffff"
            border.color: "black"
            MouseArea {
                anchors.fill: parent
                onPressed:  {
                    parent.color=Obj.geth()
                    Obj.push(9)
                }

        }
    }
     // warning popup
        Rectangle{
            id:rectangle12
            x:120
            y:187
            width: 253
            height:146
            border.color: "black"
            z:10
            visible: false

            Text {
                id: text2
                x: 49
                y: 44
                text: qsTr("Invalid existing password! ")
                font.pixelSize: 12
            }
            Text {
                id: text3
                x: 49
                y: 75
                text: qsTr("Tap this window to try again")
                font.pixelSize: 12

            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    parent.visible=false
                }
            }
        }

        Text {
            id: text1
            x: 221
            y: 449
            text: qsTr("Admin")
            font.pixelSize: 20
        }
    //login logic
        Button {
            id: button1
            x: 220
            y: 284
            text:"Login"
            onClicked: {
                console.log(Obj.tmp)
                console.log(Obj.password)
                if(Obj.tmp==Obj.password)
                {rectmain.visible=false}
                else
                {rectangle12.visible=true}
                Obj.tmp=""
                clearcolor()

            }
        }
    }
}
