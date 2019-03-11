import QtQuick 2.0
import QtQuick.Controls 2.0
Button{
    anchors.horizontalCenter: parent.horizontalCenter
    text: 'Ver màs informaciòn'
    font.pixelSize: app.fs
    onClicked: {
        var comp = Qt.createComponent('Xmc.qml')
        var obj = comp.createObject(xAppFS, {})
    }
}
