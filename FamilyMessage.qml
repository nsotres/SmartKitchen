import QtQuick 2.0
import "js/familyMsg.js" as Script

Flickable {
    id: familyMsgFlickable
    width: 1230
    height: 656
    contentWidth: familyMsg.width
    contentHeight: familyMsg.height

    flickableDirection: Flickable.VerticalFlick

    function addNew(text) {
        shadeRect.visible = false;
        Script.killKeyboard();
        Script.addNewNotes(text);
    }

    Rectangle {
        id: familyMsg
        width: 1230
        height: 656

        Component.onCompleted: {
            Script.addNewNotes("Came to Moe's, won't come back til 9 am.    Homer");
            Script.addNewNotes("D'oh.    Homer");
            Script.addNewNotes("Ay caramba! Bart");
            Script.addNewNotes("Mom pls don't eat beef at dinner tonite.    Lisa");
            Script.addNewNotes("Don't listen to Lisa, she's lame.    Bart");
            Script.addNewNotes("No one remember me!!    Santa's little helper");
            Script.addNewNotes("Love you mummy, I can write!!! Maggie");
        }

        Rectangle {
            id: shadeRect
            width: 1230
            height: 656

            x: 0
            y: 0

            z: 99

            color: "#B4E2EF"

            opacity: 0
        }

        Image {
            id: addNewNoteImage
            x: 16
            y: 16
            width: 70
            height: 70
            source: "images/add_new_note_button.png"

            MouseArea {
                id: addNewNoteMouseArea
                anchors.fill: parent

                onReleased: {

                    Script.showKeyBoard();

                    shadeRect.opacity = 0.8;
                }
            }
        }
    }
}
