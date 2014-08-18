var component;
var users = [];

function createUsersIcon(user_id, index) {
    component = Qt.createComponent("../UserIcon.qml");

    if (component.status === Component.Ready)
    {
        var newIcon = component.createObject(loginBar,{"user_id": user_id, "index": index, "lb": loginBar});

            if (newIcon === null) {
                // Error Handling
                console.log("Error creating object");
            }
            else {
                users.push(newIcon);
            }
    }  else if (component.status === Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function reOrder(index) {
    users[index].goFirst();

    for(var i = 0; i < index; ++i) {
        users[i].goNext();
    }

    var temp = users[index];

    for(i = index - 1; i > -1; --i) {
        users[i+1] = users[i];
    }
    users[0] = temp;
}
