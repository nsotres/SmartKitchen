import QtQuick 2.0

Rectangle {
    signal clicked

    property string text
    id:rectlong
    width: 302
    height: 35
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
