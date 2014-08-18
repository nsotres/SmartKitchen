import QtQuick 2.0

Rectangle {
    signal clicked

    property string text
    id:rectlong
    width: 454
    height: 45
    border.color: "black"
    Text{

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text:rectlong.text
    }

    MouseArea{
        id:mouseLong
        anchors.fill:parent
        onClicked: {
                rectangle31.visible=true
        }
    }


}
