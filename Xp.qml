import QtQuick 2.0

Rectangle {
    id: r
    property string text: '?'
    property string qml: '?'
    property string idData: '?'
    property int num: -1
    width: xApp.width
    height: children.length>0?children[0].height:0
    Component.onCompleted: {
        var comp = Qt.createComponent(r.qml+'.qml')
        var obj = comp.createObject(r, {"num":r.num, "text":r.text, "idData":r.idData})
    }
}

