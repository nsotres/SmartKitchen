import QtQuick 2.0
import "obj.js" as Json
import "create.js" as Myscript

Rectangle{
    id:rectmain
    height:656
    width:1230
    Component.onCompleted:{ var doc = new XMLHttpRequest();
    doc.onreadystatechange = function() {
       if (doc.readyState == XMLHttpRequest.DONE) {
           Json.data = eval('(' + doc.responseText + ')');

        }
       loadmb(Json.data)
   }
       doc.open("GET", "final.json");
       doc.send();


}
   function loadmb(jsonObject)
    {
        text10.text=jsonObject.recipe.breakfast[0].lowcal[0].name
        text11.text=jsonObject.recipe.breakfast[0].lowcal[0].Destination[0].materials
        text12.text=jsonObject.recipe.breakfast[0].lowcal[0].Destination[0].steps
        image30.source=jsonObject.recipe.breakfast[0].lowcal[0].location

    }
    function loadml(jsonObject)
    {
        text10.text=jsonObject.recipe.ld[0].vegetarian[1].name
        text11.text=jsonObject.recipe.ld[0].vegetarian[1].Destination[0].materials
        text12.text=jsonObject.recipe.ld[0].vegetarian[1].Destination[0].steps
        image30.source=jsonObject.recipe.ld[0].vegetarian[1].location
        //console.log(jsonObject.recipe.id[0].vegetarian[1].name)

    }
    function loadmd(jsonObject)
    {
        text10.text=jsonObject.recipe.ld[0].lowcal[0].name
        text11.text=jsonObject.recipe.ld[0].lowcal[0].Destination[0].materials
        text12.text=jsonObject.recipe.ld[0].lowcal[0].Destination[0].steps
        image30.source=jsonObject.recipe.ld[0].lowcal[0].location

    }
    function loadtb(jsonObject)
    {
        text10.text=jsonObject.recipe.breakfast[0].highpro[0].name
        text11.text=jsonObject.recipe.breakfast[0].highpro[0].Destination[0].materials
        text12.text=jsonObject.recipe.breakfast[0].highpro[0].Destination[0].steps
        image30.source=jsonObject.recipe.breakfast[0].highpro[0].location
    }
    function loadtl(jsonObject)
    {
        text10.text=jsonObject.recipe.ld[0].highpro[0].name
        text11.text=jsonObject.recipe.ld[0].highpro[0].Destination[0].materials
        text12.text=jsonObject.recipe.ld[0].highpro[0].Destination[0].steps
        image30.source=jsonObject.recipe.ld[0].highpro[0].location
    }
    function loadtd(jsonObject)
    {
        text10.text=jsonObject.recipe.ld[0].lowcal[1].name
        text11.text=jsonObject.recipe.ld[0].lowcal[1].Destination[0].materials
        text12.text=jsonObject.recipe.ld[0].lowcal[1].Destination[0].steps
        image30.source=jsonObject.recipe.ld[0].lowcal[1].location
    }
    function loadempty()
    {
        text10.text=""
        text11.text=""
        text12.text=""
        image30.source=""
    }
    function loadsd(jsonObject)
    {
        text10.text=jsonObject.recipe.ld[0].vegetarian[0].name
        text11.text=jsonObject.recipe.ld[0].vegetarian[0].Destination[0].materials
        text12.text=jsonObject.recipe.ld[0].vegetarian[0].Destination[0].steps
        image30.source=jsonObject.recipe.ld[0].vegetarian[0].location
    }

Rectangle {
    id: rectangle1
    x: 135
    y: 59
    width: 436
    height: 449
    color: "#ffffff"
    border.color: "black"
    border.width: 3


    Text {
        id: text1
        x: 0
        y: -29
        text: qsTr("Meal Schedule")
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle25
        x: 3
        y: 3
        width: 431
        height: 54
        color: Json.geth()
        border.color: "black"

        Text {
            id: text9
            x: 150
            y: 15
            text: qsTr("Breakfast")
            font.pixelSize: 20
        }
        MouseArea{


            anchors.fill: parent
            onClicked: {
                rectangle25.color=Json.geth()
                rectangle26.color="white"
                rectangle27.color="white"
                rectangle25.y=3
                rectangle28.y=57
                rectangle26.y=338
                rectangle27.y=392
                Json.clicktitle=1
                if(Json.clickflag==1)
                    loadmb(Json.data)
                else if(Json.clickflag==2)
                    loadtb(Json.data)
                else
                    loadempty()
            }
        }
    }

        Rectangle {
            id: rectangle28
            x: 4
            y: 57
            width: 429
            height: 281
            color: "#ffffff"
            clip: true
         Flickable{
             x: -5
             y: 0
             width: 429
             height: 281
             anchors.bottomMargin: 0
             anchors.leftMargin: -5
             anchors.topMargin: 0
             anchors.rightMargin: 0



             anchors.fill: parent
             contentWidth: rectangle29.width; contentHeight: rectangle29.height
            Rectangle {
                id: rectangle29
                x: 5
                y: 0
                width: 429
                height: 540
                color: Json.gett()


                Text {
                    id: text32
                    x: 5
                    y: 13
                    width: 34
                    height: 15
                    text: qsTr("Name")
                    font.pixelSize: 12
                }

                Text {
                    id: text33
                    x: 0
                    y: 65
                    text: qsTr("Ingredients:")
                    font.pixelSize: 12
                }

                Text {
                    id: text34
                    x: 0
                    y: 303
                    text: qsTr("Directions:")
                    font.pixelSize: 12
                }

                Text {
                    id: text10
                    x: 30
                    y: 38
                    width: 23
                    height: 15
                    text:""
                    font.pixelSize: 12

                }

                Text {
                    id: text11
                    x: 30
                    y: 100
                    text: ""
                    font.pixelSize: 12
                }

                Text {
                    id: text12
                    x: 31
                    y: 341
                    width: 22
                    height: 15
                    text: ""
                    font.pixelSize: 12
                }

                Rectangle {
                    id: rectangle30
                    x: 283
                    y: 0
                    width: 105
                    height: 80
                    color: "#ffffff"
                    border.color: "black"
                    BorderImage {
                        id: image30
                        source: ""
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: rectangle31
                    x: 397
                    y: 0
                    width: 32
                    height: 21
                    color:Json.geth()
                    border.color: "black"


                    Text {
                        id: text13
                        x: 5
                        y: 4
                        text: qsTr("edit")
                        font.pixelSize: 12
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            rectangle32.visible=true
                        }
                    }
                }

                Rectangle {
                    id: rectangle32
                    x: 95
                    y: 21
                    width: 302
                    height: 250
                    color: Json.gett()
                    border.color: "black"
                    visible:false

                    Rectangle {
                        id: rectangle33
                        x: 20
                        y: 8
                        width: 191
                        height: 28
                        color: "white"
                        border.color: "black"
                        radius:10
                        TextInput{
                            id:textsearch
                            x: 6
                            y: 0
                            width: 185
                            height: 28
                            anchors.bottomMargin: 0
                            anchors.leftMargin: 6
                            anchors.fill:parent
                            font.pixelSize: 15
                            focus:true

                        }
                    }

                    Rectangle {
                        id: rectangle34
                        x: 230
                        y: 3
                        width: 41
                        height: 36
                        color: "white"
                        border.color: "black"
                        BorderImage {

                            source: "images/image/search.png"
                            anchors.fill: parent
                        }
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                            rectangle32.visible=false
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle36
                        x: 0
                        y: 45
                        width: 302
                        height: 205
                        color: "#ffffff"
                        clip: true
                        Flickable {
                            anchors.fill: rectangle36
                                contentWidth: grid1.width; contentHeight: grid1.height
                                //contentX: 595; contentY: 377
                                //atYBeginning : true
                                //atYEnd :true


                             Grid{
                             //anchors.fill: parent
                             id:grid1
                             Component.onCompleted: {

                                 Myscript.createRects(16,"Rectnarrow.qml",grid1,0);
                                 Myscript.setTest(12)
                             //flow: Grid.TopToBottom
                             }
                             columns:1
                             spacing:1
                         }
                        }
                    }
                }
            }
        }
       }


    Rectangle {
        id: rectangle26
        x: 3
        y: 338
        width: 431
        height: 54
        color: "#ffffff"
        border.color: "black"
        Text {
            id: text30
            x: 186
            y: 15
            text: qsTr("Lunch")
            font.pixelSize: 20
        }
        MouseArea{

            anchors.fill: parent
            onClicked: {
                rectangle26.color=Json.geth()
                rectangle25.color="white"
                rectangle27.color="white"
                Json.clicktitle=2
                rectangle25.y=3
                rectangle28.y=111
                rectangle26.y=57
                rectangle27.y=392
                if(Json.clickflag==1)
                    loadml(Json.data)
                else if(Json.clickflag==2)
                    loadtd(Json.data)
                else
                    loadempty()
            }
        }
    }

    Rectangle {
        id: rectangle27
        x: 3
        y: 392
        width: 431
        height: 54
        color: "#ffffff"
        border.color: "black"
        Text {
            id: text31
            x: 183
            y: 15
            text: qsTr("Dinner")
            font.pixelSize: 20
        }
        MouseArea{

            anchors.fill: parent
            onClicked: {
                rectangle27.color=Json.geth()
                rectangle26.color="white"
                rectangle25.color="white"
                Json.clicktitle=3
                rectangle25.y=3
                rectangle28.y=165
                rectangle26.y=57
                rectangle27.y=111
                if(Json.clickflag==1)
                    loadmd(Json.data)
                else if(Json.clickflag==2)
                    loadtd(Json.data)
                else
                    loadempty()
            }
        }
    }

}

Rectangle {
    id: rectangle2
    x: 34
    y: 121
    width: 101
    height: 39
    color: Json.geth()
    border.color: "black"
    border.width: 3

    Text {
        id: text2
        x: 28
        y: 12
        text: qsTr("Monday")
        font.pixelSize: 12
    }
    MouseArea {

           anchors.fill: parent
           onClicked: { parent.color = Json.geth()
               rectangle8.color='white'
               rectangle5.color='white'
               rectangle3.color='white'
               rectangle4.color='white'
               rectangle6.color='white'
               rectangle7.color='white'
               //Json.monb=Json.data.recipe.breakfast[0].lowcal[0].name
               Json.clickflag=1
               if(Json.clicktitle==1)
               loadmb(Json.data);
               if(Json.clicktitle==2)
                loadml(Json.data);
               if(Json.clicktitle==3)
                   loadmd(Json.data);

               //Json.monl=Json.data.recipe.ld[0].lowcal[0].name
               //text13.text=Json.monl;
               //Json.mond=Json.data.recipe.ld[0].lowcal[0].name
               //text14.text=Json.mond;
           }
    }
}

Rectangle {
    id: rectangle3
    x: 34
    y: 170
    width: 101
    height: 42
    color: "#ffffff"
    border.color: "black"
    border.width: 3

    Text {
        id: text3
        x: 26
        y: 14
        text: qsTr("Tuseday")
        font.pixelSize: 12
    }
    MouseArea {

           anchors.fill: parent
           onClicked: { parent.color = Json.geth()
               rectangle8.color='white'
               rectangle2.color='white'
               rectangle5.color='white'
               rectangle4.color='white'
               rectangle6.color='white'
               rectangle7.color='white'
              // parent.x=parent.x+2
              // parent.y=parent.y+4
               Json.clickflag=2
               if(Json.clicktitle==1)
                loadtb(Json.data);
               if(Json.clicktitle==2)
                loadtl(Json.data);
               if(Json.clicktitle==3)
                loadtd(Json.data);


           }
    }
}

Rectangle {
    id: rectangle4
    x: 34
    y: 224
    width: 101
    height: 40
    color: "#ffffff"
    border.color: "black"
    border.width: 3

    Text {
        id: text4
        x: 21
        y: 13
        text: qsTr("Wednsday")
        font.pixelSize: 12
    }
    MouseArea {

           anchors.fill: parent
           onClicked: { parent.color = Json.geth()
               rectangle8.color='white'
               rectangle2.color='white'
               rectangle5.color='white'
               rectangle3.color='white'
               rectangle6.color='white'
               rectangle7.color='white'
               Json.clickflag=3
               loadempty()
           }
    }
}

Rectangle {
    id: rectangle5
    x: 34
    y: 275
    width: 101
    height: 41
    color: "#ffffff"
    border.color: "black"
    border.width: 3

    Text {
        id: text5
        x: 24
        y: 13
        text: qsTr("Thursday")
        font.pixelSize: 12
    }
    MouseArea {

           anchors.fill: parent
           onClicked: { parent.color = Json.geth()
               rectangle8.color='white'
               rectangle2.color='white'
               rectangle3.color='white'
               rectangle4.color='white'
               rectangle6.color='white'
               rectangle7.color='white'
              loadempty()
               Json.clickflag=3
           }
    }
}

Rectangle {
    id: rectangle6
    x: 34
    y: 328
    width: 101
    height: 42
    color: "#ffffff"
    border.color: "black"
    border.width: 3


    Text {
        id: text6
        x: 33
        y: 14
        text: qsTr("Friday")
        font.pixelSize: 12
    }

    MouseArea {

           anchors.fill: parent
           onClicked: { parent.color = Json.geth()
               rectangle1.color='white'
               rectangle2.color='white'
               rectangle3.color='white'
               rectangle4.color='white'
               rectangle5.color='white'
               rectangle7.color='white'
               loadempty()
               Json.clickflag=3

           }
       }
}

Rectangle {
    id: rectangle7
    x: 34
    y: 381
    width: 101
    height: 38
    color: "#ffffff"
    border.color: "black"
    border.width: 3

    Text {
        id: text7
        x: 25
        y: 12
        text: qsTr("Saturday")
        font.pixelSize: 12
    }
    MouseArea {

           anchors.fill: parent
           onClicked: { parent.color = Json.geth()
               rectangle8.color='white'
               rectangle2.color='white'
               rectangle5.color='white'
               rectangle4.color='white'
               rectangle6.color='white'
               rectangle3.color='white'
               loadempty()
               Json.clickflag=3
           }
    }
}

Rectangle {
    id: rectangle8
    x: 34
    y: 431
    width: 101
    height: 35
    color: "#ffffff"
    border.color: "black"
    border.width: 3

    Text {
        id: text8
        x: 30
        y: 10
        text: qsTr("Sunday")
        font.pixelSize: 12
    }
    MouseArea {

           anchors.fill: parent
           onClicked: { parent.color = Json.geth()
               rectangle3.color='white'
               rectangle2.color='white'
               rectangle5.color='white'
               rectangle4.color='white'
               rectangle6.color='white'
               rectangle7.color='white'
               loadempty()
               Json.clickflag=3
           }
    }
}

Rectangle {
    id: rectangle9
    x: 661
    y: 83
    width: 417
    height: 383
    color: Json.gett()
    border.color: "black"
    border.width: 3

    Text {
        id: text18
        x: 84
        y: 41
        text: qsTr("Mon")
        font.pixelSize: 14
    }

    Text {
        id: text19
        x: 84
        y: 78
        text: qsTr("Tue")
        font.pixelSize: 14
    }

    Text {
        id: text20
        x: 84
        y: 121
        text: qsTr("Wen")
        font.pixelSize: 14
    }

    Text {
        id: text21
        x: 84
        y: 163
        text: qsTr("Tr")
        font.pixelSize: 14
    }

    Text {
        id: text22
        x: 84
        y: 203
        text: qsTr("Fri")
        font.pixelSize: 14
    }

    Text {
        id: text23
        x: 84
        y: 249
        text: qsTr("Sat")
        font.pixelSize: 14
    }

    Rectangle {
        id: rectangle13
        x: 33
        y: 39
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion13
            anchors.fill: parent
            onClicked: {
                if(Json.clickmon%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clickmon++
            }

        }
    }

    Rectangle {
        id: rectangle14
        x: 33
        y: 76
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion14
            anchors.fill: parent
            onClicked: {
                if(Json.clicktue%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clicktue++
            }

        }
    }

    Rectangle {
        id: rectangle15
        x: 33
        y: 119
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion15
            anchors.fill: parent
            onClicked: {
                if(Json.clickwen%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clickwen++
            }

        }
    }

    Rectangle {
        id: rectangle16
        x: 33
        y: 161
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion16
            anchors.fill: parent
            onClicked: {
                if(Json.clicktr%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clicktr++
            }

        }
    }

    Rectangle {
        id: rectangle17
        x: 33
        y: 201
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion17
            anchors.fill: parent
            onClicked: {
                if(Json.clickfri%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clickfri++
            }

        }
    }

    Rectangle {
        id: rectangle18
        x: 33
        y: 247
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion18
            anchors.fill: parent
            onClicked: {
                if(Json.clicksat%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clicksat++
            }

        }
    }

    Text {
        id: text24
        x: 84
        y: 286
        text: qsTr("Sun")
        font.pixelSize: 14

    }

    Rectangle {
        id: rectangle19
        x: 33
        y: 284
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion19
            anchors.fill: parent
            onClicked: {
                if(Json.clicksun%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clicksun++
            }

        }
    }

    Rectangle {
        id: rectangle20
        x: 186
        y: 39
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion20
            anchors.fill: parent
            onClicked: {
                if(Json.clickveg%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clickveg++
            }

        }
    }

    Rectangle {
        id: rectangle21
        x: 186
        y: 76
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion21
            anchors.fill: parent
            onClicked: {
                if(Json.clicknotspi%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clicknotspi++
            }

        }

    }

    Rectangle {
        id: rectangle22
        x: 186
        y: 119
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion22
            anchors.fill: parent
            onClicked: {
                if(Json.clicklowcal%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clicklowcal++
            }

        }
    }

    Rectangle {
        id: rectangle23
        x: 186
        y: 161
        width: 24
        height: 22
        color: "#ffffff"
        border.color: "black"
        MouseArea{
            id:mouseRegion23
            anchors.fill: parent
            onClicked: {
                if(Json.clickhighpro%2==0)
                    parent.color=Json.geth()
                else
                    parent.color="white"
                Json.clickhighpro++
            }

        }
    }

    Text {
        id: text25
        x: 245
        y: 41
        text: qsTr("Vegetarian")
        font.pixelSize: 14
    }

    Text {
        id: text26
        x: 245
        y: 78
        text: qsTr("Not spicy")
        font.pixelSize: 14
    }

    Text {
        id: text27
        x: 245
        y: 121
        text: qsTr("Low sugar")
        font.pixelSize: 14
    }

    Text {
        id: text28
        x: 245
        y: 163
        text: qsTr("Low Protein")
        font.pixelSize: 14
    }

    Rectangle {
        id: rectangle24
        x: 186
        y: 279
        width: 139
        height: 32
        color: Json.geth()
        border.color: "black"
        border.width: 3

        Text {
            id: text29
            x: 24
            y: 9
            text: qsTr("Auto Generate")
            font.pixelSize: 12
        }
        MouseArea {
               id:mouseRegion24
               anchors.fill: parent
               onClicked: {


                   loadsd(Json.data)


               }

               states: [

                   State {

                       name: "Pressed"
                         when: mouseRegion24.pressed == true
                         PropertyChanges { target: rectangle24; color: "#ffffff" }
            }

        ]
      }
    }
}

Rectangle {
    id: rectangle10
    x: 661
    y: 47
    width: 136
    height: 36
    color: Json.geth()
    border.color: "black"
    border.width: 3

    Text {
        id: text15
        x: 35
        y: 11
        text: qsTr("Breakfast")
        font.pixelSize: 12
    }
    MouseArea{


        anchors.fill: parent
        onClicked: {
            rectangle10.color=Json.geth()
            rectangle11.color="white"
            rectangle12.color="white"
            Json.clickb=1
            Json.clickl=0
            Json.clickd=0

        }
    }
}

Rectangle {
    id: rectangle11
    x: 797
    y: 47
    width: 136
    height: 36
    color: "#ffffff"
    border.color: "black"
    border.width: 3

    Text {
        id: text16
        x: 43
        y: 11
        text: qsTr("Lunch")
        font.pixelSize: 12
    }
    MouseArea{


        anchors.fill: parent
        onClicked: {
            rectangle11.color=Json.geth()
            rectangle10.color="white"
            rectangle12.color="white"
            Json.clickb=0
            Json.clickl=1
            Json.clickd=0

        }
    }
}

Rectangle {
    id: rectangle12
    x: 933
    y: 47
    width: 136
    height: 36
    color: "#ffffff"
    border.color: "black"
    border.width: 3

    Text {
        id: text17
        x: 49
        y: 11
        text: qsTr("Dinner")
        font.pixelSize: 12
    }
    MouseArea{


        anchors.fill: parent
        onClicked: {
            rectangle12.color=Json.geth()
            rectangle11.color="white"
            rectangle10.color="white"
            Json.clickb=0
            Json.clickl=0
            Json.clickd=1

        }
    }
}

Rectangle {
    id: rectangle35
    x: 21
    y: 567
    width: 70
    height: 70
    color: "#ffffff"
    border.color: "black"
    border.width: 3
    BorderImage {
        id: name
        x: 0
        y: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        source: "images/image/back.png"
        anchors.fill: parent
    }
    MouseArea{
        x: 0
        y: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        onPressed: {
            //parent.color=Json.geth()
            rectmain.visible=false
        }
    }
}
}
