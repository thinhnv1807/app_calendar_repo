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

    property bool isDay: false

    function getIconWeather(){

        switch(icon[0] + icon[1]){
        case "01": return (data[2] === "d")? AppSource.img_sun_icon : AppSource.img_moon_icon    // sun or moon
        case "02": return AppSource.img_clould_icon     // + sun or moon
        case "03": return AppSource.img_clould_icon     //  nothing
        case "04": return AppSource.img_cluold_big_icon // nothing
        case "09": return AppSource.img_rain_icon       // nothing
        case "10": return AppSource.img_rain_icon       // + sun or moon
        case "11": return AppSource.img_thunder_icon
        case "50": return AppSource.img_mist_icon       //nothing
        }
    }



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

    G_Image{
        id: icon_id_day_night
        height: sourceSize.height/(sourceSize.width/15)
        width: 15
        anchors.verticalCenter: icon_id_weather.top
        anchors.right:icon_id_weather.right
        visible: (icon !== "01d") && (icon !== "01n")
        source: icon[2] === "d" ? AppSource.img_sun_icon : AppSource.img_moon_icon
    }

    G_Image{
        id: icon_id_weather
        height: sourceSize.height/(sourceSize.width/30)
        width: 30
        anchors.top: tempareture_id.verticalCenter
        anchors.topMargin: 40
        anchors.horizontalCenter: parent.horizontalCenter
        source: forcast.getIconWeather()
    }

    G_Text_{
        id: tempareture_id
        anchors.verticalCenter: day_id.verticalCenter
        anchors.verticalCenterOffset: 35
        anchors.horizontalCenter: parent.horizontalCenter
        text: tempareture
    }



}
