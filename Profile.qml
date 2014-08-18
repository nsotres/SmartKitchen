/*
  Author: Mingwei Li
*/

import QtQuick 2.0

Rectangle {
    property string user_id : ""
    width: 1230
    height: 660

    border.width: 2;
    border.color: "black";

    Text {
        text: user_id
        x: 200
        y: 200
        font.pixelSize: 80
    }
}
