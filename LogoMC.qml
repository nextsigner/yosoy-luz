import QtQuick 2.0

Rectangle{
    id: r
    width: app.fs*12
    height: width
    Rectangle{
        id: xLogoMC
        width: r.width
        height: r.height
        color: 'transparent'
        rotation: 90+45
        antialiasing:  true
        anchors.top: r.top
        anchors.topMargin: height*0.15
        transform: Scale { origin.x: xLogoMC.width*0.5; origin.y: xLogoMC.height*0.15; xScale: 1.0; yScale:0.65;}
        property int sp1: app.fs*0.3
        property int t: xLogoMC.width*0.3
        property int alt1: xLogoMC.width*1.5
        Rectangle{
            antialiasing: true
            width:  parent.width-app.fs*0.8
            height: parent.height-app.fs*0.8
            color: 'transparent'
            anchors.centerIn: parent
            property color c1: 'green'
            property color c2: 'red'
            property color c3: 'blue'
            Column{
                spacing: xLogoMC.sp1
                anchors.centerIn: parent
                Row{
                    spacing: xLogoMC.sp1
                    Rectangle{
                        antialiasing: true
                        id: rF1C1
                        width:  xLogoMC.t/2
                        height: xLogoMC.t
                        color: parent.parent.parent.c1
                        opacity: 0.45
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF1C2
                        width:  xLogoMC.t*0.65
                        height: xLogoMC.t
                        color: parent.parent.parent.c1
                        opacity: 0.65
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF1C3
                        width:  xLogoMC.t*0.85
                        height: xLogoMC.t
                        color: parent.parent.parent.c1
                        opacity: 0.85
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF1C4
                        width:  xLogoMC.t
                        height: width
                        color: "transparent"
                        LogoFractal{}
                    }
                }
                Row{
                    spacing: xLogoMC.sp1
                    Rectangle{
                        antialiasing: true
                        id: rF2C1
                        width:  xLogoMC.t/2
                        height: xLogoMC.t*0.85
                        color: parent.parent.parent.c2
                        opacity: 0.45
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF2C2
                        width:  xLogoMC.t*0.65
                        height: xLogoMC.t*0.85
                        color: parent.parent.parent.c2
                        opacity: 0.65
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF2C3
                        width:  xLogoMC.t*0.85
                        height: xLogoMC.t*0.85
                        color: parent.parent.parent.c2
                        opacity: 0.85
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF2C4
                        width:  xLogoMC.t
                        height: xLogoMC.t*0.85
                        color: parent.parent.parent.c1
                        opacity: 0.85
                    }
                }
                Row{
                    spacing: xLogoMC.sp1
                    Rectangle{
                        antialiasing: true
                        id: rF3C1
                        width:  xLogoMC.t/2
                        height: xLogoMC.t*0.65
                        color: parent.parent.parent.c3
                        opacity: 0.30
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF3C2
                        width:  xLogoMC.t*0.65
                        height: xLogoMC.t*0.65
                        color: parent.parent.parent.c3
                        opacity: 0.45
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF3C3
                        width:  xLogoMC.t*0.85
                        height: xLogoMC.t*0.65
                        color: parent.parent.parent.c2
                        opacity: 0.65
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF3C4
                        width:  xLogoMC.t
                        height: width*0.65
                        color: parent.parent.parent.c1
                        opacity: 0.65
                    }
                }
                Row{
                    spacing: xLogoMC.sp1
                    Rectangle{
                        antialiasing: true
                        id: rF4C1
                        width:  xLogoMC.t/2
                        height: xLogoMC.t/2
                        color: "black"
                        opacity: 0.25
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF4C2
                        width:  xLogoMC.t*0.65
                        height: xLogoMC.t/2
                        color: parent.parent.parent.c3
                        opacity: 0.30
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF4C3
                        width:  xLogoMC.t*0.85
                        height: xLogoMC.t/2
                        color: parent.parent.parent.c2
                        opacity: 0.45
                    }
                    Rectangle{
                        antialiasing: true
                        id: rF4C4
                        width:  xLogoMC.t
                        height: xLogoMC.t/2
                        color: parent.parent.parent.c1
                        opacity: 0.45
                    }
                }

            }
        }
    }

}
