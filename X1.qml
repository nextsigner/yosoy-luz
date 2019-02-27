import QtQuick 2.0

Item {
    id: r
    width: parent.width
    height: txt.contentHeight
    property string idData
    Behavior on opacity{
        NumberAnimation {
            duration: 500
        }
    }
    onOpacityChanged: {
        if(opacity<0.2){
            r.destroy(10)
        }
    }
    Text {
        id: txt
        font.pixelSize: app.fs
        width: r.width
        wrapMode: Text.WordWrap
        textFormat: Text.RichText
        onLinkActivated: {}
    }

    Rectangle{
        id: l1
        width: r.width
        height: r.height
        Behavior on height{
            NumberAnimation {
                duration: 500
                easing.type: Easing.InOutQuad
            }
        }
    }
    Timer{
        running: true
        interval: 500
        onTriggered: {
            l1.height=0
        }
    }
    Component.onCompleted: {
        var t=''+unik.getFile(r.idData)
        txt.text=t
    }
}

