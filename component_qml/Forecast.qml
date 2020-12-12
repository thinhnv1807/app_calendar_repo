import QtQuick 2.12
import "../common_qml"
import QtQuick.Timeline 1.0
import QtMultimedia 5.12
import AppEnum 1.0

Item {
    id: forcast
    width: 70
    height: 150

    property string  dayOfWeek: ""
    property string  tempareture: ""
    property string  icon: ""



    Rectangle{
        id: bgr
        anchors.fill: parent
        color: "black"
        border.color: "#000000"
        border.width: 3
        opacity: 0.5
        radius: 5
    }


    G_Text_{
        id: day_id
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        text: dayOfWeek
    }

    G_Text_{
        id: icon_id
        anchors.verticalCenter: tempareture_id.verticalCenter
        anchors.verticalCenterOffset: 60
        anchors.horizontalCenter: parent.horizontalCenter
        text: icon
    }

    G_Text_{
        id: tempareture_id
        anchors.verticalCenter: day_id.verticalCenter
        anchors.verticalCenterOffset: 35
        anchors.horizontalCenter: parent.horizontalCenter
        text: tempareture
    }



}
