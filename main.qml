import QtQuick 2.7
import QtQuick.Controls 2.0
ApplicationWindow{
    id: app
    visible: true
    property int fs: app.width<app.height?app.width*0.04:app.height*0.025
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
        width: app.width
        height:app.height
        anchors.horizontalCenter: parent.horizontalCenter
        boundsBehavior: ListView.StopAtBounds

        ListModel{
            id: lm
            ListElement{q:"Xh"; }
            ListElement{q:"Xl1";}
            ListElement{ q:"Xf1"; }
        }
        Component{
            id: del
            Xp{qml: q;}
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
