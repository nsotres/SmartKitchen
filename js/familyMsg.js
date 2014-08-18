var count = 0;
var component;
var keyboard;

function addNewNotes(text) {
    var rotate = false;
    component = Qt.createComponent("../Sticker.qml");
    if (component.status === Component.Ready)
    {
        if(Math.random()*10 < 6)
            rotate = false;
        else
            rotate = true;

        var x = 30 + (count % 3) * 400 + Math.random() * 100;
        var y = 30 + Math.floor(count / 3) * 450 + Math.random() * 80;

        var fontSize;
        if(text.length > 50)
            fontSize = Math.floor(50 / text.length * 1.5 * 24);
        else
            fontSize = 24;

        var newIcon = component.createObject(familyMsg, {"textContent": text, "rotate": rotate, "pos_x":x, "pos_y":y, "fontSize": fontSize});

        if (newIcon === null) {
            // Error Handling
            console.log("Error creating object");
        }
        else {
            if(count % 3 === 0 && count != 0)
                familyMsg.height += 330;
            ++count;
            console.log("!!!!!!!!!!!1" + familyMsg.height)
        }
    }  else if (component.status === Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function showKeyBoard() {
    component = Qt.createComponent("../Keyboard.qml");

    if (component.status === Component.Ready)
    {
        if(familyMsg !== null)
        console.log(familyMsg.width)
        console.log(familyMsgFlickable.children[0].width)
        keyboard = component.createObject(familyMsg, {"parenting": familyMsgFlickable});

            if (keyboard === null) {
                // Error Handling
                console.log("Error creating object");
            }
    }  else if (component.status === Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function killKeyboard() {
    keyboard.destroy();
    keyboard = null;
}
