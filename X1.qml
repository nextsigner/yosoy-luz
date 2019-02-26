import QtQuick 2.0

Item {
    id: r
    width: parent.width
    height: txt.contentHeight
    Behavior on opacity{
        NumberAnimation {
            duration: 500
        }
    }
    onOpacityChanged: {
        if(opacity<0.2){
            r.destroy(10)
        }
    }
    Text {
        id: txt
        font.pixelSize: app.fs
        width: r.width
        wrapMode: Text.WordWrap
        textFormat: Text.RichText
    }

    Rectangle{
        id: l1
        width: r.width
        height: r.height
        Behavior on height{
            NumberAnimation {
                duration: 500
                easing.type: Easing.InOutQuad
            }
        }
    }


    Timer{
        running: true
        interval: 500
        onTriggered: {
            l1.height=0
        }
    }
    Component.onCompleted: {
        var t=''

        t+='<h3>YoSoY es lo que tu quieras.</h3>'

        t+='<p>Puede ser un sistema, una aplicaciòn, una red de contactos, una agenda, una cartelera, talvez eso que tu necesitas e imagines puede ser posible aquì mismo.</p>'

        t+='<p>YoSoY es algo nuevo, aùn no existe nadie el el mundo que pueda definir cuales son sus alcances. Una forma didàctica y divertida de que conozcamos y entendamos què es YoSoY es diciendo que YoSoY es lo que no es.</p>'

        t+='<p>YoSoY no es una red social, no es una fundaciòn, no es una compañìa, no es una organizaciòn polìtica, no es una religiòn, no es ninguna entidad gubernamental, no es una secta, no es una logia, no es una agencia de publicidad, no es un club ni una empresa.</p>'

        t+='<p>Por el momento solo podemos decir que YoSoY es un proyecto informàtico multipropòsito. Es una aplicaciòn multiplataforma que posibilitarà el flujo y la difusiòn de informaciòn por medios digitales de maneras no convencionales. Es una herramienta informàtica que està orientada a crear e impulsar nuevos proyectos a traves de la participaciòn ciudadana organizada por medio de nuevas formas de orgacizaciòn acordes a sus necesidades.</p>'



        txt.text=t
    }
}

