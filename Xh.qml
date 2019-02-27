import QtQuick 2.0

Rectangle {
    id: r
    width: app.width
    height: parent.parent.parent.height-app.fs*3
    Image{
        id: img1
        width: app.fs*8
        height: width
        source: './img/logo_yosoy.png'
        y:r.height/2-height/2
        x:0-app.fs*8
        Behavior on width {
            NumberAnimation {
                duration: 1500
                easing.type: Easing.InOutQuad
            }
        }
        Behavior on rotation {
            NumberAnimation {
                duration: 1500
                easing.type: Easing.InOutQuad
            }
        }
        //anchors.centerIn: parent
    }
    ParallelAnimation{
        id: par1
        //running: true
        loops: Animation.Infinite
        NumberAnimation {
            target: img1
            property: "width"
            duration: 1500
            from: app.fs*4
            to: app.fs*8
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: img1
            property: "x"
            duration: 1500
            from: r.width
            to: app.fs
            easing.type: Easing.InOutQuad
        }
        PauseAnimation {
            duration: 1500
        }
        NumberAnimation {
            target: img1
            property: "x"
            duration: 1500
            //from: app.fs
            to: r.width
            easing.type: Easing.InOutQuad
        }
    }

    SequentialAnimation{
        id: seq1
        running: true
        //loops: Animation.Infinite

        NumberAnimation {
            target: img1
            property: "rotation"
            duration: 1000
            from:-65
            to: 600
            easing.type: Easing.InOutQuad
        }
//        NumberAnimation {
//            target: img1
//            property: "rotation"
//            duration: 1500
//            from:600
//            to: 0
//            easing.type: Easing.InOutQuad
//        }
        ScriptAction{
            script: {
                img1.width=r.width*0.8
                img1.rotation+=360
            }
        }
        NumberAnimation {
            target: img1
            property: "x"
            duration: 1500
            from: 0-app.fs*8
            to: r.width-app.fs*16
            easing.type: Easing.InOutQuad
        }
        ScriptAction{
            script: {
                img1.width=r.width*0.8
                img1.rotation+=-360
            }
        }
        NumberAnimation {
            target: img1
            property: "x"
            duration: 1500
            from: r.width-app.fs*8
            to: app.fs
            easing.type: Easing.InOutQuad
        }
//        ScriptAction{
//            script: {
//                img1.width=app.fs*8
//                img1.rotation+=360
//            }
//        }
    }
}

