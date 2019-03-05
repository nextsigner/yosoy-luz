import QtQuick 2.0

Rectangle {
    id: r
    width: parent.width
    height: parent.height
    Text{
        text: '\uf060'
        font.family: "FontAwesome"
        font.pixelSize: app.fs
        anchors.left: r.left
        anchors.leftMargin: app.fs
        anchors.top: r.top
        anchors.topMargin: app.fs
        MouseArea{
            width: parent.width*1.2
            height: parent.height*1.2
            anchors.centerIn: parent
            onClicked: r.destroy(10)
        }
    }

    Column{
        anchors.centerIn: parent
        LogoMC{
            id: logoMC
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text: 'MI Ciudad'
            anchors.centerIn: r
            font.pixelSize: app.fs
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}

