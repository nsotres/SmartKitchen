/*
  Author: Xitao Lv
*/

import QtQuick 2.0
import "obj.js" as Json
import "create.js"as MyScript

Rectangle {
    width: 595
    height: 656

    property string name: ""
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
}
