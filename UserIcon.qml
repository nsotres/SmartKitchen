/*
  Author: Mingwei Li
*/

import QtQuick 2.0;
import "js/main.js" as Script

Item {
    property string user_id: ""
    property int index: 0

    property LoginBar lb;

    function goFirst() {
        userIcon.x = 115;
        index = 0;
        console.log("go first: " + user_id + index);
    }

    function goNext() {
        ++index;
        userIcon.x = (index * 168 + 115);
    }

    Image {
        id: userIcon
        width: 120
        height: 120

        x: (index * 168 + 115)
        y: 12

        source: "images/user-profile-" + user_id + ".png";

        Rectangle {
            id: emerShade
            color: "#ffffff"
            anchors.fill: parent
            opacity: 0
        }

        MouseArea {
            id: userIconMouseArea
            anchors.fill: parent

            onPressed: {
                emerShade.opacity = 0.4;
            }

            onReleased: {
                emerShade.opacity = 0;

                switch(user_id) {
                case "Homer":
                    Script.showDetail("center", "Newsfeed/rssnews");
                    break;
                case "Marge":
                    Script.showDetail("center", "MealPlanner");
                    break;
                case "Bart":
                    Script.showDetail("center", "Calendar");
                    break;
                case "Lisa":
                    Script.showDetail("center", "MusicPlayer");
                    break;
                case "Maggie":
                    Script.showDetail("center", "FamilyMessage");
                    break;
                }

                lb.state = "hidden";
                lb.changeLoggedUser(index);
            }
        }
    }
}
