
/** BETA FINAL **/

//object holding colors
var ScreenSvr = {

    //top
    topBarColor: "blue",
    middleBarColor: "orange",
    controlButtonColor: "lightBlue",
    startButtonColor: "plum",

    //SIZE Variables
    mainContentX: 1918,
    mainContentY: 656,
    //buffer on left of elements
    buffer1X: 125,  //picture panels buffer
    buffer1Y: 576,
    buffer2X: 125,  //picture panel controls buffer
    buffer2Y: 80,
    buffer3X: 125,   //start button buffer
    buffer3Y: 212,
    //picture panels
    picPanelX: 550,
    picPanelY: 576, //576
    picPanelBord: 3,
    //control buttons
    picCtrlBttnX: 107, //108
    picCtrlBttnY: 78,   //78
    //start button
    startButtonX: 1585,
    startButtonY: 212,
    //fridge button
    fridgeButtonX: 200,
    fridgeButtonY: 212,

    //COLOR Variables
    bufferColor: "white",
    picPanelColor: "black",
    startBttnColor: "#A5E789",
    fridgeBttnColor: "white",
    ctrlBordColor: "black",
    yellowBttnColor: "#FFFA9E",

    //IMAGE Variables
    backButton: "images/ScreenSaver/BackButton1.jpg",
    backClick: "images/ScreenSaver/BackButton2.jpg",
    delButton: "images/ScreenSaver/DelButton1.jpg",
    delClick: "images/ScreenSaver/DelButton2.jpg",
    maxButton: "images/ScreenSaver/ExpandButton1.jpg",
    maxClick: "images/ScreenSaver/ExpandButton2.jpg",
    minButton: "images/ScreenSaver/MinButton1.jpg",
    minClick: "images/ScreenSaver/MinButton2.jpg",
    addButton: "images/ScreenSaver/AddButton1.jpg",
    addClick: "images/ScreenSaver/AddButton2.jpg",
    nextButton:"images/ScreenSaver/NextButton1.jpg",
    nextClick: "images/ScreenSaver/NextButton2.jpg",
    startButton: "images/ScreenSaver/TouchIconLg.jpg",
    startClick: "images/ScreenSaver/TouchIconLg2.jpg",
    fridgeButton: "images/ScreenSaver/FridgeIcon.jpg",
    fridgeClick: "images/ScreenSaver/FridgeIcon2.jpg",

    //Border Variables
    ctrlBordSize: 2,

    //Visible Variables
    mainVis: true,
    overlay1Vis: false,
    overlay2Vis: false,
    overlay3Vis: false,

    //other
    imageCtr1: 0,         //counter for displaying images
    imageCtr2: 0,
    imageCtr3: 0

}

//visible
function getMainVis(){
    return ScreenSvr.mainVis;
}
function getOv1Vis(){
    return ScreenSvr.overlay1Vis;
}
function getOv2Vis(){
    return ScreenSvr.overlay2Vis;
}
function getOv3Vis(){
    return ScreenSvr.overlay3Vis;
}
//size
function getMainContX(){
    return ScreenSvr.mainContentX;
}
function getMainContY(){
    return ScreenSvr.mainContentY;
}
function getBuff1X(){
    return ScreenSvr.buffer1X;
}
function getBuff1Y(){
    return ScreenSvr.buffer1Y;
}
function getBuff2X(){
    return ScreenSvr.buffer2X;
}
function getBuff2Y(){
    return ScreenSvr.buffer2Y;
}
function getBuff3X(){
    return ScreenSvr.buffer3X;
}
function getBuff3Y(){
    return ScreenSvr.buffer3Y;
}
function getPicPanelX(){
    return ScreenSvr.picPanelX;
}
function getPicPanelY(){
    return ScreenSvr.picPanelY;
}
function getPicPanelBord(){
    return ScreenSvr.picPanelBord;
}
function getPicCtrlBttnX(){
    return ScreenSvr.picCtrlBttnX;
}
function getPicCtrlBttnY(){
    return ScreenSvr.picCtrlBttnY;
}
function getStartX(){
    return ScreenSvr.startButtonX;
}
function getStartY(){
    return ScreenSvr.startButtonY;
}
function getFridgeX(){
    return ScreenSvr.fridgeButtonX;
}
function getFridgeY(){
    return ScreenSvr.fridgeButtonY;
}

//color
function getBuffColor(){
    return ScreenSvr.bufferColor;
}
function getPicPanelColor(){
    return ScreenSvr.picPanelColor;
}
function getStartBttnColor(){
    return ScreenSvr.startBttnColor;
}
function getFridgeBttnColor(){
    return ScreenSvr.fridgeBttnColor;
}
function getCtrlBorderColor(){
    return ScreenSvr.ctrlBordColor;
}

//images
function getBackButton(){
    return ScreenSvr.backButton;
}
function getBackClicked(){
    return ScreenSvr.backClick;
}
function getDelButton(){
    return ScreenSvr.delButton;
}
function getDelClicked(){
    return ScreenSvr.delClick;
}
function getMaxButton(){
    return ScreenSvr.maxButton;
}
function getMaxClicked(){
    return ScreenSvr.maxClick;
}
function getMinButton(){
    return ScreenSvr.minButton;
}
function getMinClicked(){
    return ScreenSvr.minClick;
}

function getAddButton(){
    return ScreenSvr.addButton;
}
function getAddClicked(){
    return ScreenSvr.addClick;
}
function getNextButton(){
    return ScreenSvr.nextButton;
}
function getNextClicked(){
    return ScreenSvr.nextClick;
}
function getFridgeBttnIcon(){
    return ScreenSvr.fridgeButton;
}
function getFridgeClicked(){
    return ScreenSvr.fridgeClick;
}
function getStartBttnIcon(){
    return ScreenSvr.startButton;
}
function getStartClicked(){
    return ScreenSvr.startClick;
}
function getSlideShow1(val){
    console.log("inside get Slide show");
    ScreenSvr.imageCtr1 +=val;
    console.log("counter: "+ ScreenSvr.imageCtr1);

    if(ScreenSvr.imageCtr1<0){
        ScreenSvr.imageCtr1 = 3
    }else if(ScreenSvr.imageCtr1>3){
        ScreenSvr.imageCtr1 = 0;
    }

    if(ScreenSvr.imageCtr1== 0){
        leftPicPanelImg.source = "../images/Simpsons/Family1.jpg"
    }else if(ScreenSvr.imageCtr1===1){
        leftPicPanelImg.source = "../images/Simpsons/Lisa1.jpg"
    }else if(ScreenSvr.imageCtr1===2){
        leftPicPanelImg.source = "../images/Simpsons/Family2.jpg"
    }else if(ScreenSvr.imageCtr1== 3){
        leftPicPanelImg.source = "../images/Simpsons/Bart1.jpg"
    }
}
function getSlideShowFull1(val){

    console.log("counter: "+ ScreenSvr.imageCtr1);

    if(ScreenSvr.imageCtr1<0){
        ScreenSvr.imageCtr1 = 3
    }else if(ScreenSvr.imageCtr1>3){
        ScreenSvr.imageCtr1 = 0;
    }

    if(ScreenSvr.imageCtr1== 0){
        leftPicPanelFullImg.source = "../images/Simpsons/Family1.jpg";
        centerPicPanelFullImg.source = "../images/Simpsons/Family1.jpg";
        rightPicPanelFullImg.source = "../images/Simpsons/Family1.jpg";
    }else if(ScreenSvr.imageCtr1===1){
        leftPicPanelFullImg.source = "../images/Simpsons/Lisa1.jpg";
        centerPicPanelFullImg.source = "../images/Simpsons/Lisa1.jpg";
        rightPicPanelFullImg.source = "../images/Simpsons/Lisa1.jpg";
    }else if(ScreenSvr.imageCtr1===2){
        leftPicPanelFullImg.source = "../images/Simpsons/Family2.jpg";
        centerPicPanelFullImg.source = "../images/Simpsons/Family2.jpg";
        rightPicPanelFullImg.source = "../images/Simpsons/Family2.jpg";
    }else if(ScreenSvr.imageCtr1== 3){
        leftPicPanelFullImg.source = "../images/Simpsons/Bart1.jpg";
        centerPicPanelFullImg.source = "../images/Simpsons/Bart1.jpg";
        rightPicPanelFullImg.source = "../images/Simpsons/Bart1.jpg";
    }
    ScreenSvr.imageCtr1 +=val;
}
function getSlideShow2(val){
    console.log("inside get Slide show");
    ScreenSvr.imageCtr2 +=val;
    console.log("counter: "+ ScreenSvr.imageCtr1);
    if(ScreenSvr.imageCtr2<0){
        ScreenSvr.imageCtr2 = 3
    }else if(ScreenSvr.imageCtr2>3){
        ScreenSvr.imageCtr2 = 0;
    }
    if(ScreenSvr.imageCtr2== 0){

        centerPicPanelImg.source = "../images/Simpsons/Homer1.jpg"
    }else if(ScreenSvr.imageCtr2 ===1){
        centerPicPanelImg.source = "../images/Simpsons/Homer2.jpg"
    }else if(ScreenSvr.imageCtr2===2){
        centerPicPanelImg.source = "../images/Simpsons/Family2.jpg"
    }else if(ScreenSvr.imageCtr2= 3){
        centerPicPanelImg.source = "../images/Simpsons/Bart1.jpg"
    }
}
function getSlideShow3(val){
    console.log("inside get Slide show");
    ScreenSvr.imageCtr3 +=val;
    if(ScreenSvr.imageCtr3<0){
        ScreenSvr.imageCtr3 = 3
    }else if(ScreenSvr.imageCtr3>3){
        ScreenSvr.imageCtr3 = 0;
    }

    if(ScreenSvr.imageCtr3== 0){

        rightPicPanelImg.source = "../images/Simpsons/Homer1.jpg"
    }else if(ScreenSvr.imageCtr3 ===1){
        rightPicPanelImg.source = "../images/Simpsons/Homer2.jpg"
    }else if(ScreenSvr.imageCtr3 ===2){
        rightPicPanelImg.source = "../images/Simpsons/Lisa1.jpg"
    }else if(ScreenSvr.imageCtr3 === 3){
        rightPicPanelImg.source = "../images/Simpsons/Bart1.jpg"
    }
}
function getImgCtr(numc){
    if(numc=== 0){
        return ScreenSvr.imageCtr1;
    }else if(numc===1){
        return ScreenSvr.imageCtr2;
    }else if(numc===2){
        return ScreenSvr.imageCtr3;
    }
}


//border size
function getCtrlBorderSize(){
    return ScreenSvr.ctrlBordSize;
}

/*SETTER METHODS*/
function setMainVis(vis){
    ScreenSvr.mainVis = vis;
}

function setOv1Vis(vis){
    ScreenSvr.overlay1Vis = vis;
}
function setOv2Vis(vis){
    ScreenSvr.overlay2Vis = vis;
}
function setOv3Vis(vis){
    ScreenSvr.overlay3Vis = vis;
}

//full screen functions

function resetVis(){
    //show regular content
    midContGrid.visible = true;
    topBar1.visible = true;
    bottBarArea.visible = true;
    //hide full screen info for panels 1-3
    //panel 1
    picPanelFullScreenWindow.visible = false;
    picPanelFullScreenArea.visible = false;
    picPanelFullScreenMinButton.visible = false;
    picPanelBackButton.visible = false;
    picPanelNextButton.visible = false;
}

function hideMainContent(){
    //hide regular content
    midContGrid.visible = false;
    topBar1.visible = false;
    bottBarArea.visible = false;
}

function fullscreen1(){
    //hide main panel, start button, and fridge icon
    hideMainContent();
    //show full screen controls
    showControls();
    //show panel1
    picPanel1FullscreenAreaImg.visible = true;
    //hide other panels
    picPanel2FullscreenAreaImg.visible = false;
    picPanel3FullscreenAreaImg.visible = false;

}
function fullscreen2(){
    //hide main panel, start button, and fridge icon
    hideMainContent();
    //show full screen controls
    showControls();
    //show panel2
    picPanel2FullscreenAreaImg.visible = true;
    //hide other panels
    picPanel1FullscreenAreaImg.visible = false;
    picPanel3FullscreenAreaImg.visible = false;


}


function fullscreen3(){
    //hide main panel, start button, and fridge icon
    hideMainContent();
    //show full screen controls
    showControls();
    //show panel3
    picPanel3FullscreenAreaImg.visible = true;
    //hide other panels
    picPanel1FullscreenAreaImg.visible = false;
    picPanel2FullscreenAreaImg.visible = false;

}
function showControls(){

    //show full screen info for panel1
    picPanelFullScreenWindow.visible = true; //yes
    picPanelFullScreenArea.visible = true; //yes
    picPanelFullScreenMinButton.visible = true; //yes
    picPanelBackButton.visible = true; //yes
    picPanelNextButton.visible = true; //yes
    //picPanel1FullScreenMinBttnImg.visible = true;
}


