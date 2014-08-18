
/* QWERTY Keyboard
*   by: Felix Sotres
*   date: 4/9/13
*
*   Functionality:
*       - qwerty keyboard implementation
*/

//object holding qwerty string and default values
var qwerty = {
    //string basic type (testing)
    qwertyS: "",
    //String object ***where the string is saved***
    qwertyStr: new String(),
    //flag for upper case letters
    shift: false,
    //keep count of how many times shift has been clicked
    shiftCnt: 0,
    //flag for numbers and symbols
    symbol: false,
    //keep count of how many times numb/symbols has been clicked
    symbolCnt: 0,
    //flag for caps lock
    caps: false,
    //keep count of how many times caps lock has been clicked
    capsCnt: 0,
    //Spanish mode boolean (true= on/ false=off)
    spanishMode: true,

    //SIZE VARIABLES
    //Qwerty keyboard size
    sizeX: 654,
    sizeY: 340,
    //button size
    buttonX: 60,
    buttonY: 64,
    buttonXñ: 42,   //width for ñ button (spanish mode)
    //spacing between buttons (column space)
    buttonSpacing:5,
    //spacing between rows of buttons (row space)
    buttonRowSpacing:5,
    //text size button (this is also input text size)
    buttonTextSize: 20.0,
    //input box height (width is always as long as keyboard)
    inputBoxY: 40,
    //shift/delete button size
    shiftDelSizeX: 90,
    shiftDelSizeY: 64,
    //number button size
    numbSizeX: 75,
    numbSizeY: 64,
    //caps lock button size
    capSizeX: 60,
    capSizeY: 64,
    //space bar button size
    spaceBarSizeX: 362,
    spaceBarSizeY: 64,
    //enter button size
    enterSizeX: 130,
    enterSizeY: 64,
    //buffer top (between input box and qwerty
    buffTopY: 5, //buffer is as long as qwerty length

    //COLOR VARIABLES
    //qwerty background color
    backColor: "lightslategray",
    //button color
    buttonColor: "lightgray",
    //onPressed button color
    pressedColor: "lightyellow"
}

//returns String of value entered by user
function getEntry(){
    return qwerty.qwertyStr;
}
function getX(){
    return qwerty.sizeX;
}
function getY(){
    return qwerty.sizeY;
}
function getButtonX(){
    return qwerty.buttonX;
}
function getButtonY(){
    return qwerty.buttonY;
}
//width for ñ key (spanish mode)
function getButtonXSpanish(){
    return qwerty.buttonXñ;
}

function getButtonTextSize(){
    return qwerty.buttonTextSize;
}
function getInputBoxY(){
    return qwerty.inputBoxY;
}
function getButtonSpacing(){
    return qwerty.buttonSpacing;
}
function getButtonRowSpacing(){
    return qwerty.buttonRowSpacing;
}
function getShiftDelSizeX(){
    return qwerty.shiftDelSizeX;
}
function getShiftDelSizeY(){
    return qwerty.shiftDelSizeY;
}
function getNumbSizeX(){
    return qwerty.numbSizeX;
}
function getNumbSizeY(){
    return qwerty.numbSizeY;
}
function getCapSizeX(){
    return qwerty.capSizeX;
}
function getCapSizeY(){
    return qwerty.capSizeY;
}
function getSpaceBarSizeX(){
    return qwerty.spaceBarSizeX;
}
function getSpaceBarSizeY(){
    return qwerty.spaceBarSizeY;
}
function getEnterSizeX(){
    return qwerty.enterSizeX;
}
function getEnterSizeY(){
    return qwerty.enterSizeY;
}
function getBuffTopY(){
    return qwerty.buffTopY;
}
function getBackColor(){
    return qwerty.backColor;
}
function getButtonColor(){
    return qwerty.buttonColor;
}
function getPressedColor(){
    return qwerty.pressedColor;
}
function getSpanishMode(){
    return qwerty.spanishMode;
}

function setX(inX){
    qwerty.sizeX = inX;
}
function setY(inY){
    qwerty.sizeY = inY;
}
function setButtonX(buttnX){
    qwerty.buttonX = buttnX;
}
function setButtonY(buttnY){
    qwerty.buttonY = buttnY;
}
//set width for ñ button (spanish mode)
function setButtonXSpanish(buttnñ){
    qwerty.buttonXñ = buttnñ;
}

function setButtonTextSize(txtSz){
    qwerty.buttonTextSize = txtSz;
}
function setInputBoxY(inBoxY){
    qwerty.inputBoxY = inBoxY;
}
function setButtonSpacing(buttnSpac){
    qwerty.buttonSpacing = buttnSpac;
}
function setButtonRowSpacing(buttnRowSpac){
    qwerty.buttonRowSpacing = buttnRowSpac;
}
function setShiftDelSizeX(delX){
    qwerty.shiftDelSizeX = delX;
}
function setShiftDelSizeY(delY){
    qwerty.shiftDelSizeY = delY;
}
function setNumbSizeX(numX){
    qwerty.numbSizeX = numX;
}
function setNumbSizeY(numY){
    qwerty.numbSizeY = numY;
}
function setCapSizeX(capX){
    qwerty.capSizeX = capX;
}
function setCapSizeY(capY){
    qwerty.capSizeY = capY;
}
function setSpaceBarSizeX(spaceX){
    qwerty.spaceBarSizeX = spaceX;
}
function setSpaceBarSizeY(spaceY){
    qwerty.spaceBarSizeY = spaceY;
}
function setEnterSizeX(enterX){
    qwerty.enterSizeX = enterX;
}
function setEnterSizeY(enterY){
    qwerty.enterSizeY = enterY;
}
function setBuffTopY( buffY){
    qwerty.buffTopY = buffY;
}
function setBackColor(bkgColor){
    qwerty.backColor = bkgColor;
}
function setButtonColor(bttnColor){
    qwerty.buttonColor = bttnColor;
}
function setPressedColor(pressColor){
    qwerty.pressedColor = pressColor;
}
function setSpanishMode(spanish){
    qwerty.spanishMode = spanish;
}

//save string locally
function setString(input) {
    var empty = "";
    //test for empty string
    if((empty.localeCompare(input))==0){
        //do nothing
        console.log("string empty")
    }else{
        /** PROB NEED TO ADD VERIFIER TO TEXTINPUT INSTEAD OF THIS **/
        //if string input is less than 20 characters long, save it
        if(input.length < 20){
            //testing message
            //console.log("Sring input is <20");
            //save input as string basic type
            qwerty.qwertyS = input;

            //save input as String object
            //qwerty.qwertyStr = new String(input);
            qwerty.qwertyStr = input;


            //test to see that string was saved
            //console.log("string created in object: "+ qwerty.qwertyStr);
        }
        //else do nothing
    }
}

//pressed Caps
function caps(capsVal){
    //shift clicked, add to count
    qwerty.capsCnt += capsVal;
    if(qwerty.capsCnt%2 ==0){
        //reset color
        caps1.color = getButtonColor();
        //shift boolean for lower case
        qwerty.caps = false;
        //reset symbol/shift to get correct behavior
        resetSymbol();
        resetShift();
        //update keyboard
        updateUpperCase(qwerty.caps);
    }else{
        //change color to signal it has been pressed
        caps1.color= getPressedColor();
        //shift boolean for upper case
        qwerty.caps = true;
        //reset symbol/shift to get correct behavior
        resetSymbol();
        resetShift();
        //update keyboard
        updateUpperCase(qwerty.caps);
    }

}
//reset caps variables
function resetCaps(){
    //reset color
    caps1.color= getButtonColor();
    //reset values
    qwerty.caps = false;
    qwerty.capsCnt = 0;
}
//pressed Shift
function shift(shiftVal){
    //shift clicked, add to count
    qwerty.shiftCnt += shiftVal;
    if(qwerty.shiftCnt%2 ==0){
        //reset color to signal it has been pressed
        keyShift.color = getButtonColor();
        //shift boolean for lower case
        qwerty.shift = false;
        //reset symbol/caps to get correct behavior
        resetSymbol();
        resetCaps();
        //update keyboard
        updateUpperCase(qwerty.shift);
    }else{
        //change color to signal it has been pressed
        keyShift.color = getPressedColor();
        //shift boolean for upper case
        qwerty.shift = true;
        //reset symbol/caps to get correct behavior
        resetSymbol();
        resetCaps();
        //update keyboard
        updateUpperCase(qwerty.shift);
    }

}

//update keyboard based on shift key
function updateUpperCase(UpperCase){
    if(UpperCase == true){
        //update to upper case
        //row1
        r1KeyQ.text = "Q";
        r1KeyW.text = "W";
        r1KeyE.text = "E";
        r1KeyR.text = "R";
        r1KeyT.text = "T";
        r1KeyY.text = "Y";
        r1KeyU.text = "U";
        r1KeyI.text = "I";
        r1KeyO.text = "O";
        r1KeyP.text = "P";
        //row2
        r2KeyA.text = "A";
        r2KeyS.text = "S";
        r2KeyD.text = "D";
        r2KeyF.text = "F";
        r2KeyG.text = "G";
        r2KeyH.text = "H";
        r2KeyJ.text = "J";
        r2KeyK.text = "K";
        r2KeyL.text = "L";
        //row3
        r3KeyZ.text = "Z";
        r3KeyX.text = "X";
        r3KeyC.text = "C";
        r3KeyV.text = "V";
        r3KeyB.text = "B";
        r3KeyN.text = "N";
        r3KeyM.text = "M";
    }else{
        //update to lower case
        //row1
        r1KeyQ.text = "q";
        r1KeyW.text = "w";
        r1KeyE.text = "e";
        r1KeyR.text = "r";
        r1KeyT.text = "t";
        r1KeyY.text = "y";
        r1KeyU.text = "u";
        r1KeyI.text = "i";
        r1KeyO.text = "o";
        r1KeyP.text = "p";
        //row2
        r2KeyA.text = "a";
        r2KeyS.text = "s";
        r2KeyD.text = "d";
        r2KeyF.text = "f";
        r2KeyG.text = "g";
        r2KeyH.text = "h";
        r2KeyJ.text = "j";
        r2KeyK.text = "k";
        r2KeyL.text = "l";
        //row3
        r3KeyZ.text = "z";
        r3KeyX.text = "x";
        r3KeyC.text = "c";
        r3KeyV.text = "v";
        r3KeyB.text = "b";
        r3KeyN.text = "n";
        r3KeyM.text = "m";
    }
}
//reset shift variables
function resetShift(){
    //reset color
    keyShift.color = getButtonColor();
    //reset values
    qwerty.shift = false;
    qwerty.shiftCnt = 0;
}
//pressed Symbol
function symbol(symbolVal){
    //symbol clicked, add to count
    qwerty.symbolCnt += symbolVal;
    if(qwerty.symbolCnt%2 ==0){
        //reset button color
        keyNumbers1.color= getButtonColor();
        //symbol boolean for numbers/symbols
        qwerty.symbol = false;
        //reset shift/caps to get correct behavior
        resetShift();
        resetCaps();
        //update keyboard to letters
        updateKeySymbol(qwerty.symbol);
    }else{
        //change color to signal it has been pressed
        keyNumbers1.color= getPressedColor();
        //symbol boolean for numbers/symbols
        qwerty.symbol = true;
        //reset shift/caps to get correct behavior
        resetShift();
        resetCaps();
        //update keyboard to symbols
        updateKeySymbol(qwerty.symbol);
    }
}

//update keyboard based on symbol key
function updateKeySymbol(symbolBool){
    if(symbolBool == true){
        //update to upper case
        //row1
        r1KeyQ.text = "1";
        r1KeyW.text = "2";
        r1KeyE.text = "3";
        r1KeyR.text = "4";
        r1KeyT.text = "5";
        r1KeyY.text = "6";
        r1KeyU.text = "7";
        r1KeyI.text = "8";
        r1KeyO.text = "9";
        r1KeyP.text = "0";
        //row2
        r2KeyA.text = "-";
        r2KeyS.text = "/";
        r2KeyD.text = ":";
        r2KeyF.text = ";";
        r2KeyG.text = "(";
        r2KeyH.text = ")";
        r2KeyJ.text = "$";
        r2KeyK.text = "&";
        r2KeyL.text = "\"";
        //row3
        r3KeyZ.text = ".";
        r3KeyX.text = ",";
        r3KeyC.text = "?";
        r3KeyV.text = "!";
        r3KeyB.text = "'";
        r3KeyN.text = "@";
        r3KeyM.text = "#";
    }else{
        //update to lower case
        //row1
        r1KeyQ.text = "q";
        r1KeyW.text = "w";
        r1KeyE.text = "e";
        r1KeyR.text = "r";
        r1KeyT.text = "t";
        r1KeyY.text = "y";
        r1KeyU.text = "u";
        r1KeyI.text = "i";
        r1KeyO.text = "o";
        r1KeyP.text = "p";
        //row2
        r2KeyA.text = "a";
        r2KeyS.text = "s";
        r2KeyD.text = "d";
        r2KeyF.text = "f";
        r2KeyG.text = "g";
        r2KeyH.text = "h";
        r2KeyJ.text = "j";
        r2KeyK.text = "k";
        r2KeyL.text = "l";
        //row3
        r3KeyZ.text = "z";
        r3KeyX.text = "x";
        r3KeyC.text = "c";
        r3KeyV.text = "v";
        r3KeyB.text = "b";
        r3KeyN.text = "n";
        r3KeyM.text = "m";
    }
}

//reset symbol variaables
function resetSymbol(){
    //reset color
    keyNumbers1.color= getButtonColor();
    //reset values
    qwerty.symbol = false;
    qwerty.symbolCnt = 0;
}

//row1 upper/lower case
function row1(inputR1){
    //key variables
    var Q = "Q";
    var W = "W";
    var E = "E";
    var R = "R";
    var T = "T";
    var Y = "Y";
    var U = "U";
    var I = "I";
    var O = "O";
    var P = "P";

    //test for upper/lower case letters/symbols
     if( qwerty.shift === true || qwerty.caps === true && qwerty.symbol === false){
        //upper case characters
        if( (Q.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "Q";
        }else if( (W.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "W";
        }else if( (E.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "E";
        }else if( (R.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "R";
        }else if( (T.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "T";
        }else if( (Y.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "Y";
        }else if( (U.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "U";
        }else if( (I.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "I";
        }else if( (O.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "O";
        }else if( (P.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "P";
        }
        //if shift was pressed then reset to lower case
        if(qwerty.shift === true){
            //reset shift
            resetShift();
            //update keyboard
            updateUpperCase(false);
        }
    }else if(qwerty.shift === false && qwerty.caps === false && qwerty.symbol === false){
        //lower case characters
        if( (Q.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "q";
        }else if( (W.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "w";
        }else if( (E.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "e";
        }else if( (R.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "r";
        }else if( (T.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "t";
        }else if( (Y.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "y";
        }else if( (U.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "u";
        }else if( (I.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "i";
        }else if( (O.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "o";
        }else if( (P.localeCompare(inputR1)) == 0){
            //display on UI input box
            qwerty_input.text += "p";
        }
    }else if( qwerty.symbol === true){
         //symbol characters
         if( (Q.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "1";
         }else if( (W.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "2";
         }else if( (E.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "3";
         }else if( (R.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "4";
         }else if( (T.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "5";
         }else if( (Y.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "6";
         }else if( (U.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "7";
         }else if( (I.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "8";
         }else if( (O.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "9";
         }else if( (P.localeCompare(inputR1)) == 0){
             //display on UI input box
             qwerty_input.text += "0";
         }
     }
}
//row2 upper/lower case
function row2(inputR2){
    //key variables
    var A = "A";
    var S = "S";
    var D = "D";
    var F = "F";
    var G = "G";
    var H = "H";
    var J = "J";
    var K = "K";
    var L = "L";
    var Sñ = "ñ";

    //test for upper/lower case letters
    if( qwerty.shift === true || qwerty.caps === true && qwerty.symbol === false){
        //upper case characters
        if( (A.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "A";
        }else if( (S.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "S";
        }else if( (D.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "D";
        }else if( (F.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "F";
        }else if( (G.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "G";
        }else if( (H.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "H";
        }else if( (J.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "J";
        }else if( (K.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "K";
        }else if( (L.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "L";
        }
        if(qwerty.shift === true){
            //reset shift
            resetShift();
            //update keyboard
            updateUpperCase(false);
        }
    }else if(qwerty.shift === false && qwerty.caps === false && qwerty.symbol === false){
        //lower case characters
        if( (A.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "a";
        }else if( (S.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "s";
        }else if( (D.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "d";
        }else if( (F.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "f";
        }else if( (G.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "g";
        }else if( (H.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "h";
        }else if( (J.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "j";
        }else if( (K.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "k";
        }else if( (L.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "l";
        }
    }else if(qwerty.symbol === true){
        //symbol characters
        if( (A.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "-";
        }else if( (S.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "/";
        }else if( (D.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += ":";
        }else if( (F.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += ";";
        }else if( (G.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "(";
        }else if( (H.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += ")";
        }else if( (J.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "$";
        }else if( (K.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "&";
        }else if( (L.localeCompare(inputR2)) === 0){
            //display on UI input box
            qwerty_input.text += "\"";
        }
    }
    if((Sñ.localeCompare(inputR2)) === 0){
        //add spanish ñ to input box string
        qwerty_input.text += "ñ";
    }
}
//row3 upper/lower case
function row3(inputR3){
    //key variables
    var Z = "Z";
    var X = "X";
    var C = "C";
    var V = "V";
    var B = "B";
    var N = "N";
    var M = "M";

    //test for upper/lower case letters
    if( qwerty.shift === true || qwerty.caps === true && qwerty.symbol === false){
        //upper case characters
        if( (Z.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "Z";
        }else if( (X.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "X";
        }else if( (C.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "C";
        }else if( (V.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "V";
        }else if( (B.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "B";
        }else if( (N.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "N";
        }else if( (M.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "M";
        }
        if(qwerty.shift === true){
            //reset shift
            resetShift();
            //update keyboard
            updateUpperCase(false);
        }
    }else if(qwerty.shift === false && qwerty.caps === false && qwerty.symbol === false){
        //lower case characters
        if( (Z.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "z";
        }else if( (X.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "x";
        }else if( (C.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "c";
        }else if( (V.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "v";
        }else if( (B.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "b";
        }else if( (N.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "n";
        }else if( (M.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "m";
        }
    }else if(qwerty.symbol === true){
        //symbol characters
        if( (Z.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += ".";
        }else if( (X.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += ",";
        }else if( (C.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "?";
        }else if( (V.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "!";
        }else if( (B.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "'";
        }else if( (N.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "@";
        }else if( (M.localeCompare(inputR3)) === 0){
            //display on UI input box
            qwerty_input.text += "#";
        }
    }
}

//space
function space(){
    qwerty_input.text += " "
}
//clear input box
function clearInputBox(){
    qwerty_input.text = ""
}
//delete last character entered
function deleteChar(input1){
    var empty = "";
    //test for empty string
    if((empty.localeCompare(input1))==0){
        //do nothing
        console.log("string empty")
    }else{
        //save input as String object
        var temp1 = new String(input1);
        //get length of string
        var len1 = temp1.length;
        //take off last character
        temp1 = temp1.substring(0, len1-1);
        //display new string on screen
        qwerty_input.text = temp1;
    }
}

