import QtQuick 2.0

Rectangle{
    antialiasing: true
    id: r
    width:  xLogoMC.t*0.65
    height: xLogoMC.t*0.65
    anchors.bottom: parent.bottom
    property color c1: 'green'
    property color c2: 'red'
    property color c3: 'blue'
    Column{
        spacing: 1
        anchors.bottom: parent.bottom
        Row{
            spacing: 1
            Rectangle{
                antialiasing: true
                width:  r.width*0.5/2
                height: r.width*0.5
                color: parent.parent.parent.c1
                opacity: 0.45
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5*0.65
                height: r.width*0.5
                color: parent.parent.parent.c1
                opacity: 0.65
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5*0.85
                height: r.width*0.5
                color: parent.parent.parent.c1
                opacity: 0.85
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5
                height: width
                color: "transparent"
                //border.width: 1
                LogoFractal2{}

            }
        }
        Row{
            spacing: 1
            Rectangle{
                antialiasing: true
                width:  r.width*0.5/2
                height: r.width*0.5*0.85
                color: parent.parent.parent.c2
                opacity: 0.45
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5*0.65
                height: r.width*0.5*0.85
                color: parent.parent.parent.c2
                opacity: 0.65
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5*0.85
                height: r.width*0.5*0.85
                color: parent.parent.parent.c2
                opacity: 0.85
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5
                height: r.width*0.5*0.85
                color: parent.parent.parent.c1
                opacity: 0.85
            }
        }
        Row{
            spacing: 1
            Rectangle{
                antialiasing: true
                width:  r.width*0.5/2
                height: r.width*0.5*0.65
                color: parent.parent.parent.c3
                opacity: 0.30
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5*0.65
                height: r.width*0.5*0.65
                color: parent.parent.parent.c3
                opacity: 0.45
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5*0.85
                height: r.width*0.5*0.65
                color: parent.parent.parent.c2
                opacity: 0.65
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5
                height: width*0.65
                color: parent.parent.parent.c1
                opacity: 0.65
            }
        }
        Row{
            spacing: 1
            Rectangle{
                antialiasing: true
                width:  r.width*0.5/2
                height: r.width*0.5/2
                color: "black"
                opacity: 0.25
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5*0.65
                height: r.width*0.5/2
                color: parent.parent.parent.c3
                opacity: 0.30
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5*0.85
                height: r.width*0.5/2
                color: parent.parent.parent.c2
                opacity: 0.45
            }
            Rectangle{
                antialiasing: true
                width:  r.width*0.5
                height: r.width*0.5/2
                color: parent.parent.parent.c1
                opacity: 0.45
            }
        }
    }
}

