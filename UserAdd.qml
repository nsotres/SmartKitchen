import QtQuick 2.0
import "js/userAdd.js" as User

Rectangle {
    width: 1230
    height: 656    

    /*
        Function to find pictures by username
      */
    function userCall(){
        var doc = new XMLHttpRequest();
        //Calls a get to find the nsid required to actually access a users picture
        //Many functions require a user_id rather than a username to access photos
        doc.open("GET", "http://api.flickr.com/services/rest/?method=flickr.people.findByUsername&api_key=c26a8d3fee608d45f9c56914e491c775&format=json&nojsoncallback=1&username=SimpsonFamUIC6");
        doc.send();
        doc.onreadystatechange = function() {
           if (doc.readyState === XMLHttpRequest.DONE) {
               print(doc.responseText)
              var jsonObject = eval('(' + doc.responseText + ')');
               //the stored nsid to be used on the next GET call
               User.nsid = jsonObject.user.nsid

               var doc2 = new XMLHttpRequest();
               doc2.onreadystatechange = function() {
                   if(doc2.readyState === XMLHttpRequest.DONE){
                       var jsonObject2 = eval('(' + doc2.responseText + ')');
                       print(doc2.responseText)
                       //Stores the list of ids for each picture
                       User.ids = new Array();
                       //The maximum number of pictures the user has
                       User.max = jsonObject2.photos.total;
                       //Goes throught the list, and stores the id number for each photo in order to be able to search them
                       for(var i=0; i<jsonObject2.photos.total; i++){
                           User.ids[i] = jsonObject2.photos.photo[i].id;
                       }
                       changePicture();
                   }
               }
               //Calls GET using the previously gotten nsid
               //getPublicPhotos requires a user_id rather than a username
               doc2.open("GET", "http://api.flickr.com/services/rest/?method=flickr.people.getPublicPhotos&api_key=c26a8d3fee608d45f9c56914e491c775&format=json&nojsoncallback=1&user_id="+User.nsid)
               doc2.send();
           }
        }
    }

    /*
      Function to get individual pictures from flickr
        -can also set size of pic in this function
      */
    function changePicture(){
        var doc = new XMLHttpRequest();
        //Calls GET using a photo id which is stored in an array.
        doc.open("GET", "http://api.flickr.com/services/rest/?method=flickr.photos.getSizes&api_key=c26a8d3fee608d45f9c56914e491c775&format=json&nojsoncallback=1&photo_id="+User.ids[User.imageNum]);
        doc.send();
        doc.onreadystatechange = function() {
           if (doc.readyState === XMLHttpRequest.DONE) {
               print(doc.responseText)
               var jsonObject = eval('(' + doc.responseText + ')');
               //size[6] is the size of the photo which in this case is Medium
               //a list of sizes can be found at http://www.flickr.com/services/api/flickr.photos.getSizes.html
               var source = jsonObject.sizes.size[2].source; //.source is html [size is the actual size of the pic 6= med]
               print(source);
               image6.source = source;
           }
        }
    }

    Image {
        id: image1
        x: 8
        y: 178
        width: 300
        height: 300
        source: "http:\/\/farm9.staticflickr.com\/8532\/8676040104_339765bb57_q.jpg"

        Rectangle {
            id: imageBox
            x: 13
            y: 309
            width: 275
            height: 38
            color: User.headerColor
            z: -1
            border.color: "#000000"
            MouseArea {
                id: accountButton1
                x: 0
                y: 0
                width: 273
                height: 38

                onClicked:{
                    choosePicture.visible = true
                    userCall()
                }
                onPressed:{
                    imageBox.color = User.subHeaderColor
                }
                onReleased:{
                    imageBox.color = User.headerColor
                }
            }

            Text {
                id: text21
                x: 0
                y: 0
                width: 273
                height: 38
                text: qsTr("Choose Profile Picture")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }
    }

    Rectangle {
        id: nameBox
        x: 419
        y: 118
        width: 303
        height: 42
        color: User.textColor
        border.color: "#000000"

        TextEdit {
            id: text_edit1
            x: 5
            y: 5
            width: 298
            height: 37
            text: qsTr("")
            cursorVisible: false
            font.pixelSize: 28
            font.family: User.font
            focus: true
        }

        Text {
            id: text1
            x: -80
            y: 5
            width: 87
            height: 37
            text: qsTr("Name")
            font.pixelSize: 30
            font.family: User.font
        }
    }

    Rectangle {
        id: emailBox
        x: 898
        y: 118
        width: 303
        height: 42
        color: User.textColor
        border.color: "#000000"
        TextEdit {
            id: text_edit2
            x: 5
            y: 5
            width: 298
            height: 37
            text: qsTr("")
            cursorVisible: false
            font.pixelSize: 28
            font.family: User.font
        }

        Text {
            id: text2
            x: -80
            y: 5
            width: 87
            height: 37
            text: qsTr("Email")
            font.pixelSize: 30
            font.family: User.font
        }
    }

    Rectangle {
        id: birthdayBox
        x: 448
        y: 208
        width: 161
        height: 42
        color: User.textColor
        border.color: "#000000"
        TextEdit {
            id: text_edit3
            x: 1
            y: 0
            width: 160
            height: 42
            text: qsTr("")
            horizontalAlignment: TextEdit.AlignHCenter
            cursorVisible: false
            font.pixelSize: 28
            font.family: User.font
        }

        Text {
            id: text3
            x: -112
            y: 5
            width: 101
            height: 37
            text: qsTr("Birthday")
            font.pixelSize: 30
            font.family: User.font
        }

        Text {
            id: text12
            x: 167
            y: 9
            width: 101
            height: 24
            text: qsTr("mm/dd/yyyy")
            font.pixelSize: 17
            font.family: User.font
        }
    }

    Rectangle {
        id: cellBox
        x: 433
        y: 285
        width: 176
        height: 42
        color: User.textColor
        border.color: "#000000"
        TextEdit {
            id: text_edit4
            x: 1
            y: 0
            width: 172
            height: 42
            text: qsTr("")
            cursorVisible: false
            font.pixelSize: 28
            font.family: User.font
            horizontalAlignment: TextEdit.AlignHCenter
        }

        Text {
            id: text4
            x: -91
            y: 5
            width: 86
            height: 37
            text: qsTr("Cell #")
            font.pixelSize: 30
            font.family: User.font
        }

        Text {
            id: text13
            x: 179
            y: 12
            width: 121
            height: 23
            text: qsTr("(xxx)xxx-xxxx")
            font.pixelSize: 20
            font.family: User.font
        }
    }

    Rectangle {
        id: workBox
        x: 876
        y: 285
        width: 177
        height: 42
        color: User.textColor
        border.color: "#000000"
        TextEdit {
            id: text_edit5
            x: 1
            y: 0
            width: 172
            height: 42
            text: qsTr("")
            cursorVisible: false
            font.pixelSize: 28
            font.family: User.font
            horizontalAlignment: TextEdit.AlignHCenter
        }

        Text {
            id: text5
            x: -101
            y: 5
            width: 102
            height: 37
            text: qsTr("Work #")
            font.pixelSize: 30
            font.family: User.font
        }

        Text {
            id: text14
            x: 179
            y: 10
            width: 121
            height: 23
            text: qsTr("(xxx)xxx-xxxx")
            font.pixelSize: 20
            font.family: User.font
        }
    }

    Rectangle {
        id: account
        x: 330
        y: 370
        width: 291
        height: 38
        color: User.headerColor
        border.color: "#000000"

        MouseArea {
            id: accountButton
            x: 0
            y: 0
            width: 291
            height: 38

            onClicked:{
                accountBox.visible = true
                text_edit7.focus = true
            }
            onPressed:{
                account.color = User.subHeaderColor
            }
            onReleased:{
                account.color = User.headerColor
            }

            Text {
                id: text6
                x: 0
                y: 0
                width: 291
                height: 38
                text: qsTr("Set Linked Accounts")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }
    }

    Rectangle {
        id: emergency
        x: 330
        y: 440
        width: 345
        height: 38
        color: User.headerColor
        border.color: "#000000"
        MouseArea {
            id: emergencyButton
            x: 0
            y: 0
            width: 345
            height: 38

            onClicked:{
                emergencyBox.visible = true
            }
            onPressed:{
                emergency.color = User.subHeaderColor
            }
            onReleased:{
                emergency.color = User.headerColor
            }

            Text {
                id: text7
                x: 0
                y: 0
                width: 344
                height: 38
                text: qsTr("Set Emergency Information")
                font.pixelSize: 28
                horizontalAlignment: Text.AlignHCenter
                font.family: User.font
            }
        }
    }

    Rectangle {
        id: passcode
        x: 330
        y: 509
        width: 168
        height: 38
        color: User.headerColor
        border.color: "#000000"
        MouseArea {
            id: passcodeButton
            x: 0
            y: 0
            width: 168
            height: 38

            onClicked:{
                passcodeBox.visible = true
            }
            onPressed:{
                passcode.color = User.subHeaderColor
            }
            onReleased:{
                passcode.color = User.headerColor
            }

            Text {
                id: text8
                x: 0
                y: 0
                width: 168
                height: 38
                text: qsTr("Set Passcode")
                font.pixelSize: 28
                font.family: User.font
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Rectangle {
        id: accountBox
        x: 169
        y: 178
        width: 892
        height: 300
        anchors.centerIn: parent
        border.color: "#000000"
        visible: false


        Rectangle {
            id: confirm1
            width: 104
            height: 38
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            color: User.headerColor
            border.color: "#000000"
            MouseArea {
                id: confirmButton1
                x: 0
                y: 0
                width: 103
                height: 38

                onClicked:{
                    accountBox.visible = false
                    text_edit1.focus = true
                }
                onPressed:{
                    confirm1.color = User.subHeaderColor
                }
                onReleased:{
                    confirm1.color = User.headerColor
                }

                Text {
                    id: text9
                    x: 0
                    y: 0
                    width: 105
                    height: 38
                    text: qsTr("Confirm")
                    font.pixelSize: 28
                    font.family: User.font
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Image {
            id: image3
            x: 69
            y: 28
            width: 100
            height: 100
            source: "images/Robert/Facebook.png"
        }

        Rectangle {
            id: facebook
            x: 39
            y: 159
            width: 160
            height: 29
            color: User.textColor
            border.color: "#000000"
            TextEdit {
                id: text_edit7
                x: 0
                y: 0
                width: 160
                height: 29
                text: qsTr("")
                font.pixelSize: 26
                font.family: User.font
            }

            Text {
                id: text28
                x: 0
                y: -18
                text: qsTr("Username")
                font.pixelSize: 15
                font.family: User.font
            }
        }

        Rectangle {
            id: facebook1
            x: 39
            y: 218
            width: 160
            height: 29
            color: User.textColor
            border.color: "#000000"
            TextEdit {
                id: text_edit11
                x: 0
                y: 0
                width: 160
                height: 29
                text: qsTr("")
                font.pixelSize: 26
                font.family: User.font
            }

            Text {
                id: text29
                x: 0
                y: -18
                text: qsTr("Password")
                font.pixelSize: 15
                font.family: User.font
            }
        }

        Image {
            id: image2
            x: 288
            y: 28
            width: 100
            height: 100
            source: "images/Robert/Flickr.png"
        }



        Rectangle {
            id: flickr
            x: 258
            y: 159
            width: 160
            height: 29
            color: User.textColor
            border.color: "#000000"
            TextEdit {
                id: text_edit8
                x: 0
                y: 0
                width: 160
                height: 29
                text: qsTr("")
                font.pixelSize: 26
                font.family: User.font
            }

            Text {
                id: text30
                x: 0
                y: -18
                text: qsTr("Username")
                font.pixelSize: 15
                font.family: User.font
            }
        }

        Rectangle {
            id: flickr1
            x: 258
            y: 218
            width: 160
            height: 29
            color: User.textColor
            border.color: "#000000"
            TextEdit {
                id: text_edit9
                x: 0
                y: 0
                width: 160
                height: 29
                text: qsTr("")
                font.pixelSize: 26
                font.family: User.font
            }

            Text {
                id: text31
                x: 0
                y: -18
                text: qsTr("Password")
                font.pixelSize: 15
                font.family: User.font
            }
        }

        Image {
            id: image4
            x: 515
            y: 28
            width: 100
            height: 100
            source: "images/Robert/gmail.png"
        }

        Rectangle {
            id: google
            x: 485
            y: 159
            width: 160
            height: 29
            color: User.textColor
            border.color: "#000000"
            TextEdit {
                id: text_edit12
                x: 0
                y: 0
                width: 160
                height: 29
                text: qsTr("")
                font.pixelSize: 26
                font.family: User.font
            }

            Text {
                id: text32
                x: 0
                y: -18
                text: qsTr("Username")
                font.pixelSize: 15
                font.family: User.font
            }
        }

        Rectangle {
            id: google1
            x: 485
            y: 218
            width: 160
            height: 29
            color: User.textColor
            border.color: "#000000"
            TextEdit {
                id: text_edit13
                x: 0
                y: 0
                width: 160
                height: 29
                text: qsTr("")
                font.pixelSize: 26
                font.family: User.font
            }

            Text {
                id: text33
                x: 0
                y: -18
                text: qsTr("Username")
                font.pixelSize: 15
                font.family: User.font
            }
        }

        Image {
            id: image5
            x: 722
            y: 28
            width: 100
            height: 100
            source: "images/Robert/Twitter.png"
        }

        Rectangle {
            id: twitter
            x: 692
            y: 159
            width: 160
            height: 29
            color: User.textColor
            border.color: "#000000"
            TextEdit {
                id: text_edit14
                x: 0
                y: 0
                width: 160
                height: 29
                text: qsTr("")
                font.pixelSize: 26
                font.family: User.font
            }

            Text {
                id: text34
                x: 0
                y: -18
                text: qsTr("Username")
                font.pixelSize: 15
                font.family: User.font
            }
        }

        Rectangle {
            id: twitter1
            x: 692
            y: 218
            width: 160
            height: 29
            color: User.textColor
            border.color: "#000000"
            TextEdit {
                id: text_edit10
                x: 0
                y: 0
                width: 160
                height: 29
                text: qsTr("")
                font.pixelSize: 26
                font.family: User.font
            }

            Text {
                id: text27
                x: 0
                y: -19
                text: qsTr("Password")
                font.pointSize: 12
                font.family: User.font
            }
        }

        Text {
            id: text35
            x: 88
            y: 10
            text: qsTr("Facebook")
            font.pixelSize: 15
            font.family: User.font
        }

        Text {
            id: text36
            x: 321
            y: 10
            text: qsTr("Flickr")
            font.pixelSize: 15
            font.family: User.font
        }

        Text {
            id: text37
            x: 514
            y: 10
            text: qsTr("Google Account")
            font.pixelSize: 15
            font.family: User.font
        }

        Text {
            id: text38
            x: 741
            y: 10
            text: qsTr("Twitter")
            font.pixelSize: 15
            font.family: User.font
        }
    }

    Rectangle {
        id: passcodeBox
        x: 491
        y: 178
        width: 248
        height: 300
        anchors.centerIn: parent
        border.color: "#000000"
        Rectangle {
            id: confirm3
            width: 104
            height: 38
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            color: User.headerColor
            border.color: "#000000"
            MouseArea {
                id: confirmButton3
                x: 0
                y: 0
                width: 103
                height: 38

                onClicked:{
                    passcodeBox.visible = false
                }
                onPressed:{
                    confirm3.color = User.subHeaderColor
                }
                onReleased:{
                    confirm3.color = User.headerColor
                }

                Text {
                    id: text11
                    x: 0
                    y: 0
                    width: 105
                    height: 38
                    text: qsTr("Confirm")
                    font.pixelSize: 28
                    font.family: User.font
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Rectangle {
            id: c1
            x: 12
            y: 11
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c1button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[0] === 0) {
                        User.passcode[0] = 1
                        c1.color = User.subHeaderColor
                    } else {
                        User.passcode[0] = 0
                        c1.color = "White"
                    }
                }
            }
        }

        Rectangle {
            id: c2
            x: 87
            y: 11
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c2button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[1] === 0) {
                        User.passcode[1] = 1
                        c2.color = User.subHeaderColor
                    } else {
                        User.passcode[1] = 0
                        c2.color = "White"
                    }
                }
            }
        }

        Rectangle {
            id: c3
            x: 162
            y: 11
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c3button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[2] === 0) {
                        User.passcode[2] = 1
                        c3.color = User.subHeaderColor
                    } else {
                        User.passcode[2] = 0
                        c3.color = "White"
                    }
                }
            }
        }

        Rectangle {
            id: c4
            x: 12
            y: 86
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c4button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[3] === 0) {
                        User.passcode[3] = 1
                        c4.color = User.subHeaderColor
                    } else {
                        User.passcode[3] = 0
                        c4.color = "White"
                    }
                }
            }
        }

        Rectangle {
            id: c5
            x: 87
            y: 86
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c5button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[4] === 0) {
                        User.passcode[4] = 1
                        c5.color = User.subHeaderColor
                    } else {
                        User.passcode[4] = 0
                        c5.color = "White"
                    }
                }
            }
        }

        Rectangle {
            id: c6
            x: 162
            y: 86
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c6button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[5] === 0) {
                        User.passcode[5] = 1
                        c6.color = User.subHeaderColor
                    } else {
                        User.passcode[5] = 0
                        c6.color = "White"
                    }
                }
            }
        }

        Rectangle {
            id: c7
            x: 12
            y: 161
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c7button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[6] === 0) {
                        User.passcode[6] = 1
                        c7.color = User.subHeaderColor
                    } else {
                        User.passcode[6] = 0
                        c7.color = "White"
                    }
                }
            }
        }

        visible: false
        Rectangle {
            id: c8
            x: 87
            y: 161
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c8button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[7] === 0) {
                        User.passcode[7] = 1
                        c8.color = User.subHeaderColor
                    } else {
                        User.passcode[7] = 0
                        c8.color = "White"
                    }
                }
            }
        }
        Rectangle {
            id: c9
            x: 162
            y: 161
            width: 75
            height: 75
            color: "#ffffff"
            radius: 37
            border.color: "#000000"

            MouseArea {
                id: c9button
                x: 0
                y: 0
                width: 75
                height: 75

                onClicked: {
                    if(User.passcode[8] === 0) {
                        User.passcode[8] = 1
                        c9.color = User.subHeaderColor
                    } else {
                        User.passcode[8] = 0
                        c9.color = "White"
                    }
                }
            }
        }
    }

    Rectangle {
        id: emergencyBox
        x: 36
        y: 45
        width: 1158
        height: 566
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        visible: false
        anchors.centerIn: parent
        border.color: "#000000"

        Rectangle {
            id: confirm2
            width: 104
            height: 38
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            color: User.headerColor
            border.color: "#000000"
            MouseArea {
                id: confirmButton2
                x: 0
                y: 0
                width: 103
                height: 38

                onClicked:{
                    emergencyBox.visible = false
                }
                onPressed:{
                    confirm2.color = User.subHeaderColor
                }
                onReleased:{
                    confirm2.color = User.headerColor
                }

                Text {
                    id: text10
                    x: 0
                    y: 0
                    width: 105
                    height: 38
                    text: qsTr("Confirm")
                    font.pixelSize: 28
                    font.family: User.font
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Rectangle {
            id: addDoctor
            x: 12
            y: 149
            width: 147
            height: 38
            color: User.headerColor
            anchors.rightMargin: 999
            anchors.bottomMargin: 379
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            border.color: "#000000"
            MouseArea {
                id: confirmButton4
                x: 0
                y: 0
                width: 147
                height: 38

                onPressed:{
                    addDoctor.color = User.subHeaderColor
                }
                onReleased:{
                    addDoctor.color = User.headerColor
                }
            }

            Text {
                id: text15
                x: 0
                y: 0
                width: 147
                height: 38
                text: qsTr("Add Doctor")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }

        Rectangle {
            id: remDoctor
            x: -753
            y: -230
            width: 196
            height: 38
            color: User.headerColor
            anchors.bottomMargin: 379
            anchors.bottom: parent.bottom
            anchors.rightMargin: 716
            anchors.right: parent.right
            border.color: "#000000"
            MouseArea {
                id: confirmButton8
                x: 0
                y: 0
                width: 196
                height: 38

                onPressed:{
                    remDoctor.color = User.subHeaderColor
                }
                onReleased:{
                    remDoctor.color = User.headerColor
                }
            }

            Text {
                id: text19
                x: 0
                y: 0
                width: 196
                height: 38
                text: qsTr("Remove Doctor")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }

        Rectangle {
            id: addAllergy
            x: -701
            y: 42
            width: 147
            height: 38
            color: User.headerColor
            anchors.bottomMargin: 243
            anchors.bottom: parent.bottom
            anchors.rightMargin: 999
            anchors.right: parent.right
            border.color: "#000000"
            MouseArea {
                id: confirmButton5
                x: 0
                y: 0
                width: 147
                height: 38

                onPressed:{
                    addAllergy.color = User.subHeaderColor
                }
                onReleased:{
                    addAllergy.color = User.headerColor
                }
            }

            Text {
                id: text16
                x: 0
                y: 0
                width: 147
                height: 38
                text: qsTr("Add Allergy")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }


        Rectangle {
            id: remAllergy
            x: 246
            y: 285
            width: 199
            height: 38
            color: User.headerColor
            anchors.bottomMargin: 243
            anchors.bottom: parent.bottom
            anchors.rightMargin: 713
            anchors.right: parent.right
            border.color: "#000000"
            MouseArea {
                id: confirmButton7
                x: 0
                y: 0
                width: 199
                height: 38

                onPressed:{
                    remAllergy.color = User.subHeaderColor
                }
                onReleased:{
                    remAllergy.color = User.headerColor
                }
            }

            Text {
                id: text18
                x: 0
                y: 0
                width: 199
                height: 38
                text: qsTr("Remove Allergy")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }

        Rectangle {
            id: addMeds
            x: -701
            y: 179
            width: 197
            height: 38
            color: User.headerColor
            z: 1
            anchors.bottomMargin: 106
            anchors.bottom: parent.bottom
            anchors.rightMargin: 949
            anchors.right: parent.right
            border.color: "#000000"
            MouseArea {
                id: confirmButton6
                x: 0
                y: 0
                width: 197
                height: 38

                onPressed:{
                    addMeds.color = User.subHeaderColor
                }
                onReleased:{
                    addMeds.color = User.headerColor
                }
            }

            Text {
                id: text17
                x: 0
                y: 0
                width: 197
                height: 38
                text: qsTr("Add Medication")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }

        Rectangle {
            id: remMeds
            x: 246
            y: 422
            width: 244
            height: 38
            color: User.headerColor
            anchors.bottomMargin: 106
            anchors.bottom: parent.bottom
            anchors.rightMargin: 668
            anchors.right: parent.right
            border.color: "#000000"
            MouseArea {
                id: confirmButton9
                x: 0
                y: 0
                width: 244
                height: 38

                onPressed:{
                    remMeds.color = User.subHeaderColor
                }
                onReleased:{
                    remMeds.color = User.headerColor
                }
            }

            Text {
                id: text20
                x: 1
                y: 0
                width: 243
                height: 38
                text: qsTr("Remove Medication")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }

        Text {
            id: text22
            x: 12
            y: 240
            text: qsTr("Allergies: Nuts, Lactose-Intolerant")
            font.pixelSize: 20
            font.family: User.font
        }

        Text {
            id: text23
            x: 12
            y: 379
            text: qsTr("Medications: None")
            font.pixelSize: 20
            font.family: User.font
        }

        Text {
            id: text24
            x: 431
            y: 528
            text: qsTr("Emergency Information")
            font.underline: true
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 25
            font.family: User.font
        }

        Rectangle {
            id: addIns
            x: 649
            y: 422
            width: 183
            height: 38
            color: User.headerColor
            z: 1
            anchors.bottomMargin: 106
            anchors.bottom: parent.bottom
            anchors.rightMargin: 326
            anchors.right: parent.right
            border.color: "#000000"
            MouseArea {
                id: confirmButton10
                x: 0
                y: 0
                width: 183
                height: 38

                onPressed:{
                    addIns.color = User.subHeaderColor
                }
                onReleased:{
                    addIns.color = User.headerColor
                }
            }

            Text {
                id: text25
                x: 0
                y: 0
                width: 181
                height: 38
                text: qsTr("Add Insurance")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }

        Rectangle {
            id: addIns1
            x: 879
            y: 422
            width: 245
            height: 38
            color: User.headerColor
            z: 1
            anchors.bottomMargin: 106
            anchors.bottom: parent.bottom
            anchors.rightMargin: 34
            anchors.right: parent.right
            border.color: "#000000"
            MouseArea {
                id: confirmButton11
                x: 0
                y: 0
                width: 245
                height: 38

                onPressed:{
                    addIns1.color = User.subHeaderColor
                }
                onReleased:{
                    addIns1.color = User.headerColor
                }
            }

            Text {
                id: text26
                x: 31
                y: 0
                width: 181
                height: 38
                text: qsTr("Remove  Insurance")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.family: User.font
            }
        }

        Rectangle {
            id: addHealth
            x: 649
            y: 285
            width: 203
            height: 38
            color: User.headerColor
            border.color: "#000000"
            z: 1
            anchors.bottomMargin: 243
            anchors.bottom: parent.bottom
            anchors.rightMargin: 306
            anchors.right: parent.right
            MouseArea {
                id: confirmButton12
                x: 0
                y: 0
                width: 200
                height: 38

                onPressed:{
                    addHealth.color = User.subHeaderColor
                }
                onReleased:{
                    addHealth.color = User.headerColor
                }
            }

            Text {
                id: text39
                x: 5
                y: 0
                width: 195
                height: 38
                text: qsTr("Add Health Issue")
                font.pixelSize: 28
                horizontalAlignment: Text.AlignHCenter
                font.family: User.font
            }
        }

        Rectangle {
            id: addHealth1
            x: 879
            y: 285
            width: 252
            height: 38
            color: User.headerColor
            border.color: "#000000"
            z: 1
            anchors.bottomMargin: 243
            anchors.bottom: parent.bottom
            anchors.rightMargin: 27
            anchors.right: parent.right
            MouseArea {
                id: confirmButton13
                x: 0
                y: 0
                width: 252
                height: 38

                onPressed:{
                    addHealth1.color = User.subHeaderColor
                }
                onReleased:{
                    addHealth1.color = User.headerColor
                }
            }

            Text {
                id: text40
                x: 0
                y: 0
                width: 252
                height: 38
                text: qsTr("Remove Health Issue")
                font.pixelSize: 28
                horizontalAlignment: Text.AlignHCenter
                font.family: User.font
            }
        }

        Text {
            id: text41
            x: 12
            y: 30
            width: 430
            height: 100
            text: "Doctor 1: Name 1\n  Phone Number: (xxx)xxx-xxxx\nDoctor 2: Name 2\n  Phone Number: (xxx)xxx-xxxx"
            font.pixelSize: 20
            font.family: User.font
        }

        Text {
            id: text42
            x: 649
            y: 240
            width: 430
            height: 24
            text: "Health Issue: None"
            font.pixelSize: 20
            font.family: User.font
        }

        Text {
            id: text43
            x: 649
            y: 358
            width: 430
            height: 45
            text: "Insurance: Blue Cross\nPlan #: 123-45678-910"
            font.pixelSize: 20
            font.family: User.font
        }
    }

    Rectangle {
        id: choosePicture
        x: 429
        y: 111
        width: 372
        height: 435
        visible: false
        color: "#ffffff"
        border.color: "#000000"

        Image {
            id: image6
            x: 26
            y: 23
            width: 320
            height: 320
            source: "qrc:/qtquickplugin/images/template_image.png"
        }

        Rectangle {
            id: prev
            x: 26
            y: 363
            width: 50
            height: 50
            color: User.headerColor
            border.color: "#000000"

            Text {
                id: text44
                x: 16
                y: -5
                text: qsTr("-")
                font.pixelSize: 50
            }

            MouseArea {
                id: mousearea1
                x: 0
                y: 0
                width: 50
                height: 50

                onClicked:{
                    User.imageNum--;
                    if(User.imageNum < 0)
                        User.imageNum = User.max - 1;
                    changePicture();
                }
                onPressed:{
                    prev.color = User.subHeaderColor
                }
                onReleased:{
                    prev.color = User.headerColor
                }
            }
        }

        Rectangle {
            id: next
            x: 291
            y: 363
            width: 50
            height: 50
            color: User.headerColor
            border.color: "#000000"

            Text {
                id: text45
                x: 16
                y: 10
                text: qsTr("+")
                font.pixelSize: 25
            }

            MouseArea {
                id: mousearea3
                x: 0
                y: 0
                width: 50
                height: 50

                onClicked:{
                    User.imageNum++;
                    if(User.imageNum >= User.max)
                        User.imageNum = 0;
                    changePicture();
                }
                onPressed:{
                    next.color = User.subHeaderColor
                }
                onReleased:{
                    next.color = User.headerColor
                }
            }
        }

        Rectangle {
            id: confirm4
            x: 101
            y: 363
            width: 166
            height: 50
            color: User.headerColor
            border.color: "#000000"

            Text {
                id: text46
                x: 40
                y: 10
                text: qsTr("Confirm")
                font.pixelSize: 25
            }

            MouseArea {
                id: mousearea2
                x: 0
                y: 0
                width: 166
                height: 50

                onClicked:{
                    choosePicture.visible = false
                    image1.source = image6.source
                }
                onPressed:{
                    confirm4.color = User.subHeaderColor
                }
                onReleased:{
                    confirm4.color = User.headerColor
                }
            }
        }
    }


}

