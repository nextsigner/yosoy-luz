import QtQuick 2.0

Rectangle {
    id: r
    width: xApp.width
    height: parent.parent.height
    //color: '#ff8833'
    border.width: 2
    border.color: app.c0
    MouseArea{
        anchors.fill: r
        hoverEnabled: true
        onEntered: {
            r.parent.parent.parent.desplazar=false
        }
        onExited: {
            r.parent.parent.parent.desplazar=true
        }
        onClicked: {
            r.parent.parent.parent.desplazar=!r.parent.parent.parent.desplazar
        }
    }
    Text {
        id: creditos
        text: 'YoSoY Mi Ciudad'
        font.pixelSize: app.fs*2
        anchors.centerIn: parent
    }
}

