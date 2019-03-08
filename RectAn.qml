import QtQuick 2.0

Item {
    id: r
    property int rindex
    property int interval
    property color color
    property real ropacity: 1.0
    objectName: 'rectAn'+rindex
    clip: true
    Rectangle{
        id: r2
        width: r.width
        height: r.height
        color: r.color
        anchors.centerIn: r
        antialiasing: true
        opacity: r.ropacity
    }
    Rectangle{
        id: r3
        width: r.height
        height: r.width
        rotation: 100
        x:0-r.width
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "transparent";
            }
            GradientStop {
                position: 0.25;
                color: "transparent";
            }
            GradientStop {
                position: 0.45;
                color: "white";
            }
            GradientStop {
                position: 0.75;
                color: "transparent";
            }
            GradientStop {
                position: 1.00;
                color: "transparent";
            }
        }
        anchors.verticalCenter: r.verticalCenter
    }
    Timer{
        id: t100
        running: r.parent.parent.parent.par===r.rindex
        repeat: false
        interval: 10
        onTriggered: t101.start()
    }
    Timer{
        id: t101
        repeat: false
        interval: r.interval
        onTriggered: an.start()
    }
    ParallelAnimation{
        id: anPar1
        onStopped: {
            if(r.parent.parent.parent.par<15){
                r.parent.parent.parent.par++
            }else{
                r.parent.parent.parent.par=0
            }
            //r.parent.parent.parent.moverLineas()
        }
        NumberAnimation {
            target: r2
            property: "width"
            duration: 300
            from:r.width
            to: r.width*0.8
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: r2
            property: "height"
            duration: 300
            from:r.height
            to: r.height*0.8
            easing.type: Easing.InOutQuad
        }
    }
    SequentialAnimation{
        id: an
        NumberAnimation {
            target: r2
            property: "opacity"
            duration: 600
            from:r.ropacity
            to: r.rindex!==13?1.0:0.5
            easing.type: Easing.InOutQuad
        }
        ScriptAction{
            script: anPar1.start()
        }
        NumberAnimation {
            target: r3
            property: "x"
            duration: 600
            from:0-r.width
            to: r.width
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: r2
            property: "opacity"
            duration: 300
            from: r.rindex!==13?1.0:0.5
            to: r.ropacity
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: r2
            property: "width"
            duration: 300
            from:r.width*0.8
            to: r.width
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: r2
            property: "height"
            duration: 300
            from:r.height*0.8
            to: r.height
            easing.type: Easing.InOutQuad
        }
    }
}

