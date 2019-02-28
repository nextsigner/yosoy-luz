import QtQuick 2.0

ListView{
    id:lv2
    delegate: del2
    model: lm2
    anchors.top: parent.top
    anchors.topMargin: margenSuperior
    property int margenSuperior: app.fs*3
    width: app.width
    height: r.height
    anchors.horizontalCenter: parent.horizontalCenter
    boundsBehavior: ListView.StopAtBounds
    Text {
        id: txtPie
        text: '<b>Conoce màs sobre YoSoY</b>'
        font.pixelSize: app.fs
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.top
        anchors.bottomMargin: app.fs
        MouseArea{
            width: parent.width+app.fs*2
            height: parent.height+app.fs
            hoverEnabled: true
            onEntered: elevarLV()
            onClicked: elevarLV()
            function elevarLV(){
                if(r.parent.parent.contentY<app.fs){
                    r.parent.parent.contentY+=app.fs*16
                }
            }
        }
    }
    ListModel{
        id: lm2
        ListElement{al:0; txt:"¿Para què sirve?"; q:"BotonLista"; idd:"i2"}
        ListElement{al:0; txt:"¿Còmo funciona?"; q:"BotonLista"; idd:"i3"}
        ListElement{al:0; txt:"Màs informaciòn"; q:"BotonLista"; idd:"i4"}
        ListElement{al:0; txt:"Acerca de..."; q:"BotonLista"; idd:"acerca-de"}
    }
    Component{
        id: del2
        Xp{
            text: txt
            qml: q
            num: index+1
            idData: idd
            onHeightChanged: {
                al=height
                setHeight()
            }
        }
    }
    function setHeight(){
        var h=0
        for(var i=0;i<lm2.count;i++){
            var item=lm2.get(i)
            h+=item.al
        }
        lv2.height=h+lv2.margenSuperior
    }
}
