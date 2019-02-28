import QtQuick 2.0

Rectangle {
    width: app.width
    height: app.fs*5
    Text {
        id: creditos
        text: 'Aplicaciòn creado por @nextsigner\nCopyLeft - Unikode.org 2019'
        font.pixelSize: app.fs*0.8
        horizontalAlignment: Text.AlignHCenter
        anchors.centerIn: parent
    }
}

