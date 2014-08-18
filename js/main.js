var leftDetailNow = null;
var rightDetailNow = null;
var centerDetailNow = null;

function showPreviewOutline(option) {
	switch(option) {
		case "left":
            previewOutline.source = "../images/outline.png";
            previewOutline.x = detailView.x;
            previewOutline.y = detailView.y;
            previewOutline.width = detailView.width / 2 - 20;
            previewOutline.height = detailView.height;
            previewOutline.state = "shown";
            break;
        case "right":
            previewOutline.source = "../images/outline.png";
            previewOutline.x = detailView.x + detailView.width / 2 + 20;
            previewOutline.y = detailView.y;
            previewOutline.width = detailView.width / 2 - 20;
            previewOutline.height = detailView.height;
            previewOutline.state = "shown";
            break;
        case "center":
            previewOutline.source = "../images/outline2.png";
            previewOutline.x = detailView.x;
            previewOutline.y = detailView.y;
            previewOutline.width = detailView.width;
            previewOutline.height = detailView.height;
            previewOutline.state = "shown";
            break;
	}
}

// the entry function to show the detail in detail view. Both
// icon pressing action and preview dragging action will call
// this function. The content of detail is in the binded with
// the id and based on that, corresponding qml file is loaded
// into detail view.
function showDetail(pos, id, para) {
    //rebind the left, right and center elements
    rebindItems();
    nb.state = "barHidden";

    var position_x = 0;
    var width = 0;
    switch(pos) {
    case "left" :
        position_x = 0;
        width = detailView.width / 2 - 20;

        break;
    case "right":
        position_x = 635;
        width = detailView.width / 2 - 20;

        break;
    case "center":
        position_x = 0;
        width = detailView.width;

        break;
    }

    //create the detail dynamically
    createDetailShow(position_x, width, pos, id, para);
}


///////////////don't worry the rest of the codes////////////////////////
function createDetailShow(position_x, width, pos, id, para) {
    var newDetailShow;
    var component;
    switch(pos) {
    case "left":
        // create a new one
        component = Qt.createComponent("../" + id + "_side.qml");
        if (component.status === Component.Ready)
        {
            newDetailShow = component.createObject(detailView,{"x": position_x, "y": 0, "name": id});

                if (newDetailShow === null) {
                    // Error Handling
                    console.log("Error creating object");
                }
        }  else if (component.status === Component.Error) {
            // Error Handling
            console.log("Error loading component:", component.errorString());
        }

        if(centerDetailNow != null) {
            var name = centerDetailNow.name;
            centerDetailNow.destroy();
            centerDetailNow = null;
            createDetailShow(detailView.width / 2 + 20, detailView.width / 2 - 20, "right", name);

            leftDetailNow = newDetailShow;
        }

        else if(leftDetailNow != null) {
            if(rightDetailNow == null) {
                rightDetailNow = leftDetailNow;
                rightDetailNow.x = detailView.width / 2 + 20;
                leftDetailNow = newDetailShow;
            }
            else {
                leftDetailNow.destroy();
                leftDetailNow = newDetailShow;
            }
        }
        else {
            leftDetailNow = newDetailShow;
        }
        break;

    case "right":
        // create a new one
        component = Qt.createComponent("../" + id + "_side.qml");
        if (component.status === Component.Ready)
        {
            newDetailShow = component.createObject(detailView,{"x": position_x, "y": 0, "name": id});

                if (newDetailShow === null) {
                    // Error Handling
                    console.log("Error creating object");
                }
        }  else if (component.status === Component.Error) {
            // Error Handling
            console.log("Error loading component:", component.errorString());
        }

        if(centerDetailNow != null) {
            name = centerDetailNow.name;
            centerDetailNow.destroy();
            centerDetailNow = null;
            createDetailShow(0, detailView.width / 2 - 20, "left", name);

            rightDetailNow = newDetailShow;
        }
        else if(rightDetailNow != null) {
            if(leftDetailNow == null) {
                leftDetailNow = rightDetailNow;
                leftDetailNow.x = 0;
                rightDetailNow = newDetailShow;
            }
            else {
                rightDetailNow.destroy();
                rightDetailNow = newDetailShow;
            }
        }
        else {
            rightDetailNow = newDetailShow;
        }
        break;

    case "center":
        component = Qt.createComponent("../" + id + ".qml");
        if (component.status === Component.Ready)
        {
            if(para != null)
                newDetailShow = component.createObject(detailView,{"x": position_x, "y": 0, "name": id, "user_id": para});
            else
                newDetailShow = component.createObject(detailView,{"x": position_x, "y": 0, "name": id});

                if (newDetailShow === null) {
                    // Error Handling
                    console.log("Error creating object");
                }
        }  else if (component.status === Component.Error) {
            // Error Handling
            console.log("Error loading component:", component.errorString());
        }

        if(leftDetailNow != null) {
            leftDetailNow.destroy();
            leftDetailNow = null;
        }
        if(rightDetailNow != null)  {
            rightDetailNow.destroy();
            rightDetailNow = null;
        }
        if(centerDetailNow!= null) {
            centerDetailNow.destroy();
        }
        centerDetailNow = newDetailShow;
    }
}

function rebindItems() {
    var index = 0;
    for(index = 0; index < detailView.children.length; ++index) {
        var ele = detailView.children[index];
        if(ele !== null) {
            console.log(ele.x + "," + ele.y + "," + ele.width);
            //bind left
            if(ele.x === 0 && ele.y === 0 && ele.width === 595)
                leftDetailNow = ele;
            //bind right
                if(ele.x === 635 && ele.y === 0 && ele.width === 595)
                    rightDetailNow = ele;
            //bind center
                if(ele.x === 0 && ele.y === 0 && ele.width === 1230) {
                    centerDetailNow = ele;
                }
        }
    }
}
