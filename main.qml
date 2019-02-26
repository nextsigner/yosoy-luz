import QtQuick 2.7
import QtQuick.Controls 2.0
ApplicationWindow{
    id: app
    visible: true
    //visibility: 'FullScreen'
    property int fs: app.width*0.04
    width: 560
    height: 700
    Column{
        Rectangle{
            id: xTit
            z:lv.z+1
            width: parent.width
            height: app.fs*1.4
            Text{
                id: tit
                text:'<b>YoSoY</b>'
                font.pixelSize: app.fs
                anchors.centerIn: parent
            }
        }
        ListView{
            id:lv
            delegate: del
            model: lm
            spacing: app.fs*0.5
            width: app.width
            height:app.height-xTit.height
            anchors.horizontalCenter: parent.horizontalCenter
            ListModel{
                id: lm
                ListElement{txt:"¿Que es YoSoY?"; q:"X1"}
                ListElement{txt:"¿Para què sirve?"; q:"X1"}
                ListElement{txt:"¿Quièn lo ha creado?"; q:"X1"}
            }
        }
    }
    Component{
        id: del
        BotonLista{
            text: txt
            qml: q
            num: index+1
        }
    }
    Shortcut{
        enabled: Qt.platform.os!=='android'
        sequence: 'Esc'
        onActivated: {
            if(app.visibility===ApplicationWindow.FullScreen){
                app.visibility=ApplicationWindow.Windowed
                return
            }
            Qt.quit()
        }
    }
    Shortcut{
        enabled: Qt.platform.os!=='android'
        sequence: 'Ctrl+r'
        onActivated: console.log('rr')
    }
}
