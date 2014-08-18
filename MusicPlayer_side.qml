/*
  Music Player Panel (small view)
  MusicPlayer_side.qml
  Author: Nestor Sotres
  Date: 4/9/13

  Functionality:
  This panel would normally link to the individual users's Pandora account to play music.
  This panel is is the smaller version of MusiPlayer.qml in case a user wants to view
  two panels on the screen at once.

  Note:
  * Web content does not work due to some bugs in QtWebKit 3.0
  * I have already discussed this with the Professor and he said
  * it was fine. Please refer to Lore if need be.
  * Instead, the intended behavior will be simulated. This panel
  * will display an image of the Pandora UI and play a music file
  * when the play button (image) is clicked/touched.

*/

import QtQuick 2.0
import QtMultimedia 5.0
//import QtWebKit 3.0


/* Code that was not supported by Qt at the time of development due to bugs. See note at top of file.
Rectangle {
    width: 1230;
    height: 656
    color: "violet"
    WebView {
        id: web0
        anchors.fill: parent
        scale: 1.0
        smooth: false
        clip: false
        //settings.pluginsEnabled: true //cant enable due to bug with QtWebKit3.0
    }

    Component.onCompleted: {
        web0.url = "http://www.pandora.com/account/sign-in"
    }

}*/
Rectangle {
    width: 595
    height: 656

    property string name: ""

    Text {
    text: "Click Me!";
    font.pointSize: 24;
    width: 150; height: 50;


    }
    MediaPlayer {
    id: playMusic
    source: "images/felix/MusicFiles/DKClip.wav"
    }
    MouseArea {
    id: playArea
    anchors.fill: parent
    onPressed: { playMusic.play();
        musicPlayerPandora.source= "images/felix/PandoraPanel2.jpg"
    }
    }
    Image{
        id: musicPlayerPandora
        anchors.fill: parent
        source:"images/felix/PandoraPanel.jpg"
    }
}
