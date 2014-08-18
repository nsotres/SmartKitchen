/*
  Author: Mingwei Li
*/

import QtQuick 2.0

import "js/main.js" as Script
import "js/ScreenSaverController.js" as SSaverControl
import "js/fridgeView.js" as Fridge
import "js/emergency.js" as Script2



/** BETA FINAL **/

Flickable {
    id: flickableMainPanel
    width: 800
    height: 600
    visible: true

    contentHeight: 1080
    contentWidth: 1920

    // the boundry of where to put the preview
    property int desTri1X : detailView.x + detailView.width / 3;
    property int  desTri2X : detailView.x + detailView.width / 3 * 2;
    property int  desLeftBoundX : detailView.x;
    property int  desRightBoundX : detailView.x + detailView.width;
    property int  desUpperBoundY : detailView.y;
    property int  desLowerBoundY : detailView.y + detailView.height;



    //ScreenSaver Panel
    Rectangle {
        id: screenSaverFelix
        width: 1920
        height: 1080
        border.width: 0
        border.color: "black"
        visible: true
        //main grid
        Grid{
            id: mainWinGrid
            columns: 1
            spacing: 0
            //top bar
            Rectangle{
                id: topBar1
                width: 1920
                height: 200
                //border.color: "green"
                //border.width: 2
                visible: SSaverControl.getMainVis()
                //Emergency Panel button
                Rectangle{
                    width: SSaverControl.getFridgeX()//200
                    height: 198
                    border.color: "black"
                    border.width: 4
                    //color: "green"
                    Text{
                        anchors.centerIn: parent
                        text: "emergency"
                    }
                    Image{
                        id: emergencyIcon
                        anchors.centerIn: parent
                        source: "images/ScreenSaver/EmergencyIcon.jpg"
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            //hide screenSaver and fridge
                            mainContArea.visible= false;
                            mainContAreaFridge.visible = false;
                            //show emergency panel
                            mainContAreaEmergency.visible= true;
                        }
                    }
                }

                // the clock component which is an independent QML file, you can just put it in your own
                // QML if you need to do this(like screen saver)
                Clock {
                    id: clock2
                    x: 576
                    y: 3

                    width: 768
                    height: 156
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                // the same as Clock component
                WeatherNow {
                    id: weathernow2
                    x: 245
                    y: 3

                    width: 331
                    height: 156
                }

                // the same as Clock component
                WeatherLater {
                    id: weatherlater2
                    x: 1344
                    y: 3

                    width: 331
                    height: 156
                }



            }//end top bar Rectangle
            //Pic Panel Full Screen (1920x868)
            Rectangle{
                id: picPanelFullScreenWindow
                border.width: 2
                border.color: "black"
                color: "black"
                width: 1920
                height: 1080
                visible: SSaverControl.getOv1Vis()
                Grid{
                    columns:1
                    spacing: 0
                    rowSpacing: 0
                    anchors.centerIn: parent
                    //Minimize button
                    Rectangle{
                        id: picPanelFullScreenMinButton
                        width: 1000
                        height: 100
                        border.width: 2
                        border.color: "black"
                        color: SSaverControl.getStartBttnColor()
                        //anchors.centerIn: parent
                        visible: SSaverControl.getOv1Vis()
                        Image {
                            id: picPanelFullScreenMinBttnImg
                            anchors.centerIn: parent
                            height: 96
                            width: 100
                            source: SSaverControl.getMinButton()
                        }
                        MouseArea{
                            id: picPanelFullScreenmArea
                            anchors.fill: parent
                            onClicked: {
                                //make fullscreen
                                SSaverControl.resetVis()
                            }
                        }
                    }
                    //Pic and controls container
                    Rectangle{
                        id: picPanelFullScreenArea
                        //anchors.centerIn: //picPanelFullScreenWindow
                        border.width: 2
                        border.color: "black"
                        color: "black"
                        width: 1000
                        height: 900
                        visible: SSaverControl.getOv1Vis()
                        Grid{
                            columns: 3
                            spacing: 0
                            rowSpacing: 0
                            //back button
                            Rectangle{
                                id: picPanelBackButton
                                border.width: 2
                                border.color: "black"
                                color: SSaverControl.getStartBttnColor()
                                width: 100
                                height: 900
                                Image {
                                    id: picPanelFullScreenBackBttnImg
                                    anchors.centerIn: parent
                                    height: 100
                                    width: 96
                                    source: SSaverControl.getBackButton()
                                }
                                MouseArea{
                                    anchors.fill: parent
                                    onPressed:{
                                        picPanelBackButton.color= "#FFFA9E";
                                        picPanelFullScreenBackBttnImg.source = SSaverControl.getBackClicked();
                                        SSaverControl.getSlideShowFull1(-1);
                                    }
                                    onReleased:{
                                        picPanelBackButton.color= SSaverControl.getStartBttnColor();
                                        picPanelFullScreenBackBttnImg.source = SSaverControl.getBackButton();
                                    }
                                }
                            }
                            //picture panel 1
                            Rectangle{
                                id: picPanel1FullscreenAreaImg
                                border.width: 2
                                border.color: "black"
                                color: "white"
                                width: 800
                                height: 900
                                Text{
                                    anchors.centerIn: parent
                                    text: "panel1"
                                }
                                Rectangle{
                                    id: holderPanelFull1
                                    anchors.centerIn: parent
                                    width: 800
                                    height: 900
                                    Image {
                                        id: leftPicPanelFullImg
                                        x: 0
                                        y: 0
                                        anchors.fill: parent
                                        anchors.centerIn: parent
                                        height: 96
                                        anchors.verticalCenterOffset: 0
                                        anchors.horizontalCenterOffset: 0
                                        anchors.rightMargin: 0
                                        anchors.bottomMargin: 0
                                        anchors.leftMargin: 0
                                        anchors.topMargin: 0
                                        width: 100
                                        source: "images/Simpsons/Bart1.jpg"
                                    }
                                }
                            }
                            //picture panel 2
                            Rectangle{
                                id: picPanel2FullscreenAreaImg
                                border.width: 2
                                border.color: "black"
                                color: "white"
                                width: 800
                                height: 900
                                Text{
                                    anchors.centerIn: parent
                                    text: "panel2"
                                }
                                Rectangle{
                                    id: holderPanelFull2
                                    anchors.centerIn: parent
                                    width: 800
                                    height: 900
                                    Image {
                                        id: centerPicPanelFullImg
                                        x: 0
                                        y: 0
                                        anchors.fill: parent
                                        anchors.centerIn: parent
                                        height: 96
                                        anchors.verticalCenterOffset: 0
                                        anchors.horizontalCenterOffset: 0
                                        anchors.rightMargin: 0
                                        anchors.bottomMargin: 0
                                        anchors.leftMargin: 0
                                        anchors.topMargin: 0
                                        width: 100
                                        source: "images/Simpsons/Family1.jpg"
                                    }
                                }
                            }
                            //picture panel 3
                            Rectangle{
                                id: picPanel3FullscreenAreaImg
                                border.width: 2
                                border.color: "black"
                                color: "white"
                                width: 800
                                height: 900
                                Text{
                                    anchors.centerIn: parent
                                    text: "panel3"
                                }
                                Rectangle{
                                    id: holderPanelFull3
                                    anchors.centerIn: parent
                                    width: 800
                                    height: 900
                                    Image {
                                        id: rightPicPanelFullImg
                                        x: 0
                                        y: 0
                                        anchors.fill: parent
                                        anchors.centerIn: parent
                                        height: 96
                                        anchors.verticalCenterOffset: 0
                                        anchors.horizontalCenterOffset: 0
                                        anchors.rightMargin: 0
                                        anchors.bottomMargin: 0
                                        anchors.leftMargin: 0
                                        anchors.topMargin: 0
                                        width: 100
                                        source: "images/Simpsons/Lisa1.jpg"
                                    }
                                }
                            }

                            //next button
                            Rectangle{
                                id: picPanelNextButton
                                border.width: 2
                                border.color: "black"
                                color: SSaverControl.getStartBttnColor()
                                width: 100
                                height: 900
                                Image {
                                    id: picPanelFullScreenNextBttnImg
                                    anchors.centerIn: parent
                                    height: 100
                                    width: 96
                                    source: SSaverControl.getNextButton()
                                }
                                MouseArea{
                                    anchors.fill: parent
                                    onPressed:{
                                        picPanelNextButton.color= "#FFFA9E";
                                        picPanelFullScreenNextBttnImg.source = SSaverControl.getNextClicked();
                                        SSaverControl.getSlideShowFull1(1);
                                    }
                                    onReleased:{
                                        picPanelNextButton.color= SSaverControl.getStartBttnColor();
                                        picPanelFullScreenNextBttnImg.source = SSaverControl.getNextButton();
                                    }
                                }
                            }
                        }

                    }


                }//end panel pic Grid


            }//end pic panel 1 window area
            //Main Content area- Screen saver (1920x656)
            Rectangle{
                id: mainContArea
                color: "white"
                width: SSaverControl.getMainContX()
                height: SSaverControl.getMainContY()
                visible: SSaverControl.getMainVis()
                //Middle area grid
                Grid{
                    id: midContGrid
                    columns: 4
                    spacing: 5
                    rowSpacing: 0
                    //left buffer
                    Rectangle{
                        id: midBarBuffer1
                        color: SSaverControl.getBuffColor()
                        width: SSaverControl.getBuff1X()
                        height: SSaverControl.getBuff1Y()
                    }
                    //left picture panel
                    Rectangle{
                        id: picPanel1
                        width: SSaverControl.getPicPanelX()
                        height: SSaverControl.getPicPanelY()
                        border.color: SSaverControl.getPicPanelColor()
                        border.width: SSaverControl.getPicPanelBord()
                        Text{
                            anchors.centerIn: parent
                            text: "pic1"
                        }
                        MouseArea{
                            id: picPanel1mArea
                            anchors.fill: parent
                            onClicked: {
                                //make fullscreen
                                SSaverControl.fullscreen1();
                            }
                        }
                        Rectangle{
                            id: holderPanel1
                            anchors.centerIn: parent
                            width: (SSaverControl.getPicPanelX()- 4)
                            height: (SSaverControl.getPicPanelY()- 4)
                            Image {
                                id: leftPicPanelImg
                                x: 0
                                y: 0
                                anchors.fill: parent
                                anchors.centerIn: parent
                                height: 96
                                anchors.verticalCenterOffset: 0
                                anchors.horizontalCenterOffset: 0
                                anchors.rightMargin: 0
                                anchors.bottomMargin: 0
                                anchors.leftMargin: 0
                                anchors.topMargin: 0
                                width: 100
                                source: "images/Simpsons/Bart1.jpg"
                            }
                        }
                    }
                    //center picture panel
                    Rectangle{
                        id: picPanel2
                        width: SSaverControl.getPicPanelX()
                        height: SSaverControl.getPicPanelY()
                        border.color: SSaverControl.getPicPanelColor()
                        border.width: SSaverControl.getPicPanelBord()
                        Text{
                            anchors.centerIn: parent
                            text: "pic2"
                        }
                        MouseArea{
                            id: picPanel2mArea
                            anchors.fill: parent
                            onClicked: {
                                //make fullscreen
                                SSaverControl.fullscreen2();
                            }
                        }
                        Rectangle{
                            id: holderPanel2
                            anchors.centerIn: parent
                            width: (SSaverControl.getPicPanelX()- 4)
                            height: (SSaverControl.getPicPanelY()- 4)
                            Image {
                                id: centerPicPanelImg
                                x: 0
                                y: 0
                                anchors.fill: parent
                                anchors.centerIn: parent
                                height: 96
                                anchors.verticalCenterOffset: 0
                                anchors.horizontalCenterOffset: 0
                                anchors.rightMargin: 0
                                anchors.bottomMargin: 0
                                anchors.leftMargin: 0
                                anchors.topMargin: 0
                                width: 100
                                source: "images/Simpsons/Family1.jpg"
                            }
                        }


                    }
                    //right picture panel
                    Rectangle{
                        id: picPanel3
                        width: SSaverControl.getPicPanelX()
                        height: SSaverControl.getPicPanelY()
                        border.color: SSaverControl.getPicPanelColor()
                        border.width: SSaverControl.getPicPanelBord()
                        Text{
                            anchors.centerIn: parent
                            text: "pic3"
                        }
                        MouseArea{
                            id: picPanel3mArea
                            anchors.fill: parent
                            onClicked: {
                                //make fullscreen
                                SSaverControl.fullscreen3();
                            }
                        }
                        Rectangle{
                            id: holderPanel3
                            anchors.centerIn: parent
                            width: (SSaverControl.getPicPanelX()- 4)
                            height: (SSaverControl.getPicPanelY()- 4)
                            Image {
                                id: rightPicPanelImg
                                x: 0
                                y: 0
                                anchors.fill: parent
                                anchors.centerIn: parent
                                height: 96
                                anchors.verticalCenterOffset: 0
                                anchors.horizontalCenterOffset: 0
                                anchors.rightMargin: 0
                                anchors.bottomMargin: 0
                                anchors.leftMargin: 0
                                anchors.topMargin: 0
                                width: 100
                                source: "images/Simpsons/Lisa1.jpg"
                            }
                        }
                    }

                    //row2 (Middle)
                    //left buffer 2
                    Rectangle{
                        color: SSaverControl.getBuffColor()
                        width: SSaverControl.getBuff2X()
                        height: SSaverControl.getBuff2Y()
                    }
                    //Pic control grid 1
                    Rectangle{
                        color: SSaverControl.getCtrlBorderColor()
                        width: SSaverControl.getPicPanelX()
                        height: (SSaverControl.getPicCtrlBttnY()+2)
                        Grid{
                            id: picCntrl1
                            columns: 6
                            spacing: 2
                            rowSpacing: 0
                            //buffer1
                            Rectangle{
                                id: ctrlBuffer1
                                width: 2
                                height: SSaverControl.getPicCtrlBttnY()
                                color: SSaverControl.getCtrlBorderColor()
                            }

                            //ctrl1 back button
                            Rectangle{
                                id: ctrl1Back
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "<"
                                }
                                MouseArea{
                                    id: ctrl1BackmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl1BackBttn.source = SSaverControl.getBackClicked();
                                        SSaverControl.getSlideShow1(-1);
                                    }
                                    onReleased:{
                                        ctrl1BackBttn.source = SSaverControl.getBackButton();
                                    }
                                }
                                Image {
                                    id: ctrl1BackBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getBackButton()
                                }
                            }
                            //ctrl1 delete button
                            Rectangle{
                                id: ctrl1Del
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "-"
                                }
                                MouseArea{
                                    id: ctrl1DelmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl1DeleteBttn.source = SSaverControl.getDelClicked();
                                        leftPicPanelImg.source= "images/ScreenSaver/ImageDelete.jpg";
                                    }
                                    onReleased:{
                                        ctrl1DeleteBttn.source = SSaverControl.getDelButton();
                                    }
                                }
                                Image {
                                    id: ctrl1DeleteBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getDelButton()
                                }
                            }
                            //ctrl1 maximize button
                            Rectangle{
                                id: ctrl1Max
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "X"
                                }
                                MouseArea{
                                    id: ctrl1MaxmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        //ctrl1MaxBttn.source = SSaverControl.getMaxClicked();
                                        //make fullscreen
                                        SSaverControl.fullscreen1();
                                    }
                                    onReleased:{
                                        //ctrl1MaxBttn.source = SSaverControl.getMaxButton();
                                    }

                                }
                                Image {
                                    id: ctrl1MaxBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getMaxButton()
                                }
                            }
                            //ctrl1 add pic button
                            Rectangle{
                                id: ctrl1Add
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "+"
                                }
                                MouseArea{
                                    id: ctrl1AddmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl1AddBttn.source= SSaverControl.getAddClicked();
                                        leftPicPanelImg.source= "images/ScreenSaver/ImageAdd.jpg";
                                    }
                                    onReleased: {
                                        ctrl1AddBttn.source= SSaverControl.getAddButton()
                                    }
                                }
                                Image {
                                    id: ctrl1AddBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getAddButton()
                                }
                            }
                            //ctrl1 next pic button
                            Rectangle{
                                id: ctrl1Next
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: ">"
                                }
                                MouseArea{
                                    id: ctrl1NextmArea
                                    anchors.fill: parent
                                    onPressed: {
                                        ctrl1NextBttn.source = SSaverControl.getNextClicked();
                                        SSaverControl.getSlideShow1(1);
                                    }
                                    onReleased: {
                                        ctrl1NextBttn.source = SSaverControl.getNextButton()
                                    }
                                }
                                Image {
                                    id: ctrl1NextBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getNextButton()
                                }
                            }
                        }//end pic control grid1

                    }
                    //Pic control grid 2
                    Rectangle{
                        color: SSaverControl.getCtrlBorderColor()
                        width: SSaverControl.getPicPanelX()
                        height: (SSaverControl.getPicCtrlBttnY()+2)
                        Grid{
                            id: picCntrl2
                            columns: 6
                            spacing: 2
                            rowSpacing: 0
                            //buffer2
                            Rectangle{
                                id: ctrlBuffer2
                                width: 2
                                height: SSaverControl.getPicCtrlBttnY()
                                color: SSaverControl.getCtrlBorderColor()
                            }
                            //ctrl2 back button
                            Rectangle{
                                id: ctrl2Back
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "<"
                                }
                                MouseArea{
                                    id: ctrl2BackmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl2BackBttn.source = SSaverControl.getBackClicked();
                                        SSaverControl.getSlideShow2(-1);
                                    }
                                    onReleased:{
                                        ctrl2BackBttn.source = SSaverControl.getBackButton();
                                    }
                                }
                                Image {
                                    id: ctrl2BackBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getBackButton()
                                }
                            }
                            //ctrl2 delete button
                            Rectangle{
                                id: ctrl2Del
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "-"
                                }
                                MouseArea{
                                    id: ctrl2DelmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl2DeleteBttn.source = SSaverControl.getDelClicked();
                                        centerPicPanelImg.source= "images/ScreenSaver/ImageDelete.jpg";
                                    }
                                    onReleased:{
                                        ctrl2DeleteBttn.source = SSaverControl.getDelButton();
                                    }
                                }
                                Image {
                                    id: ctrl2DeleteBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getDelButton()
                                }
                            }
                            //ctrl2 maximize button
                            Rectangle{
                                id: ctrl2Max
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "X"
                                }
                                MouseArea{
                                    id: ctrl2MaxmArea
                                    anchors.fill: parent
                                    onClicked: {
                                        //make fullscreen
                                        SSaverControl.fullscreen2();
                                    }
                                }
                                Image {
                                    id: ctrl2MaxBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getMaxButton()
                                }
                            }
                            //ctrl2 add pic button
                            Rectangle{
                                id: ctrl2Add
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "+"
                                }
                                MouseArea{
                                    id: ctrl2AddmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl2AddBttn.source = SSaverControl.getAddClicked();
                                        centerPicPanelImg.source= "images/ScreenSaver/ImageAdd.jpg";
                                    }
                                    onReleased:{
                                        ctrl2AddBttn.source = SSaverControl.getAddButton();
                                    }
                                }
                                Image {
                                    id: ctrl2AddBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getAddButton()
                                }
                            }
                            //ctrl2 next pic button
                            Rectangle{
                                id: ctrl2Next
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: ">"
                                }
                                MouseArea{
                                    id: ctrl2NextmArea
                                    anchors.fill: parent
                                    onPressed: {
                                        SSaverControl.getSlideShow2(1);
                                        ctrl2NextBttn.source = SSaverControl.getNextClicked();
                                    }
                                    onReleased: {
                                        ctrl2NextBttn.source = SSaverControl.getNextButton();
                                    }
                                }
                                Image {
                                    id: ctrl2NextBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getNextButton()
                                }
                            }
                        }//end pic control grid2
                    }

                    //Pic control grid 3
                    Rectangle{
                        color: SSaverControl.getCtrlBorderColor()
                        width: SSaverControl.getPicPanelX()
                        height: (SSaverControl.getPicCtrlBttnY()+2)
                        Grid{
                            id: picCntrl3
                            columns: 6
                            spacing: 2
                            rowSpacing: 0
                            //buffer3
                            Rectangle{
                                id: ctrlBuffer3
                                width: 2
                                height: SSaverControl.getPicCtrlBttnY()
                                color: SSaverControl.getCtrlBorderColor()
                            }
                            //ctrl3 back button
                            Rectangle{
                                id: ctrl3Back
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "<"
                                }
                                MouseArea{
                                    id: ctrl3BackmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl3BackBttn.source = SSaverControl.getBackClicked();
                                        SSaverControl.getSlideShow3(-1);
                                    }
                                    onReleased:{
                                        ctrl3BackBttn.source = SSaverControl.getBackButton();
                                    }
                                }
                                Image {
                                    id: ctrl3BackBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getBackButton()
                                }
                            }
                            //ctrl3 delete button
                            Rectangle{
                                id: ctrl3Del
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "-"
                                }
                                MouseArea{
                                    id: ctrl3DelmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl3DelBttn.source = SSaverControl.getDelClicked();
                                        rightPicPanelImg.source= "images/ScreenSaver/ImageDelete.jpg";
                                    }
                                    onReleased:{
                                        ctrl3DelBttn.source = SSaverControl.getDelButton();
                                    }
                                }
                                Image {
                                    id: ctrl3DelBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getDelButton()
                                }
                            }
                            //ctrl3 maximize button
                            Rectangle{
                                id: ctrl3Max
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "X"
                                }
                                MouseArea{
                                    id: ctrl3MaxmArea
                                    anchors.fill: parent
                                    onClicked: {
                                        //make fullscreen
                                        SSaverControl.fullscreen3();
                                    }
                                }
                                Image {
                                    id: ctrl3MaxBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getMaxButton()
                                }
                            }
                            //ctrl3 add pic button
                            Rectangle{
                                id: ctrl3Add
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                Text{
                                    anchors.centerIn: parent
                                    text: "+"
                                }
                                MouseArea{
                                    id: ctrl3AddmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl3AddBttn.source = SSaverControl.getAddClicked();
                                        rightPicPanelImg.source= "images/ScreenSaver/ImageAdd.jpg";
                                    }
                                    onReleased:{
                                        ctrl3AddBttn.source = SSaverControl.getAddButton();
                                    }
                                }
                                Image {
                                    id: ctrl3AddBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getAddButton()
                                }
                            }
                            //ctrl3 next pic button
                            Rectangle{
                                id: ctrl3Next
                                width: SSaverControl.getPicCtrlBttnX()
                                height: SSaverControl.getPicCtrlBttnY()
                                border.width: SSaverControl.getCtrlBorderSize()
                                border.color: SSaverControl.getCtrlBorderColor()
                                Text{
                                    anchors.centerIn: parent
                                    text: ">"
                                }
                                MouseArea{
                                    id: ctrl3NextmArea
                                    anchors.fill: parent
                                    onPressed:{
                                        ctrl3NextBttn.source = SSaverControl.getNextClicked();
                                        SSaverControl.getSlideShow3(1);
                                    }
                                    onReleased:{
                                        ctrl3NextBttn.source = SSaverControl.getNextButton();
                                    }
                                }
                                Image {
                                    id: ctrl3NextBttn
                                    anchors.fill: parent
                                    source: SSaverControl.getNextButton()
                                }
                            }
                        }//end pic control grid3
                    }


                }//end middle area Grid
            }//end Mid Area Rectangle
            //Main Content area- Fridge (1920x656)
            Rectangle{
                id: mainContAreaFridge
                width: SSaverControl.getMainContX()
                height: SSaverControl.getMainContY()
                border.color: "black"
                border.width: 2
                color: "white"
                visible:false
                Grid{
                    columns: 2
                    spacing: 0
                    //buffer
                    Rectangle{
                        width: 300
                        height:656
                        //border.color: "black"
                        //border.width: 2
                        /*Text{
                            anchors.centerIn: parent
                            text:"fridge buffer"
                        }*/
                    }
                    //Rect holding actual Fridge Content
                    Rectangle{
                        width: 1820
                        height: 656
                        //border.color: "black"
                        //border.width: 2
                        Text{
                            anchors.centerIn: parent
                            text: "fridge content here"
                        }
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

                    }
                }


            }
            //Main Content area- Emergency (1920x656)
            Rectangle{
                id: mainContAreaEmergency
                width: SSaverControl.getMainContX()
                height: SSaverControl.getMainContY()
                //border.color: "black"
                //border.width: 2
                color: "white"
                visible:false
                Grid{
                    columns: 2
                    spacing: 0
                    //buffer
                    Rectangle{
                        width: 300
                        height:656
                        //border.color: "black"
                        //border.width: 2
                        /*Text{
                            anchors.centerIn: parent
                            text:"emergency buffer"
                        }*/
                    }
                    //Rect holding actual Emergency Content
                    Rectangle{
                        width: 1820
                        height: 656
                        //border.color: "black"
                        //border.width: 2
                        /*Text{
                            anchors.centerIn: parent
                            text: "emergency content here"
                        }*/
                        Image{
                            source: "images/ScreenSaver/EmergencyPanelSplashPage.jpg"
                        }




                    }//end rectangle holding actual Emergency content
                }//end emergency grid
            }//end Main Content area- Emergency (1920x656)

            //buffer between controls and start button
            Rectangle{
                width:2
                height: 2
                color: "white"
                visible: SSaverControl.getMainVis()
            }

            //row3 (Bottom)
            //Bottom area rectangle
            Rectangle{
                id: bottBarArea
                width: 1920
                height: 212
                visible: SSaverControl.getMainVis()
                //Bottom area Grid
                Grid{
                    id: bottBarGrid
                    columns: 3
                    spacing: 5
                    //left buffer 3
                    Rectangle{
                        color: SSaverControl.getBuffColor()
                        width: SSaverControl.getBuff3X()
                        height: SSaverControl.getBuff3Y()
                    }
                    //start button
                    Rectangle{
                        color: SSaverControl.getStartBttnColor()
                        width: SSaverControl.getStartX()
                        height: SSaverControl.getStartY()
                        border.color: "black"
                        border.width: 2
                        Text{
                            id: startBttnTxt
                            anchors.centerIn: parent
                            text: "Start"
                        }
                        Image {
                            id: startBttnImg
                            anchors.centerIn: parent
                            //sourceSize.height: 1500
                            //sourceSize.width: 800
                            //anchors.fill: parent
                            source: SSaverControl.getStartBttnIcon()
                        }
                        MouseArea{
                            anchors.fill: parent
                            onClicked:{
                                console.log("start clicked");
                                //set main panel visible
                                mainPanel.visible = true;
                                navigationBarAnchor.visible = true;
                                loginBarAnchor.visible = true;
                                //hide screen saver
                                screenSaverFelix.visible = false;

                            }
                        }
                    }
                    //Fridge button
                    Rectangle{
                        color: SSaverControl.getFridgeBttnColor()
                        border.color: "black"
                        border.width: 6
                        width: SSaverControl.getFridgeX()
                        height: SSaverControl.getFridgeY()
                        Text{
                            id: fridgeBttnTxt
                            anchors.centerIn: parent
                            text: "fridge"
                        }
                        MouseArea{
                            id: fridgeBttnmArea
                            anchors.fill: parent
                            onPressed: {
                                //show click
                                fridgeBttnImg.source= "images/ScreenSaver/FridgeIcon2.jpg"
                                //hide screenSaver and emergency panel
                                mainContArea.visible= false;
                                mainContAreaEmergency.visible= false;
                                //show fridge content
                                mainContAreaFridge.visible = true;
                            }
                            onReleased: {
                                fridgeBttnImg.source= "images/ScreenSaver/FridgeIcon.jpg"
                            }
                        }
                        Image {
                            id: fridgeBttnImg
                            anchors.centerIn: parent
                            //sourceSize.height: 1500
                            //sourceSize.width: 800
                            //anchors.fill: parent
                            source: SSaverControl.getFridgeBttnIcon()
                        }
                    }
                }//end bottom area grid

            }//end bottom area rectangle


        }//end main window Grid

    }//end main window Rectangle


    Rectangle {
        id: mainPanel
        width: 1920
        height: 1080

        visible : false;

        Component.onCompleted: {
            previewOutline.state = "hidden";
            preview1.state = "origin";
            preview2.state = "origin";
            preview3.state = "origin";

            Script.showDetail("center", "Newsfeed/rssnews");
        }

        Rectangle {
            id: detailView
            x: 345
            y: 185
            width: 1234
            height: 660
            color: "#ffffff"
            border.width: 4
            border.color: "#D2F4CE"

            clip: true
        }

        // three preview rectangles, now it's just three pics
        Rectangle {
            id: preview1
            x: 345
            y: 872
            width: 264
            height: 164
            color: "#ffffff"
            border.width: 4
            border.color: "#D2F4CE"

            states: [
                State {
                    name: "origin"
                    PropertyChanges {
                        target: preview1
                        x: 345
                    }
                    PropertyChanges {
                        target: preview1
                        y: 872
                    }
                }

            ]

            transitions: [
                Transition {
                    NumberAnimation{
                        target: preview1
                        easing.type: Easing.InQuad
                        properties: "x, y"
                        duration: 500
                    }
                }

            ]

            Image {
                source: "images/MusicPlayer-preview.jpg"
                anchors.fill: parent
                fillMode: Image.Stretch
            }

            MouseArea {
                id: preview1MouseArea
                anchors.fill: parent

                property bool isPressed: false
                property int centerX : preview1.x + preview1.width / 2
                property int centerY : preview1.y + preview1.height / 2

                drag {
                    target: preview1
                    axis: Drag.XandYAxis
                }

                onPressed: {
                    isPressed = true;
                }

                // dragging the previews and the corresponding logic
                onPositionChanged: {
                    if(isPressed) {
                        if(centerX > desLeftBoundX && centerX < desTri1X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("left");
                        }
                        else if(centerX > desTri1X && centerX < desTri2X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("center");
                        }
                        else if(centerX > desTri2X && centerX < desRightBoundX && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("right");
                        }
                        else {
                            previewOutline.state = "hidden";
                        }
                    }
                }

                onReleased: {
                    isPressed = false;
                    preview1.state = "fakeState";
                    preview1.state = "origin";
                    previewOutline.state = "hidden";

                    if(centerX > desLeftBoundX && centerX < desTri1X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("left", "MusicPlayer");
                    }
                    else if(centerX > desTri1X && centerX < desTri2X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("center", "MusicPlayer");
                    }
                    else if(centerX > desTri2X && centerX < desRightBoundX && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("right", "MusicPlayer");
                    }
                }
            }
        }

        Rectangle {
            id: preview2
            x: 830
            y: 872
            width: 264
            height: 164
            color: "#ffffff"
            border.width: 4
            border.color: "#D2F4CE"
            states: [
                State {
                    name: "origin"
                    PropertyChanges {
                        target: preview2
                        x: 830
                    }
                    PropertyChanges {
                        target: preview2
                        y: 872
                    }
                }

            ]

            transitions: [
                Transition {
                    NumberAnimation{
                        target: preview2
                        easing.type: Easing.InQuad
                        properties: "x, y"
                        duration: 500
                    }
                }

            ]

            Image {
                source: "images/MealPlanner-preview.jpg"
                anchors.fill: parent
                fillMode: Image.Stretch
            }


            MouseArea {
                id: preview2MouseArea
                anchors.fill: parent

                property bool isPressed: false
                property int centerX : preview2.x + preview2.width / 2
                property int centerY : preview2.y + preview2.height / 2

                drag {
                    target: preview2
                    axis: Drag.XandYAxis
                }

                onPressed: {
                    isPressed = true;
                }

                onPositionChanged: {
                    if(isPressed) {
                        if(centerX > desLeftBoundX && centerX < desTri1X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("left");
                        }
                        else if(centerX > desTri1X && centerX < desTri2X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("center");
                        }
                        else if(centerX > desTri2X && centerX < desRightBoundX && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("right");
                        }
                        else {
                            previewOutline.state = "hidden";
                        }
                    }
                }

                onReleased: {
                    isPressed = false;
                    preview2.state = "fakeState";
                    preview2.state = "origin";
                    previewOutline.state = "hidden";

                    if(centerX > desLeftBoundX && centerX < desTri1X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("left", "MealPlanner");
                    }
                    else if(centerX > desTri1X && centerX < desTri2X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("center", "MealPlanner");
                    }
                    else if(centerX > desTri2X && centerX < desRightBoundX && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("right", "MealPlanner");
                    }
                }
            }
        }

        Rectangle {
            id: preview3
            x: 1315
            y: 872
            width: 264
            height: 164
            color: "#ffffff"
            border.width: 2
            border.color: "#D2F4CE"
            states: [
                State {
                    name: "origin"
                    PropertyChanges {
                        target: preview3
                        x: 1315
                    }
                    PropertyChanges {
                        target: preview3
                        y: 872
                    }
                }

            ]

            transitions: [
                Transition {
                    NumberAnimation{
                        target: preview3
                        easing.type: Easing.InQuad
                        properties: "x, y"
                        duration: 500
                    }
                }

            ]

            Image {
                source: "images/News-preview.jpg"
                anchors.fill: parent
                fillMode: Image.Stretch
            }

            MouseArea {
                id: preview3MouseArea
                anchors.fill: parent

                property bool isPressed: false
                property int centerX : preview3.x + preview3.width / 2
                property int centerY : preview3.y + preview3.height / 2

                drag {
                    target: preview3
                    axis: Drag.XandYAxis
                }

                onPressed: {
                    isPressed = true;
                }

                onPositionChanged: {
                    if(isPressed) {
                        if(centerX > desLeftBoundX && centerX < desTri1X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("left");
                        }
                        else if(centerX > desTri1X && centerX < desTri2X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("center");
                        }
                        else if(centerX > desTri2X && centerX < desRightBoundX && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                            Script.showPreviewOutline("right");
                        }
                        else {
                            previewOutline.state = "hidden";
                        }
                    }
                }

                onReleased: {
                    isPressed = false;
                    preview3.state = "fakeState";
                    preview3.state = "origin";
                    previewOutline.state = "hidden";

                    if(centerX > desLeftBoundX && centerX < desTri1X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("left", "Newsfeed/rssnews");
                    }
                    else if(centerX > desTri1X && centerX < desTri2X && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("center", "Newsfeed/rssnews");
                    }
                    else if(centerX > desTri2X && centerX < desRightBoundX && centerY > desUpperBoundY && centerY < desLowerBoundY) {
                        Script.showDetail("right", "Newsfeed/rssnews");
                    }
                }
            }
        }

        //the outline of the detailview to indicate where the user can put the preview
        Image {
            id: previewOutline
            x: 0
            y: 0
            width: 0
            height: 0
            opacity: 0

            source: "images/outline.png"

            states: [
                State {
                    name: "shown"
                    PropertyChanges {
                        target: previewOutline
                        opacity: 0.8
                    }
                },
                State {
                    name: "hidden"
                    PropertyChanges {
                        target: previewOutline
                        opacity: 0.0
                    }
                }
            ]

            transitions: [
                Transition {
                    from: "shown, hidden"
                    to: "hidden, shown"

                    NumberAnimation {
                        target: previewOutline;
                        property: "opacity";
                        duration: 500;
                        easing.type: Easing.InQuad
                    }
                }

            ]
        }

        // the clock component which is an independent QML file, you can just put it in your own
        // QML if you need to do this(like screen saver)
        Clock {
            id: clock
            x: 576
            y: 3

            width: 768
            height: 156
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // the same as Clock component
        WeatherNow {
            id: weathernow
            x: 245
            y: 3

            width: 331
            height: 156
        }

        // the same as Clock component
        WeatherLater {
            id: weatherlater
            x: 1344
            y: 3

            width: 331
            height: 156
        }

        Image {
            id: emergencyImage
            x: 21
            y: 16
            width: 100
            height: 100
            source: "images/cross.png"

            MouseArea {
                id: emergencyImageMouseArea
                anchors.fill: parent

                onReleased: {
                    Script.showDetail("center", "EmergencyPanel");
                }
            }
        }

        Image {
            id: screenSaverImage
            x: 21
            y: 936
            width: 100
            height: 100
            source: "images/ScreenSaver.png"

            MouseArea {
                id: screenSaverImageMouseArea
                anchors.fill: parent
                onReleased: {
                    mainPanel.visible = false;
                    navigationBarAnchor.visible = false;
                    loginBarAnchor.visible = false;
                    screenSaverFelix.visible = true;
                }
            }
        }
    }

    // the container to put the NavigationBar
    Item {
        id: navigationBarAnchor
        x: 1669
        y: 185
        width: 250
        height: 740
        visible: false
        NavigationBar {id: nb}
    }

    // the container to put the loginBar
    Rectangle {
        border.width: 2
        border.color: "#000000"
        id: loginBarAnchor
        x: 1655
        y: 920
        height: 144
        width: lb.width
        visible: false
        LoginBar {id: lb}
    }


}
