import QtQuick 2.0

BorderImage {
    id: rect
    source: ""
    width: 280; height: 155
    border.left: 5; border.top: 5
    border.right: 5; border.bottom: 5


    RotationAnimation on rotation {

        running:myMouse.containsMouse
        from: 0
        to: 360
        alwaysRunToEnd: true
        duration:500
    }


    MouseArea{
        id:myMouse
        anchors.fill: parent
        hoverEnabled: true

    }

}
