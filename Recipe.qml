/*
  Author: Xitao Lv
*/

import QtQuick 2.0
import "create.js" as MyScript
import "obj.js" as Obj

Rectangle {
    width: 1210
    height: 640
    Grid {
        id:grid1
        columns: 4
        spacing: 2
         Component.onCompleted: MyScript.createRects(16,"Rectlarge.qml",grid1,1);
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {

            rectShow.visible=true

        }

        Text {
            id: text1
            x: 126
            y: 10
            text: qsTr("text")
            font.pixelSize: 12
        }
    }
    Rectangle{
        id:rectShow
        x: 301
        y: 91
        width: 640
        height:480
        visible: false
        anchors.centerIn: parent
        border.color: "black"
        radius: 10
        anchors.verticalCenterOffset: 11
        anchors.horizontalCenterOffset: 16
        BorderImage {
            id: bi1
            source: "images/image/1.jpg"
            width: 360; height: 360
            border.left: 5; border.top: 5
            border.right: 5; border.bottom: 5
        }

    Text {
        id: text2
        x: 34
        y: 396
        text: qsTr("farmer's breakfast")
        font.pixelSize: 30
    }

    Text {
        id: text3
        x: 365
        y: 39
        text: qsTr("Materials")
        font.pixelSize: 16
    }

    Text {
        id: text4
        x: 365
        y: 247
        text: qsTr("Steps")
        font.pixelSize: 16
    }

    Text {
        id: text5
        x: 389
        y: 76
        text: qsTr("8  smallpotatoes, sliced 1/4-inch thick")
        font.pixelSize: 12
    }

    Text {
        id: text6
        x: 389
        y: 109
        text: qsTr("2  tablespoonsbutter or margarine")
        font.pixelSize: 12
    }

    Text {
        id: text7
        x: 389
        y: 142
        text: qsTr("4  ouncesfresh mushrooms, sliced")
        font.pixelSize: 12
    }

    Text {
        id: text8
        x: 389
        y: 173
        text: qsTr("1  cupchopped salami or cooked ham")
        font.pixelSize: 12
    }

    Text {
        id: text9
        x: 389
        y: 204
        text: qsTr("10  eggs, lightly beaten ")
        font.pixelSize: 12
    }

    Text {
        id: text10
        x: 365
        y: 317
        text: qsTr("2. In a 12-inch skillet, cook the potatoes")
        font.pixelSize: 12
    }

    Text {
        id: text11
        x: 365
        y: 280
        text: qsTr("1.  Cook potatoes in boiling water")
        font.pixelSize: 12
    }

    Text {
        id: text12
        x: 365
        y: 357
        text: qsTr("3. Add the butter and vegetables  to the skillet.")
        font.pixelSize: 12
    }

    Text {
        id: text13
        x: 365
        y: 391
        text: qsTr("4. Combine the eggs with the milk and parsley")
        font.pixelSize: 12
    }

    Text {
        id: text14
        x: 365
        y: 426
        text: qsTr("5. Sprinkle with cheese")
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle1
        x: 365
        y: 1
        width: 80
        height: 29
        color: Obj.geth()
        radius:5

        Text {
            id: text15
            x: 27
            y: 7
            text: qsTr("add")
            font.pixelSize: 12
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                menu1.visible=true
            }
        }
    }

    Rectangle {
        id: rectangle2
        x: 602
        y: 0
        width: 39
        height: 29
        color: "#ffffff"
        radius:5
        BorderImage {

            source: "images/image/exit.png"
            anchors.fill: parent

        }
        MouseArea{
            anchors.fill: parent
            onClicked: rectShow.visible= false
        }
    }

    Menu {
        id: menu1
        x: 451
        y: 7
        visible: false
    }


}
}
