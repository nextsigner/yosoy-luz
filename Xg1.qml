import QtQuick 2.0
import QtQuick.Controls 2.0

/*Poner el Carnaval en Septiembre*/

Rectangle {
    id: r
    width: xApp.width
    height: parent.parent.height
    clip: true
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
    Column{
        anchors.centerIn: parent
        Text {
            text: 'Ya està disponible!'
            font.pixelSize: app.fs*1.2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Rectangle{
            id: xImgMC
            z:infoMC1.z+1
            width: app.fs*8
            height: width
            color: 'blue'
            anchors.horizontalCenter: parent.horizontalCenter
            Image{
                id: logoMC
                property int exp: app.fs*2
                width: parent.width
                height: parent.width
                source: './img/logo_yosoy_luz.png'
                anchors.centerIn: parent
            }
        }
        Rectangle{
            width: infoMC1.contentWidth+app.fs
            height: infoMC1.font.pixelSize*1.2
            color: infoMC1.arrayColors[infoMC1.index]
            Rectangle{
                width: parent.width
                height: parent.height
                color: parent.color
                Behavior on width{
                    NumberAnimation{duration:800}
                }
                Behavior on height{
                    NumberAnimation{duration:800}
                }
                Rectangle{
                    width: app.fs*2
                    height: 2
                    color: parent.color
                    anchors.left: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    Rectangle{
                        width: 2
                        height: app.fs*30
                        color: parent.color
                        anchors.bottom: parent.top
                        anchors.right: parent.right
                        Rectangle{
                            id: cir2
                            width: app.fs*30
                            height: 2
                            color: parent.color
                            anchors.left: parent.left
                            Rectangle{
                                id: ccir2
                                width: 6
                                height: 6
                                anchors.left: parent.left
                                anchors.leftMargin: -3
                                y:-3
                                color: parent.color
                                radius: width*0.5
                                SequentialAnimation{
                                    running: true
                                    loops: Animation.Infinite
                                    NumberAnimation {
                                        target: ccir2
                                        property: "width"
                                        to: 10
                                        duration: 500
                                        easing.type: Easing.InOutElastic
                                    }
                                    NumberAnimation {
                                        target: ccir2
                                        property: "width"
                                        to: 6
                                        duration: 500
                                        easing.type: Easing.InOutElastic
                                    }
                                }

                            }
                            SequentialAnimation{
                                running: true
                                loops: Animation.Infinite
                                NumberAnimation {
                                    target: cir2
                                    property: "y"
                                    to: cir2.parent.height-app.fs*5
                                    duration: 10000
                                    easing.type: Easing.InOutElastic
                                }
                                NumberAnimation {
                                    target: cir2
                                    property: "y"
                                    to: cir2.parent.height-app.fs
                                    duration: 5000
                                    easing.type: Easing.InOutElastic
                                }
                            }
                        }
                        Rectangle{
                            id: cir3
                            width: app.fs*30
                            height: 2
                            color: parent.color
                            anchors.left: parent.left
                            Rectangle{
                                id: ccir3
                                width: 6
                                height: 6
                                anchors.left: parent.left
                                anchors.leftMargin: -3
                                y:-3
                                color: parent.color
                                radius: width*0.5
                                SequentialAnimation{
                                    running: true
                                    loops: Animation.Infinite
                                    NumberAnimation {
                                        target: ccir3
                                        property: "width"
                                        to: 10
                                        duration: 500
                                        easing.type: Easing.InOutElastic
                                    }
                                    NumberAnimation {
                                        target: ccir3
                                        property: "width"
                                        to: 6
                                        duration: 500
                                        easing.type: Easing.InOutElastic
                                    }
                                }

                            }
                            SequentialAnimation{
                                running: true
                                loops: Animation.Infinite
                                NumberAnimation {
                                    target: cir3
                                    property: "y"
                                    to: cir3.parent.height-app.fs*3.5
                                    duration: 5000
                                    easing.type: Easing.InOutElastic
                                }
                                NumberAnimation {
                                    target: cir3
                                    property: "y"
                                    to: cir3.parent.height-app.fs*0.5
                                    duration: 3000
                                    easing.type: Easing.InOutElastic
                                }
                            }
                        }

                    }
                }
                Rectangle{
                    width: app.fs*2
                    height: 2
                    color: parent.color
                    anchors.right: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    Rectangle{
                        width: 2
                        height: app.fs*30
                        color: parent.color
                        anchors.top: parent.bottom
                        anchors.left: parent.left
                        Rectangle{
                            id: cir1
                            width: app.fs*30
                            height: 2
                            color: parent.color
                            anchors.right: parent.left
                            Rectangle{
                                id: ccir1
                                width: 6
                                height: 6
                                anchors.right: parent.right
                                anchors.rightMargin: -3
                                y:-3
                                color: parent.color
                                radius: width*0.5
                                SequentialAnimation{
                                    running: true
                                    loops: Animation.Infinite
                                    NumberAnimation {
                                        target: ccir1
                                        property: "width"
                                        to: 10
                                        duration: 500
                                        easing.type: Easing.InOutElastic
                                    }
                                    NumberAnimation {
                                        target: ccir1
                                        property: "width"
                                        to: 6
                                        duration: 500
                                        easing.type: Easing.InOutElastic
                                    }
                                }

                            }
                            SequentialAnimation{
                                running: true
                                loops: Animation.Infinite
                                NumberAnimation {
                                    target: cir1
                                    property: "y"
                                    to: app.fs*5
                                    duration: 10000
                                    easing.type: Easing.InOutElastic
                                }
                                NumberAnimation {
                                    target: cir1
                                    property: "y"
                                    to: app.fs
                                    duration: 5000
                                    easing.type: Easing.InOutElastic
                                }
                            }
                            Rectangle{
                                id: cir4
                                width: 2
                                height: app.fs*30
                                color: parent.color
                                anchors.bottom: parent.top
                                Rectangle{
                                    id: ccir4
                                    width: 6
                                    height: 6
                                    anchors.bottom: parent.bottom
                                    anchors.bottomMargin: -3
                                    x:-3
                                    color: parent.color
                                    radius: width*0.5
                                    SequentialAnimation{
                                        running: true
                                        loops: Animation.Infinite
                                        NumberAnimation {
                                            target: ccir4
                                            property: "width"
                                            to: 10
                                            duration: 500
                                            easing.type: Easing.InOutElastic
                                        }
                                        NumberAnimation {
                                            target: ccir4
                                            property: "width"
                                            to: 6
                                            duration: 500
                                            easing.type: Easing.InOutElastic
                                        }
                                    }
                                }
                                SequentialAnimation{
                                    running: true
                                    loops: Animation.Infinite
                                    NumberAnimation {
                                        target: cir4
                                        property: "x"
                                        to: ccir4.parent.height-app.fs*0.5
                                        duration: 3000
                                        easing.type: Easing.InOutQuad
                                    }
                                    NumberAnimation {
                                        target: cir4
                                        property: "x"
                                        to: ccir4.parent.height-app.fs*3
                                        duration: 5000
                                        easing.type: Easing.InOutQuad
                                    }
                                }
                            }

                        }

                    }
                }
            }
            Text {
                id: infoMC1
                property var arrayMsgs: ['Vives en tu Ciudad..', 'Vives tu Ciudad', 'Eres tu Ciudad', 'La Ciudad eres tu', 'Transforma la Ciudad', 'Cambia tu Ciudad', 'Se parte de tu Ciudad', 'Participa en tu Ciudad', 'Aporta a tu Ciudad', 'Aprende de tu Ciudad', 'Aprende en tu Ciudad', 'Ùnete a Mi Ciudad']
                property var arrayColors: ['#ff8833', '#ddcc33',  '#33ff88',  '#ddff33',  '#ff33ff',  '#ddff33',  '#ddcc33' ,'#33ff55','#88cc00','#88ff66','#ff6633']
                property var arrayColors2: ['yellow', 'black',  'red',  'black',  'yellow',  'red',  'red' ,'blue','red','black','white','pink']
                property int index: 0
                font.pixelSize: app.fs
                anchors.horizontalCenter: parent.horizontalCenter
                color: arrayColors2[index]

            }
        }
        Item{
            width: app.fs
            height: app.fs
        }
        Text {
            text: 'Pruebalo y sè parte\nde este proyecto.'
            font.pixelSize: app.fs
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Item{
            width: app.fs
            height: app.fs
        }
        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text: 'Ver màs informaciòn'
            font.pixelSize: app.fs
            onClicked: {
                var comp = Qt.createComponent('Xmc.qml')
                var obj = comp.createObject(xAppFS, {})
            }
        }
    }
    SequentialAnimation{
        id: seqMC1
        running: true
        loops: Animation.Infinite
        NumberAnimation {
            target: logoMC
            property: "width"
            from: xImgMC.width
            to: xImgMC.width+logoMC.exp
            duration: 600
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: logoMC
            property: "width"
            from: logoMC.parent.width+logoMC.exp
            to: xImgMC.width
            duration: 300
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: logoMC
            property: "width"
            from: logoMC.parent.width+logoMC.exp
            to: xImgMC.width
            duration: 400
            easing.type: Easing.InOutQuad
        }
        ScriptAction{
            script:{
                if(infoMC1.index<infoMC1.arrayMsgs.length-1){
                    infoMC1.index++
                }else{
                    infoMC1.index=0
                }
                infoMC1.text=infoMC1.arrayMsgs[infoMC1.index]
                infoMC1.color=infoMC1.arrayColors2[infoMC1.index]
            }
        }
        NumberAnimation {
            target: logoMC
            property: "width"
            from: logoMC.parent.width+logoMC.exp
            to: xImgMC.width
            duration: 600
            easing.type: Easing.InOutQuad
        }
        PauseAnimation {
            duration: 3000
        }
    }
}

