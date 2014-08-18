var iconList = [];
function getIcons() {
    return iconList;
}

var component;

function createIcon(icon_info, index) {
    // create each icon dynamically from NavigationIcon.qml
    component = Qt.createComponent("../NavigationIcon.qml");
    if (component.status === Component.Ready)
    {
        var newIcon = component.createObject(navigationBar,
                                             {"index": index,
                                              "iconName": icon_info
                                             });

            if (newIcon === null) {
                // Error Handling
                console.log("Error creating object");
            }
            else
                iconList.push(newIcon);
    }  else if (component.status === Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}
