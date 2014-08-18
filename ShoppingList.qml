import QtQuick 2.0
import "shoppingListController.js" as ShoppCont
import "QwertyControl.js" as QControl
/*  Shopping List Panel
*   by: Felix Sotres
*   date: 4/22/13
*
*   Functionality:
*       - shopping list panel
*/

//screen size container



            //Main Content area (1920x656)
            Rectangle{
                id: shoppingListMainContArea
                color: "white"
                width: 1230
                height: 656
                //border.width: 2
                //border.color: "blue"
                Text{
                    anchors.centerIn: parent
                    text: "main content"
                }
                ///Main content grid
                Grid{
                    id: shoppingListMainContGrid
                    columns:4
                    spacing:10
                    //buffer
                    Rectangle{
                        id: shoppingListBuffer1
                        width: 60
                        height: 656
                        color: ShoppCont.getBuffColor()
                    }
                    //available items container
                    Rectangle{
                        id: shoppingListAvailItemsCont
                        width: ShoppCont.getAvailItemContX()
                        height: ShoppCont.getAvailItemContY()
                        color: "white"
                        //Available Contents grid
                        Grid{
                            id: shoppingListAvailItemsGrid
                            columns:1
                            rowSpacing: 0
                            //top buffer
                            Rectangle{
                                id: shoppingListAvailItemsBuffer1
                                width: ShoppCont.getAvailItemContX()
                                height: ShoppCont.getAvailItemContBuffY()
                                color: ShoppCont.getBuffColor()
                            }
                            //window header
                            Rectangle{
                                id: shoppingListAvailItemsHeader
                                width: ShoppCont.getAvailItemContX()
                                height: ShoppCont.getAvailItemContHeaderY()
                                color: ShoppCont.getHeaderColor()
                                border.color: ShoppCont.getBordColor()
                                border.width: 2
                                Text{
                                    anchors.centerIn: parent
                                    text: "Available Fridge Items"
                                    font.family: ShoppCont.getFontStyle()
                                    font.pointSize: ShoppCont.getFontSize()
                                }
                            }
                            //avail items content window
                            Rectangle{
                                id: shoppingListAvailItemsContWin
                                width: ShoppCont.getAvailItemContX()
                                height: ShoppCont.getAvailContWinY()
                                border.color: ShoppCont.getBordColor()
                                border.width: 2
                                color: ShoppCont.getTextWinColor()
                                //main action flickable (holds text areas)
                                Flickable {
                                    width: (ShoppCont.getAvailItemContX()-2) // actual monitor width resolution
                                    height: (ShoppCont.getAvailContWinY()-2)// actual monitor height resolution
                                    contentWidth: (ShoppCont.getAvailItemContX()-0)  //panel width
                                    contentHeight: 1000 //panel height
                                    clip: true
                                    //flickable grid
                                    Grid{
                                        id: shoppingListAvailItemsFlickableGrid
                                        columns: 2
                                        spacing: 0
                                        //buffer
                                        Rectangle{
                                            width: 2
                                            height: 1
                                            color: "black"
                                        }
                                        Rectangle{
                                            width: ShoppCont.getAvailItemContX()
                                            height: ShoppCont.getAvailContWinY()
                                            //border.color: "black"
                                            //border.width: 2
                                            color: ShoppCont.getTextWinColor()
                                            Text{
                                                font.pointSize: 20
                                                font.family: "Calibri"
                                                text: ShoppCont.getFridge()
                                            }
                                            MouseArea{
                                                //do nothing
                                            }

                                        }
                                    }//end available items grid
                                }//end available items flickable
                                //available items container
                            }
                        }
                    }//end available items container
                    //buffer between windows
                    Rectangle{
                        id: shoppingListBuffer2
                        width: 80
                        height: 656
                        color: ShoppCont.getBuffColor()
                    }
                    //main action container
                    Rectangle{
                        id: shoppingListActionContainer
                        width:ShoppCont.getMainActX()
                        height: ShoppCont.getMainActY()
                        border.color: "black"
                        border.width: 2
                        color: ShoppCont.getTextWinColor()
                        //main Action grid
                        Grid{
                            id: shoppingListActionGridContainer
                            columns: 1
                            rowSpacing: 0
                            spacing: 0
                            //top buffer 1
                            Rectangle{
                                id: shoppingListMainActBuffer1
                                width: ShoppCont.getMainActX()
                                height: ShoppCont.getAvailItemContBuffY()
                                color: ShoppCont.getBuffColor()
                            }

                            //tabs container
                            Rectangle{
                                id: shoppingListTabsContainer
                                width: (ShoppCont.getMainActX()-20)
                                height: ShoppCont.getTabY()
                                border.color: "black"
                                border.width: 2
                                color: "white"
                                //tabs grid
                                Grid{
                                    id: shoppingListTabsGrid
                                    columns: 4
                                    //tab1
                                    Rectangle{
                                        id: shoppingListTab1
                                        width: 200
                                        height: ShoppCont.getTabY()
                                        Image {
                                            id: shoppingListTabImage1
                                            anchors.fill: parent
                                            source: ShoppCont.getStdTabImg()
                                        }
                                        Text{
                                            anchors.centerIn: parent
                                            font.family: ShoppCont.getFontStyle()
                                            font.pointSize: ShoppCont.getFontSize()
                                            text: "Shopping List"
                                        }
                                        MouseArea{
                                            anchors.fill: parent
                                            onPressed: {
                                                //color for clicked
                                                shoppingListTabImage1.source = ShoppCont.getClickedTabImg();
                                                //set visible to true
                                                ShoppCont.visiblePanel1();
                                                //set current list
                                                ShoppCont.setCurrList(1);
                                            }
                                            onReleased: {
                                                //revert color
                                                shoppingListTabImage1.source = ShoppCont.getStdTabImg()
                                            }
                                        }
                                    }
                                    //tab2
                                    Rectangle{
                                        id: shoppingListTab2
                                        width: 150
                                        height: ShoppCont.getTabY()
                                        Image {
                                            id: shoppingListTabImage2
                                            anchors.fill: parent
                                            source: ShoppCont.getDeselectTabImg()
                                        }
                                        Text{
                                            anchors.centerIn: parent
                                            font.family: ShoppCont.getFontStyle()
                                            font.pointSize: ShoppCont.getFontSize()
                                            text: "Requests"
                                        }
                                        MouseArea{
                                            anchors.fill: parent
                                            onPressed: {
                                                //color for clicked
                                                shoppingListTabImage2.source = ShoppCont.getClickedTabImg();
                                                //set visible to true
                                                ShoppCont.visiblePanel2();
                                                //set current list
                                                ShoppCont.setCurrList(2);
                                            }
                                            onReleased: {
                                                //revert color
                                                shoppingListTabImage2.source = ShoppCont.getStdTabImg()
                                            }
                                        }
                                    }
                                    //tab3
                                    Rectangle{
                                        id: shoppingListTab3
                                        width: 250
                                        height: ShoppCont.getTabY()
                                        Image {
                                            id: shoppingListTabImage3
                                            anchors.fill: parent
                                            source: ShoppCont.getDeselectTabImg()
                                        }
                                        Text{
                                            anchors.centerIn: parent
                                            font.family: ShoppCont.getFontStyle()
                                            font.pointSize: ShoppCont.getFontSize()
                                            text: "Need for Recipe"
                                        }
                                        MouseArea{
                                            anchors.fill: parent
                                            onPressed: {
                                                //color for clicked
                                                shoppingListTabImage3.source = ShoppCont.getClickedTabImg();
                                                //set visible to true
                                                ShoppCont.visiblePanel3();
                                                //set current list
                                                ShoppCont.setCurrList(3);
                                            }
                                            onReleased: {
                                                //revert color
                                                shoppingListTabImage3.source = ShoppCont.getStdTabImg()
                                            }
                                        }
                                    }
                                }
                            }

                            //main action flickable (holds text areas)
                            Flickable {
                                id: shoppingListFlickAction
                                width: (ShoppCont.getActionPanelX()-1) // actual monitor width resolution
                                height: (ShoppCont.getActionPanelY()-252)// actual monitor height resolution
                                contentWidth: (ShoppCont.getActionPanelX()-20)  //panel width
                                contentHeight: 1000 //panel height
                                clip: true
                                //flickable grid
                                Grid{
                                    id: shoppingListMainActionFlickableGrid
                                    columns: 2
                                    spacing: 0
                                    //buffer
                                    Rectangle{
                                        width: 2
                                        height: 1
                                        color: "black"
                                    }

                                    //main action content panel 1
                                    Rectangle{
                                        id: shoppingListMainActCont1
                                        width: ShoppCont.getActionPanelX()
                                        height: ShoppCont.getActionPanelY()
                                        color: ShoppCont.getTextWinColor()
                                        //border.width: 2
                                        //border.color: "red"
                                        Text{
                                            id: shoppingListMainActCont1Text
                                            font.pointSize: 20
                                            font.family: "Calibri"
                                            text: ShoppCont.getShoppList()
                                        }

                                    }
                                    //main action content panel 2
                                    Rectangle{
                                        id: shoppingListMainActCont2
                                        width: ShoppCont.getActionPanelX()
                                        height: ShoppCont.getActionPanelY()
                                        color: ShoppCont.getTextWinColor()
                                        visible: false
                                        Text{
                                            id: shoppingListMainActCont2Text
                                            font.pointSize: 20
                                            font.family: "Calibri"
                                            text: ShoppCont.getReqList()
                                        }
                                    }
                                    //main action content panel 3
                                    Rectangle{
                                        id: shoppingListMainActCont3
                                        width: ShoppCont.getActionPanelX()
                                        height: ShoppCont.getActionPanelY()
                                        color: ShoppCont.getTextWinColor()
                                        visible: false
                                        Text{
                                            id: shoppingListMainActCont3Text
                                            font.pointSize: 20
                                            font.family: "Calibri"
                                            text: ShoppCont.getNeedList()
                                        }
                                    }

                                }

                            }//end flickable
                            //below flickable
                            //text input
                            Rectangle{
                                id: belowFlickTextInput1
                                width: ShoppCont.getActionPanelX()
                                height:48
                                border.color: "lightslategray"
                                border.width: 1
                                //input for user
                                TextInput{
                                    width: 100
                                    id: shopp_input
                                    anchors.fill: parent
                                    anchors.centerIn: parent
                                    font.capitalization: Font.MixedCase
                                    font.family: "Calibri"
                                    font.pointSize: 20
                                    maximumLength: 30
                                    text: "Add Item"
                                    focus: true
                                }
                                MouseArea{
                                    anchors.fill: parent
                                    onClicked: {
                                        console.log("text input clicked");
                                        shoppingListFlickAction.height = (ShoppCont.getActionPanelY()-452);
                                        //hide current text area
                                        belowFlickTextInput1.visible= false;
                                        //show text area w qwerty
                                        belowFlickTextInput2.visible= true;
                                    }
                                }
                            }
                            //text area 2 (w/ qwerty)
                            Rectangle{
                                id: belowFlickTextInput2
                                visible: false
                                width: ShoppCont.getActionPanelX()
                                height: 246
                                border.color: "green"
                                border.width: 2
                                //Main Qwerty Panel - holds Grids
                                Rectangle{
                                    id: mainQwertyPanel
                                    width: QControl.getX()
                                    height: QControl.getY()
                                    border.width: 5
                                    border.color: QControl.getBackColor()
                                    color: QControl.getBackColor()
                                    //Main Qwerty Grid
                                    Grid{
                                        id: mainGrid
                                        columns: 1
                                        spacing: 5
                                        rowSpacing: 0//QControl.getButtonRowSpacing()
                                        //Text Input at top
                                        Rectangle{
                                            id: menuBarInput
                                            color: "white"
                                            border.color: "lightslategray"
                                            //with of input should be the same as keyboard
                                            width: QControl.getX()
                                            height: QControl.getInputBoxY()
                                            //input for user
                                            TextInput{
                                                width: 100
                                                id: qwerty_input
                                                anchors.fill: parent
                                                anchors.centerIn: parent
                                                font.capitalization: Font.MixedCase
                                                font.family: "Calibri"
                                                font.pointSize: QControl.getButtonTextSize()
                                                maximumLength: 30
                                                text: ""
                                                focus: true
                                            }
                                        }
                                        //space top
                                        Grid{
                                            id: spaceTop
                                            columns: 1
                                            //this space is just for giving the keyboard a buffer
                                            Rectangle{
                                                id: spaceTopRect
                                                color: "lightslategray"
                                                width: QControl.getX()
                                                height: QControl.getBuffTopY()
                                            }
                                        }
                                        //row1
                                        Rectangle{
                                            border.color: "lightslategray"
                                            border.width: 2
                                            width: QControl.getX()
                                            height: (QControl.getButtonY()+2)
                                            color: "lightslategray"
                                            //row1 grid
                                            Grid{
                                                id: row1
                                                columns: 11
                                                spacing: QControl.getButtonSpacing()

                                                //space between keys 1
                                                Rectangle{
                                                    id: r1space1
                                                    color: QControl.getBackColor()
                                                    width: 1
                                                    height: 64
                                                }
                                                //holds the key "Q" 2
                                                Rectangle{
                                                    id: keyQUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyQ
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "q"
                                                    }
                                                    MouseArea{
                                                        id: mAreaQUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyQUp.color= QControl.getPressedColor();
                                                            QControl.row1("Q");}
                                                        /*onClicked: {
                                                            //Calls QwertyControl function to take Input
                                                            QControl.row1("Q")
                                                        }*/
                                                        onReleased: {keyQUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "W" 3
                                                Rectangle{
                                                    id: keyWUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyW
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "w"
                                                    }
                                                    MouseArea{
                                                        id: mAreaWUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyWUp.color= QControl.getPressedColor();
                                                            QControl.row1("W");}
                                                        onReleased: {keyWUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "E" 4
                                                Rectangle{
                                                    id: keyEUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyE
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "e"
                                                    }
                                                    MouseArea{
                                                        id: mAreaEUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyEUp.color= QControl.getPressedColor();
                                                            QControl.row1("E");}
                                                        onReleased: {keyEUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "R" 5
                                                Rectangle{
                                                    id: keyRUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyR
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "r"
                                                    }
                                                    MouseArea{
                                                        id: mAreaRUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyRUp.color= QControl.getPressedColor();
                                                            QControl.row1("R");}
                                                        onReleased: {keyRUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "T" 6
                                                Rectangle{
                                                    id: keyTUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyT
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "t"
                                                    }
                                                    MouseArea{
                                                        id: mAreaTUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyTUp.color= QControl.getPressedColor();
                                                            QControl.row1("T");}
                                                        onReleased: {keyTUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "Y" 7
                                                Rectangle{
                                                    id: keyYUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyY
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "y"
                                                    }
                                                    MouseArea{
                                                        id: mAreaYUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyYUp.color= QControl.getPressedColor();
                                                            QControl.row1("Y");}
                                                        onReleased: {keyYUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "U"8
                                                Rectangle{
                                                    id: keyUUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyU
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "u"
                                                    }
                                                    MouseArea{
                                                        id: mAreaUUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyUUp.color= QControl.getPressedColor();
                                                            QControl.row1("U");}
                                                        onReleased: {keyUUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "I" 9
                                                Rectangle{
                                                    id: keyIUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyI
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "i"
                                                    }
                                                    MouseArea{
                                                        id: mAreaIUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyIUp.color= QControl.getPressedColor();
                                                            QControl.row1("I");}
                                                        onReleased: {keyIUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "O" 10
                                                Rectangle{
                                                    id: keyOUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyO
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "o"
                                                    }
                                                    MouseArea{
                                                        id: mAreaOUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyOUp.color= QControl.getPressedColor();
                                                            QControl.row1("O");}
                                                        onReleased: {keyOUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "P" 11
                                                Rectangle{
                                                    id: keyPUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r1KeyP
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "p"
                                                    }
                                                    MouseArea{
                                                        id: mAreaPUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyPUp.color= QControl.getPressedColor();
                                                            QControl.row1("P");}
                                                        onReleased: {keyPUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                            }

                                        }
                                        //row2
                                        Rectangle{
                                            border.color: "lightslategray"
                                            border.width: 2
                                            width: QControl.getX()
                                            height: (QControl.getButtonY()+2)
                                            color: "lightslategray"
                                            //row2 grid
                                            Grid{
                                                id: row2
                                                columns: 11
                                                spacing: QControl.getButtonSpacing()
                                                rowSpacing: 10
                                                //space between keys 2
                                                Rectangle{
                                                    id: r2space1
                                                    color: QControl.getBackColor()
                                                    width: 22
                                                    height: 64
                                                }
                                                //holds the key "A" 2
                                                Rectangle{
                                                    id: keyAUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyA
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "a"
                                                    }
                                                    MouseArea{
                                                        id: mAreaAUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyAUp.color= QControl.getPressedColor();
                                                            QControl.row2("A");}
                                                        onReleased: {keyAUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "S" 3
                                                Rectangle{
                                                    id: keySUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyS
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "s"
                                                    }
                                                    MouseArea{
                                                        id: mAreaSUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keySUp.color= QControl.getPressedColor();
                                                            QControl.row2("S");}
                                                        onReleased: {keySUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "D" 4
                                                Rectangle{
                                                    id: keyDUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyD
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "d"
                                                    }
                                                    MouseArea{
                                                        id: mAreaDUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyDUp.color= QControl.getPressedColor();
                                                            QControl.row2("D");}
                                                        onReleased: {keyDUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "F" 5
                                                Rectangle{
                                                    id: keyFUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyF
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "f"
                                                    }
                                                    MouseArea{
                                                        id: mAreaFUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyFUp.color= QControl.getPressedColor();
                                                            QControl.row2("F");}
                                                        onReleased: {keyFUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "G" 6
                                                Rectangle{
                                                    id: keyGUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyG
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "g"
                                                    }
                                                    MouseArea{
                                                        id: mAreaGUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyGUp.color= QControl.getPressedColor();
                                                            QControl.row2("G");}
                                                        onReleased: {keyGUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "H"7
                                                Rectangle{
                                                    id: keyHUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyH
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "h"
                                                    }
                                                    MouseArea{
                                                        id: mAreaHUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyHUp.color= QControl.getPressedColor();
                                                            QControl.row2("H");}
                                                        onReleased: {keyHUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "J" 8
                                                Rectangle{
                                                    id: keyJUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyJ
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "j"
                                                    }
                                                    MouseArea{
                                                        id: mAreaJUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyJUp.color= QControl.getPressedColor();
                                                            QControl.row2("J");}
                                                        onReleased: {keyJUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "K" 9
                                                Rectangle{
                                                    id: keyKUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyK
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "k"
                                                    }
                                                    MouseArea{
                                                        id: mAreaKUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyKUp.color= QControl.getPressedColor();
                                                            QControl.row2("K");}
                                                        onReleased: {keyKUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "L" 10
                                                Rectangle{
                                                    id: keyLUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r2KeyL
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "l"
                                                    }
                                                    MouseArea{
                                                        id: mAreaLUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyLUp.color= QControl.getPressedColor();
                                                            QControl.row2("L");}
                                                        onReleased: {keyLUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds ñ
                                                Rectangle{
                                                    id: keyñUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonXSpanish()
                                                    height: QControl.getButtonY()
                                                    visible: QControl.getSpanishMode()
                                                    Text{
                                                        id: r2Keyñ
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "ñ"
                                                    }
                                                    MouseArea{
                                                        id: mAreañUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyñUp.color= QControl.getPressedColor();
                                                            QControl.row2("ñ");
                                                        }
                                                        onReleased: {keyñUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                            }

                                        }
                                        //row3
                                        Rectangle{
                                            border.color: "lightslategray"
                                            border.width: 2
                                            width: QControl.getX()
                                            height: (QControl.getButtonY()+2)
                                            color: "lightslategray"
                                            //row3 grid
                                            Grid{
                                                id: row3
                                                columns: 10
                                                spacing: QControl.getButtonSpacing()
                                                rowSpacing: 10
                                                //space between keys 3
                                                Rectangle{
                                                    id: r3space1
                                                    color: QControl.getBackColor()
                                                    width: 2
                                                    height: 64
                                                }
                                                //holds the key "Shift" 2
                                                Rectangle{
                                                    id: keyShift
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getShiftDelSizeX()
                                                    height: QControl.getShiftDelSizeY()
                                                    Text {
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        font.capitalization: Font.Capitalize
                                                        text: "shift"
                                                    }
                                                    MouseArea{
                                                        id: mAreaShift
                                                        anchors.fill: parent
                                                        onClicked: {
                                                            //Calls QwertyControl function to handle shift
                                                            QControl.shift(1)
                                                        }
                                                    }
                                                }
                                                //holds the key "Z" 3
                                                Rectangle{
                                                    id: keyZUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r3KeyZ
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "z"
                                                    }
                                                    MouseArea{
                                                        id: mAreaZUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyZUp.color= QControl.getPressedColor();
                                                            QControl.row3("Z");}
                                                        onReleased: {keyZUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "X" 4
                                                Rectangle{
                                                    id: keyXUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r3KeyX
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "x"
                                                    }
                                                    MouseArea{
                                                        id: mAreaXUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyXUp.color= QControl.getPressedColor();
                                                            QControl.row3("X");}
                                                        onReleased: {keyXUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "C" 5
                                                Rectangle{
                                                    id: keyCUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r3KeyC
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "c"
                                                    }
                                                    MouseArea{
                                                        id: mAreaCUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyCUp.color= QControl.getPressedColor();
                                                            QControl.row3("C");}
                                                        onReleased: {keyCUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "V" 6
                                                Rectangle{
                                                    id: keyVUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r3KeyV
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "v"
                                                    }
                                                    MouseArea{
                                                        id: mAreaVUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyVUp.color= QControl.getPressedColor();
                                                            QControl.row3("V");}
                                                        onReleased: {keyVUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "B" 7
                                                Rectangle{
                                                    id: keyBUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r3KeyB
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "b"
                                                    }
                                                    MouseArea{
                                                        id: mAreaBUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyBUp.color= QControl.getPressedColor();
                                                            QControl.row3("B");}
                                                        onReleased: {keyBUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "N" 8
                                                Rectangle{
                                                    id: keyNUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r3KeyN
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "n"
                                                    }
                                                    MouseArea{
                                                        id: mAreaNUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyNUp.color= QControl.getPressedColor();
                                                            QControl.row3("N");}
                                                        onReleased: {keyNUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "M" 9
                                                Rectangle{
                                                    id: keyMUp
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getButtonX()
                                                    height: QControl.getButtonY()
                                                    Text {
                                                        id: r3KeyM
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        text: "m"
                                                    }
                                                    MouseArea{
                                                        id: mAreaMUp
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyMUp.color= QControl.getPressedColor();
                                                            QControl.row3("M");}
                                                        onReleased: {keyMUp.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "Delete" upper case 10
                                                Rectangle{
                                                    id: keyDelete
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getShiftDelSizeX()
                                                    height: QControl.getShiftDelSizeY()
                                                    Text {
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        font.capitalization: Font.Capitalize
                                                        text: "<x"
                                                    }
                                                    MouseArea{
                                                        id: mAreaDelete
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keyDelete.color= QControl.getPressedColor();
                                                            QControl.deleteChar(qwerty_input.text);}
                                                        onReleased: {keyDelete.color= QControl.getButtonColor();}
                                                    }

                                                }

                                            }

                                        }
                                        //row4
                                        Rectangle{
                                            border.color: "lightslategray"
                                            border.width: 2
                                            width: QControl.getX()
                                            height: (QControl.getButtonY()+2)
                                            color: "lightslategray"
                                            //row4 grid
                                            Grid{
                                                id: row4
                                                columns: 5
                                                spacing: QControl.getButtonSpacing()
                                                //space between keys 4
                                                Rectangle{
                                                    id: r4space1
                                                    color: QControl.getBackColor()
                                                    width: 1
                                                    height: 50
                                                }
                                                //holds the key "Symbol"
                                                Rectangle{
                                                    id: keyNumbers1
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getNumbSizeX()
                                                    height: QControl.getNumbSizeY()
                                                    Text {
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        font.capitalization: Font.Capitalize
                                                        text: "123&"
                                                    }
                                                    MouseArea{
                                                        id: mAreaSymbol
                                                        anchors.fill: parent
                                                        onClicked: {
                                                            //Calls QwertyControl function to take Input
                                                            QControl.symbol(1)
                                                        }
                                                    }
                                                }
                                                //holds the key "Caps" for upper case letters (locked)
                                                Rectangle{
                                                    id: caps1
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getCapSizeX()
                                                    height: QControl.getCapSizeY()
                                                    Text {
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        font.capitalization: Font.Capitalize
                                                        text: "Cap"
                                                    }
                                                    MouseArea{
                                                        id: caps1a
                                                        anchors.fill: parent
                                                        onClicked: {
                                                            //Calls QwertyControl function to take Input
                                                            QControl.caps(1)
                                                        }
                                                    }
                                                }
                                                //holds the key "Space Bar"
                                                Rectangle{
                                                    id: keySpace1
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getSpaceBarSizeX()
                                                    height: QControl.getSpaceBarSizeY()
                                                    Text {
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        font.capitalization: Font.Capitalize
                                                        text: "space"
                                                    }
                                                    MouseArea{
                                                        id: keySpace1a
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            keySpace1.color= QControl.getPressedColor();
                                                            QControl.space();}
                                                        onReleased: {keySpace1.color= QControl.getButtonColor();}
                                                    }
                                                }
                                                //holds the key "Enter"
                                                Rectangle{
                                                    id: keyEnter1
                                                    color: QControl.getButtonColor()
                                                    width: QControl.getEnterSizeX()
                                                    height: QControl.getEnterSizeY()
                                                    Text {
                                                        anchors.centerIn: parent
                                                        font.family: "Calibri"
                                                        font.pointSize: QControl.getButtonTextSize()
                                                        font.capitalization: Font.Capitalize
                                                        text: "enter"
                                                    }
                                                    MouseArea{
                                                        id: keyEnter1a
                                                        anchors.fill: parent
                                                        onPressed: {
                                                            //keyEnter1.color= QControl.getPressedColor();
                                                            //Calls QwertyControl function to take Input
                                                            QControl.setString(qwerty_input.text);
                                                            //clear input box
                                                            QControl.clearInputBox();
                                                            console.log("String in qwerty: "+ QControl.getEntry());
                                                            ShoppCont.addToList(QControl.getEntry(), ShoppCont.getCurrList());
                                                            if(ShoppCont.getCurrList() ===1){
                                                                shoppingListMainActCont1Text.text= ShoppCont.getShoppList();
                                                            }else if(ShoppCont.getCurrList() ===2){
                                                                shoppingListMainActCont2Text.text= ShoppCont.getReqList();
                                                            }else if(ShoppCont.getCurrList() ===3){
                                                                shoppingListMainActCont3Text.text= ShoppCont.getNeedList();
                                                            }



                                                        }
                                                        onReleased: {keyEnter1.color= QControl.getButtonColor();}
                                                    }
                                                }
                                            }//end row4
                                        }

                                    }//end main qwerty grid

                                }//end main qwerty Panel (holds grids)

                            }//end below Flick2

                        }//end main action grid
                    }//end main action container
                }//end main content grid
            }//end Main Content area (1920x656)


