/*
  Author: Xitao Lv
*/

import QtQuick 2.0
import "obj.js" as Json
import "create.js"as MyScript

Rectangle {
    width: 1215
    height: 640
    Component.onCompleted:{ var doc = new XMLHttpRequest();
    doc.onreadystatechange = function() {
       if (doc.readyState == XMLHttpRequest.DONE) {
           Json.data = eval('(' + doc.responseText + ')');

        }
       initial(Json.data);
   }

       doc.open("GET", "vegntest.json");
       doc.send();
}
    function initial(obj)
    {
        Json.monb=obj.recipe.breakfast[0].lowcal[0].name
        Json.monl=obj.recipe.ld[0].vegetarian[0].name
        Json.mond=obj.recipe.ld[0].vegetarian[1].name

    }

    MouseArea{
        id:globalM

        anchors.fill: parent
        onClicked: {
             menu1.visible=false
             menu2.visible=false
             menu3.visible=false
             menu4.visible=false
            console.log("globalM")
        }
        Rectangle{
            id:rectangle31
            x:713
            y:347
            z:10
            width:333
            height:222
            border.color: "black"
            visible: false
            Rectangle{
                id:rectangle33
                x:0
                y:0
                width:133
                height:128
                BorderImage {
                    x: 0
                    y: 0
                    width: 133
                    height: 151
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.rightMargin: 0
                    anchors.bottomMargin: -23
                    source: "images/image/1.jpg"
                    anchors.fill: parent

                    Rectangle {
                        id: rectangle34
                        x: 0
                        y: 152
                        width: 122
                        height: 69
                        color: "pink"
                        BorderImage {
                            x: 37
                            y: 1

                            source: "images/image/like.png"
                            width: 38; height: 36
                            anchors.verticalCenterOffset: -13
                            anchors.horizontalCenterOffset: 0
                            anchors.centerIn: parent

                            Text {
                                id: text40
                                x: 10
                                y: 45
                                text: qsTr("16")
                                font.pixelSize: 14
                                color:"#ffffff"
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle35
                        x: 122
                        y: 152
                        width: 109
                        height: 69
                        color: "lightgreen"
                        BorderImage {
                            x: 29
                            y: 0

                            source: "images/image/eat.png"
                             width:48; height:48
                             anchors.verticalCenterOffset: -11
                             anchors.horizontalCenterOffset: 0
                             anchors.centerIn: parent
                        }

                        Text {
                            id: text41
                            x: 44
                            y: 50
                            text: qsTr("28")
                            font.pixelSize: 14
                            color:"#ffffff"
                        }
                    }

                    Rectangle {
                        id: rectangle36
                        x: 231
                        y: 152
                        width: 101
                        height: 69
                        color: "lightblue"

                        BorderImage {
                            x: 0
                            y: 18
                            width: 20
                            height: 22
                            source: "images/image/star.png"
                            anchors.horizontalCenterOffset: -41
                            anchors.verticalCenterOffset: -6
                            anchors.centerIn: parent
                        }

                        BorderImage {
                            x: 20
                            y: 18
                            width: 20
                            height: 22
                            source: "images/image/star.png"
                            anchors.horizontalCenterOffset: -21
                            anchors.verticalCenterOffset: -6
                            anchors.centerIn: parent
                        }

                        BorderImage {
                            x: 41
                            y: 18
                            width: 20
                            height: 22
                            source: "images/image/star.png"
                            anchors.horizontalCenterOffset: 0
                            anchors.verticalCenterOffset: -6
                            anchors.centerIn: parent
                        }
                    }

                }
            }

            Rectangle {
                id: rectangle32
                x: 302
                y: 0
                width: 31
                height: 26
                color: "#ffffff"
                BorderImage {
                    x: 0
                    y: 0
                    width: 31
                    height: 26
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.fill: parent
                    source: "images/image/exit.png"

                }
                MouseArea{
                    x: 0
                    y: 0
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.fill: parent
                    onClicked: rectangle31.visible=false
                }
            }

            Text {
                id: text38
                x: 191
                y: 40
                text: qsTr("Farmer's Breakfast")
                font.pixelSize: 12
            }

            Text {
                id: text39
                x: 182
                y: 86
                text: qsTr("Breakfast,Vegterian")
                font.pixelSize: 12
            }

            Text {
                id: text42
                x: 170
                y: 19
                text: qsTr("name:")
                font.pixelSize: 12
            }

            Text {
                id: text43
                x: 170
                y: 71
                text: qsTr("Type")
                font.pixelSize: 12
            }

        }

        Rectangle {
            id: rectangle30
            x: 595
            y: 377
            width: 456
            height: 229
            color: "#ffffff"
            border.color: "black"
            border.width: 3
            clip:true

           Flickable {
               anchors.fill: parent
                   contentWidth: grid1.width; contentHeight: grid1.height
                   //contentX: 595; contentY: 377
                   //atYBeginning : true
                   //atYEnd :true


                Grid{
                //anchors.fill: parent
                id:grid1
                Component.onCompleted: {

                    MyScript.createRects(12,"Rectlong.qml",grid1,0);
                    MyScript.setTest(12)

                //flow: Grid.TopToBottom
                }
                columns:1
                spacing:1
            }
           }

        }

    }

    MealPlannerEdit{
        id:mpe
        x:0
        y:0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        z:1
        anchors.fill: parent
        visible: false
    }


    Rectangle {
        id: rectangle1
        x: 135
        y: 83
        width: 395
        height: 383
        color: Json.gett()
        border.color: "black"
        border.width: 3
        MouseArea{
            x: 0
            y: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: parent
            onClicked: {
                mpe.visible=true
            }
        }


        Text {
            id: text1
            x: 8
            y: 5
            text: qsTr("Meal Schedule")
            font.pixelSize: Json.getfontsize()
        }

        Text {
            id: text9
            x: 38
            y: 70
            text: qsTr("Breakfast:")
            font.pixelSize: Json.getfontsize()
        }

        Text {
            id: text10
            x: 43
            y: 146
            text: qsTr("Lunch:")
            font.pixelSize: Json.getfontsize()
        }

        Text {
            id: text11
            x: 44
            y: 233
            text: qsTr("Dinner:")
            font.pixelSize: Json.getfontsize()
        }

        Text {
            id: text12
            x: 70
            y: 103
            text: Json.monb
            font.pixelSize: Json.getfontsize()
        }

        Text {
            id: text13
            x: 70
            y: 182
            text: Json.monl
            font.pixelSize: Json.getfontsize()
        }

        Text {
            id: text14
            x: 70
            y: 274
            text: Json.mond
            font.pixelSize: Json.getfontsize()
        }

    }

    Rectangle {
        id: rectangle2
        x: 34
        y: 121
        width: 101
        height: 39
        color: Json.geth()
        border.color: "black"
        border.width: 3

        Text {
            id: text2
            x: 28
            y: 12
            text: qsTr("Monday")
            font.pixelSize: 12
        }
        MouseArea {

               anchors.fill: parent
               onClicked: { parent.color = Json.geth()
                   rectangle8.color='white'
                   rectangle5.color='white'
                   rectangle3.color='white'
                   rectangle4.color='white'
                   rectangle6.color='white'
                   rectangle7.color='white'

                   text12.text=Json.monb;
                   text13.text=Json.monl;
                   text14.text=Json.mond;
               }
        }
    }

    Rectangle {
        id: rectangle3
        x: 34
        y: 170
        width: 101
        height: 42
        color: "#ffffff"
        border.color: "black"
        border.width: 3

        Text {
            id: text3
            x: 26
            y: 14
            text: qsTr("Tuseday")
            font.pixelSize: 12
        }
        MouseArea {

               anchors.fill: parent
               onClicked: { parent.color = Json.geth()
                   rectangle8.color='white'
                   rectangle2.color='white'
                   rectangle5.color='white'
                   rectangle4.color='white'
                   rectangle6.color='white'
                   rectangle7.color='white'
                  // parent.x=parent.x+2
                  // parent.y=parent.y+4
                   text12.text=Json.tueb;
                   text13.text=Json.tuel;
                   text14.text=Json.tued;

               }
        }
    }

    Rectangle {
        id: rectangle4
        x: 34
        y: 224
        width: 101
        height: 40
        color: "#ffffff"
        border.color: "black"
        border.width: 3

        Text {
            id: text4
            x: 21
            y: 13
            text: qsTr("Wednsday")
            font.pixelSize: 12
        }
        MouseArea {

               anchors.fill: parent
               onClicked: { parent.color = Json.geth()
                   rectangle8.color='white'
                   rectangle2.color='white'
                   rectangle5.color='white'
                   rectangle3.color='white'
                   rectangle6.color='white'
                   rectangle7.color='white'
                   text12.text=Json.wdnb;
                   text13.text=Json.wdnl;
                   text14.text=Json.wdnd;
               }
        }
    }

    Rectangle {
        id: rectangle5
        x: 34
        y: 275
        width: 101
        height: 41
        color: "#ffffff"
        border.color: "black"
        border.width: 3

        Text {
            id: text5
            x: 24
            y: 13
            text: qsTr("Thursday")
            font.pixelSize: 12
        }
        MouseArea {

               anchors.fill: parent
               onClicked: { parent.color = Json.geth()
                   rectangle8.color='white'
                   rectangle2.color='white'
                   rectangle3.color='white'
                   rectangle4.color='white'
                   rectangle6.color='white'
                   rectangle7.color='white'
                   text12.text=Json.trb;
                   text13.text=Json.trl;
                   text14.text=Json.trd;
               }
        }
    }

    Rectangle {
        id: rectangle6
        x: 34
        y: 328
        width: 101
        height: 42
        color: "#ffffff"
        border.color: "black"
        border.width: 3


        Text {
            id: text6
            x: 33
            y: 14
            text: qsTr("Friday")
            font.pixelSize: 12
        }

        MouseArea {

               anchors.fill: parent
               onClicked: { parent.color = Json.geth()
                   rectangle1.color='white'
                   rectangle2.color='white'
                   rectangle3.color='white'
                   rectangle4.color='white'
                   rectangle5.color='white'
                   rectangle7.color='white'
                   text12.text=Json.frib;
                   text13.text=Json.fril;
                   text14.text=Json.frid;


               }
           }
    }

    Rectangle {
        id: rectangle7
        x: 34
        y: 381
        width: 101
        height: 38
        color: "#ffffff"
        border.color: "black"
        border.width: 3

        Text {
            id: text7
            x: 25
            y: 12
            text: qsTr("Saturday")
            font.pixelSize: 12
        }
        MouseArea {

               anchors.fill: parent
               onClicked: { parent.color = Json.geth()
                   rectangle8.color='white'
                   rectangle2.color='white'
                   rectangle5.color='white'
                   rectangle4.color='white'
                   rectangle6.color='white'
                   rectangle3.color='white'
                   text12.text=Json.satb;
                   text13.text=Json.satl;
                   text14.text=Json.satd;
               }
        }
    }

    Rectangle {
        id: rectangle8
        x: 34
        y: 431
        width: 101
        height: 35
        color: "#ffffff"
        border.color: "black"
        border.width: 3

        Text {
            id: text8
            x: 30
            y: 10
            text: qsTr("Sunday")
            font.pixelSize: 12
        }
        MouseArea {

               anchors.fill: parent
               onClicked: { parent.color = Json.geth()
                   rectangle3.color='white'
                   rectangle2.color='white'
                   rectangle5.color='white'
                   rectangle4.color='white'
                   rectangle6.color='white'
                   rectangle7.color='white'
                   text12.text=Json.sunb;
                   text13.text=Json.sunl;
                   text14.text=Json.sund;
               }
        }
    }

    Rectangle {
        id: rectangle9
        x: 595
        y: 70
        width: 450
        height: 268
        color: "#ffffff"
        border.color: "black"
        border.width: 3
        visible:false

        Text {
            id: text33
            x: 19
            y: 31
            text: qsTr("Recpipe1")
            font.pixelSize: 12
        }

        Text {
            id: text34
            x: 19
            y: 210
            text: qsTr("Recpipe4")
            font.pixelSize: 12
        }

        Text {
            id: text35
            x: 19
            y: 156
            text: qsTr("Recpipe3")
            font.pixelSize: 12
        }

        Text {
            id: text36
            x: 19
            y: 95
            text: qsTr("Recpipe2")
            font.pixelSize: 12
        }

        Rectangle {
            id: rectangle25
            x: 99
            y: 20
            width: 5
            height: 225
            color: "black"
            border.width: 3
        }

        Rectangle {
            id: rectangle26
            x: 104
            y: 21
            width: Json.count1*45+1
            height: 45
            color: Json.geth()
            border.color: "black"
            border.width: 3

        }

        Rectangle {
            id: rectangle27
            x: 104
            y: 80
            width: Json.count2*45+1
            height: 45
            color: Json.geth()
            border.width: 3
        }

        Rectangle {
            id: rectangle28
            x: 104
            y: 136
            width: Json.count3*45+1
            height: 45
            color: Json.geth()
            border.width: 3
        }

        Rectangle {
            id: rectangle29
            x: 104
            y: 195
            width: Json.count4*45+1
            height: 45
            color: Json.geth()
            border.width: 3
        }

    }

    Rectangle {
        id: rectangle10
        x: 595
        y: 70
        width: 450
        height: 268
        color: "#ffffff"
        border.color: "black"
        border.width: 3
        visible:true

        Text {
            id: text17
            x: 34
            y: 38
            text: qsTr("master of the universe pizza")
            font.pixelSize: 12
        }

        Text {
            id: text18
            x: 34
            y: 89
            text: qsTr("Recipe2")
            font.pixelSize: 12
        }

        Text {
            id: text19
            x: 34
            y: 139
            text: qsTr("Recipe3")
            font.pixelSize: 12
        }

        Text {
            id: text20
            x: 34
            y: 187
            text: qsTr("Recipe4")
            font.pixelSize: 12
        }

        Rectangle {
            id: rectangle13
            x: 215
            y: 32
            width: 40
            height: 21

            border.color: "black"
            radius:5
            color: Json.geth()

            Text {
                id: text21
                x: 9
                y: 6
                text: qsTr("vote")
                font.pixelSize: 12


            }
            MouseArea {
                   id:mouseRegion1
                   anchors.fill: parent
                   onClicked: {
                       Json.count1=Json.count1+1
                       rectangle26.width=Json.count1*45+1

                   }
            }
            states: [
                State {
                    name: "Pressed"
                    when: mouseRegion1.pressed == true
                    PropertyChanges { target: rectangle13; color: Json.geth() }
                }
            ]
        }

        Rectangle {
            id: rectangle14
            x: 215
            y: 83
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text22
                x: 9
                y: 6
                text: qsTr("vote")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle15
            x: 215
            y: 133
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text23
                x: 9
                y: 6
                text: qsTr("vote")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle16
            x: 215
            y: 181
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text24
                x: 9
                y: 6
                text: qsTr("vote")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle17
            x: 308
            y: 32
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text25
                x: 9
                y: 6
                text: qsTr("edit")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle18
            x: 308
            y: 83
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text26
                x: 9
                y: 6
                text: qsTr("edit")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle19
            x: 308
            y: 133
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text27
                x: 9
                y: 6
                text: qsTr("edit")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle20
            x: 308
            y: 181
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text28
                x: 9
                y: 6
                text: qsTr("edit")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle21
            x: 391
            y: 32
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text29
                x: 9
                y: 6
                text: qsTr("add")
                font.pixelSize: 12
            }
            MouseArea {
                   id:mouseRegion21
                   anchors.fill: parent
                   onClicked:{
                       menu1.visible=true
                       menu2.visible=false
                       menu3.visible=false
                       menu4.visible=false

                   }

            }


            states: [
                State {
                    name: "Pressed"
                    when: mouseRegion21.pressed == true
                    PropertyChanges { target: rectangle21; color: Json.geth() }
                }
            ]
        }

        Rectangle {
            id: rectangle22
            x: 391
            y: 83
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text30
                x: 9
                y: 6
                text: qsTr("add")
                font.pixelSize: 12


            }
            MouseArea {
                   id:mouseRegion22
                   anchors.fill: parent
                   onClicked:{
                       menu2.visible=true
                       menu1.visible=false
                       menu3.visible=false
                       menu4.visible=false

                   }

            }


            states: [
                State {
                    name: "Pressed"
                    when: mouseRegion22.pressed == true
                    PropertyChanges { target: rectangle22; color: Json.geth() }
                }
            ]
        }

        Rectangle {
            id: rectangle23
            x: 391
            y: 133
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text31
                x: 9
                y: 6
                text: qsTr("add")
                font.pixelSize: 12
            }
            MouseArea {
                   id:mouseRegion23
                   anchors.fill: parent
                   onClicked:{
                       menu3.visible=true
                       menu2.visible=false
                       menu1.visible=false
                       menu4.visible=false

                   }

            }


            states: [
                State {
                    name: "Pressed"
                    when: mouseRegion23.pressed == true
                    PropertyChanges { target: rectangle23; color: Json.geth() }
                }
            ]
        }

        Rectangle {
            id: rectangle24
            x: 391
            y: 181
            width: 40
            height: 21
            radius:5
            color: Json.geth()
            border.color: "black"


            Text {
                id: text32
                x: 9
                y: 6
                text: qsTr("add")
                font.pixelSize: 12
            }
            MouseArea {
                   id:mouseRegion24
                   anchors.fill: parent
                   onClicked:{
                       menu4.visible=true
                       menu2.visible=false
                       menu3.visible=false
                       menu1.visible=false

                   }

            }


            states: [
                State {
                    name: "Pressed"
                    when: mouseRegion24.pressed == true
                    PropertyChanges { target: rectangle24; color: Json.geth() }
                }
            ]
        }

        Menu {
            id: menu1
            x: 438
            y: 43
            visible: false
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    Json.satd="master of the universe pizza"
                }
            }
        }

        Menu {
            id: menu2
            x: 438
            y: 94
            visible: false
        }

        Menu {
            id: menu3
            x: 438
            y: 144
            visible: false
        }

        Menu {
            id: menu4
            x: 438
            y: 195
            visible: false
        }
    }

    Rectangle {
        id: rectangle11
        x: 783
        y: 40
        width: 131
        height: 30
        color: Json.geth()
        border.color: "black"
        border.width: 3

        Text {
            id: text15
            x: 48
            y: 8
            text: qsTr("Vote")
            font.pixelSize: 12
        }
        MouseArea {

               anchors.fill: parent
               onClicked: {
                   parent.color = Json.geth()
                   rectangle12.color="#ffffff"
                   rectangle9.visible=false;
                   rectangle10.visible=true;
               }
        }
    }

    Rectangle {
        id: rectangle12
        x: 914
        y: 40
        width: 131
        height: 30
        color: "#ffffff"
        border.color: "black"
        border.width: 3

        Text {
            id: text16
            x: 46
            y: 8
            text: qsTr("Result")
            font.pixelSize: 12
        }
        MouseArea {

               anchors.fill: parent
               onClicked: { parent.color = Json.geth()
                   rectangle11.color="#ffffff"
                   rectangle10.visible=false;
                   rectangle9.visible=true;
               }
        }
    }

    Text {
        id: text37
        x: 595
        y: 353
        text: qsTr("Recommandation")
        font.pixelSize: 14
    }



}
