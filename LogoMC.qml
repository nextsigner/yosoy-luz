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
            property int par: 15
            onParChanged: {
                var obj
                var i
                var i2
                for(i=0;i<col100.children.length;i++){
                    var index=0
                    for(i2=0;i2<col100.children[i].children.length;i2++){
                        index=col100.children[i].children[i2].rindex
                        if(index===par){
                            obj=col100.children[i].children[i2]
                            bX.y=obj.parent.y+obj.height*0.5-bX.height*0.5
                            bX.color=obj.color
                            bY.x=obj.x+obj.width*0.5-bY.width*2
                            bY.color=obj.color
                        }
                    }
                }
            }
            Rectangle{
                id: bX
                width: parent.width
                height: app.fs*0.1
                color: 'white'
                antialiasing: true
                Behavior on y{
                    NumberAnimation{duration:500}
                }
            }
            Rectangle{
                id: bY
                width: app.fs*0.1
                height: parent.height
                color: 'white'
                antialiasing: true
                Behavior on x{
                    NumberAnimation{duration:500 }
                }
            }
            Rectangle{
                width: app.fs*0.5
                height: app.fs*0.5
                radius: width*0.5
                antialiasing: true
                anchors.verticalCenter: bX.verticalCenter
                anchors.horizontalCenter: bY.horizontalCenter
                color: bX.color
            }
            Column{
                id: col100
                spacing: xLogoMC.sp1
                anchors.centerIn: parent
                Row{
                    spacing: xLogoMC.sp1
                    RectAn{
                        antialiasing: true
                        id: rF1C1
                        width:  xLogoMC.t/2
                        height: xLogoMC.t
                        color: parent.parent.parent.c1
                        ropacity: 0.45
                        interval: 2000
                        rindex: 3
                    }
                    RectAn{
                        antialiasing: true
                        id: rF1C2
                        width:  xLogoMC.t*0.65
                        height: xLogoMC.t
                        color: parent.parent.parent.c1
                        ropacity: 0.65
                        interval: 1000
                        rindex: 1
                    }
                    RectAn{
                        antialiasing: true
                        id: rF1C3
                        width:  xLogoMC.t*0.85
                        height: xLogoMC.t
                        color: parent.parent.parent.c1
                        ropacity: 0.85
                        interval: 3000
                        rindex: 12
                    }
                    RectAn{
                        antialiasing: true
                        id: rF1C4
                        width:  xLogoMC.t
                        height: width
                        color: "transparent"
                        interval: 1000
                        rindex: 15
                        LogoFractal{z:parent.z-1}
                    }
                }
                Row{
                    spacing: xLogoMC.sp1
                    RectAn{
                        antialiasing: true
                        id: rF2C1
                        width:  xLogoMC.t/2
                        height: xLogoMC.t*0.85
                        color: parent.parent.parent.c2
                        ropacity: 0.45
                        interval: 800
                        rindex: 4
                    }
                    RectAn{
                        antialiasing: true
                        id: rF2C2
                        width:  xLogoMC.t*0.65
                        height: xLogoMC.t*0.85
                        color: parent.parent.parent.c2
                        ropacity: 0.65
                        interval: 3000
                        rindex: 11
                    }
                    RectAn{
                        antialiasing: true
                        id: rF2C3
                        width:  xLogoMC.t*0.85
                        height: xLogoMC.t*0.85
                        color: parent.parent.parent.c2
                        ropacity: 0.85
                        interval: 2000
                        rindex: 0
                    }
                    RectAn{
                        antialiasing: true
                        id: rF2C4
                        width:  xLogoMC.t
                        height: xLogoMC.t*0.85
                        color: parent.parent.parent.c1
                        ropacity: 0.85
                        interval: 1500
                        rindex: 9
                    }
                }
                Row{
                    spacing: xLogoMC.sp1
                    RectAn{
                        antialiasing: true
                        id: rF3C1
                        width:  xLogoMC.t/2
                        height: xLogoMC.t*0.65
                        color: parent.parent.parent.c3
                        ropacity: 0.30
                        interval: 2000
                        rindex: 7
                    }
                    RectAn{
                        antialiasing: true
                        id: rF3C2
                        width:  xLogoMC.t*0.65
                        height: xLogoMC.t*0.65
                        color: parent.parent.parent.c3
                        ropacity: 0.45
                        interval: 1500
                        rindex: 2
                    }
                    RectAn{
                        antialiasing: true
                        id: rF3C3
                        width:  xLogoMC.t*0.85
                        height: xLogoMC.t*0.65
                        color: parent.parent.parent.c2
                        ropacity: 0.65
                        interval: 2000
                        rindex: 14
                    }
                    RectAn{
                        antialiasing: true
                        id: rF3C4
                        width:  xLogoMC.t
                        height: width*0.65
                        color: parent.parent.parent.c1
                        ropacity: 0.65
                        interval: 1000
                        rindex: 5
                    }
                }
                Row{
                    spacing: xLogoMC.sp1
                    RectAn{
                        antialiasing: true
                        id: rF4C1
                        width:  xLogoMC.t/2
                        height: xLogoMC.t/2
                        color: "black"
                        ropacity: 0.25
                        interval: 500
                        rindex: 13
                    }
                    RectAn{
                        antialiasing: true
                        id: rF4C2
                        width:  xLogoMC.t*0.65
                        height: xLogoMC.t/2
                        color: parent.parent.parent.c3
                        ropacity: 0.30
                        interval: 2500
                        rindex: 10
                    }
                    RectAn{
                        antialiasing: true
                        id: rF4C3
                        width:  xLogoMC.t*0.85
                        height: xLogoMC.t/2
                        color: parent.parent.parent.c2
                        ropacity: 0.45
                        interval: 3000
                        rindex: 6
                    }
                    RectAn{
                        antialiasing: true
                        id: rF4C4
                        width:  xLogoMC.t
                        height: xLogoMC.t/2
                        color: parent.parent.parent.c1
                        ropacity: 0.45
                        interval: 2000
                        rindex: 8//3,1, 12,4,11,0,9,7,2,14,5,13,10,6,8
                    }
                }
            }


        }
    }
}
