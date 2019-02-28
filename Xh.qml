import QtQuick 2.0

Rectangle {
    id: r
    width: xApp.width
    height: parent.parent.parent.height
    border.width: 2
    border.color: app.c0
    property int v: 0
    onWidthChanged: {
        if(r.v>0){
            img1.x=0-img1.width-app.fs
        }
        tan.restart()
    }
    Timer{
        id: tan
        repeat: false
        interval: 1000
        onTriggered: seq1.start()
    }
    Image{
        id: img1
        width: r.width>r.height?r.height*0.8:r.width*0.8
        height: width
        source: './img/logo_yosoy.png'
        anchors.verticalCenter: parent.verticalCenter
        x:0-img1.width-app.fs
        Behavior on x {
            NumberAnimation {
                duration: 1000
                easing.type: Easing.OutBounce
            }
        }
        Behavior on width {
            NumberAnimation {
                duration: 1500
                easing.type: Easing.InOutQuad
            }
        }
        Behavior on rotation {
            NumberAnimation {
                duration: 1500
                easing.type: Easing.InOutQuad
            }
        }
    }
    Text {
        id: txt1
        text: '<b>YoSoY</b>'
        font.pixelSize: img1.width*0.1
        anchors.top: img1.bottom
        anchors.topMargin: 0-img1.width*0.1
        x: r.width
        //anchors.horizontalCenter: img1.horizontalCenter
        Behavior on x {
            NumberAnimation {
                duration: 1500
                easing.type: Easing.OutBounce
            }
        }
    }
    SequentialAnimation{
        id: seq1
        running: true
        NumberAnimation {
            target: img1
            property: "rotation"
            duration: 1500
            from:0
            to: -600
            easing.type: Easing.OutElastic
        }
        ScriptAction{
            script: {
                img1.x=0-img1.width-app.fs
            }
        }
        ScriptAction{
            script: {
                img1.x=r.width/2-img1.width/2
                txt1.x=r.width
            }
        }

        ScriptAction{
            script: {
                txt1.x=r.width/2-txt1.width/2
            }
        }
    }
    MouseArea{
        anchors.fill: r
        //onClicked: r.parent.parent.parent.currentIndex=1
    }
}

