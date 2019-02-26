import QtQuick 2.0

Rectangle {
    id: r
    property string text: '?'
    property string qml: '?'
    property int num: -1
    width: parent.width
    height: xTxt.height+contenido.height+app.fs*0.5
    //border.width: 2
    //border.color: 'black'
    //radius: app.fs*0.1
    Rectangle{
        id: xTxt
        width: app.fs*10+app.fs*1.4
        height: txt.contentHeight+app.fs
        anchors.horizontalCenter: parent.horizontalCenter
        //color: 'blue'
        border.width: 2
        border.color: 'black'
        color: contenido.children.length===0?'white':'black'
        Rectangle{
            width: app.fs*1.4
            height: parent.height
            color: 'black'
            Text {
                id: txtNum
                text: '<b>'+r.num+'.</b>'
                font.pixelSize: app.fs
                color: 'white'
                anchors.centerIn: parent
            }
        }
        Text {
            id: txt
            text: r.text
            font.pixelSize: app.fs
            width: parent.width-app.fs
            wrapMode: Text.WordWrap
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: app.fs*1.4
            color: contenido.children.length===0?'black':'white'
                                                      }
    }
    MouseArea{
        anchors.fill: r
        onClicked: {
            if(contenido.children.length===0){
            var comp = Qt.createComponent(r.qml+'.qml')
            var obj = comp.createObject(contenido, {})
            }else{
                contenido.children[0].opacity=0.0
            }
        }
    }
    Rectangle{
        id: contenido
        //color: 'red'
        //border.width: 2
        //border.color: 'blue'
        width: app.width-app.fs
        height: children.length>=1?children[0].height+app.fs*0.5:0
        anchors.top: xTxt.bottom
        anchors.topMargin: app.fs*0.5
        anchors.horizontalCenter: parent.horizontalCenter
        Behavior on height {
            NumberAnimation {
                duration: 500
                easing.type: Easing.InOutQuad
            }
        }
    }
    function vaciar(){
        for(var i=0;i<contenido.children.length;i++){
            contenido.children[i].destroy(10)
        }
    }
}

