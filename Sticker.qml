import QtQuick 2.0

Rectangle {
    property string textContent: ""
    property int fontSize: 0
    property bool rotate: false
    property int pos_x: 0
    property int pos_y: 0

    width: 315
    height: 315

    x: pos_x
    y: pos_y

    color: "transparent"

    Image {
        id: stickerImg
        anchors.fill: parent
        source: rotate? "images/sticker2.png" : "images/sticker1.png"

    }

    Text {
        id: notes
        x: 40
        y: 60
        width: 235
        height: 235
        text: textContent
        font.pointSize: fontSize
        verticalAlignment: Text.AlignTop
        font.family: "Comic Sans MS"
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere

        rotation: rotate ? 15 : 0
    }
}
