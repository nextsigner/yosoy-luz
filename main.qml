import QtQuick 2.7
import QtQuick.Controls 2.0
ApplicationWindow{
    id: app
    visible: true
    property int fs: app.width*0.04
    width: 560
    height: 700

    Item{
        id: xTit
        z:lv.z+1
        width: parent.width
        height: app.fs*4
        Rectangle{
            width: parent.width
            height: parent.height
            color: "black"
            gradient: Gradient {
                GradientStop {
                    position: 0.00;
                    color: "#e11ce4";
                }
                GradientStop {
                    position: 0.52;
                    color: "#ffffff";
                }
                GradientStop {
                    position: 1.00;
                    color: "#e815d7";
                }
            }
            y:lv.contentY===0?0:0-height

            Behavior on y{
                NumberAnimation {
                    duration: 600
                    easing.type: Easing.InOutQuad
                }
            }
            Row{
                anchors.centerIn: parent
                height: parent.height
                Image {
                    id: logo
                    source: "./img/logo_yosoy.png"
                    width: parent.parent.height-app.fs*0.5
                    height: width
                    fillMode: Image.PreserveAspectCrop
                }
                Text{
                    id: tit
                    text:'<b>YoSoY</b>'
                    font.pixelSize: app.fs
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }
    ListView{
        id:lv
        delegate: del
        model: lm
        ScrollBar.vertical: ScrollBar {}
        spacing: app.fs*0.5
        width: app.width
        height:app.height-xTit.height
        anchors.horizontalCenter: parent.horizontalCenter
        ListModel{
            id: lm
            ListElement{txt:"¿Que es YoSoY?"; q:"Xh"; idd:"i1"}
            ListElement{txt:"¿Para què sirve?"; q:"BotonLista"; idd:"i2"}
            ListElement{txt:"¿Còmo funciona?"; q:"X1"; idd:"i3"}
            ListElement{txt:"Màs informaciòn"; q:"X1"; idd:"i4"}
        }
    }

    Component{
        id: del
        Xp{
            text: txt
            qml: q
            num: index
            idData: idd
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
