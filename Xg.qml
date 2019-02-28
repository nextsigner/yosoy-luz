import QtQuick 2.0

Rectangle {
    id: r
    width: xApp.width
    height: parent.parent.parent.height-app.fs*3
    border.width: 4
    border.color: 'blue'
    property int v: 0
    Timer{
        running: lv3.desplazar
        repeat: true
        interval: 4000
        onTriggered: {
            if(lv3.currentIndex===0){
                lv3.currentIndex=1
            }else{
                lv3.currentIndex=0
            }
        }
    }
    ListView{
        id:lv3
        delegate: del3
        model: lm3
        width: r.width
        height:r.height
        //anchors.horizontalCenter: parent.horizontalCenter
        //boundsBehavior: ListView.StopAtBounds
        orientation: ListView.Horizontal
        //contentX: 100
        property bool desplazar: true
        ListModel{
            id: lm3
            ListElement{q:"Xh"; }
            ListElement{q:"Xg1"; }
        }
        Component{
            id: del3
            Xp{qml: q;}
        }
    }
}

