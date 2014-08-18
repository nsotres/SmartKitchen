
var ShoppingList = {

    //SIZE Variables

    //available itmes window
    availItemContX: 400,        //container
    availItemContY: 656,        //container
    availItemsContBuffY: 10,    //top buffer
    availItemsContHeaderY: 50,  //header bar
    availItemsContWinY: 596,    //avail items content win
    mainActionContX: 600,       //container holding tabs X
    mainActionContY: 656,       //container holding tabs Y
    tabsX: 50,                  //tab width
    tabsY: 50,                  //tab height
    mainActionPanelX: 598,      //panel width
    mainActionPanelY: 800,      //panel height

    //COLOR Variables
    darkGreen: "#A5E789",       //headers
    midGreen: "#D2F4CE",        //sub-headers
    offWhite: "#F5FDF4",       //text windows
    shoppBorderCol: "black",    //border color for app
    bufferCol: "white",         //buffer color
    clickedCol: "#E1FA9E",      //on clicked color

    //FONT Variables
    shoppFont: "Calibri",       //font style
    shoppFontSize: 20,           //size

    //IMAGE Variables
    tabImg: "shoppListImages/standardTab1.jpg",         //tab for selected
    tabImg2: "shoppListImages/standardTab2.jpg",         //tab for unselected
    tabClickedImg: "shoppListImages/clickedTab1.jpg",    //image for clicked tab

    //Data Variables
    //current panel 1= shopping list, 2= requests 3= needed for recipe
    currList: 1,
    //fridge list
    fridgeList: ["item1", "item2", "item3", "item4", "item5", "item6"],
    //shopping list
    shoppList: ["SList1", "SList2", "SList3", "SList4", "SList5", "SList6", "SList7"],
    //requests
    requestList: ["RList1", "RList2", "RList3"],
    //need for recipe
    needList: ["NList1", "NList2", "NList3", "NList4"]

}
//data gets
function getCurrList(){
    return ShoppingList.currList;
}
function setCurrList(val){
    ShoppingList.currList= val;
}

function getFridge(){
    var fridgeS = "";
    for (var i = 0; i < ShoppingList.fridgeList.length; i++) {
        // build string
        fridgeS = fridgeS + "\n " + ShoppingList.fridgeList[i];
    }
    return fridgeS;
}
function getShoppList(){
    var shoppS = "";
    for (var i = 0; i < ShoppingList.shoppList.length; i++) {
        // build string
        shoppS = shoppS + "\n " + ShoppingList.shoppList[i];
    }
    return shoppS;
}
function getReqList(){
    var reqS = "";
    for (var i = 0; i < ShoppingList.requestList.length; i++) {
        // build string
        reqS = reqS + "\n " + ShoppingList.requestList[i];
    }
    return reqS;
}
function getNeedList(){
    var needS = "";
    for (var i = 0; i < ShoppingList.needList.length; i++) {
        // build string
        needS = needS + "\n " + ShoppingList.needList[i];
    }
    return needS;
}
//addint to data lists
function addToList(item, list){
    if(list ===1){
        ShoppingList.shoppList[ShoppingList.shoppList.length]= item;
    }else if(list ===2){
        ShoppingList.requestList[ShoppingList.requestList.length]= item;
    }else if(list ===3){
        ShoppingList.needList[ShoppingList.needList.length]= item;
    }



}

//size gets
function getAvailItemContX(){
    return ShoppingList.availItemContX;
}
function getAvailItemContY(){
    return ShoppingList.availItemContY;
}
function getAvailItemContBuffY(){
    return ShoppingList.availItemsContBuffY;
}
function getAvailItemContHeaderY(){
    return ShoppingList.availItemsContHeaderY;
}
function getAvailContWinY(){
    return ShoppingList.availItemsContWinY;
}
function getMainActX(){
    return ShoppingList.mainActionContX;
}
function getMainActY(){
    return ShoppingList.mainActionContY;
}
function getActionPanelX(){
    return ShoppingList.mainActionPanelX;
}
function getActionPanelY(){
    return ShoppingList.mainActionPanelY
}

//color gets
function getHeaderColor(){
    return ShoppingList.darkGreen;
}
function getSubHeaderColor(){
    return ShoppingList.midGreen;
}
function getTextWinColor(){
    return ShoppingList.offWhite
}

function getBordColor(){
    return ShoppingList.shoppBorderCol;
}
function getTabX(){
    return ShoppingList.tabsX;
}
function getTabY(){
    return ShoppingList.tabsY;
}
function getBuffColor(){
    return ShoppingList.bufferCol;
}
function getClickedColor(){
    return ShoppingList.clickedCol;
}

//font gets
function getFontStyle(){
    return ShoppingList.shoppFont;
}
function getFontSize(){
    return ShoppingList.shoppFontSize;
}

//image gets
function getStdTabImg(){
    return ShoppingList.tabImg;
}
function getDeselectTabImg(){
    return ShoppingList.tabImg2;
}

function getClickedTabImg(){
    return ShoppingList.tabClickedImg;
}

//visibility
function visiblePanel1(){
    //hide other panels
    shoppingListMainActCont2.visible = false;
    shoppingListMainActCont3.visible = false;
    //set tabs (unselected)
    shoppingListTabImage2.source = getDeselectTabImg();
    shoppingListTabImage3.source = getDeselectTabImg();
    //set panel 1 visible
    shoppingListMainActCont1.visible = true;
    //set tab (selected)
    shoppingListTabImage1.source = getStdTabImg();
}
function visiblePanel2(){
    //hide other panels
    shoppingListMainActCont1.visible = false;
    shoppingListMainActCont3.visible = false;
    //set tabs (unselected)
    shoppingListTabImage1.source = getDeselectTabImg();
    shoppingListTabImage3.source = getDeselectTabImg();
    //set panel 2 visible
    shoppingListMainActCont2.visible = true;
    //set tab (selected)
    shoppingListTabImage2.source = getStdTabImg();
}
function visiblePanel3(){
    //hide other panels
    shoppingListMainActCont2.visible=false;
    shoppingListMainActCont1.visible=false;
    //set tabs (unselected)
    shoppingListTabImage2.source = getDeselectTabImg();
    shoppingListTabImage1.source = getDeselectTabImg();
    //set pael 3 visble
    shoppingListMainActCont3.visible= true;
    //set tab (selected)
    shoppingListTabImage3.source = getStdTabImg();
}
