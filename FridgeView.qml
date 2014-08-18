import QtQuick 2.0
import "js/fridgeView.js" as Fridge
//import "QwertyControl.js" as Keys

Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1230
        height: 656

        //Image in the middle of the panel
        Image {
            id: image1
            x: 413
            y: 2
            width: 405
            height: 654
            source: "images/Robert/FridgeView.jpg"
        }

        //Shopping list tab
        Rectangle {
            id: sList
            x: 0
            y: 36
            width: 408
            height: 555
            border.color: "#000000"
            visible: true

            Flickable {
                x: 5
                y: 6
                width: 398
                height: 544
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.topMargin: 6
                anchors.bottomMargin: 5
                contentWidth: sAdd.width
                contentHeight: sAdd.height
                flickableDirection: Flickable.VerticalFlick
                anchors.fill: parent

                Text {
                    id: sAdd
                    text: Fridge.sList
                    width: 398
                    wrapMode: TextEdit.WordWrap
                    font.pointSize: 30
                    font.family: Fridge.font
                }
            }

        }

        //Request tab
        Rectangle {
            id: rList
            x: 0
            y: 36
            width: 408
            height: 555
            border.color: "#000000"
            visible: false

            Flickable {
                x: 7
                y: 7
                width: 395
                height: 542
                anchors.rightMargin: 7
                anchors.leftMargin: 7
                anchors.topMargin: 7
                anchors.bottomMargin: 7
                contentHeight: rAdd.height
                contentWidth: rAdd.width
                anchors.fill: parent
                flickableDirection: Flickable.VerticalFlick

                Text {
                    id: rAdd
                    width: 395
                    text: Fridge.rList
                    font.pointSize: 30
                    wrapMode: Text.WordWrap
                    font.family: Fridge.font
                }
            }
        }

        //Available in Fridge text
        Rectangle {
            id: inFridge
            x: 818
            y: 0
            width: 412
            height: 656

            Flickable {
                x: 0
                y: 62
                width: 412
                height: 594
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 62
                anchors.bottomMargin: 0
                contentHeight: inFridgeText.height
                anchors.fill: parent
                flickableDirection: Flickable.VerticalFlick

                Text {
                    id: inFridgeText
                    x: 0
                    y: 0
                    width: 56
                    height: 672
                    text: qsTr("f0\nf1\nf2\nf3\nf4\nf5\nf6\nf7\nf8\nf9\nf10\nf11\nf12\nf13")
                    font.pointSize: 30
                    font.family: Fridge.font
                }
                contentWidth: add.width
            }

            Rectangle {
                id: rectangle8
                x: 0
                y: 0
                width: 412
                height: 62
                color: "#ffffff"
                border.width: 5
                border.color: "#000000"
                Text {
                    id: text4
                    x: 12
                    y: 6
                    width: 400
                    height: 56
                    text: qsTr("Available in Fridge")
                    font.pointSize: 30
                    font.family: Fridge.font
                }
            }
        }

        //Holds the buttons for the shopping list tab and request list tab
        Rectangle {
            id: rectangle1
            x: 0
            y: 0
            width: 413
            height: 36
            color: "#ffffff"

            //Shopping List tab button
            Rectangle {
                id: shoppingList
                x: 6
                y: 4
                width: 182
                height: 32
                color: Fridge.headerColor
                border.color: "#000000"
                Text {
                    id: slText
                    x: 22
                    y: 9
                    text: qsTr("Shopping List")
                    font.pixelSize: 25
                    anchors.centerIn: parent
                    font.family: Fridge.font
                }

                MouseArea {
                    id: slTab
                    x: 0
                    y: 0
                    width: 182
                    height: 32
                    onClicked: {
                        shoppingList.color =  Fridge.headerColor
                        requests.color =  Fridge.subHeaderColor
                        sList.visible = true;
                        rList.visible = false;
                        Fridge.add = 0
                    }
                }
            }

            //Request List tab button
            Rectangle {
                id: requests
                x: 188
                y: 4
                width: 117
                height: 32
                color: Fridge.subHeaderColor
                border.color: "#000000"

                Text {
                    id: rText
                    x: 22
                    y: 9
                    text: qsTr("Requests")
                    font.pixelSize: 25
                    anchors.centerIn: parent
                    font.family: Fridge.font
                }

                MouseArea {
                    id: rTab
                    x: 0
                    y: 0
                    width: 117
                    height: 32
                    onClicked: {
                        shoppingList.color = Fridge.subHeaderColor
                        requests.color = Fridge.headerColor
                        sList.visible = false
                        rList.visible = true
                        Fridge.add = 1
                    }
                }
            }
        }

        //Box holding add new item button and text input
        Rectangle {
            id: rectangle2
            x: -1
            y: 591
            width: 413
            height: 72
            color: "#ffffff"

            Rectangle {
                id: rectangle3
                x: 69
                y: 5
                width: 339
                height: 60
                color: "#ffffff"
                border.width: 2
                border.color: "#000000"

                TextInput {
                    id: text_input1
                    x: 5
                    y: 5
                    width: 327
                    height: 50
                    text: ""
                    font.pointSize: 30
                    font.family: Fridge.font
                }

                //Add new item button
                Rectangle {
                    id: add
                    x: -67
                    y: 5
                    width: 58
                    height: 50
                    color: Fridge.headerColor
                    border.color: "#000000"

                    Text {
                        id: text1
                        x: 22
                        y: 9
                        anchors.centerIn: parent
                        text: qsTr("+")
                        font.pixelSize: 40
                        font.family: Fridge.font
                    }

                    MouseArea {
                        id: mousearea1
                        x: 0
                        y: 0
                        width: 58
                        height: 50

                        onClicked: {
                            if(Fridge.add == 0) {
                                Fridge.sList += text_input1.text + '\n'
                                sAdd.text = Fridge.sList
                            } else {
                                Fridge.rList += text_input1.text + '\n'
                                rAdd.text = Fridge.rList
                            }
                        }
                        onPressed:{
                            add.color = Fridge.subHeaderColor
                        }
                        onReleased:{
                            add.color = Fridge.headerColor
                        }
                    }
                }

                /*
                MouseArea {
                    id: mousearea2
                    x: 5
                    y: 5
                    width: 327
                    height: 50

                    onClicked: {
                        rectangle4.visible = true
                    }
                }
                */
            }
        }

        /*
        Rectangle {
            id: rectangle4
            x: 515
            y: 214
            width: 200
            height: 200
            color: "#ffffff"
            visible: false

            Qwerty {
                id: keyboard
                x: -228
                y: -102
                width: 657
                height: 442

                MouseArea {
                    id: mousearea3
                    x: 519
                    y: 361
                    width: 129
                    height: 65

                    onClicked: {
                        rectangle4.visible = false
                        text_input1.text = Keys.qwertyStr
                    }
                }
            }
        }
        */
    }
